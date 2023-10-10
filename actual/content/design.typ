#import "@preview/glossarium:0.2.0": gls
#import "@preview/tablex:0.0.5": tablex, hlinex, vlinex, colspanx, rowspanx

= Progettazione

Per quanto riguarda il design dell'interfaccia grafica, sonoo partito da un mock-up già fatto del risultato finale come punto di partenza, alcuni componenti però sono stati modificati per adattarsi meglio al design di Android e per essere più semplici da intergagire.

In generale per la struttura architetturale mi sono fatto aiutare dalle tecnologie offerte da Android quindi ho deciso di utilizzare il pattern a 3 layer, composta dai seguenti layer:

- Il layer di UI: contiene l'interfaccia grafica che mostra i dati all'utente e permette di interagire con l'applicazione.

- Il layer di dati: contiene la logica di bussiness e i dati dell'applicazione

- Il layer di dominio: contiene la logica di dominio dell'applicazione ed è utilizzato per semplificare e riutilizzare codice.

== Livello UI

Lo scopo dell'layer UI (o _livello di presentazione_) è quello di presentare i dati all'utente e di permettere all'utente di interagire con l'applicazione. Ad ogni interazione utente, l'interfaccia utente dovrebbe aggiornarsi per riflettere i nuovi dati.

Questo layer dall'interfaccia grafica rappresentata dai composable di Jetpack Compose, che sono dei componenti simili a delle funzioni di Kotlin che permettono di creare l'interfaccia grafica dell'applicazione.

Inoltre ho utilizzato il pattern MVVM (Model-View-ViewModel) per separare la logica di business dalla logica di presentazione. In questo pattern, il ViewModel fornisce i dati necessari alla View e si occupa di gestire le interazioni dell'utente, mentre il Model rappresenta il livello dati e il livello dominio, cioè la logica di bussiness del applicazione. L'implementazione di questo pattern risulta semplificata grazie all'utilizzo di Hilt, che permette di iniettare i ViewModel direttamente nella UI.

== Livello dati

Il livello dati di un'app contiene la logica di business e si occupa ci come l'app crea, archivia e modifica i dati.

Per il livello dati ho utilizzato il pattern Repository, che è un pattern che permette di astrare la sorgente dei dati e di fornire un'interfaccia comune per accedere ai dati. In questo modo, il ViewModel non deve preoccuparsi di dove vengono salvati i dati, ma può semplicemente chiedere al Repository di fornirglieli. Le sorgenti dati da cui il Repository può recuperare i dati sono:

- Il database locale, che è un database SQLite che utilizza Room per la gestione dei dati. Il database locale è la sorgente principale dei dati, in quanto è la più veloce da accedere e permette di avere i dati disponibili anche offline.

- Il back-end remoto, che è il servizio REST che fornisce i dati. Il back-end remoto è la sorgente secondaria dei dati, in quanto è più lento da accedere e richiede una connessione a internet, ma permette di avere i dati sempre aggiornati.

Quando l'applicazione carica i dati, prima li carica dal database locale e poi li carica dal back-end remoto e se necessario, sincronizza i dati remoti con i dati locali. In questo modo, l'applicazione può mostrare i dati anche offline e può mostrare i dati più aggiornati quando è connessa a internet.

== Livello di dominio

Il livello di dominio è un livello posto in mezzo tra il livello dati e il livello di presentazione, è responsabile dell'incaplusamento di una logica di business più complessa o di logica che viene riutilizzata su più schermate. In questo livello si trovano le classi _UseCase_ che sono responsabili ciascuna di una _singola_ funzionalità.

In questo caso viene anche utilizzato per dare valore aggiunto ad alcune funzionalità, come ad esempio l'inclusione del autore nei dettagli di un luogo.

Funziona che i ViewModel possono utilizzare i UseCase per ottenere dati complessi che necesitano di combinare dati da più repository o per ottenere dati che necessitano di una elaborazione più complessa. Questo layer è stato usato in modo _aperto_, nel senso che non tutti i ViewModel necessitano di UseCase.

== Dependency injection

Il pattern Dependency Injection (DI) è un pattern che permette di semplificare la gestione delle dipendenze tra le classi. In questo modo, invece di creare le dipendenze all'interno delle classi, le dipendenze vengono create all'esterno e poi passate alle classi che ne necessitano. Questo permette di semplificare la gestione delle dipendenze e di rendere il codice più testabile.

Nel progetto è stato utilizzato il framework Hilt per implementare il pattern Dependency Injection. Hilt permette di iniettare le dipendenze in modo automatico, semplificando la gestione delle dipendenze e permettendo di scrivere meno codice. Inoltre nel progetto il pattern è stato utilizzato per iniettare le classi UseCase e i Repository nei ViewModel e le sorgenti dati, sia locali che remote, nei repository.