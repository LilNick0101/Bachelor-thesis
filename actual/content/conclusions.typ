#v(10pt)

= Conclusione

Alla fine il tirocinio è durato in totale 320 ore di lavoro (o 8 settimane lavorative di 40 ore di lavoro), con la fine effettiva del tirocinio il 25/08/2023. 
In seguito, verranno segnati il consuntivo periodico rispetto al piano di lavoro iniziale, il resoconto degli obiettivi e le eventuali variazioni rispetto a quanto pianificato.

== Consuntivo periodico

=== Periodo 1 (28/06/2023 - 05/07/2023)

In questo periodo ho iniziato il periodo di formazione partendo con un rapido studio del linguaggio di programmazione _Kotlin_, studiandone la sintassi e i costrutti, e subito dopo ho iniziato con il corso online *Android Basics with Compose* partendo con l'apprendimento di _Jetpack Compose_.

#figure(
    image("../resources/images/charts/ore_I.png", width: 75%),
    caption: [Grafico consuntivo ore periodo 1.]
)

#figure(
    image("../resources/images/charts/requisiti_I.png", width: 75%),
    caption: [Grafico requisiti soddisfatti periodo 1.]
)

Vedendo dai grafici, in questo periodo ho speso 40 ore di formazione ma non ho soddisfatto ancora nessun requisito, dato che ero ancora in periodo di formazione.

=== Periodo 2 (06/07/2023 - 19/07/2023)

In questo periodo:
- Ho continuato il periodo di formazione, imparando la struttura architetturale, ad usare client come _Ktor_ per scambiare dati remoti e ad usare _Room_;
- Ho finito il periodo di formazione con una breve demo finale;
- Ho iniziato a lavorare sul progetto effettivo, partendo con la creazione dell'applicazione e l'inizio dell'implementazione della lista dei luoghi, partendo dall'interfaccia grafica.

#figure(
    image("../resources/images/charts/ore_II.png", width: 75%),
    caption: [Grafico consuntivo ore periodo 2.]
)

#figure(
    image("../resources/images/charts/requisiti_II.png", width: 75%),
    caption: [Grafico requisiti soddisfatti periodo 2.]
) 

Vedendo dai grafici, in questo periodo ho speso 80 ore lavorative e ho soddisfatto in totale 4 requisiti su 56.

=== Periodo 3 (20/07/2023 - 02/08/2023)

In questo periodo:
- Ho continuato e finito la schermata della lista dei luoghi, implementando i filtri e l'ordinamento della lista;
- Ho iniziato e finito l'implementazione della schermata di dettaglio del luogo;
- Ho sviluppato anche la classe di repository dei luoghi e la classe per le chiamate alle API dei luoghi;
- Alla fine del periodo ho iniziato anche a lavorare sull'interfaccia grafica della schermata del caricamento di un nuovo luogo.

Le funzionalità completate in questo periodo sono state:
    - *F1*: Lista dei luoghi (con funzione di ordinamento e filtraggio);
    - *F3*: Visualizzazione in dettaglio di un luogo.

#figure(
    image("../resources/images/charts/ore_III.png", width: 75%),
    caption: [Grafico consuntivo ore periodo 3.]
)

#figure(
    image("../resources/images/charts/requisiti_III.png", width: 75%),
    caption: [Grafico requisiti soddisfatti periodo 3.]
)

Vedendo dai grafici, in questo periodo ho speso 80 ore lavorative e ho soddisfatto in totale 22 requisiti su 56.

=== Periodo 4 (03/08/2023 - 16/08/2023)

In questo periodo:
- Ho implementato la chiamata al back-end per il caricamento di un nuovo luogo, concludendo la schermata;
- Ho impostato la classe per configurare _AWS Cognito_ e ho implementato l'interfaccia grafica e le funzionalità della schermata di login;
- Ho sviluppato la pagina del profilo utente, con la creazione della classe di repository degli utenti e la classe API per gli utenti;
- Ho sviluppato la mappa dei luoghi con funzione di filtraggio, ci ho messo meno tempo dato che possiede una logica simile alla lista dei luoghi.

Le funzionalità completate in questo periodo sono state:
    - *F2*: Mappa dei luoghi (con funzione di filtraggio);
    - *F4*: Caricamento di un luogo;
    - *F5*: Pagina di login;
    - *F6*: Pagina del profilo utente, con lista dei luoghi caricati e dei luoghi salvati.

#figure(
    image("../resources/images/charts/ore_IV.png", width: 75%),
    caption: [Grafico consuntivo ore periodo 4.]
)

#figure(
    image("../resources/images/charts/requisiti_IV.png", width: 75%),
    caption: [Grafico requisiti soddisfatti periodo 4.]
) 

Vedendo dai grafici, in questo periodo ho speso 80 ore lavorative e ho soddisfatto in totale 43 requisiti su 56.

=== Periodo 5 (17/08/2023 - 25/08/2023)

Nel periodo finale:
- Mi sono impegnato a impostare il database locale _Room_;
- Ho implementato la funzionalità di salvataggio di un luogo;
- Ho dato gli ultimi ritocchi all'applicazione sistemando alcuni problemi noti.

#figure(
    image("../resources/images/charts/ore_V.png", width: 75%),
    caption: [Grafico consuntivo ore periodo 5.]
)

#figure(
    image("../resources/images/charts/requisiti_V.png", width: 75%),
    caption: [Grafico requisiti soddisfatti periodo 5.]
)

Vedendo dai grafici, in questo periodo ho speso 40 ore lavorative, con due giorni di pausa in mezzo, e ho soddisfatto in totale 47 requisiti su 56.

=== Variazioni rispetto alla pianificazione

Rispetto il piano di lavoro iniziale, il periodo di formazione è durato una settimana in più del previsto, in quanto ho avuto bisogno di più tempo per finire il corso online.
Inoltre, le schermate di login e profilo utente sono state sviluppate in un periodo diverso da quello previsto, in quanto è stato trovato più comodo ad iniziare con la schermata della lista dei luoghi e la visualizzazione dei dettagli dei luoghi.
Le attività pianificate per il quinto periodo non sono state realizzate per mancanza di tempo.

#pagebreak()
== Resoconto obiettivi e prodotti attesi

Alla fine del tirocinio ho raggiunto i seguenti obiettivi:

#figure(
    table(
        fill: (_, row) => if calc.odd(row) { luma(240) } else { white },
        columns: (0.3fr, 1fr, 0.3fr),
        align: horizon,
        [*Obiettivo*], [*Resoconto*], [*Grado di completamento*],
        [*O-1*],[Sono riuscito a comprendere lo sviluppo di un'applicazione mobile e di sviluppare a pieno un'applicazione funzionante, sperimentando lo sviluppo sia della logica di business che dell'interfaccia grafica], [Completato],
        [*O-2*],[Sono riuscito a sperimentarmi con l'interazione con un servizio remoto RestFul JSON, sia per ricevere dati che per inviare dati, e sono riuscito a presentare con successo i dati ricevuti nell'applicazione], [Completato],
        [*O-3*],[Grazie agli stand-up giornalieri ho avuto esperienza con una tipologia di lavoro agile che si concentra sul lavoro di squadra con il constante aggiornamento del progresso di lavoro], [Completato]
    ),
    caption: [Riepilogo obiettivi formativi tirocinio.]
)

Per gli obiettivi formativi, in sintesi, sono riuscito a raggiungere tutti gli obiettivi con successo.

Per quanto riguardano i prodotti finali attesi:

#figure(
    table(
        fill: (_, row) => if calc.odd(row) { luma(240) } else { white },
        columns: (0.3fr, 1fr, 0.3fr),
        align: horizon,
        [*Prodotto/i*], [*Resoconto*], [*Grado di completamento*],
        [*P-1*],[L'applicazione è stata sviluppata ed è funzionante, con la maggior parte dei requisiti soddisfatti], [Completato],
        [*P-2*],[I test automatici sono stati sviluppati nella parte di formazione ma non sono stati sviluppati per l'applicazione in sé], [Parzialmente completato],
        [*P-3* e *P-4*],[Non sono stati fatti per mancanza di tempo], [Non completati]
    ),
    caption: [Riepilogo prodotti attesi tirocinio.]
)

Questa mancanza di tempo è dovuta ad un ritardo dell'inizio dello sviluppo del progetto effettivo a causa di una durata maggiore del previsto per la formazione, che è durata 1 settimana in più del previsto.

Per quanto riguardano i rischi:
- Il rischio che si è presentato in maniera più evidente è stato *R-1* che come già detto ha portato ad un ritardo nello sviluppo del progetto effettivo, ma che non ha portato a nessun problema di sorta, in quanto l'applicazione è stata sviluppata e funzionante, anche se non con tutti i requisiti soddisfatti;
- Il rischio *R-2* non si è presentato in quanto già avevo una conoscenza di base di API REST dagli anni passati in università, l'unica cosa che ho dovuto apprendere è stata l'autenticazione utente con il token generato da _Cognito_;
- Il rischio *R-3* non si è presentato in quanto durante il progetto sono stato in grado di lavorare con abbastanza autonomia, alcune volte chiedendo pareri o riportando il progresso del lavoro e raramente mi sono trovato in situazioni di stallo;
- Il rischio *R-4* non si è presentato in quanto tutte le funzionalità sono state integrate senza problemi e tutte le _Pull requests_ venivano approvate in giornata.

== Considerazioni finali

Tutto sommato mi ritengo soddisfatto di questa esperienza di tirocinio, in quanto mi ha permesso di imparare a sviluppare un'applicazione mobile completa utilizzando le tecnologie più recenti e mi ha permesso di lavorare con un team di sviluppo in un ambiente professionale come l'azienda. 
Mi sarebbe piaciuto poter completare il progetto con tutti i prodotti attesi completati: infatti, personalmente una cosa che avrei migliorato sarebbe stata la mia gestione del tempo in generale, in quanto ciò ha portato via tempo allo sviluppo del progetto effettivo. Concludendo penso che tutto ciò che ho imparato durante questa esperienza certamente la userò in futuro, sia per quanto riguarda lo sviluppo di applicazioni mobile, ma soprattutto per quanto riguarda la gestione del tempo e del lavoro in un team di sviluppo. //Grazie per l'attenzione.//