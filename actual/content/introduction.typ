= Introduzione

== Scopo del progetto

Il progetto è nato con l'idea di creare una piattaforma di ricerca di luoghi dove poter lavorare in remoto o in _smart working_, questa idea è stata spinta dalla popolarità di questa modalità di lavoro in conseguenza al periodo pandemico del COVID, rimasta rilevante ancor oggi, dato che molte persone hanno visto un migliore bilancio vita-lavoro e le aziende che hanno visto un risparmio nelle risorse.

Il progetto quindi si propone di creare una piattaforma che permetta di trovare luoghi dove poter lavorare in remoto, quindi luoghi come bar, ristoranti, biblioteche, ecc. che offrono la possibilità di lavorare in remoto; La piattaforma offre funzionalità di ricerca e filtri per trovare il luogo più adatto alle proprie esigenze, un utente può inoltre registrarsi e gli utenti registrati oltre ad consultare i luoghi possono aggiungerne nuovi luoghi, lasciare una recensione dei luoghi e salvare i luoghi nei preferiti. Il progetto nel insieme è suddiviso in tre parti:

- Parte *back-end* che si occupa di esporre i servizi per la ricerca luoghi, il caricamento dei luoghi, dei utenti e delle recensioni; fornisce i dati all'applicazione tramite API REST ed è scritto in Typescript. 

- Parte *mobile* che si occupa di mostrare i dati forniti dal back-end all'utente su dispositivi mobili, questa si divide in due applicazioni, una scritta in Kotlin per Android e l'altra in Swift per iOS, la parte iOS, sviluppata da un altro collega, utilizza il framework di UI _SwiftUI_ mentre la parte Android utilizza il framework di UI _Jetpack Compose_.

Il mio progetto di stage si è concentrato sul'applicazione scritta in Kotlin per Android. Il mio scopo era quello di effetuare le chiamate dal back-end ed implementare le funzionalità dell applicazione, quindi la ricerca dei luoghi, la visualizzazione dei dettagli di un luogo, il caricamento di un nuovo luogo, la registrazione e login, la visualizzazione delle recensioni di un luogo e la creazione di nuove recensioni.

== L'azienda

*Zero12* è una software house che propone prodotti innovativi e servizi di consulenza per la trasformazione digitale.
L'azienda offre principalmente prodotti basati su Amazon Web Services, come infrastrutture cloud, software web e mobile e intelligenza artificiale. Altri campi di interesse sono la _Augmented Reality_ e l'_Internet of Things_.

L'azienda è in continua crescità e si divide in due sedi, una a Padova e una a Empoli.

== Motivazione della scelta

La prima volta che ho conosciuto l'azienda è stata durante il primo periodo del corso di ingegneria del software quando il mio gruppo doveva scegliere il capitolato per il progetto.

Più tardi mi sono presentato all'evento *Stage IT 2023* dove sono andato a conoscenza dei loro progetti, quello che cercavo io per il stage era un qualcosa che mi mettesse alla prova in qualcosa di nuovo (anche se come preferenze accingevo comunque allo sviluppo mobile o web), ho scelto questo progetto dato che mi interessava l'ambito dello sviluppo _mobile_, ambito che io personalmente non avevo mai sperimentato ma mi interessava.