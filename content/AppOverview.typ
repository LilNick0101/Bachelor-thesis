=== Schermata iniziale: lista dei luoghi

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/VisitorList.png", height: 40%),
    caption: [Schermata della lista dei luoghi.]
    ),
    figure(
    image("../resources/images/app-screenshots/LoggedInList.png", height: 40%),
    caption: [Schermata della lista dei luoghi con utente registrato.]
    ),
)

La schermata principale che viene presentata non appena l'utente apre l'applicazione, viene mostrata la lista dei luoghi più vicini all'utente.
Ogni elemento della lista mostra:
    - Il nome del luogo;
    - La città nel quale si trova; 
    - La distanza del luogo dall'utente; 
    - Se il luogo è aperto o no;
    - L'orario di chiusura, se è aperto, o di apertura, se chiuso;
    - La valutazione media con numero di recensioni, se ci sono;
    - Per gli utenti registrati, un segnalibro per salvare i luoghi nei preferiti toccandolo.
Toccando un luogo nella lista si accede alla schermata dei dettagli del luogo selezionato.
In alto a sinistra della schermata si può accedere alla mappa dei luoghi, mentre in alto a destra si può accedere al proprio profilo, se si è già registrato, o un ospite può effettuare l'accesso. In basso a destra si trova il pulsante di ricerca e filtraggio luoghi e, per gli utenti registrati, è possibile aggiungere un nuovo luogo, tramite il pulsante in basso a destra con l'icona _+_, sopra al pulsante di ricerca e filtraggio luoghi.

Questa schermata ha associato un _ViewModel_ che tramite un _UseCase_ si occupa di prelevare la lista dei luoghi dal database locale e se è disponibile la connessione ad Internet i dati saranno aggiornati con quelli remoti: questo _UseCase_ chiama un metodo del repository dei luoghi per ottenere la lista dei luoghi.
Per salvare un luogo viene invocato un _UseCase_ che si occupa di salvare un luogo sull'account personale o rimuovere un luogo se già salvato nei preferiti, come se fosse un _toggle_. Altri metodi del _ViewModel_ si occupano di applicare i filtri e l'ordinamento alla lista dei luoghi, richiamando i dati dal repository dei luoghi con i parametri di filtraggio e ordinamento.  

#pagebreak()
=== Mappa dei luoghi

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/Map.png", height: 40%),
    caption: [Schermata della mappa dei luoghi.]
    ),
    figure(
    image("../resources/images/app-screenshots/MapSelected.png", height: 40%),
    caption: [Schermata della mappa dei luoghi selezionato un segnaposto.]
    ),
)

Dalla lista dei luoghi si può accedere alla mappa dei luoghi, dove viene mostrata una mappa globale con i luoghi rappresentati come segnaposto: questa mappa è una mappa _Google Maps_ e selezionando un segnaposto viene mostrata la scheda del luogo, che mostra le stesse informazioni della lista/*fuorchè la distanza dall'utente*/.
Se si seleziona la scheda del luogo si accede alla schermata dei dettagli del luogo selezionato mentre selezionando il segnalibro un utente registrato può salvare il luogo (o rimuovere un luogo salvato se già salvato). In alto a sinistra della schermata si può tornare alla lista dei luoghi, mentre in alto a destra si può accedere al proprio profilo, se si è già registrato, o un ospite può effettuare l'accesso. In basso a destra si trovano i medesimi pulsanti che si trovano nella lista dei luoghi: le funzioni di ricerca e filtraggio sono disponibili pure nella mappa dei luoghi (eccetto l'ordinamento) e un utente registrato può caricare un nuovo luogo.

Simile alla lista dei luoghi, questa schermata ha un _ViewModel_ che chiama lo stesso metodo del repository dei luoghi per ottenere la lista dei luoghi, poi di ogni luogo della lista vengono presi gli attributi di posizione geografica e vengono creati i segnaposto nella mappa. 
Altri metodi del _ViewModel_ si occupano di mostrare un luogo selezionato un segnaposto nella mappa e applicare i filtri alla mappa dei luoghi, richiamando i dati dal repository dei luoghi con i parametri di filtraggio. Per salvare un luogo nei preferiti funziona in modo analogo alla lista dei luoghi.

#pagebreak()
=== Dettaglio di un luogo

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/PlaceDetailsI.png", height: 40%),
    caption: [Schermata del dettaglio di un luogo: nome, dove si trova, orari di apertura.]
    ),
    figure(
    image("../resources/images/app-screenshots/PlaceDetailsII.png", height: 40%),
    caption: [Schermata del dettaglio di un luogo: descrizione, caratteristiche e numero recensioni.]
    ),
)

Selezionando un luogo, o dalla lista o dalla mappa, si può vederne in più dettaglio le sue caratteristiche:
- Un'anteprima del luogo, con una o più immagini: se ci si tocca sopra vengono mostrate le immagini a schermo intero;
- Il nome del luogo;
- Dove si trova, toccandoci sopra verrà visualizzata una mappa che mostra il posto;
- L'utente che ha postato il luogo;
- Se il luogo è aperto o chiuso, con pulsante che mostra gli orari di apertura;
- Valutazione media e numero recensioni;
- Descrizione luogo;
- Se il luogo è a pagamento e se il luogo accetta prenotazioni;
- Le caratteristiche del luogo, se in scuro barrato vuol dire che quella caratteristica non è offerta nel luogo; alcune caratteristiche possono essere: presenza di corrente elettrica, Wi-Fi, aria condizionata, etc.;
- I contatti del luogo: posizione, numero di telefono, mail ed eventuali link a siti web, tutti quanti toccabili (per esempio, toccando la mail possiamo mandare una mail).
Toccando in alto a sinistra si torna alla schermata precedente e toccando in alto a destra si può salvare il luogo nei preferiti se si ha effettuato l'accesso.

Il _ViewModel_ associato a questa schermata chiama un metodo del repository dei luoghi per ottenere il luogo selezionato passandogli come parametro l'identificatore del luogo, mentre per salvare il luogo funziona in modo simile alla lista e alla mappa, cioè quando si tocca il pulsante per salvare nei preferiti, una classe _UseCase_ si occupa di salvare il luogo nei preferiti nell'account utente, toccando ancora il pulsante si rimuove il luogo dai preferiti. Altri metodi del _ViewModel_ consentono di visualizzare le immagini a schermo intero, di visualizzare o meno la scheda con gli orari di apertura e di visualizzare o meno la posizione del luogo nella mappa. 
// Ma c'è ne frega qualcosa di sapere come funziona?

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/PlaceDetailsIII.png", height: 40%),
    caption: [Schermata del dettaglio di un luogo: contatti.]
    ),
    figure(
    image("../resources/images/app-screenshots/PlaceDetailsIV.png", height: 40%),
    caption: [Schermata del dettaglio di un luogo: anteprima del luogo a schermo intero.]
    ),
)

#pagebreak()
=== Schermata login e profilo utente

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/LoginScreen.png", height: 40%),
    caption: [Schermata di login.]
    ),
    figure(
    image("../resources/images/app-screenshots/ProfileScreen.png", height: 40%),
    caption: [Schermata del profilo utente.]
    ),
)

Dalla lista dei luoghi (o dalla mappa), toccando l'icona del profilo in alto a destra si può accedere alla schermata di login, dove si può effettuare il login al proprio account utilizzando un account _Google_. Se si è già registrati invece verrà visualizzata la schermata del profilo utente, dove si può vedere:
- La foto profilo;
- Il nome utente;
- La propria mail.
Da questa schermata l'utente registrato può;
- Selezionare di vedere i luoghi che ha caricato;
- Selezionare di vedere i luoghi preferiti che ha salvato;
- Effettuare il logout.
In alto a sinistra si può tornare alla schermata precedente.

La schermata di login ha un suo _ViewModel_ associato, nel quale viene iniettata una classe di _Amplify_ utilizzata per configurare _Cognito_ e, tramite un metodo del _ViewModel_ che viene chiamato quando un utente vuole accedere con un account _Google_, redige alla pagina di accesso con _Google_.

La schermata del profilo utente ha un suo _ViewModel_ associato, con un metodo che, chiamando un metodo del repository degli utenti, si occupa di prelevare i dati dell'utente che ha effettuato l'accesso e un metodo per effettuare il logout.

Dalla schermata del profilo utente si può accedere alla lista dei luoghi salvati e alla lista dei luoghi caricati:
- La lista dei luoghi salvati mostra i luoghi che l'utente ha salvato nei preferiti, toccando un luogo si accede alla schermata dei dettagli del luogo selezionato; questa lista ha un _ViewModel_ associato che tramite una classe _UseCase_ chiama un metodo del repository dei luoghi che restituisce la lista dei luoghi salvati dall'utente;
- La lista dei luoghi caricati mostra i luoghi che l'utente ha caricato, toccando un luogo si accede alla schermata dei dettagli del luogo selezionato; questa lista ha un _ViewModel_ associato che tramite una classe _UseCase_ chiama un metodo del repository dei luoghi che restituisce la lista dei luoghi caricati dall'utente.

=== Caricamento di un luogo

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/UploadPlaceI.png", height: 40%),
    caption: [Schermata di caricamento luogo: foto, nome e descrizione.]
    ),
    figure(
    image("../resources/images/app-screenshots/UploadPlaceII.png", height: 40%),
    caption: [Schermata di caricamento luogo: indirizzo e orari di apertura.]
    ),
)

Selezionando il pulsante di aggiunta (come utente registrato) si può accedere alla schermata di caricamento di un luogo, dove si può inserire:
- Una o più foto del luogo;
- Il nome del luogo;
- La descrizione del luogo;
- La posizione del luogo, con strada, città, codice postale e provincia: toccando il pulsante sotto _Seleziona luogo_ si può selezionare la posizione da una mappa;
- Gli orari di apertura del luogo: per ogni giorno si può aggiungere un intervallo orario con ora di apertura e ora di chiusura;
- Il prezzo;
- La possibilità di prenotare un posto;
- Le caratteristiche del luogo, selezionando quelle che offre;
- I contatti del luogo, con mail, numero di telefono e la possibilità di aggiungere uno o più sito web.

Questa schermata ha un _ViewModel_ associato, che contiene metodi per impostare la posizione del luogo, gli attributi del luogo (nome, descrizione, etc.), le caratteristiche del luogo, per mostrare o meno la mappa dove selezionare la posizione, un metodo per aggiungere o rimuovere un orario di apertura/chiusura, un metodo per aggiungere un link, un metodo per rimuovere un link e un metodo per caricare il luogo, tramite una classe _UseCase_ che chiama un metodo del repository dei luoghi.

Con il pulsante in fondo si può confermare il caricamento del luogo, l'esito può essere:
- Caricamento avvenuto con successo, viene mostrato un messaggio in basso a schermo;
- Caricameto fallito a causa di dati immessi in modo non corretto, i campi interessati saranno segnati in rosso e un messaggio di errore verrà mostrato in basso a schermo;
- Se l'utente non ha effettuato l'accesso al suo account, il caricamento fallisce, ma questa circostanza non dovrebbe succedere dato che la schermata è accessibile solo se si ha effettuato l'accesso;
- Caricamento fallito a causa di un errore di connessione, verrà mostrato un messaggio di errore in basso a schermo.

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/UploadPlaceIII.png", height: 40%),
    caption: [Schermata di caricamento luogo: prezzo e caratteristiche.]
    ),
    figure(
    image("../resources/images/app-screenshots/UploadPlaceIV.png", height: 40%),
    caption: [Schermata di caricamento luogo: contatti.]
    ),
)

#pagebreak()
=== Filtri e ricerca

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/ListWithSearch.png", height: 40%),
    caption: [Casella di ricerca nella lista luoghi.]
    ),
    figure(
    image("../resources/images/app-screenshots/FiltersI.png", height: 40%),
    caption: [Schermata filtri di ricerca.]
    ),
)

Selezionando il tasto di ricerca in basso a destra nella schermata della lista dei luoghi o della mappa dei luoghi appare una casella di ricerca nella quale si può cercare un luogo per nome. Se si seleziona il pulsante di filtraggio in basso alla casella di ricerca si può filtrare la lista dei luoghi (o la mappa) a seconda delle proprie preferenze, si può filtrare per:
- Solo posti gratuiti;
- Per valutazione media;
- Per ora di apertura oppure se sono aperti nel momento in cui si effettua la ricerca;
- Solo posti che accettano prenotazioni;
- Per caratteristiche, selezionando quelle che si vogliono cercare.
Per la lista luoghi, in alto a destra della finestra dei filtri si può ordinare la lista per:
- Distanza;
- Valutazione media;
- Data di aggiornamento.
Dopo aver selezionato i filtri si può applicare la ricerca toccando il pulsante _Mostra luoghi_ in fondo, per ripristinare i filtri si tocca invece il pulsante _Ripristina tutti i filtri_.

La finestra dei filtri non ha un suo _ViewModel_ associato ma è integrata nella lista dei luoghi e nella mappa dei luoghi: applicando i filtri, quindi, verranno chiamati i rispettivi metodi che modificheranno lo stato della schermata e aggiorneranno la lista/mappa.

#figure(
    image("../resources/images/app-screenshots/FiltersII.png", height: 40%),
    caption: [Schermata filtri di ricerca: filtraggio per caratteristica.]
    ),
