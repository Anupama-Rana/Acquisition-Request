#set text(
  font: "Monofur Nerd Font",
  size: 10pt
)

// CONTROL PANEL (Variables)
#let show-border = false
#let total_rows = 44
#let landscape = false

#let border_thick = 2pt + black
#let border_solid  = 1.5pt + black
#let cell-stroke = 1pt + gray.darken(10%)
#let radius = 3mm
#let stroke_1 = (
  stroke: (left:none, top:none, right:none, bottom:border_solid),
  align: center + horizon,
  colspan:5,
  inset:5mm
)
#let stroke_2 = (
  stroke: (left:none, top:none, bottom:border_solid),
  align: center + horizon,
)

#let stroke_3 = (
  stroke: (left:none,bottom:none + cell-stroke),
  align: center + horizon,
)
#let stroke_4 = (
  stroke: (left:none,top:border_solid,bottom:border_thick,right:none),
  align: horizon,
  colspan:5,
  inset:5mm
)
#let stroke_5 = (
  stroke: (left:none,right:none),
  align: horizon,
)
#let stroke_6 = (
  stroke: (left:none,right:none,bottom:border_solid),
  align: horizon,
)


// DOT SYMBOL
#let dot = text(
  font: "Segoe UI Symbol",
  size: 4pt,
)[\u{25CF}]

//HEADER FUNCTION



// EMPTY ROW GENERATOR

#let empty-row(mode) = {
  if mode == "portrait"{
    (
      table.cell(..stroke_3)[],
      table.cell(..stroke_3)[],
      table.cell(..stroke_3)[],
      table.cell(..stroke_3)[],
      table.cell(..stroke_5)[]
    )
  } else {
    (
      table.cell(..stroke_3)[],
      table.cell(..stroke_3)[],
      table.cell(..stroke_3)[],
      table.cell(..stroke_3)[],
      table.cell(..stroke_5)[],
     
    )
  }
}

// MAIN TABLE FUNCTION


// OUTER box

#let content = box(
  stroke: border_thick,
  width: 100%,
  height: if landscape {13.5cm} else {100%},
  radius: radius
)[
  
  


#table(
  columns: if landscape {
    (0.5fr,2fr,1fr,1fr,1fr)
  } else {
    (0.5fr,2fr,1.5fr,1fr,1fr)
  },
  stroke: cell-stroke,

   table.cell(..stroke_1)[
     #let header(title) = box(width:100%)[
  #place(center + horizon)[
    #text(size:12pt)[*#title*]
  ]
  #place(right + horizon)[
    *Date:* #h(5mm) #dot #h(5mm) #dot #h(5mm)
  ]
]
#header("ACQUISITION")
   ],

  // HEADER ROW
  table.cell(..stroke_2)[\#],
  table.cell(..stroke_2)[Name],
  table.cell(..stroke_2)[In Stock],
  table.cell(..stroke_2)[Request],
  table.cell(..stroke_6)[Approved],

  // DYNAMIC ROWS
  ..for i in range(total_rows) {
    empty-row(if landscape {"landscape"} else {"portrait"})
  },
  
  //FOOTER
  
  table.cell(..stroke_4)[Remarks],
  table.cell(colspan: 5,stroke: (none))[],
  table.cell(colspan: 2, align: center,stroke: (none))[
    #line(length: 40%)
  Requested By
  #v(10mm)],

table.cell(colspan: 3, align: center,stroke: (none))[
  #line(length: 40%)
  Approved By
  #v(10mm)] 
)
]
#set page(
  paper: "a5",
  margin: if landscape {
    (top: 0.5cm, left: 2cm, right: 0.5cm, bottom: 0.5cm)
  } else {
    (top: 0.5cm, left: 2cm, right: 0.5cm, bottom: 0.5cm)
  }
)
#content



