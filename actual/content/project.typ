#v(10pt)
= Il progetto

In questo capitolo viene descritto il progetto di stage in largo, in particolare come è stato pianificato, le tecnologie usate per realizzare il prodotto, gli strumenti utilizzati per lo sviluppo, gli strumenti utilizzati per la gestione del lavoro e in breve cosa si è fatto nel periodo di formazione.

== Pianificazione

Prima dell'inizio del tirocinio è stato pianificato un piano di lavoro organizzando il programma di lavoro in 5 periodi, ognuno di due settimane a eccezione del primo e del ultimo periodo che durano una sola settimana, con un obiettivo da raggiungere per ogni periodo.

=== Vincoli temporali

Il tirocinio aveva una durata prevista di 8 settimane con 40 ore per settimana, con orario di lavoro dalle 8:30 alle 17:30 con un'ora di pausa pranzo dalle ore 13:00 alle 14:00 e altre due pause intermedie, una alla mattina dalle 10:30 alle 11:00 e l'altra dalle 15:30 alle 16:00, per un totale di 8 ore giornaliere.

In seguito, il programma di lavoro inizialmente pianificato per il tirocinio:

#figure(
    table(
        columns: (1fr, 2fr),
        align: horizon,
        [*Periodo*], [*Descrizione*],
        [Periodo 1 (1 settimana)], [Introduzione al linguaggio di programmazione _Kotlin_ e modalità di deploy automatico in ambito mobile],
        [Periodo 2 (2 settimane)], [Progettazione e sviluppo sezione dell'applicazione relativa a schermate di registrazione, login e recupero password],
        [Periodo 3 (2 settimane)], [Progettazione e sviluppo sezione dell'applicazione relativa alla gestione profilo e dati personali e per la ricerca di location per fare smart working],
        [Periodo 4 (2 settimane)], [Progettazione e sviluppo sezione dell'applicazione relativa alla segnalazione location di smart working e le funzioni per la recensire location e/o segnalatore],
        [Periodo 5 (1 settimana)], [Testing finale e scrittura documentazione di quanto sviluppato]
    ),
    caption: [Programma di lavoro pianificato.]
)

=== Obiettivi formativi

Nel piano di lavoro sono stati identificati i seguenti obiettivi formativi:

- *O-1*: Approfondire le tematiche di sviluppo mobile;
- *O-2*: Approfondire le tematiche di interazione con servizi esterni;
- *O-3*: Apprendere metodologie di lavoro agile.

=== Analisi dei rischi

I possibili rischi individuati nel piano di lavoro sono stati i seguenti:

- *R-1*: Difficoltà apprendimento del linguaggio di programmazione e sviluppo mobile;
- *R-2*: Difficoltà apprendimento API back-end;
- *R-3*: Difficoltà nello sviluppo applicazione mobile;
- *R-4*: Difficoltà nello sviluppo e gestione del deploy attraverso sistemi di CI/CD in ambito mobile.

=== Prodotti aspettati

In seguito, vengono elencati i prodotti inizialmente pianificati nel piano di lavoro:

- *P-1*: Sviluppare applicazione mobile funzionante;
- *P-2*: Sviluppare test automatici;
- *P-3*: Documentazione dell'intero progetto di stage;
- *P-4*: Articolo per il blog di _Zero12_ dove raccontare l'esperienza vissuta in azienda.

== Tecnologie utilizzate

Le seguenti tecnologie sono state usate per lo sviluppo del prodotto:

- *Kotlin* @kotlin: linguaggio di programmazione _general purpose_, multi-paradigma, svillupato da _JetBrains_ e utilizzato per lo sviluppo dell'applicazione _Android_ e per la scrittura dei test automatici;
- *Gradle* @gradle: sistema di automazione dello sviluppo basato su _Apache Ant_ e _Maven_, utilizzato per la compilazione del codice sorgente e la gestione delle dipendenze; rispetto a _Maven_, _Gradle_ usa un DSL basato su _Groovy_ invece di XML;
- *Jetpack Compose* @compose: moderno toolkit di UI per _Android_ per lo sviluppo di UI native in _Kotlin_, utilizzato per lo sviluppo dell'interfaccia grafica dell'applicazione _Android_. Permette di implementare interfacce grafiche usando un linguaggio conciso, scrivendo meno righe di codice ed è compatibile con codice _Android_ già esistente;
- *Material Design 3* @m3: sistema di design open-source sviluppato da _Google_, definisce le componenti e le linee guida dell'interfaccia grafica supportando le migliori best practices; per il progetto è stato usato con _Jetpack Compose_;
- *Hilt* @hilt: libreria di _Dependency injection_ per _Android_, sviluppata al di sopra della libreria _Dagger_ e utilizzata per implementare il pattern di _Dependency injection_ nell'applicazione _Android_;
- *Ktor* @ktor: framework per la creazione di client e server web asincroni; per il progetto ho utilizzato il client di _Ktor_ per fare chiamate al back-end remoto;
- *Room* @room: una libreria di persistenza locale che fornisce un layer d'astrazione per SQLite, un database relazionale; utilizzato per la creazione e la gestione del database locale;
- *AWS Amplify* @amplify: framework di sviluppo per applicazioni web e mobili di _Amazon Web Services_, utilizzato per configurare _AWS Cognito_;
- *AWS Cognito* @cognito: servizio fornito da _Amazon Web Services_ utilizzato per la registrazione e l'autenticazione degli utenti all'interno dell'applicazione; permette di gestire gli utenti e le loro autorizzazioni.

== Strumenti di sviluppo

=== Sistema operativo

Per l'intera durata dello stage ho utilizzato il notebook fornito dall'azienda, cioè un _MacBook Pro 2017_ con processore _Intel_ con installato _macOS Ventura 13.4_

=== Android Studio

Per la codifica del prodotto mi sono servito di _Android Studio_ @android-studio, l'ambiente di sviluppo integrato gratuito fornito da _JetBrains_, essendo ufficiale per lo sviluppo di applicazioni _Android_ semplifica il processo di build dell'applicazione con _Gradle_ e nell'installazione è incluso un emulatore _Android_. Per il debugging e l'installazione dell'applicazione su dispositivi _Android_ mi sono servito del tool _Android Debug Bridge_ (o _ADB_).

=== Altri strumenti

Per il versionamento del codice sorgente ho utilizzato _Git_, un sistema di controllo versione distribuito _open source_, e _Bitbucket_ come repository del codice remota.
Durante lo stage ho utilizzato anche _Fork_, un'interfaccia grafica per _Git_, e _Postman_, un client API che ho usato per testare le API del back-end.

== Strumenti organizzativi

Per la gestione del lavoro è stata utilizzata la suite di _Atlassian_:

- *Jira*: software di _Issue tracking system_ che consente il bug tracking e la gestione dei progetti sviluppati con metodologie agili. Durante lo stage è stata utilizzata la _Scrum_ board per il tracciamento del lavoro contrassegnando il lavoro fatto e visualizzando i prossimi lavori da fare;
- *Bitbucket*: servizio di hosting remoto del repository del codice sorgente basato su _Git_. Per lo stage è stato utilizzato come repository remoto del codice sorgente ed è stato utilizzato per le revisioni del codice scritto tramite _Pull Request_.

Per la comunicazione e la collaborazione sono stati utilizzati i seguenti strumenti:

- *Slack*: software di collaborazione aziendale sviluppato da _Slack technologies_, utilizzato dall'azienda per comunicazioni rapide, con possibilità di creare canali all'interno dello stesso server ed effettuare incontri. Per lo stage è stato creato un canale condiviso con altri collaboratori e tirocinanti per comunicare e condividere informazioni;
- *Google Meet*: applicazione per effettuare teleconferenze sviluppata da _Google_, usata in azienda anche nel corso del tirocinio per effettuare gli stand-up giornalieri.

== Formazione 

Nella prima fase del tirocinio si è concentrato sulla formazione tecnica necessaria, utilizzando risorse online come il corso ufficiale *Android Basics with Compose* e la documentazione di _Google_.

Ho cominciato lo studio delle tecnologie con il linguaggio di programmazione *Kotlin*, studiandone la sintassi e i costrutti, in seguito sono passato a studiare il framework di UI _Jetpack Compose_ e i fondamenti dell'architettura di un'applicazione _Android_, quindi l'utilizzo del pattern Model-view-ViewModel in un'applicazione _Android_, l'architettura a tre strati (UI, dominio, data), il _Dependency injection_ tramite la libreria _Hilt_ e l'utilizzo della libreria _Room_.

Il periodo di formazione poi finì con una breve demo tramite lo sviluppo controllato di una app, con poche funzionalità utili ma strutturata. Durante la demo, ogni funzionalità creata passava sotto revisione tramite *Pull Request* su _Bitbucket_.