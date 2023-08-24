# Introduzione

Questa repository contiene un template utilizzato per la laurea triennale 
in Informatica nell'anno accademico 20/21. IL template e stato realizzato 
con [Pandoc](https://pandoc.org/) e ispirandosi al seguente template già
esistente: [https://github.com/FIUP/Thesis-template.git](https://github.com/FIUP/Thesis-template.git).

# Motivazioni

Lo scopo di questo piccolo progetto (oltre a intrattenermi durante la stesura
della tesi) è stato di utilizzare il meno possibile Latex riuscendo comunque a 
creare un documento con un aspetto professionale. La maggior parte della tesi 
può infatti essere scritta in Markdown. Per eventuali mancanze di Markdown 
fare riferimento alla [documentazione di Pandoc](https://pandoc.org/MANUAL.html), sicuramente conterrà una soluzione o un'alternativa.

# Struttura directory

La directory di lavoro ha la seguente struttura:

```
    .
    ├── content
    │   ├── 01_chapter-1.md
    │   └── ...
    ├── defaults.yaml
    ├── img
    │   ├── unipd-logo.png
    │   └── ...
    ├── Makefile
    ├── metadata.yaml
    ├── output
    │   ├── tesi.pdf
    │   └── ...
    └── template.tex
```

 - la cartella `content` è il contenuto della tesi: corpo del documento, ma anche glossario in formato .tex e bibliografia in formato .bib. Al suo interno sono 
 presenti diverse cartelle allo scopo di facilitare la compilazione tramite il 
 `Makefile`;
 - `defaults.yaml` contiene le impostazioni di compilazione, ad esempio dichiara che il formato di input è MarkDown e l'output è un file in formato PDF, inoltre contiene specifiche sulla bibliografia;
 - `Makefile` gestisce la compilazione stessa, è stato preferito ad uno script bash per la possibilità di esplicitare le dipendenze e velocizzare la generazione del file PDF, non dovendo compilare l'intera sorgente ogni volta. Tutti gli artefatti della compilazione sono all'interno della cartella `output`;
 - `template.tex` sostituisce le regole di default di Pandoc per la traduzione nel linguaggio intermedio LaTeX aggiungendo ad esempio la pagina del titolo personalizzata;
 - `metadata.yaml` specifica i valori delle variabili che saranno passate in fase di compilazione al file `template.tex` e alcune impostazioni di stile.

# Utilizzo

Per la compilazione di questo progetto è necessario quanto segue: 
 - Pandoc 2.14 o più recenti
 - una distribuzione di latex (per la compilazione in PDF) che contenga i pacchetti elencati all paragrafo [Creating a PDF](https://pandoc.org/MANUAL.html#creating-a-pdf) della documentazione di Pandoc
 - Make

Questo progetto è stato compilato solo su sistema operativo basato su Linux.
Compilare il progetto posizionandosi nella root della repository e lanciare il
comando `make` da terminale, a compilazione terminata sono generati dei file 
all'interno della cartella `output/`, tra cui il PDF della tesi.

# Fonti e utilità

 - [Documentazione Pandoc](https://pandoc.org/MANUAL.html)
 - [Pandoc Filters](https://github.com/jgm/pandoc/wiki/Pandoc-Filters)
 - un esempio di template più elaborato: [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template.git)
 - [FIUP Code of Conduct](https://github.com/FIUP/Getting_Started/blob/master/CODE_OF_CONDUCT.md)
