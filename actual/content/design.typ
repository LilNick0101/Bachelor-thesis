#import "@preview/glossarium:0.2.0": gls
#import "@preview/tablex:0.0.5": tablex, hlinex, vlinex, colspanx, rowspanx

= Progettazione

Per quanto riguarda il design dell'interfaccia grafica, sono partito da un mock-up già fatto del risultato finale come punto di partenza, alcuni componenti però sono stati modificati per adattarsi meglio al design di Android e per essere più semplici da interagire.

In generale per la struttura architetturale mi sono fatto aiutare dalle tecnologie offerte da Android quindi ho deciso di utilizzare un architettura a 3 layer, composta dai seguenti layer:

- Il *livello UI* (_UI Layer_): contiene l'interfaccia grafica che mostra i dati all'utente e permette di interagire con l'applicazione.

- Il *livello dati* (_Data Layer_): contiene la logica di business e i dati dell'applicazione, cioè le sorgenti dati dell'applicazione.

- Il *livello dominio* (_Domain Layer_): contiene la logica di dominio dell'applicazione ed è utilizzato per semplificare e riutilizzare codice.

#figure(
    image("../resources/images/mad-arch-overview.png", width: 80%),
    caption: [Schema architettura a livelli.]
) <Architettura>

== Livello UI

Lo scopo del *livello UI* (o *livello di presentazione*) si occupa di presentare i dati all'utente e di permettere all'utente di interagire con l'applicazione. Ad ogni interazione utente, l'interfaccia utente dovrebbe aggiornarsi per riflettere i nuovi dati.

L'interfaccia grafica è rappresentata dai _Composable_ di Jetpack Compose, che sono dei componenti simili a delle funzioni di Kotlin che rappresentano elementi che verranno visualizzati nell'interfaccia grafica.

Inoltre ho utilizzato il pattern *MVVM* (*Model-View-ViewModel*) per separare la logica di business dalla logica di presentazione. In questo pattern, il ViewModel rappresenta il titolare dello stato dell'interfaccia grafica, contiene i dati da mostrare all'interfaccia grafica e ne gestisce la logica.
Ogni schermata dell'applicazione ha un ViewModel associato, quindi ad esempio per la lista dei luoghi ci sarà un ViewModel associato che carica la lista dei luoghi dalla sorgente dati e li presenta a schermo, inoltre viene gestito l'input utente come la selezione di un filtro per la lista.
L'implementazione di questo pattern risulta semplificata grazie all'utilizzo di Hilt, che permette di iniettare i ViewModel direttamente nella UI.

== Livello dati

Il *livello dati* di un'app contiene la logica di business e si occupa ci come l'app crea, archivia e modifica i dati.

Per il livello dati ho utilizzato il pattern Repository, che è un pattern che permette di astrare la sorgente dei dati e di fornire un'interfaccia comune per accedere ai dati. In questo modo, il ViewModel non deve preoccuparsi di dove vengono salvati i dati, ma può semplicemente chiedere al Repository di fornirglieli. Le sorgenti dati da cui il Repository può recuperare i dati sono:

- Il *database locale*, cioè il database Room. Il database locale è la sorgente principale dei dati, in quanto è la più veloce da accedere e permette di avere i dati disponibili anche offline. Il database locale è composto da una classe di database che, attraverso una classe DAO permette di prelevare o modificare i dati del database locale, la classe di DAO viene poi iniettata nei repository.

- Il *back-end remoto*, che è il servizio REST che fornisce i dati. Il back-end remoto è la sorgente secondaria dei dati, in quanto è più lento da accedere e richiede una connessione a internet, ma permette di avere i dati sempre aggiornati. Una classe di servizio API viene creata per ogni endpoint.

Quando l'applicazione carica i dati, carica i dati dal database locale e poi sincronizza i dati del database con il back-end remoto, se necessario. In questo modo, l'applicazione può mostrare i dati anche offline e può mostrare i dati più aggiornati quando è connessa a internet.

== Livello di dominio

Il *livello di dominio* è un livello posto in mezzo tra il livello dati e il livello di presentazione, è responsabile dell'incapsulamento di una logica di business più complessa o di logica che viene riutilizzata su più schermate. In questo livello si trovano le classi _UseCase_ che sono responsabili ciascuna di una _singola_ funzionalità.

Funziona che i ViewModel possono utilizzare le classi UseCase per ottenere dati complessi che necessitano di combinare dati da più Repository o per ottenere dati che necessitano di una elaborazione più complessa. 

Un esempio può essere l'ottenimento dei dettagli di un luogo con l'autore associato, in questo caso viene creata una classe UseCase che prende i dati del luogo dal Repository dei luoghi e i dati dell'autore dalla repository dei utenti e li combina in un unico oggetto che viene mandato al ViewModel

Questo layer è stato usato in modo _aperto_, nel senso che non tutti i ViewModel necessitano di UseCase e quindi si collegano direttamente al livello dati.

== Dependency injection

Il pattern *Dependency Injection* (In breve *DI*) è un pattern che permette di semplificare la gestione delle dipendenze tra le classi. In questo modo, invece di creare le dipendenze all'interno delle classi, le dipendenze vengono create all'esterno e poi passate alle classi che ne necessitano. Questo permette di semplificare la gestione delle dipendenze e di rendere il codice più testabile.

Nel progetto è stato utilizzato il framework _Hilt_ per implementare il pattern Dependency Injection. Per esempio è stato utilizzato per iniettare le classi UseCase e i Repository nei ViewModel e le sorgenti dati nei repository.