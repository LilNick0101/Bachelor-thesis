== Schermata iniziale: lista dei luoghi

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
    - La citta nel quale si trova; 
    - La distanza del luogo dall'utente; 
    - Se il luogo è aperto o no;
    - L'orario di chiusura, se è aperto, o di apertura, se chiuso;
    - La valutazione media con numero di recesioni, se ci sono;
    - Per gli utenti registrati, un segnalibro per salvare i luoghi nei preferiti toccandolo.
Toccando un luogo nella lista si accede alla schermata dei dettagli del luogo selezionato.
In alto a sinistra della schermata si può accedere alla mappa dei luoghi, mentre in alto a destra si può accedere al proprio profilo, se si è già registrato, altrimenti un utente può effetuare il login. In basso a destra si trova il pulsante di ricerca e filtraggio luoghi e per gli utenti registrati è possibile anche aggiungere un nuovo luogo, tramite il pulsante in basso a destra, sopra al pulsante di ricerca e filtraggio luoghi.

Dal lato tecnico la lista dei luoghi viene prelevata tramite una classe UseCase che si occupa di prelevare i dati dal database e di restituirli al ViewModel, che a sua volta li passa alla View tramite un Flow, che si occupa di aggiornare la lista ogni volta che viene modificata. Se è disponibile la connessione ad internet i dati verrano aggiornati con quelli remoti.

== Mappa dei luoghi

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

Dalla lista dei luoghi si può accedere alla mappa dei luoghi, dove viene mostrata una mappa globale con i luoghi rappresentati come segnaposto, questa mappa è una mappa _Google Maps_ e selezionando un segnaposto viene mostrata la scheda del luogo, che mostra le stesse informazioni della lista /*fuorchè la distanza dall'utente*/, se si seleziona la scheda del luogo si accede alla schermata dei dettagli del luogo selezionato. In alto a sinistra della schermata si può tornare alla lista dei luoghi, mentre in alto a destra funziona in modo analogo alla lista dei luoghi. In basso a destra si trovano i medesimi pulsanti che si trovano nella lista dei luoghi, quindi le funzioni di ricerca e filtraggio sono disponibili pure nella mappa dei luoghi (eccetto l'ordinamento) e un utente registrato può aggiungere un nuovo luogo.

Simile alla lista dei luoghi, i luoghi della mappa vengono prelevati dal database locale tramite un Flow che si aggiorna quando si aggiorna il database locale e se è disponibile la connessione ad internet i dati verrano aggiornati con quelli remoti.

== Dettaglio di un luogo

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
- Un'anteprima del luogo, con una o più immagini, se ci si tocca sopra vengono mostrate le immagini a schermo intero;
- Il nome del luogo;
- Dove si trova, toccandoci sopra verrà visualizzata una mappa che mostra il posto;
- L'utente che ha postato il luogo;
- Se il luogo è aperto o chiuso, con pulsante che mostra gli orari di apertura;
- Valutazione media e numero recensioni;
- Descrizione luogo;
- Se il luogo è a pagamento e se il luogo accetta prenotazioni;
- Le caratteristiche del luogo, se in scuro barrato vuol dire che quella caratteristica non è offerta nel luogo;
- I contatti del luogo: posizione, numero di telefono, mail ed eventuali link a siti web, tutti quanti interagibili.
Toccando in alto a sinistra si torna alla schermata precedente e toccando in alto a destra si può salvare il luogo nei preferiti se si è un utente registrato.

I dettagli del luogo selezionato vengono prelevati tramite un UseCase che si occupa di prelevare i dettagli del luogo dal database locale e di restituirli al ViewModel, che a sua volta li passa alla View tramite un Flow, che reagisce quando ci sono aggiornamenti. Se è disponibile la connessione ad internet i dati verrano aggiornati con quelli remoti.
// Ma c'è ne frega qualcosa di sapere come funziona?

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/PlaceDetailsIII.png", height: 40%),
    caption: [Schermata del dettaglio di un luogo: contatti]
    ),
    figure(
    image("../resources/images/app-screenshots/PlaceDetailsIV.png", height: 40%),
    caption: [Schermata del dettaglio di un luogo: anteprima del luogo a schermo intero.]
    ),
)

== Schermata login e profilo utente

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/LoginScreen.png", height: 40%),
    caption: [Schermata di login]
    ),
    figure(
    image("../resources/images/app-screenshots/ProfileScreen.png", height: 40%),
    caption: [Schermata del profilo utente]
    ),
)

Toccando l'icona del profilo in alto a destra si può accedere alla schermata di login, dove si può effettuare il login al proprio account utilizzando un account _Google_. Se si è già registrati invece verrà visualizzata la schermata del profilo utente, dove si può vedere:
- La foto profilo;
- Il nome utente;
- La propria mail.
Da questa schermata l'utente registrato può;
- Selezionare di vedere i luoghi che ha postato;
- Selezionare di vedere i luoghi preferiti che ha salvato;
- Effettuare il logout.
In alto a sinistra si può tornare alla schermata precedente.

Il login viene effetuato tramite AWS Cognito che ci ridigerà alla pagina di login con Google se vogliamo registrarci con un Account Google

== Caricamento di un luogo

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/UploadPlaceI.png", height: 40%),
    caption: [Schermata di caricamento luogo: foto, nome e descrizione]
    ),
    figure(
    image("../resources/images/app-screenshots/UploadPlaceII.png", height: 40%),
    caption: [Schermata di caricamento luogo: indirizzo e orari di apertura]
    ),
)

Selezionando il pulsante di aggiunta (come utente registrato) si può accedere alla schermata di caricamento di un luogo, dove si può inserire:
- Una o più foto del luogo;
- Il nome del luogo;
- La descrizione del luogo;
- L'indirizzo del luogo, con strada, città, codice postale e provincia, toccando il pulsante sotto si può selezionare l'indirizzo da una mappa;
- Gli orari di apertura del luogo: per ogni giorno si può aggiungere un intervallo orario con ora di apertura e ora di chiusura;
- Il prezzo;
- La possibilità di prenotare un posto;
- Le caratteristiche del luogo, selezionando quelle che offre;
- I contatti del luogo, con mail, numero di telefono e la possibilità di aggiungere uno o più sito web.

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/UploadPlaceIII.png", height: 40%),
    caption: [Schermata di caricamento luogo: prezzo e caratteristiche]
    ),
    figure(
    image("../resources/images/app-screenshots/UploadPlaceIV.png", height: 40%),
    caption: [Schermata di caricamento luogo: contatti]
    ),
)

=== Filtri e ricerca

#grid(
  columns: (1fr,1fr),
  gutter: 3pt,
  figure(
    image("../resources/images/app-screenshots/ListWithSearch.png", height: 40%),
    caption: [Casella di ricerca nella lista luoghi]
    ),
    figure(
    image("../resources/images/app-screenshots/FiltersI.png", height: 40%),
    caption: [Schermata filtri di ricerca]
    ),
)

Selezionando il tasto di ricerca in basso a destra nella schermata della lista dei luoghi o della mappa dei luoghi apparre una casella di ricerca nella quale si può cercare un luogo per nome. Se si seleziona il pulsante di filtraggio in basso alla casella di ricerca si può filtrare la lista dei luoghi a seconda delle proprie preferenze, si può filtrare per:
- Soli posti gratuiti;
- Per valutazione media;
- Per ora di apertura oppure se sono aperti nel momento in cui si effettua la ricerca;
- Soli posti che accettano prenotazioni;
- Per caratteristiche, selezionando quelle che si vogliono cercare.
Per la lista luoghi, in alto a destra della schermata dei filtri si può ordinare la lista per:
- Distanza;
- Valutazione media;
- Data di aggiornamento.
Dopo aver selezionato i filtri si può applicare la ricerca toccando il bottone _Mostra luoghi_ in fondo.

#figure(
    image("../resources/images/app-screenshots/FiltersII.png", height: 40%),
    caption: [Schermata filtri di ricerca: filtraggio per caratteristica]
    ),
