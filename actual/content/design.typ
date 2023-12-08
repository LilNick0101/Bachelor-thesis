#import "@preview/glossarium:0.2.0": gls

= Progettazione

Qui verrà spiegata la progettazione dell'applicazione, in particolare verrà spiegata l'architettura dell'applicazione e le scelte progettuali fatte, in sintesi ho deciso di utilizzare un'architettura a tre livelli e il pattern _MVVM_ (_Model-View-ViewModel_).

Per quanto riguarda il design dell'interfaccia grafica, sono partito da un mock-up già fatto del risultato finale come punto di partenza, modificando alcuni componenti per adattarli meglio al design di _Android_ e per renderli più semplici da interagire.

In generale per la struttura architetturale ho cercato di seguire le best practices dell'architettura moderna di un'applicazione _Android_ quindi ho deciso di utilizzare un'architettura a tre livelli (o _layers_), composta dai seguenti livelli:

- Il *livello UI* (_UI Layer_): contiene l'interfaccia grafica che mostra i dati all'utente e permette di interagire con l'applicazione.

- Il *livello dati* (_Data Layer_): contiene i dati dell'applicazione, la logica di business su di essi e le sorgenti dati dell'applicazione.

- Il *livello dominio* (_Domain Layer_): è un livello facoltativo situato tra il livello UI e il livello dati ed è utilizzato per semplificare o riutilizzare codice.

#figure(
    image("../resources/images/mad-arch-overview.png", width: 70%),
    caption: [Schema architettura a livelli, da _Guide to app architecture_ @mad.]
) <Architettura>

L'utilizzo di questa architettura porta un codice mantenibile, testabile, scalabile e con una buona separazione delle responsabilità tra i vari livelli.

== Livello UI

#figure(
    image("../resources/images/mad-arch-overview-ui.png", width: 60%),
    caption: [Schema livello UI, da _Guide to app architecture_ @mad.]
) <Livello-UI>

Il *livello UI* (o *livello di presentazione*) si occupa di presentare i dati all'utente e di reagire all'input dell'utente. Ad ogni interazione utente, l'interfaccia utente si aggiorna per riflettere le modifiche.

L'interfaccia grafica è rappresentata dai _Composable_ di _Jetpack Compose_, cioè delle funzioni _Kotlin_ che rappresentano parti dell'interfaccia grafica come superfici, pulsanti, immagini, o elementi di layout come colonne, righe e griglie: ogni schermata dell'applicazione è un insieme di _Composable_ innestati.

Ogni schermata ha un _ViewModel_ associato che si occupa di gestire la logica di presentazione della schermata e rappresenta il titolare dello stato dell'interfaccia grafica: contiene i dati da mostrare all'interfaccia grafica e scambia i dati con gli altri livelli.
Per esempio, per la lista dei luoghi ci sarà un _ViewModel_ associato che carica la lista dei luoghi dalla sorgente dati e li presenta a schermo, inoltre viene gestito l'input utente come la selezione di un filtro per la lista.

== Livello dati

#figure(
    image("../resources/images/mad-arch-overview-data.png", width: 60%),
    caption: [Schema livello dati, da _Guide to app architecture_ @mad.]
) <Livello-dati>

Il *livello dati* di un'applicazione _Android_ contiene la logica di business e si occupa ci come l'applicazione crea, archivia e modifica i dati.

Per il livello dati ho utilizzato il pattern repository, i *repository* si occupano di esporre i dati agli altri livelli, senza che essi sappiano da dove vengono questi dati, e si occupano della logica di business sui dati. Nel progetto ho creato un repository per ogni tipo di risorsa (luogo, utente ...) e questi repository scambiano dati con due sorgenti dati:

- Il *database locale*, cioè il database _Room_, è la fonte di riferimento dei dati in quanto è la più veloce da accedere e permette di avere i dati disponibili anche offline. Il database locale è composto da una classe di database che crea il database locale se non esiste già e, attraverso una classe DAO (_Data Access Object_), permette di prelevare o modificare i dati da esso; la classe DAO consente l'accesso alle tabelle del database locale. Il database locale è relazionale, per vederne la struttura consultare il diagramma ER nell'#link(label("db-scheme"),[appendice]), in sintesi ho cercato di avere una struttura simile alle risposte JSON del back-end remoto;

- Il *back-end remoto*, cioè il servizio API REST che fornisce i dati. Il back-end remoto è la sorgente secondaria dei dati, in quanto richiede una connessione a Internet, ma permette di avere i dati sempre aggiornati. Una classe di servizio API viene creata per ogni risorsa.

Nel progetto quando l'applicazione carica i dati, prima carica i dati dalla fonte di riferimento e poi sincronizza i dati del database locale con il back-end remoto, salvando i dati nuovi nel database e aggiornando quelli già presenti. In questo modo, l'applicazione può mostrare i dati anche offline e può mostrare i dati più aggiornati quando è connessa ad Internet: questo approccio è detto sincronizzazione basata sul pull ed è quello che ho implementato nel progetto.

== Livello di dominio

#figure(
    image("../resources/images/mad-arch-overview-domain.png", width: 60%),
    caption: [Schema livello di dominio, da _Guide to app architecture_ @mad.]
) <Livello-dominio>

Il *livello di dominio* è un livello posto in mezzo tra il livello dati e il livello di presentazione, è responsabile dell'incapsulamento di una logica di business più complessa o di logica che viene riutilizzata su più _ViewModel_. In questo livello si trovano le classi *UseCase* che sono responsabili ciascuna di una singola funzionalità (si occupano di un solo _caso d'uso_).

I _ViewModel_ possono utilizzare le classi *UseCase* per ottenere dati complessi che necessitano di combinare dati da più repository o per ottenere dati che necessitano di una elaborazione più complessa. 

Un esempio può essere l'ottenimento dei dettagli di un luogo con l'autore associato, in questo caso viene creata una classe _UseCase_ che prende i dati del luogo dal repository dei luoghi e i dati dell'autore dal repository degli utenti e li combina in un unico oggetto che viene mandato al _ViewModel_.

Questo livello non è necessario se il progetto è abbastanza piccolo, a volte è possibile utilizzare direttamente i repository nei _ViewModel_, nel progetto è stato usato più a scopo educativo.

== Dependency injection

Il pattern *Dependency Injection* (In breve *DI*) è un pattern che permette di semplificare la gestione delle dipendenze tra le classi. In questo modo, invece di creare le dipendenze all'interno delle classi, le dipendenze vengono create all'esterno e poi passate alle classi che ne necessitano. Questo permette di semplificare la gestione delle dipendenze e di rendere il codice più testabile.

Nel progetto è stato utilizzato il framework _Hilt_ per implementare il pattern _DI_. Per esempio, è stato utilizzato per iniettare le classi _UseCase_ e i repository nei _ViewModel_ e le sorgenti dati nei repository.