#pagebreak()
= Codifica

In questo capitolo vengono descritte come le varie parti dell'architettura sono state codificate nel progetto e il funzionamento delle singole schermate dell'applicazione.

== Interfaccia grafica

Durante la codifica sono stato in grado di utilizzare gli strumenti offerti dal toolkit UI *Jetpack Compose* per creare l'interfaccia grafica dell'applicazione, in particolare in _Compose_ ogni elemento dell'interfaccia grafica è rappresentato da un *Composable*, cioè una funzione _Kotlin_ annotata con l'annotazione `@Composable` che consente anche di codificare nuovi _Composable_; questi componenti rappresentano elementi dell'interfaccia grafica, come per esempio pulsanti, testi o immagini, oppure elementi di layout come colonne o righe.

Per lo stile dei _Composable_ ho usato _Material Design 3_ dato che _Jetpack Compose_ fornisce un'implementazione immediata di _Material Design 3_ e dei suoi elementi UI; lo stile dei _Composable_ può essere cambiato passando dei parametri alle funzioni _Composable_ (per esempio, font del testo, forma o colore).

Un modo per modificare l'aspetto e il comportamento di un _Composable_ è passargli un `Modifier`, utile per modificare le dimensioni, il layout, il comportamento, l'aspetto e per elaborare l'input utente.

Le destinazioni dei schermi sono state implementate usando una libreria esterna che permette di definire le destinazioni tramite funzioni annotate con l'annotazione `@Destination` (vedi #link(label("navigation-destination"),[Destinazione di navigazione]) nell'appendice) e sono usate per navigare tra le schermate dell'applicazione: per esempio quando si vuole passare dalla schermata della lista dei luoghi alla schermata del dettaglio di un luogo, si usa la funzione `navigate` che, quando un luogo viene selezionato dalla lista, prende come parametro l'identificatore del luogo selezionato.
In queste destinazioni viene estratto lo stato dell'interfaccia dal _ViewModel_ e lo viene fatto passare alla schermata di destinazione, che sarà un _Composable_, inoltre vengono impostate le funzioni del _ViewModel_ da invocare in risposta del input utente.

Il punto d'inizio dell'applicazione è la classe `MainActivity` (vedi #link(label("main-activity"),[MainActivity]) nell'appendice), una classe che estende `ComponentActivity` e possiede un ciclo di vita associato al ciclo di vita dell'applicazione (per esempio quando si fa partire l'applicazione o viene messa in background). Nel progetto ho dovuto semplicemente implementare la funzione `onCreate` che viene chiamata quando viene creato il processo dell'applicazione e redirige l'utente verso la destinazione iniziale, in questo caso la lista dei luoghi.

== Classi ViewModel

Per le classi *ViewModel* ho creato delle classi che ereditano dalla classe _ViewModel_ del framework di _Android_ (vedi #link(label("view-model"),[Classi ViewModel]) nell'appendice), una classe _ViewModel_ per schermata.
Il ciclo di vita di queste classi è gestito dal framework stesso e una caratteristica delle classi _ViewModel_ è che rappresentano dei titolari di stato della schermata a cui sono associati: lo stato della schermata, infatti, viene codificato in un oggetto che ogni volta che subisce una modifica, aggiorna la schermata riflettendo la modifica. 
Usando _Hilt_, sono stato in grado di iniettare le dipendenze all'interno dei _ViewModel_, che possono essere repository o classi _UseCase_ se richiesto: per esempio il _ViewModel_ della schermata di visualizzazione del dettaglio di un luogo ha bisogno del repository dei luoghi e del repository degli utenti, allora viene creata una classe _UseCase_ (vedi #link(label("use-case"),[Classi UseCase]) nell'appendice) che contiene i due repository iniettati (tramite _Hilt_): la caratteristica principale delle classi _UseCase_ è che contengono una sola funzione che viene poi invocata nel _ViewModel_.

== Sorgenti dati

Per la gestione e la persistenza dei dati come già scritto l'applicazione usufruisce di due sorgenti dati, quella locale e quella remota:
- Il *database locale*, la fonte di riferimento principale implementata utilizzando _Room_: innanzitutto ho creato una classe di database (#link(label("database-class"),[Classe Database]) nell'appendice) che crea il database, se non esiste già, ed offre dei metodi per ottenere i DAO (Vedi #link(label("room-dao"),[Interfacce DAO]) nell'appendice) per ogni tipo di risorsa dati (luoghi, utenti ...), ogni DAO offre dei metodi per ottenere, inserire, aggiornare e cancellare elementi del database; ogni metodo dei DAO è annotato con l'annotazione `@Insert` o `@Update` o `@Delete` o `@Query`: queste annotazioni sono usate da _Room_ per generare il codice necessario per eseguire le query al database. I dati vengono salvati e ritornati come oggetti immutabili.
- La comunicazione alla sorgente dati *remota* viene effettuata tramite _Ktor_: per ogni tipo di risorsa dati (luoghi, utenti ...) ho creato una classe che si occupa di caricare e di ottenere dati per quella risorsa (Vedi #link(label("api-classes"),[Classi API]) nell'appendice), le risposte sono in JSON e vengono deserializzate in oggetti _Kotlin_ usando la libreria *Kotlinx.serialization*, libreria che viene usata anche per serializzare oggetti _Kotlin_ in JSON per l'invio di dati. Le risposte possono essere:
    - `200`: la risposta contiene i dati richiesti;
    - `201`: L'utente ha creato nuovi dati con successo;
    - `422`: la risposta contiene un messaggio di errore a causa di un errore di validazione dei dati, l'utente deve correggere i dati e riprovare;
    - `404`: la risposta contiene un messaggio di errore da parte del client, può essere causato da un errore di connessione.

Entrambe le sorgenti dati vengono iniettate nei repository tramite _Hilt_: per esempio nel repository dei luoghi ho iniettato il DAO dei luoghi, che consente di accedere ai luoghi nel database locale, e la classe API, che si occupa di caricare i luoghi dalla sorgente dati remota.

#figure(
    image("../resources/images/grafico-repo.png", width: 60%),
    caption: [Relazione tra repository e sorgenti dati.]
) <repository>

== Autenticazione utenti

Per quanto riguarda l'autenticazione utenti mi sono servito di *AWS Cognito*: quando un utente accede con il suo account, gli viene conferito un token segreto con il quale è in grado di accedere al suo profilo, di caricare nuovi luoghi o recensioni e di salvare nuovi luoghi nel proprio account; questo token viene allegato nel header della richiesta HTTP, se non è un token valido allora la richiesta ritorna ```401 unauthorized```.

== Schermate applicazione

In seguito, descriverò più in dettaglio il funzionamento delle singole schermate dell'applicazione.

#include "./AppOverview.typ" 

== Repository codice

Il codice dell'applicazione è stato caricato su un repository *Bitbucket* aziendale. 
Per la gestione dei _branch_ si è utilizzato un _gitflow_ standard: ogni funzionalità è stata sviluppata su un ramo di sviluppo separato.
Quando una funzionalità veniva considerata finita, veniva aperta una _Pull request_, nella quale il codice veniva controllato dai colleghi in azienda, e dopo che la _Pull request_ veniva approvata, si passava al merge con il ramo di sviluppo principale.

= Validazione

Alla fine del tirocinio le funzionalità che effettivamente sono state codificate sono:

- *F1*: Lista dei luoghi (con funzione di ordinamento e filtraggio);
- *F2*: Mappa dei luoghi (con funzione di filtraggio);
- *F3*: Visualizzazione in dettaglio di un luogo;
- *F4*: Caricamento di un luogo;
- *F5*: Pagina di login;
- *F6*: Pagina del profilo utente, con lista dei luoghi caricati e dei luoghi salvati.

Per mancanza di tempo è stato deciso di tralasciare le seguenti funzionalità che erano state pianificate:

- *F7*: Registrazione di un nuovo account;
- *F8*: Lista delle recensioni di un luogo;
- *F9*: Caricamento di una nuova recensione di un luogo.

#pagebreak()
== Requisiti soddisfati

In conclusione, alla codifica sono stati soddisfatti i seguenti requisiti (per vedere la tabella dei requisiti soddisfatti, vedi #link(label("requisiti-soddisfatti"),[Tabella requisiti soddisfatti]) nell'appendice):

- Per la *lista dei luoghi* tutti i requisiti sono stati soddisfatti: un utente può visualizzare la lista dei luoghi, selezionare un luogo dalla lista per vederne i dettagli, ordinare la lista dei luoghi per distanza, valutazione o data di caricamento e filtrare la lista dei luoghi per caratteristiche, per prezzo, per nome o per orario di apertura;
- Per la *mappa dei luoghi* tutti i requisiti sono stati soddisfatti: un utente può visualizzare la mappa dei luoghi, selezionare un luogo dalla mappa per vederne i dettagli e filtrare la mappa dei luoghi come per la lista dei luoghi (ma non di ordinarla);
- Per la *visualizzazione in dettaglio di un luogo* tutti i requisiti sono stati soddisfatti: un utente può visualizzare le informazioni in dettaglio di un luogo, cioè la posizione geografica, le caratteristiche di un luogo, gli orari di apertura, i contatti, le immagini di un luogo e il numero di recensioni;
- Nella *lista dei luoghi*, nella *mappa dei luoghi* e nella *visualizzazione in dettaglio di un luogo*, se l'utente è registrato, è possibile salvare un luogo nei preferiti o rimuovere un luogo già salvato dai preferiti;
- Per il *caricamento di un luogo* tutti i requisiti sono stati soddisfatti: un utente registrato può caricare un nuovo luogo, inserendo il nome del luogo, la posizione geografica del luogo, i contatti del luogo, una descrizione del luogo, gli orari di apertura del luogo e una o più immagini del luogo;
- Per la *pagina di login* un ospite può accedere solo con un account _Google_, dato che non è stata implementata la funzionalità di registrazione di un nuovo account;
- Per la *pagina del profilo utente* un utente registrato può visualizzare il suo profilo utente, visualizzare i suoi dati personali, visualizzare la lista dei luoghi preferiti salvati, visualizzare la lista dei luoghi caricati da lui e di effettuare il logout;
- I *requisiti di vincolo* sono stati soddisfatti tutti eccetto che le componenti sviluppate non sono state documentate per mancanza di tempo;
- I *requisiti di qualità* sono stati soddisfatti tutti.

== Requisiti non soddisfatti

I seguenti requisiti non sono stati soddisfatti:

- La funzionalità di *registrazione di un nuovo account* non è stata implementata: un ospite non può creare un nuovo account, ma può accedere solo usando un account _Google_; //Fa ridere ma è così
- La funzionalità di *visualizzazione della lista delle recensioni di un luogo* non è stata implementata: un utente non può visualizzare la lista delle recensioni di un luogo;
- La funzionalità di *caricamento di una nuova recensione* di un luogo non è stata implementata: un utente registrato non può caricare una nuova recensione di un luogo;
- L'unico *requisito di vincolo* non soddisfatto è che le componenti sviluppate non sono state documentate per mancanza di tempo.

== Riepilogo requisiti

#figure(
    table(
        columns: (1fr, 1fr, 1fr, 1fr),
        align: horizon,
        [*Tipo di requisito*], [*Sodisfatti*], [*Totali*], [*Percentuale*],
        [Funzionali], [41], [49], [83.67%], 
        [Vincolo], [3], [4], [75%],
        [Qualità], [3], [3], [100%],
        [Totali], [47], [56], [83.92%],
    ),
    caption: [Riepilogo requisiti soddisfatti dopo la codifica.]
)

Tutti requisiti di qualità sono stati soddisfatti, mentre alcuni requisiti funzionali e di vincolo non sono stati soddisfatti; In totale sono stati soddisfatti più dell'80% dei requisiti totali.

