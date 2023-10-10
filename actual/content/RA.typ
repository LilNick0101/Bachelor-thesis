#import "@preview/glossarium:0.2.0": gls
#import "@preview/tablex:0.0.5": tablex, hlinex, vlinex, colspanx, rowspanx

#set heading(numbering: "1.1.1")

= Analisi dei Requisiti

L'analisi dei requisiti è stata fatta insieme al tutor aziendale e agli altri collaboratori e tirocinanti

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
- *Scenarii alternativi*:
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

=== SUCD-4: Visualizzazione recensioni location

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

=== SUCO-14: Ordinamento lista delle location

- *Descrizione*: L'utente vuole ordinare la lista delle location
- *Attore principale*: Visitatore
- *Precondizioni*: 
    - *SUCO-1*: Visualizzazione della lista delle location
- *Postcondizioni*: L'utente visualizza la lista delle location ordinata secondo l'ordinamento selezionato
- *Scenario principale*:
    + L'utente visualizza la lista delle location
    + L'utente seleziona di ordinare la lista per distanza, valutazione o data d'inserimento
    + L'utente visualizza la lista delle location ordinata secondo l'ordinamento selezionato

=== SUCO-15: Filtraggio lista delle location

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

== Requisiti

I requisiti sono classificati con la seguente codifica:

#align(
    center
)[
    *SR[Tipo]-numero*
]

- *SR*: Acronimo di _Smart Offices Requirment_
- *Tipo*: Tipo di requitsito, può essere:
    - *O*: Obbligatorio, ovvero un requisito che è richiesto per raggiungere il #gls("MVP")
    - *D*: Desiderabile, ovvero un requisito che non è obbligatorio ma consente di dare valore aggiunto all'applicazione
    - *F*: Facoltativo, ovvero un requisito che non è importante per l'applicazione ma che può essere implementato se si ha tempo

#let SROcounter = counter("SROcounter")
#let printSRO() = block[
  #SROcounter.step()
  *SRO-#SROcounter.display()*
]

#let SRDcounter = counter("SRDcounter")
#let printSRD() = block[
  #SRDcounter.step()
  *SRD-#SRDcounter.display()*
]

#let SRFcounter = counter("SRFcounter")
#let printSRF() = block[
  #SRFcounter.step()
  *SRF-#SRFcounter.display()*
]

#show figure: set block(breakable: true)

#figure(
    tablex(
        columns: (0.5fr, 1fr, 0.5fr),
        align: horizon,
        [*Requisito*], [*Descrizione*], [*Casi d'uso*],
        [#printSRO()],[L'utente vuole visualizzare la lista delle location], [SUCO-1],
        [#printSRO()],[L'utente vuole selezionare una location dalla lista per vederne i dettagli], [SUCO-1],
        [#printSRO()],[L'utente vuole visualizzare i dettagli di una location], [SUCO-2],
        [#printSRO()],[L'utente vuole visualizzare dove si trova una location], [SUCO-2],
        [#printSRO()],[L'utente vuole visualizzare i contatti di una location], [SUCO-2],
        [#printSRO()],[L'utente vuole visualizzare le caratteristiche di una location], [SUCO-2],
        [#printSRO()],[L'utente vuole visualizzare gli orari di apertura della location], [SUCO-2],
        [#printSRO()],[L'utente vuole visualizzare le immagini di una location], [SUCO-2],
        [#printSRO()],[L'utente vuole visualizzare il numero di recensioni di una location], [SUCO-2],
        [#printSRO()],[L'utente vuole visualizzare la mappa delle location], [SUCO-3],
        [#printSRO()],[L'utente vuole selezionare una location dalla mappa per vederne i dettagli], [SUCO-3],
        [#printSRO()],[L'utente visualizza un messaggio a causa di un errore nel caricamento dei dati], [SUCO-4],
        [#printSRD()],[L'utente visualizza un messaggio che indica che la lista delle location è vuota], [SUCD-1],
        [#printSRO()],[L'utente vuole effettuare il login all'suo profilo utente], [SUCO-5],
        [#printSRO()],[L'utente vuole effettuare il login all'suo profilo utente utilizzando un Account Google], [SUCO-6],
        [#printSRD()],[L'utente vuole creare un nuovo account per registrarsi sull'applicazione], [SUCD-2],
        [#printSRD()],[L'utente inserisce un nome utente per registrarsi], [SUCD-2],
        [#printSRD()],[L'utente inserisce una email per registrarsi], [SUCD-2],
        [#printSRO()],[L'utente vuole effettuare il logout dal suo profilo utente], [SUCO-7],
        [#printSRO()],[L'utente vuole visualizzare il suo profilo utente], [SUCO-8],
        [#printSRO()],[L'utente visualizza i suoi dati personali], [SUCO-8],
        [#printSRO()],[L'utente vuole caricare una nuova location], [SUCO-9],
        [#printSRO()],[L'utente inserisce il nome della location da caricare], [SUCO-9],
        [#printSRO()],[L'utente inserisce dove si trova la location], [SUCO-9],
        [#printSRO()],[L'utente inserisce i contatti della location], [SUCO-9],
        [#printSRO()],[L'utente inserisce una descrizione della location], [SUCO-9],
        [#printSRO()],[L'utente inserisce gli orari di apertura della location], [SUCO-9],
        [#printSRD()],[L'utente visualizza un messaggio che indica che non ha inserito tutte le informazioni richieste della location da caricare], [SUCD-2],
        [#printSRO()],[L'utente visualizza un messaggio a causa di un errore nel caricamento di una location], [SUCO-11],
        [#printSRO()],[L'utente vuole salvare una location nei preferiti], [SUCO-12],
        [#printSRO()],[L'utente vuole disfare l'azione di salvataggio nei prefeirit],[SUCO-12],
        [#printSRO()],[L'utente vuole visualizzare la lista delle location preferite salvate], [SUCO-13],
        [#printSRO()],[L'utente vuole selezionare una location dalla lista delle location preferite salvate], [SUCO-13],
        [#printSRD()],[L'utente vuole visualizzare la lista delle location caricate], [SUCD-3],
        [#printSRD()],[L'utente vuole selezionare una location la lista delle location caricate], [SUCD-3],
        [#printSRO()],[L'utente vuole visualizzare la lista delle recensioni di una location], [SUCD-4],
        [#printSRO()],[L'utente vuole caricare una nuova recensione di una location], [SUCD-5],
        [#printSRO()],[L'utente vuole inserire il testo di una nuova recensione], [SUCD-5],
        [#printSRO()],[L'utente vuole inserire una valutazione insieme alla recensione], [SUCD-5],
        [#printSRD()],[L'utente visualizza un messaggio a causa di un errore nel caricamento della nuova recensione], [SUCD-6],
        [#printSRF()],[L'utente vuole visualizzare la lista delle recensioni caricate da lui], [SUCF-1],
        [#printSRO()],[L'utente vuole ordinare la lista delle location per distanza], [SUCO-14],
        [#printSRO()],[L'utente vuole ordinare la lista delle location per valutazione], [SUCO-14],
        [#printSRO()],[L'utente vuole ordinare la lista delle location per data di inserimento], [SUCO-14],
        [#printSRO()],[L'utente vuole filtrare la lista delle location per nome], [SUCO-15],
        [#printSRO()],[L'utente vuole filtrare la lista delle location per prezzo], [SUCO-15],
        [#printSRO()],[L'utente vuole filtrare la lista delle location per le caratteristiche scelte], [SUCO-15],
        [#printSRO()],[L'utente vuole filtrare la lista delle location per orario di apertura], [SUCO-15],
    ),
    caption: [Requsiti di Smart Officies]
)

#figure(
    table(
        columns: (1fr, 1fr),
        align: horizon,
        [*Tipo di requisito*], [*Numero*],
        [Obbligatori],[#SROcounter.display()],
        [Desiderabili],[#SRDcounter.display()],
        [Facoltativi],[#SRFcounter.display()],
    ),
    caption: [Conteggio requsiti di Smart Officies]
)
