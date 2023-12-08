= Introduzione

== Scopo del progetto

Il progetto _Smart Offices_ è nato con l'idea di creare una piattaforma di ricerca di luoghi dove poter lavorare in remoto o in _smart working_ dovuta ad una grande diffusione di questa modalità di lavoro in conseguenza al periodo pandemico del COVID-19, rimasta rilevante anche dopo la pandemia dato che molte persone hanno visto un migliore bilancio vita-lavoro e le aziende hanno visto un risparmio nei costi e un aumento nella produttività. 

Il progetto quindi si propone di creare una piattaforma che permette di trovare luoghi dove poter lavorare in remoto: per esempio bar, ristoranti, biblioteche, ecc. che offrono la possibilità di lavorare in remoto; La piattaforma offre funzionalità di ricerca e filtri per trovare il luogo più adatto alle proprie esigenze. Un utente può inoltre registrarsi e gli utenti registrati, oltre a consultare i luoghi, possono aggiungere nuovi luoghi, lasciare recensioni sui luoghi e salvare i luoghi nei preferiti. 
Il progetto nell'insieme è suddiviso in tre parti:

- Parte *back-end* che si occupa di esporre i servizi per la ricerca luoghi, il caricamento dei luoghi, dei utenti e delle recensioni; fornisce i dati all'applicazione tramite API REST, è stato sviluppato usando servizi e tecnologie _AWS_ ed è scritto in _TypeScript_ @typescript;

#figure(
    image("../resources/images/aws-logo.svg", width: 30%),
    caption: [Logo di _Amazon Web Services_.]
) <aws-logo>

- Parte *mobile* che si occupa di mostrare i dati forniti dal back-end all'utente su dispositivi mobili: questa si divide in due applicazioni, una scritta in _Kotlin_ @kotlin per _Android_ e l'altra in _Swift_ @swift per _iOS_; la parte _iOS_, sviluppata da un altro collega, utilizza il framework di UI _SwiftUI_ mentre la parte Android utilizza il framework di UI _Jetpack Compose_ @compose.

#figure(
    image("../resources/images/compose-icon.png", width: 30%),
    caption: [Logo di _Jetpack Compose_.]
) <compose-logo>

Il mio progetto di stage si è concentrato sull'applicazione scritta in *Kotlin* per *Android*. Il mio scopo era quello di effettuare le chiamate dal back-end remoto ed implementare le funzionalità dell'applicazione, cioè la ricerca dei luoghi, la visualizzazione dei dettagli di un luogo, il caricamento di un nuovo luogo, l'autenticazione utente, la registrazione di un nuovo account, la pagina del profilo utente, la visualizzazione delle recensioni di un luogo e la creazione di nuove recensioni, il tutto utilizzando le best practices di un'architettura che separa la logica di business dalla logica di presentazione.

Il progetto è stato preceduto da un breve periodo di formazione tecnica seguito da una breve demo.

Il progetto è stato accompagnato da una metodologia di lavoro agile @agile, con stand-up giornalieri di 15 minuti dove con il tutor aziendale si discuteva del lavoro fatto e del lavoro da fare.

== L'azienda

#figure(
    image("../resources/images/logo-zero12.png", width: 30%),
    caption: [Logo di _Zero12 s.r.l_.]
) <compose-logo>

*Zero12 s.r.l* è una software house che propone prodotti innovativi e servizi di consulenza per la trasformazione digitale, è parte del gruppo _Vargroup_.
L'azienda offre principalmente prodotti basati su _Amazon Web Services_, come infrastrutture cloud, software web, mobile e intelligenza artificiale. Altri campi di interesse sono la _Augmented Reality_ e l'_Internet of Things_.

L'azienda è in continua crescità e si divide in due sedi, una a Padova e una a Empoli.

== Motivazione della scelta

La prima volta che ho conosciuto l'azienda è stata durante il primo periodo del corso di ingegneria del software quando il mio gruppo doveva scegliere il capitolato per il progetto, più tardi mi sono presentato all'evento *Stage IT 2023* dove sono andato a conoscenza dei loro progetti.

Ho scelto questo progetto perché volevo cimentarmi in qualcosa di nuovo ma allo stesso tempo cercavo uno stage legato allo sviluppo mobile o web; quindi, ciò
che mi ha spinto a scegliere questo progetto è stata la possibilità di lavorare con tecnologie mobile _Android_ e la possibilità di lavorare con un servizio remoto.