
#let script-size = 7.97224pt
#let footnote-size = 8.50012pt
#let small-size = 9.24994pt
#let normal-size = 10.00002pt
#let large-size = 11.74988pt

#import "@preview/glossarium:0.2.0": make-glossary

#let mainPage(
    summary,
    specialThanks,
    doc
) = {
let data = yaml("./metadata.yaml")
align(center,[
    #set document(
        title: data.title,
        author: data.student
    )
    #show: make-glossary
    #figure(
        image("./resources/images/unipd-logo.png", width: 35%)
    )
    #align(center)[
            *#data.university*
            #line(length: 75%)
            #data.department
            
            #data.degree

            #align(center + horizon,
                text(18pt)[
                    *#data.title*
                ]
            )
        ]

    #align(center + bottom)[
    #grid(
        columns: (1fr, 1fr),
        align(center)[
            Laureando \
            #data.student \
            Matricola \
            2008088
            ],
        align(center)[
            Relatore \
            #data.relator \
            ]
        )
    #line(length: 75%)
    Anno accademico #data.ay
    ]
    ])

    counter(page).update(0)

    set page(
        paper: "a4",
        margin: (x: 1.8cm, y: 1.6cm),
        number-align: right,
        numbering: "I"
    )
    set text(
        lang: "it",
        size: normal-size, 
        font: "New Computer Modern"
    )
    set par(
        leading: 1.5em
    )
    if summary != [] {
        summary
    }
    if specialThanks != [] {
        specialThanks
    }
    pagebreak()

    outline(
        title: [Tabella dei contenuti]
    )
    outline(
        title: [Lista delle tabelle],
        target: figure.where(kind: table),
    )
    outline(
        title: [Tabella delle figure],
        target: figure.where(kind: image),
    )

    counter(heading).update(0)
    counter(page).update(0)

    set page(
        paper: "a4",
        margin: (x: 1.8cm, y: 1.6cm),
        number-align: right,
        header: locate(loc => {
            let elems = query(
                selector(heading.where(level:1)).before(loc,inclusive: true),
                loc,
            )
            if elems == () {
                []
            } else {
                align(right, emph(elems.last().body))
            }}
        ),
        header-ascent: 30%,
        numbering: "1"
    )
    
    show link: it => underline(text(style: "italic",[#it]))

    show heading: it => {
    // Create the heading numbering.
    let number = if it.numbering != none {
        counter(heading).display(it.numbering)
        h(7pt, weak: true)
    }

    // Level 1 headings are centered and smallcaps.
    // The other ones are run-in.
    
    if it.level == 1 {
        let styled = strong 
        set text(size: 14pt, weight: 400)
        [
            #v(15pt, weak: true)
            #number
            #styled(it.body)
            #v(normal-size, weak: true)
        ]
    } else {
        v(11pt, weak: true)
        number
        let styled = if it.level == 2 { strong } else { emph }
        styled(it.body)
        h(7pt, weak: true)
    }
    }

    doc
}