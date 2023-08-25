//#import "example.typ": items importa solo gli items dal file example.typ
//#import "example.typ" file intero (possibile con packages)
#import "typstDemoMetadata.typ" : *

//definisci un set di regole per le pagine

#align(center, text(17pt)[
  *#title*
])

#figure(
  image("./img/unipd-logo.png", width: 40%),
  caption: [
    Logo di UniPD
  ]
) <UniPD>

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Therese Tungsten \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ]
)

 
#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.5cm),
  numbering: "I",
  number-align: left
)
#set par(
  leading: 1.5em
)

#set heading(
  numbering: "1.1.a"
)

#show heading: it => [
  #set align(center)
  #set text(12pt, weight: "regular")
  #block(smallcaps(it.body))
]

= INTRO
L'anno è il *2074*, i confini tra tecnologia e uomo si sono assotigliati e le corporazioni e i governi si contengono il _potere ultimo_

*THE CAST* 
+ EXEerror
+ Selene
+ Jakob
+ Malcolm
+ Tamerlane
+ Sven
  - As knowm as "The Ultimate"

This @UniPD is Tullio Vardanega's lair



Random math expression to look good $ "distance" = sqrt(x^2 - y^2) $

The armonic sum, or whatever the fuck this is:

$ sum_(k=0)^infinity 1 / k $

... and last but not least a matrix!

$ 
m  := mat(
  x_1,x_2,x_3;
  x_4,x_5,x_6;
  x_7,x_8,x_9
)
$

Sometimes at work I think about that *stupid girl* with her corny voicelines and personality, even when she quite literally gets her head blown she just goes, _uhhmmm_ or _oh poo, I could do so much better_ like bitch you just got killed

#pagebreak()

#table(
  columns: (1fr, auto, auto, auto),
  inset: 10pt,
  fill: (_, row) => if row == 0 {blue} else if calc.odd(row) { luma(240) } else { white },
  align: center,
  [], [*Q1*], [*Q2*], [*Q3*],
  [Revenue:], [1000 €], [2000 €], [3000 €],
  [Expenses:], [500 €], [1000 €], [1500 €],
  [Profit:], [500 €], [1000 €], [1500 €],
)


#align(center)[
```java
public class Main{
  public static void Main(String[] args){
    System.out.println("Hello world")
  }
}
```
]

= Before the internship

== Chapter 1
#lorem(10)

== Chapter 2
He just bodied and farted on my face and said *_alright nice score yeah!_*

=== State
#lorem(200)

