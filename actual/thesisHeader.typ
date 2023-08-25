
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
        image("../img/unipd-logo.png", width: 35%)
    )
    #align(center)[
            *#data.university*
            #line(length: 75%)
            #data.department
            
            #data.degree

            #align(center + horizon,
                text(17pt)[
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
        number-align: left,
        numbering: "i"
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
        title: [Tabella delle figure],
        target: figure.where(kind: image),
    )

    counter(heading).update(1)
    counter(page).update(0)

    doc
}

#let glossaryPool = yaml("./glossary.yaml").terms