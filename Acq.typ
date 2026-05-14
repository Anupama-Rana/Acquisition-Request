#set text(
   font: "Monofur Nerd Font",
   size: 10pt
)


// CONTROL PANEL (Variables)
#let is_landscape = true
#let use-a4 = true
#let use-a5 = false
#let total_rows = if is_landscape{
  15} else { 20}
#let border_thick = 2pt + black
#let border_solid  = 1.5pt + black
#let cell-stroke = 1pt + gray.darken(10%)
#let radius = 3mm
#let header_style = (
  stroke: (left:none, top:none, right:none, bottom:border_solid),
  inset:5mm
)
#let column_header_style = (
  stroke: (left:none, top:border_solid, bottom:border_solid,right:cell-stroke),
)
#let body_style = (
  stroke: (left:none,bottom:cell-stroke,right:cell-stroke,top:none),
)
#let last_hcolumn_style = (
  stroke:(left:none,top:none,bottom:border_solid,right:cell-stroke),
  inset:5mm
)
#let last_bcolumn_style = (
  stroke: (left:cell-stroke,right:none,top:none,bottom:cell-stroke),
)
#let footer_style = (
  stroke: (left:none,right:none,bottom:border_solid,top:border_solid),
  inset:5mm,
  align:left
)
#let sign_style = (
  stroke: (none),
)
#let common_style = (
  align: center + horizon,
)

// DOT SYMBOL
#let dot = text(
    font: "Segoe UI Symbol",

  size: 4pt,
)[\u{25CF}]


// EMPTY ROW GENERATOR
#let empty-row() = if is_landscape{
    (
      table.cell(..body_style)[],
      table.cell(..body_style)[],
      table.cell(..body_style)[],
      table.cell(..body_style)[],
      table.cell(..last_bcolumn_style)[]
    )
  } else {
    (
      table.cell(..body_style)[],
      table.cell(..body_style)[],
      table.cell(..body_style)[],
      table.cell(..body_style)[],
      table.cell(..last_bcolumn_style)[]
    )
  }




// OUTER box
#let content = box(
  stroke: border_thick,
  inset:0.5mm,
  width: if is_landscape {100%} else {100%},
  height: if is_landscape {100%} else {100%},
  radius: radius
)[#place(
    left + horizon,
    dx: -10mm,
  )[
    #dot
  ]
  
  
// MAIN TABLE
#table(
  columns: if is_landscape {
    (0.25fr,2.5fr,1fr,1fr,1fr)
  } else {
    (0.25fr,2.5fr,1.5fr,1fr,1fr)
  },
  rows:(1.5fr,1.2fr,1fr),
  stroke: cell-stroke,
  // HEADER SECTION

   table.cell(..header_style,colspan:5)[
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
  table.cell(..column_header_style,..common_style)[\#],
  table.cell(..column_header_style,..common_style)[Name],
  table.cell(..column_header_style,..common_style)[In Stock],
  table.cell(..column_header_style,..common_style)[Request],
  table.cell(..last_hcolumn_style,..common_style)[Approved],

  // DYNAMIC ROWS
  ..for i in range(total_rows) {
    empty-row()
  },
  
  //FOOTER
  table.cell(..footer_style,colspan:5,rowspan:2)[Remarks],
 
  table.cell(..sign_style,..common_style,colspan: 2,rowspan: 2)[
     #v(4mm)
    #line(length: 50%)
     #v(-3mm)
  Requested By],

table.cell(..sign_style,..common_style,colspan: 3,rowspan: 2)[
   #v(4mm)
    #line(length: 50%)
     #v(-3mm)
  Approved By],
)
]
#set page(
  paper: "a5",
  flipped: is_landscape,
  margin:0mm
 
)
//New
#if use-a4 and is_landscape [

  #set page(
    paper: "a4",
    flipped: false,
    
  )

  
 #grid(
  columns: (1fr),
  rows:(1fr,1fr),
  stroke: (
    left:none,
   right:none,
   top:none,
   bottom: (
      paint: black,
      thickness: 1pt,
      dash: "dashed",
    ),
   ),
  inset:(
    left:2cm,
    right:0.5cm,
    top:0.5cm,
    bottom:0.5cm
  ),

  ..range(2).map(i =>
    [
      #content
    ]
  )
)

] else if use-a4 and not is_landscape [

  #set page(
    paper: "a4",
    flipped: true,
  )
 #grid(
  columns: (1fr, 1fr),
  rows:(1fr),
  stroke: (left:none,
   right: (
      paint: black,
      thickness: 1pt,
      dash: "dashed",
    ),
   top:none,
   bottom:none),
  inset:(
    left:2cm,
    right:0.5cm,
    top:0.5cm,
    bottom:0.5cm
  ),

  ..range(2).map(i =>
    [
      #content
    ]
  )
)
    ]else if use-a5 [

  #set page(
    paper: "a5",
    flipped: is_landscape,
  )
   #grid(
  columns: (1fr),
  rows:(1fr),
  inset:(
    left:2cm,
    right:0.5cm,
    top:0.5cm,
    bottom:0.5cm),
[ #content
    ]
  
)

 
] else [
  #align(center+horizon)[
  #text(
    size: 40pt,
  )[Please Choose The Page Size]
]
]
