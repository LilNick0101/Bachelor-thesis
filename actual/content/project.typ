

= Pianificazione

Prima dell'inizio del tirocinio è stato pianificato un piano di lavor suddiviso in 5 periodi, ognuno di due settimane ad eccezione del primo e del ultimo periodo che durano una sola settimana, con un obiettivo da raggiungere per ogni periodo.

=== Vincoli temporali

Lo _stage_ aveva una durata prevista di 8 settimane con 40 ore per settimana, con orario di lavoro dalle 8:30 alle 17:30 con un'ora di pausa pranzo dalle ore 13:00 alle 14:00 e altre due pause intermedie, una alla mattina dalle 10:30 alle 11:00 e l'altra dalle 15:30 alle 16:00, per un totale di 8 ore giornaliere.

In seguito il piano di lavoro inizialmente pianificato per lo stage:

#figure(
    table(
        columns: (1fr, 2fr),
        align: horizon,
        [*Periodo*], [*Descrizione*],
        [Periodo 1 (1 settimana)], [Introduzione al linguaggio di programmazione Kotlin e modalità di deploy automatico in ambito mobile.],
        [Periodo 2 (2 settimane)], [Progettazione e sviluppo sezione dell'pplicazione relativa a schermate di registrazione, login e recupero password],
        [Periodo 3 (2 settimane)], [Progettazione e sviluppo sezione dell'applicazione relativa alla gestione profilo e dati personali e per la ricerca di location per fare smart working],
        [Periodo 4 (2 settimane)], [Progettazione e sviluppo sezione dell'applicazione relativa alla segnalazione location di smart working e le funzioni per la recensire location e/o segnalatore.],
        [Periodo 5 (1 settimana)], [Testing finale e scrittura documentazione di quanto sviluppato]
    ),
    caption: [Piano di lavoro]
)

=== Obiettivi formativi

Gli obiettivi formativi del stage sono stati i seguenti:

- *O-1*: Approfondire le tematiche di sviluppo mobile
- *O-2*: Approfondire le tematiche di interazione con servizi esterni
- *O-3*: Apprendere metodologie di lavoro agile

=== Analisi dei rischi

I possibili rischi previsti per il tirocinio sono stati i seguenti:

- *R-1*: Difficoltà apprendimento del linguaggio di programmazione e sviluppo mobile
- *R-2*: Difficoltà apprendimento API backend
- *R-3*: Difficoltà nello sviluppo applicazione mobile
- *R-4*: Difficoltà nello sviluppo e gestione del deploy attraverso sistemi di CI/CD in ambito mobile

=== Prodotti aspettati

In seguito vengono elencati gli prodotti inizialmente pianificati insieme al piano di lavoro:

+ *P-1*: Sviluppare applicazione mobile funzionante
+ *P-2*: Sviluppare test automatici
+ *P-3*: Documentazione dell'intero progetto di stage 
+ *P-4*: Articolo per il blog di zero12 dove raccontare l'esperienza vissuta in azienda

== Tecnologie utilizzate

- *Kotlin*: linguaggio di programmazione general purpose, multi-paradigma, svillupato da JetBrains e utilizzato per lo sviluppo dell'applicazione Android e per la scrittura dei test automatici;
- *Gradle*: sistema di automazione dello sviluppo basato su Apache Ant e Maven, utilizzato per la compilazione del codice sorgente e la gestione delle dipendenze, rispetto a Maven, Gradle usa un DSL basato su _Groovy_ invece di XML; //Citation needed
- *Jetpack Compose*: moderno toolkit di UI per Android per lo sviluppo di UI native in Kotlin, sviluppato da Google, utilizzato per lo sviluppo dell'interfaccia grafica dell'applicazione Android. permette di implementare interfaccie grafiche usando un linguaggio conciso ed è compatibile con codice Android già esistente;
- *Material Design 3*: sistema di design sviluppato da Google, utilizzato per lo sviluppo dell'interfaccia grafica dell'applicazione Android ed utilizzato con _Jetpack Compose_;
- *Hilt*: libreria di dependency injection per Android, sviluppata al di sopra della libreria Dagger, utilizzata per la dependency injection delle dipendenze nell'applicazione Android;
- *Ktor*: framework per la creazione di client e server web asincroni, utilizzato per effetuare chiamate al back-end;
- *Room*: layer d'astrazione per SQLite, un database relazionale, utilizzato per la creazione e la gestione del database locale.
- *AWS Cognito*: servizio utilizzato per l'autenticazione dei utenti all'interno dell'applicazione;

== Strumenti di sviluppo

=== Sistema operativo

Essendo sempre stato in presenza durante l'intera durata dello stage, ho usato la macchina fornita dallo stage, cioè un _MacBook Pro 2017_ con processore Intel e con installato _macOS Ventura 13.4_

=== Android Studio

Per la codifica del prodotto mi sono servito di _Android Studio_, l'ambiente di sviluppo integrato gratuito fornito da _JetBrains_, essendo ufficiale per lo sviluppo di applicazioni Android; per il debugging e l'installazione dell' applicazione su dispositivi _Android_ mi sono servito del tool _Android Debug Bridge_ (o _ADB_).

=== Altri strumenti

Per il versionamento del codice sorgente ho utilizzato _Git_, un sistema di controllo versione distribuito _open source_, e _Bitbucket_ come repository remota.
Durante lo stage ho utilizzato anche _Fork_, un interfaccia grafica per _Git_, e _Postman_ per testare le API del back-end.

== Strumenti organizzativi

Per la gestione del lavoro è stata utilizzata la suite di Atlassian:

- *Jira*: software gestionale per il monitoraggio del lavoro svolto, si adatta bene alla filosofia del lavoro _Agile_, in quanto può essere utilizzato come una Scrum board, durante il stage è stato utilizzato per il tracciamento del lavoro contrassegnando il lavoro fatto.

- *Bitbucket*: servizio di hosting del repository del codice sorgente basato su _Git_: utilizzato per il versionamento e salvataggio del codice e per il lavoro collaborativo. Per il stage è stato utilizzato come repository remota del codice sorgente, inoltre è stato utilizzato per le revisioni del codice scritto tamite _Pull Request_.

- *Confluence*: wiki aziendale basata sul web, utilizzato per la stesura della documentazione aziendale

Per la comunicazione e la collaborazione sono stati utilizzati i seguenti strumenti:

- *Slack*: software di collaborazione aziendale svillupato da _Slack technologies_, utilizzato dall'azienda per comunicazioni rapide, con possibilità di creare canali all'interno dello stesso _server_ ed effetuare incontri. Per il stage è stato creato un canale condiviso con altri collaboratori e tirocinanti per comunicare e condividere informazioni.

- *Google Meet*: servizio di _Google_ per effetuare videoconferenze online. Usata in azienda, anche nel corso dello _stage_ per effetuare gli stand-up giornalieri e per rimanere aggiornati sul progresso generale del progetto.

== Formazione 

Nella prima fase del tirocinio si è concentrato sulla formazione tecnica necessaria, utilizzando anche risorse online come il corso ufficiale *Android Basic Compose* e la documentzione ufficiale di Google

Ho cominciato con un rapido studio delle tecnologie con il linguaggio di programmazione *Kotlin*, studiandone la sintassi e i costrutti, in seguito sono passato a studiare il framework di UI _Jetpack Compose_ e i fondamenti dell'architettura di un applicazione Android, quindi l'utilizzo del pattern Model-view-ViewModel in un applicazione Android, l'architettura a tre strati (UI, dominio, data), e il Dependency Injection tramite la libreria _hilt_.

Il periodo di training poi finì con una breve demo tramite lo sviluppo controllato di un'app, con poche funzionalità utili ma
molto ben strutturata. Durante la demo, ogni feature creata passava sotto Peer Review tramite Pull Request su *Bitbucket*.


