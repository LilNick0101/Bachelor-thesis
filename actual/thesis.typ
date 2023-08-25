#import "./thesisHeader.typ": *
#import "@preview/minitoc:0.1.0": *
#import "@preview/glossarium:0.2.0": make-glossary, print-glossary, gls, glspl
#import "./content/introduction.typ": introduction
#import "./content/project.typ": project
#import "./content/phases.typ": phases
#import "./content/conclusions.typ": conclusions


#show: doc => mainPage(
    [= Sommario
    
    Questo documento descrive il lavoro svolto durante il periodo di stage della durata di 320 ore presso l'azienda zero12 s.r.l.
    Lo scopo dello stage è stata la partecipazione al progetto _Smart Offices_, tale progetto consisteva nello sviluppo di una applicazione _mobile_ per la consultazione, ricerca, caricamento e salvataggio di luoghi dove fare _smart working_,
    
    In primo luogo si è svolta una parte di training dove si apprendevano i vari concetti fondamentali, parte di training seguita da una breve demo per mettere in pratica ciò che è stato appreso.
    Dopo di che si è proceduto con lo sviluppo effettivo dell applicazione, con design dell'interfaccia grafica e codifica dell'applicazione.
    Si è usata una metologia di lavoro agile, con stand-up giornalieri di 15 minuti 
    ],
    [= Ringraziamenti
    
    _In primo luogo ci tengo a ringraziare il relatore Prof. Francesco Ranzato, per avermi aiutato e sostenuto durante il mio lavoro._
    
    _Ringrazio con affetto la mia famiglia, per la vicinanza che mi hanno datto in qualsiasi momento del mio periodo di studio._
    
    _Ringrazio inoltre tutti i collaboratori e i tirocinanti dell'azienda per la grande ospitalità e la disponibilità durante il periodo di tirocinio._
    
    _Infine, ringrazio tutti gli amici e le persone che ho incontrato all'università che mi hanno accompagnato in questa avventura._
    ],
    doc
)

#set heading(numbering: "1.")

#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.6cm),
  number-align: left,
  numbering: "1"
)

#introduction

#project

#phases

#conclusions

#print-glossary(glossaryPool,show-all: true)