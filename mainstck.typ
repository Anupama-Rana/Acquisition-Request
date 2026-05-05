#set text(
 
  size: 10pt
)


// CONTROL PANEL (Variables)
#let is_duallayout = true
#let content_height = 273.7mm
#let total_rows = 39
#let border_thick = 2pt + black
#let border_solid  = 1.5pt + black
#let cell-stroke = 1pt + gray.darken(10%)
#let radius = 3mm
#let stroke_1 = (
  stroke: (left:none, top:none, right:none, bottom:border_solid),
  align: center + horizon,
  inset:3mm)
#let stroke_2 = (
  stroke: (left:none, top:none, bottom:border_solid),
  align: center + horizon)
#let stroke_3 = (
  stroke: (left:none,bottom:none),
  align: center + horizon,
  inset: 3mm)
  #let stroke_4 = (
  stroke:(none),
  align:left + horizon,)
#let stroke_5 = (
  stroke: (left:none,right:none,bottom:none),
  align:center + horizon,
  inset:3mm)
#let stroke_6 = (
  stroke: (left:none,right:none,bottom:border_solid,top:none),
  align:center + horizon,)


  // DOT SYMBOL
  
#let dot = text(
  size: 4pt,
)[\u{25CF}]

// EMPTY ROW GENERATOR

#let empty-row() = if is_duallayout{
    (
      table.cell(..stroke_3)[#h(1fr) #dot #h(1fr) #dot #h(1fr)],
      table.cell(..stroke_3)[],
      table.cell(..stroke_3)[],
      table.cell(..stroke_3)[],
       table.cell(..stroke_3)[],
      table.cell(..stroke_5)[]
    ) } else {
    (
      table.cell(..stroke_3)[#h(1fr) #dot #h(1fr) #dot #h(1fr)],
      table.cell(..stroke_3)[],
      table.cell(..stroke_3)[],
      table.cell(..stroke_3)[],
       table.cell(..stroke_3)[],
      table.cell(..stroke_5)[],) }

// OUTER box-1

#let content_2 = box(
  stroke: border_thick,
  width: 100%,
  height: 11mm,
  radius: radius
)[
  
#table(
  columns: (1fr),
 // HEADER SECTION
table.cell(..stroke_1)[
#let header(title) = box(width:100%)[
#place(center + horizon)[
#text(size:12pt)[*#title*] ]
#place(left + horizon)[ *Clement Retreats*]]
#header("STOCK CHART")],
table.cell(..stroke_4)[Item Name])]


// OUTER box-2

#let content_1 = box(
  stroke: border_thick,
  inset:0.5mm,
  width:100%,
  height: content_height,
  radius: radius
)[

// MAIN TABLE

#table(
  columns: (1fr,0.5fr,0.5fr,0.5fr,2fr,1fr),
  stroke: cell-stroke,
  // HEADER ROW
  table.cell(..stroke_2)[Date],
  table.cell(..stroke_2)[IN],
  table.cell(..stroke_2)[OUT],
  table.cell(..stroke_2)[BAL],
  table.cell(..stroke_2)[Description],
  table.cell(..stroke_6)[Signature],

// DYNAMIC ROWS

..for i in range(total_rows) {
    empty-row()
  },)]

  // SET PAGE & MARGINS
#set page(
  paper: "a4",
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
  margin: (top: 0.5cm, left: 2cm, right: 0.5cm, bottom: 0.5cm)
)
  
#let page_generator() = [
  #content_2
  #content_1
]

// Final Output
#page_generator()
#if is_duallayout [
  #pagebreak()
  #set page(
    paper:"a4",
    margin: (top: 0.5cm, left: 0.5cm, right: 2cm, bottom: 0.5cm))
 #page_generator()
]


