#import "@preview/glossarium:0.2.0": gls

#v(10pt)
= Analisi dei Requisiti

I requisiti dell'applicazione sono stati individuati attraverso un'analisi dei casi d'uso e dei requisiti funzionali insieme al tutor aziendale e ad altri collaboratori durante il corso del progetto.

All'inizio è stato pianificato che l'applicazione doveva avere le seguenti funzionalità:

- *F1*: Lista dei luoghi (con funzione di ordinamento e filtraggio);
- *F2*: Mappa dei luoghi (con funzione di filtraggio);
- *F3*: Visualizzazione in dettaglio di un luogo;
- *F4*: Caricamento di un luogo;
- *F5*: Pagina di login;
- *F6*: Pagina del profilo utente, con lista dei luoghi caricati e dei luoghi salvati;
- *F7*: Registrazione di un nuovo account;
- *F8*: Lista delle recensioni di un luogo;
- *F9*: Caricamento di una nuova recensione di un luogo.

#pagebreak()

== Tipi di utenti

I tipi di utenti che utilizzano l'applicazione sono:

#figure(
    image("../resources/images/utenti.svg", width: 50%),
    caption: [Gerarchia dei tipi di utente.]
) <utenti>

- *Utente*: un utente generico, registrato o non che utilizza l'applicazione per visualizzare la lista dei luoghi, le informazioni in dettaglio dei luoghi, la mappa dei luoghi e la lista delle recensioni di un luogo;
- *Ospite*: un utente che non ha effettuato l'accesso al suo account e che oltre ad aver accesso alle funzionalità dell'utente generico, può accedere al proprio account o registrarsi;
- *Utente registrato*: un utente che ha effettuato l'accesso al suo account e che può quindi accedere alle funzionalità riservate agli utenti registrati, come caricare un nuovo luogo, salvare un luogo nei preferiti o caricare una nuova recensione.

/*
== Casi d'uso

I casi d'uso sono classificati con la seguente codifica:

#align(
    center
)[
    *SUC[Tipo]-numero*
]

- *SUC*: Acronimo di Smart Offices Use Case
- *Tipo*: Tipo di caso d'uso, può essere:
    - *O*: Obbligatorio, ovvero un caso d'uso che è richiesto per raggiungere il #gls("MVP")
    - *D*: Desiderabile, ovvero un caso d'uso che non è obbligatorio ma consente di dare valore aggiunto all'applicazione
    - *F*: Facoltativo, ovvero un caso d'uso che non è importante per l'applicazione ma che può essere implementato se si ha tempo

=== Attori

Gli attori che utilizzano l'applicazione sono:

#figure(
    image("../resources/images/utenti.svg", width: 80%),
    caption: [Relazione tra utenti registrati e non registrati.]
) <Utenti>

- *Visitatore*: un utente generico, registrato o non che utilizza l'applicazione per visualizzare le informazioni sulle location (_vedi @Utenti _)
- *Ospite*: un utente che non ha effettuato l'accesso al suo account e che può quindi accedere solo alle funzionalità pubbliche dell'applicazione
- *Utente registrato*: un utente che ha effettuato l'accesso al suo account e che può quindi accedere alle funzionalità riservate agli utenti registrati
- *Google*: il servizio di autenticazione di Google che permette di effettuare il login con un account Google


#figure(
    image("../resources/images/visualizzazione_location.svg", width: 80%),
    caption: [Visualizzazione location.]
) <Visualizzazione_location>

=== SUCO-1: Visualizzazione della lista delle location

- *Descrizione*: L'utente vuole visualizzare la lista delle location
- *Attore principale*: Visitatore
- *Precondizioni*: L'utente ha aperto l'applicazione
- *Postcondizioni*: L'utente visualizza la lista delle location
- *Scenario principale*:
    + L'utente apre l'applicazione
    + L'utente visualizza la lista delle location
- *Scenario alternativo*:
    - L'utente visualizza un messaggio di errore a causa di un errore nel caricamento della lista (@SUCO-4)

=== SUCO-2: Visualizzazione dei dettagli di una location <SUCO-2>

- *Descrizione*: L'utente vuole visualizzare i dettagli di una location
- *Attore principale*: Visitatore
- *Precondizioni*: L'utente ha aperto l'applicazione
- *Postcondizioni*: L'utente visualizza i dettagli di una location
- *Scenario principale*:
    + L'utente apre l'applicazione
    + L'utente seleziona una location o dalla lista o dalla mappa
    + L'utente visualizza i dettagli della location
- *Scenario alternativo*:
    - L'utente visualizza un messaggio di errore a causa di un errore nel caricamento dei dettagli della location (@SUCO-4)
    - L'utente visualizza un messaggio informativo che indica che la lista delle location è vuota
=== SUCO-3: Visualizzazione mappa delle location

- *Descrizione*: L'utente vuole visualizzare la mappa delle location
- *Attore principale*: Visitatore
- *Precondizioni*: L'utente ha aperto l'applicazione
- *Postcondizioni*: L'utente visualizza la mappa delle location
- *Scenario principale*:
    + L'utente apre l'applicazione
    + L'utente seleziona la mappa
    + L'utente visualizza la mappa delle location
- *Scenario alternativo*:
    - L'utente visualizza un messaggio di errore a causa di un errore nel caricamento delle location (@SUCO-4)

=== SUCO-4: Visualizzazione di un errore durante il caricamento dati <SUCO-4>

- *Descrizione*: L'utente visualizza un messaggio d'errore a causa di un errore nel caricamento dei dati
- *Attore principale*: Visitatore
- *Precondizioni*: L'utente ha aperto l'applicazione
- *Postcondizioni*: L'utente visualizza un messaggio d'errore a causa di un problema nel caricamento dati
- *Scenario principale*:
    + L'utente apre l'applicazione
    + L'utente cerca di caricare dei dati
    + L'utente visualizza un messaggio d'errore
    + L'utente può riprovare a ricaricare i dati richiesti

=== SUCD-1: Visualizzazione messaggio lista vuota <SUCD-1>

- *Descrizione*: L'utente visualizza un messaggio che indica che la lista delle location è vuota
- *Attore principale*: Visitatore
- *Precondizioni*: L'utente ha aperto l'applicazione
- *Postcondizioni*: L'utente visualizza un messaggio che indica che la lista delle location è vuota
- *Scenario principale*:
    + L'utente apre l'applicazione
    + L'utente visualizza la lista delle location
    + La lista delle location è vuota
    + L'utente visualizza un messaggio che indica che la lista delle location è vuota

=== SUCO-5: Login utente registrato

- *Descrizione*: L'utente vuole effettuare il login all'suo profilo utente
- *Attore principale*: Opsite
- *Precondizioni*: L'utente ha aperto l'applicazione
- *Postcondizioni*: L'utente si è autenticato e visualizza la pagina profilo
- *Scenario principale*:
    + L'utente apre l'applicazione
    + L'utente seleziona il login
    + L'utente si autentica
    + L'utente viene reindirizzato alla pagina del profilo
- *Generalizzazioni*:
    + *SUCO-6*: Login con Google

=== SUCO-6: Login con Google <SUCO-6>

- *Descrizione*: Un utente non registra vuole effettuare il login all'suo profilo utente utilizzando un Account Google
- *Attore principale*: Utente non registrato
- *Attore secondario*: Google
- *Precondizioni*: L'utente ha aperto l'applicazione
- *Postcondizioni*: L'utente si è autenticato e visualizza la pagina profilo
- *Scenario principale*:
    + L'utente apre l'applicazione
    + L'utente seleziona il login con Google
    + L'utente si autentica con un Account Google
    + L'utente viene reindirizzato alla pagina del profilo

=== SUCD-2: Registrazione nuovo utente

- *Descrizione*: Un utente vuole creare un nuovo account per registrarsi sull'applicazione
- *Attore principale*: Utente non registrato
- *Precondizioni*: L'utente ha aperto l'applicazione
- *Postcondizioni*: L'utente si è registrato e visualizza la pagina profilo
- *Scenario principale*:
    + L'utente apre l'applicazione
    + L'utente sceglie di registrare un nuovo account
    + L'utente inserisce email e password
    + L'utente crea un nuovo account

=== SUCO-7: Logout utente registrato

- *Descrizione*: L'utente registrato vuole effettuare il logout dal suo profilo utente
- *Attore principale*: Utente registrato
- *Precondizioni*: 
    - *SUCO-5*: Login utente registrato
    - *SUCO-6*: Login con Google
- *Postcondizioni*: L'utente si è disconnesso dal suo profilo utente
- *Scenario principale*:
    + L'utente è entrato con il suo profilo utente
    + L'utente seleziona il logout
    + L'utente viene reindirizzato alla pagina di login

=== SUCO-8: Visualizzazione profilo utente

- *Descrizione*: L'utente registrato vuole visualizzare il suo profilo utente
- *Attore principale*: Utente registrato
- *Precondizioni*: 
    - *SUCO-5*: Login utente registrato
    - *SUCO-6*: Login con Google
- *Postcondizioni*: L'utente visualizza il suo profilo utente
- *Scenario principale*:
    + L'utente è entrato con il suo profilo utente
    + L'utente seleziona il suo profilo
    + L'utente visualizza il suo profilo

=== SUCO-9: Caricamento nuova location

- *Descrizione*: L'utente registrato vuole caricare una nuova location
- *Attore principale*: Utente registrato
- *Precondizioni*: 
    - *SUCO-5*: Login utente registrato
    - *SUCO-6*: Login con Google
- *Postcondizioni*: L'utente ha caricato una nuova location con i dati imessi
- *Scenario principale*:
    + L'utente seleziona il caricamento di una nuova location
    + L'utente inserisce i dati richiesti per inserire la location, tra i quali: nome, indirizzo, descrizione, orari di apertura e chiusura, contatti, prezzo e una o più immagini
    + L'utente conferma il caricamento della nuova location
- *Scenari alternativi*:
    - L'utente visualizza un messaggio a causa della mancanza delle informazioni richieste
    - L'utente visualizza un messaggio di errore a causa di un errore nel caricamento della nuova location 

=== SUCO-10: Visualizzazione messaggio mancanza informazioni

- *Descrizione*: L'utente visualizza un messaggio che indica che non ha inserito tutte le informazioni richieste della location da caricare 
- *Attore principale*: Utente registrato
- *Precondizioni*: 
    - *SUCO-5*: Login utente registrato
    - *SUCO-6*: Login con Google
- *Postcondizioni*: L'utente visualizza un messaggio che indica che non ha inserito tutte le informazioni richieste della location da caricare
- *Scenario principale*:
    + L'utente seleziona il caricamento di una nuova location
    + L'utente non inserisce tutte le informazioni richieste per inserire la location
    + L'utente visualizza un messaggio che indica che non ha inserito tutte le informazioni richieste della location da caricare, quindi l'utente può inserire le informazioni mancanti segnalate

=== SUCO-11: Visualizzazione errore nel caricamento della nuova location

- *Descrizione*: L'utente visualizza un messaggio a causa di un errore nel caricamento della nuova location
- *Attore principale*: Utente registrato
- *Precondizioni*: 
    - *SUCO-5*: Login utente registrato
    - *SUCO-6*: Login con Google
- *Postcondizioni*: L'utente visualizza un messaggio di errore a causa di un errore nel caricamento della nuova location
- *Scenario principale*:
    + L'utente seleziona il caricamento di una nuova location
    + L'utente inserisce i dati richiesti per inserire la location
    + L'utente conferma il caricamento della nuova location
    + L'utente visualizza un messaggio a causa di un errore nel caricamento della nuova location, l'utente può riprovare a ricaricare la location

=== SUCO-12: Salvataggio location nei preferiti

- *Descrizione*: L'utente registrato vuole salvare una location nei preferiti
- *Attore principale*: Utente registrato
- *Precondizioni*: 
    - *SUCO-5*: Login utente registrato
    - *SUCO-6*: Login con Google
- *Postcondizioni*: L'utente ha salvato una location nei preferiti
- *Scenario principale*:
    + L'utente seleziona una location
    + L'utente seleziona di salvare la location nei preferiti
    + L'utente salva la location nei preferiti

=== SUCO-13: Visualizzazione lista location preferite salvate

- *Descrizione*: L'utente registrato vuole visualizzare la lista delle location preferite salvate
- *Attore principale*: Utente registrato
- *Precondizioni*: 
    - *SUCO-5*: Login utente registrato
    - *SUCO-6*: Login con Google
- *Postcondizioni*: L'utente visualizza la lista delle location preferite salvate
- *Scenario principale*:    
    + L'utente entra nella pagina del profilo
    + L'utente seleziona la lista delle location preferite
    + L'utente visualizza la lista delle location preferite
- *Scenario alternativo*:
    - L'utente visualizza un messaggio informativo che indica che la lista delle location preferite è vuota

=== SUCD-3: Visualizzazione lista location caricate

- *Descrizione*: L'utente registrato vuole visualizzare la lista delle location caricate
- *Attore principale*: Utente registrato
- *Precondizioni*: 
    - *SUCO-5*: Login utente registrato
    - *SUCO-6*: Login con Google
- *Postcondizioni*: l'utente visualizza la lista delle location caricate
- *Scenario principale*:
    + L'utente entra nella pagina del profilo
    + L'utente seleziona la lista delle location caricate
    + L'utente visualizza la lista delle location caricate
- *Scenario alternativo*:
    - L'utente visualizza un messaggio informativo che indica che la lista delle location caricate è vuota

=== SUCO-14: Visualizzazione recensioni location

- *Descrizione*: L'utente vuole visualizzare le recensioni di una location
- *Attore principale*: Visitatore
- *Precondizioni*: L'utente ha aperto l'applicazione e ha selezionato una location
- *Postcondizioni*: L'utente vede le recensioni caricate riguardante la location selezionata
- *Scenario principale*:
    + L'utente seleziona una location
    + L'utente seleziona di visualizzare le recensioni della location
    + L'utente visualizza le recensioni della location

=== SUCD-5: Caricamento nuova recensione

- *Descrizione*: L'utente vuole caricare una nuova recensione di una location
- *Attore principale*: Utente registrato
- *Precondizioni*: 
    - *SUCO-5*: Login utente registrato
    - *SUCO-6*: Login con Google
- *Postcondizioni*: L'utente ha caricato una nuova recensione della location selezionata con il testo della recensione e una valutazione
- *Scenario principale*:
    + L'utente seleziona di caricare una nuova recensione
    + L'utente inserisce il testo della recensione e una valutazione
    + L'utente conferma il caricamento della nuova recensione
- *Scenario alternativo*:
    - L'utente visualizza un messaggio a causa di un errore nel caricamento della nuova recensione (@SUCD-7)

=== SUCD-6: Visualizzazione errore nel caricamento della nuova recensione <SUCD-7>

- *Descrizione*: L'utente visualizza un messaggio a causa di un errore nel caricamento della nuova recensione
- *Attore principale*: Utente registrato
- *Precondizioni*: 
    - *SUCO-5*: Login utente registrato
    - *SUCO-6*: Login con Google
- *Postcondizioni*: L'utente visualizza un messaggio a causa di un errore nel caricamento della nuova recensione
- *Scenario principale*:
    + L'utente seleziona di caricare una nuova recensione
    + L'utente inserisce il testo della recensione e una valutazione
    + L'utente conferma il caricamento della nuova recensione
    + L'utente visualizza un messaggio a causa di un errore nel caricamento della nuova recensione, l'utente può riprovare a ricaricare la recensione

=== SUCF-1: Visualizzazione lista recensioni caricate dall'utente

- *Descrizione*: L'utente vuole visualizzare la lista delle recensioni caricate da lui
- *Attore principale*: Utente registrato
- *Precondizioni*: 
    - *SUCO-5*: Login utente registrato
    - *SUCO-6*: Login con Google
- *Postcondizioni*: L'utente visualizza la lista delle recensioni che ha caricato
- *Scenario principale*:
    + L'utente entra nella pagina del profilo
    + L'utente seleziona la lista delle recensioni caricate
    + L'utente visualizza la lista delle recensioni caricate

=== SUCO-15: Ordinamento lista delle location

- *Descrizione*: L'utente vuole ordinare la lista delle location
- *Attore principale*: Visitatore
- *Precondizioni*: 
    - *SUCO-1*: Visualizzazione della lista delle location
- *Postcondizioni*: L'utente visualizza la lista delle location ordinata secondo l'ordinamento selezionato
- *Scenario principale*:
    + L'utente visualizza la lista delle location
    + L'utente seleziona di ordinare la lista per distanza, valutazione o data d'inserimento
    + L'utente visualizza la lista delle location ordinata secondo l'ordinamento selezionato

=== SUCO-16: Filtraggio lista delle location

- *Descrizione*: L'utente vuole filtrare la lista delle location
- *Attore principale*: Visitatore
- *Precondizioni*: 
    - *SUCO-1*: Visualizzazione della lista delle location
- *Postcondizioni*: L'utente visualizza la lista delle location filtrata secondo i filtri selezionati
- *Scenario principale*:
    + L'utente visualizza la lista delle location
    + L'utente seleziona di filtrare la lista delle location
    + L'utente può filtrare la lista per nome, prezzo, caratteristiche o orario di apertura
    + L'utente visualizza la lista delle location filtrata secondo i filtri selezionati
*/

== Requisiti

Dalle funzionalità riportate sopra sono stati ricavati dei requisiti associati (per la lista completa dei requisiti, vedere #link(label("requirements-list"),[lista requisiti]) nell'appendice).

Alcuni requisiti sono:
- Per la *lista dei luoghi* l'utente selezionando un luogo viene portato alla pagina di dettaglio del luogo e un utente vuole ordinare la lista dei luoghi per distanza, valutazione o data d'inserimento;
- Per la *mappa dei luoghi*, l'utente selezionando un luogo viene portato alla pagina di dettaglio del luogo similmente alla lista dei luoghi;
- Per la *lista dei luoghi* e la *mappa dei luoghi* un utente può filtrare i luoghi per nome, prezzo, caratteristiche o orario di apertura;
- Per la *visualizzazione in dettaglio di un luogo* dovrebbero essere visualizzati i dettagli del luogo, tra cui nome, indirizzo, descrizione, orari di apertura e chiusura, contatti, prezzo e una o più immagini;
- Per la *lista dei luoghi*, la *mappa dei luoghi* e la *visualizzazione in dettaglio di un luogo* un utente registrato può salvare un luogo nei preferiti o rimuovere un luogo dai preferiti;
- Per il *caricamento di un luogo* l'utente registrato deve inserire i dati richiesti per inserire il luogo, tra i quali: nome, indirizzo, descrizione, orari di apertura e chiusura, contatti, prezzo e una o più immagini;
- Per la *pagina di login* un ospite può effettuare l'accesso con un account interno o con un account _Google_;
- Per la *pagina del profilo utente* l'utente registrato può visualizzare la lista dei luoghi caricati, la lista dei luoghi salvati o effettuare il logout;
- Per la *registrazione di un nuovo account* l'ospite deve inserire e-mail e password;
- Per il *caricamento di una recensione* l'utente registrato deve inserire il testo della recensione e una valutazione.

Nell'analisi dei requisiti sono stati individuati requisiti che sono condivisi tra più funzionalità, come per esempio il filtraggio dei luoghi che è presente sia nella lista che nella mappa e il salvataggio di un luogo nei preferiti che è presente nella lista, nella mappa e nel dettaglio del luogo.

Oltre ai requisiti funzionali, ci sono dei *requisiti di vincolo* che sono stati individuati durante l'analisi dei requisiti, come l'utilizzo del linguaggio di programmazione _Kotlin_ e del toolkit UI _Jetpack Compose_ per lo sviluppo dell'applicazione.

Per garantire la qualità del codice e dell'applicazione, sono stati individuati dei *requisiti di qualità*: il codice del progetto deve trovarsi sul repository aziendale, deve passare tutte le _Pull requests_ e l'applicazione deve essere funzionante anche in assenza di connessione ad Internet.

#figure(
    table(
        fill: (_, row) => if calc.odd(row) { luma(240) } else { white },
        columns: (1fr, 1fr),
        align: horizon,
        [*Tipo di requisito*], [*Numero*],
        [Funzionali],[49],
        [Di vincolo],[4],
        [Di qualità],[3],
        [*Totali*],[56]
    ),
    caption: [Conteggio requisiti dell'applicazione _Android_.]
)
