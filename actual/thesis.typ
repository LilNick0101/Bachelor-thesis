#import "./thesisHeader.typ": *
#import "@preview/minitoc:0.1.0": *
#import "@preview/glossarium:0.2.0": print-glossary, gls, glspl

#show: doc => mainPage(
    [= Abstract
    
    Questo documento descrive il lavoro svolto durante il periodo di stage della durata di 320 ore presso l'azienda _Zero12 s.r.l._
    Lo scopo dello stage è stata la partecipazione al progetto _Smart Offices_ che consisteva nello sviluppo di una piattaforma per la consultazione, ricerca, caricamento e salvataggio di luoghi dove fare _smart working_; utenti registrati inoltre possono caricare recensioni dei luoghi con valutazioni. Io mi sono occupato di sviluppare l'applicazione mobile _Android_, che comunicava con il back-end _RestFul JSON_ sviluppato da altri colleghi. 
    L'applicazione è stata sviluppata usando tecnologie native _Android_, in particolare il linguaggio _Kotlin_ e il moderno toolkit di UI _Jetpack Compose_.
    
    Inizialmente il progetto è stato preceduto da una parte di training dove si apprendevano i vari concetti fondamentali di _Kotlin_, di _Jetpack Compose_ e dell'architettura di un'applicazione _Android_ finendo con una breve demo per mettere in pratica ciò che è stato appreso.
    In seguito, si è proceduto con lo sviluppo effettivo dell'applicazione, con design dell'esperienza utente e codifica delle varie funzionalità dell'applicazione.
    Si è usata una metodologia di lavoro agile, con stand-up giornalieri di 15 minuti per allinearsi con il lavoro fatto.
    ],
    [= Ringraziamenti
    _In primo luogo, ci tengo a ringraziare il relatore Prof. Francesco Ranzato, per avermi aiutato e sostenuto durante il mio lavoro._
    
    _Ringrazio con affetto tutta la mia famiglia, per la vicinanza che mi hanno dato in qualsiasi momento del mio periodo di studio._
    
    _Ringrazio inoltre tutti i collaboratori e i tirocinanti dell'azienda per la grande ospitalità e la disponibilità durante il periodo di tirocinio._
    
    _Infine, ringrazio tutti gli amici e le persone che ho incontrato all'università che mi hanno accompagnato in questa avventura._],
    doc
)

#set heading(numbering: "1.1.1")

#include "./content/introduction.typ"

#include "./content/project.typ"

#include "./content/RA.typ" 

#include "./content/design.typ" 

#include "./content/coding.typ" 

#include "./content/conclusions.typ"

#counter(heading).update(0)
#counter(page).update(0)

#let appendices(body) = {
  pagebreak()
  counter(heading).update(0)
  counter("appendices").update(1)

  set heading(
    numbering: (..nums) => {
      let vals = nums.pos()
      let value = "ABCDEFGHIJ".at(vals.at(0) - 1)
      if vals.len() == 1 {
        return ""
      }
      else {
        return value + "." + nums.pos().slice(1).map(str).join(".")
      }
    }
  );
  
  [#body]
}

#show: appendices

#include "./content/appendix.typ"

#pagebreak()

#bibliography("./content/bibliography.yaml")


// MUST DO