#set text(
  font: "Monofur Nerd Font",
  size: 10pt
)


// CONTROL PANEL (Variables)
#let show-border = false
#let is_landscape = true
#let total_rows = if is_landscape{
  27} else { 45}
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
  stroke: (left:none,bottom:cell-stroke),
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
  align:center + horizon,
  
)
#let stroke_6 = (
  stroke: (left:none,right:none,bottom:border_solid),
  align:center + horizon,
)



// DOT SYMBOL
#let dot = text(
  font: "Segoe UI Symbol",
  size: 4pt,
)[\u{25CF}]


// EMPTY ROW GENERATOR

#let empty-row() = if is_landscape{
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




// OUTER box

#let content = box(
  stroke: border_thick,
  inset:0.5mm,
  width: if is_landscape {100%} else {100%},
  height: if is_landscape {100%} else {100%},
  radius: radius
)[
  
  
// MAIN TABLE

#table(
  columns: if is_landscape {
    (0.5fr,2.5fr,1fr,1fr,1fr)
  } else {
    (0.5fr,2.5fr,1.5fr,1fr,1fr)
  },
  stroke: cell-stroke,
  // HEADER SECTION

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
    empty-row()
  },
  
  //FOOTER
  
  table.cell(..stroke_4)[Remarks],
  table.cell(colspan: 5,stroke: (none))[],
  table.cell(colspan: 2, align: center,stroke:(none))[
     #v(4mm)
    #line(length: 50%)
     #v(-3mm)
  Requested By],

table.cell(colspan: 3, align: center,stroke:(none))[
   #v(4mm)
    #line(length: 50%)
     #v(-3mm)
  Approved By],
)
]
#set page(
  paper: "a5",
    foreground: [
    #place(
      left + horizon,
      dx:8mm,
    )[
      #text(
        size: 10pt,
      )[#dot]
    ]
  ],
  flipped: is_landscape,
  margin: if is_landscape {
    (top: 0.5cm, left: 2cm, right: 0.5cm, bottom: 0.5cm)
  } else {
    (top: 0.5cm, left: 2cm, right: 0.5cm, bottom: 0.5cm)
  }
)

#content


