 #set page(
  paper: "a5",
  margin: (top:2cm, left:0.5cm, right:0.5cm, bottom:0.5cm),

  foreground: [
    #place(
      center + top,
      dy: 8mm,
    )[
      #text(
        font: "Segoe UI Symbol",
        size: 8pt,
      )[\u{25CF}]
    ]
  ]
)

#set text(
  font: (
    "Monofur Nerd Font"
  ),
  size: 10pt
)
#let title = text(
   size:12pt
)[*ACQUISITION REQUEST*]

#let dot = text(
   font: "Segoe UI Symbol",
   size:  4pt,
)[\u{25CF}]


#set table(align:(center + horizon))
#rotate(90deg)[
#box(
    stroke:2pt + black,
    height:13.5cm,
    width:18.5cm,
    radius:3mm)[
      #box(
         inset: 1.5pt
      )[
        #table(
   rows: (1cm),
   columns: (1fr),
   stroke: 1pt + gray.darken(10%),
   table.cell(
 
      stroke:(top:none, left:none, right:none,bottom:none),
      )[
        #box(width: 18.5cm)[
  #place(center + horizon)[#title]
  #place(right + horizon)[*Date:* #h(5mm) #dot #h(5mm) #dot #h(5mm)]

]
      ]
   
)
#v(-11.2pt)
#table(
   rows: (1cm, 0.6cm),
   columns: (0.5fr,1fr,1.5fr,1.5fr,1.5fr,1.5fr,1fr,0.5fr),
   stroke: 1pt + gray.darken(10%),
table.cell(align:center, stroke:(top:2pt + black, left:none, bottom:1.5pt + black))[\#],
table.cell(align:center,colspan:2,stroke:(top:2pt + black, bottom:1.5pt + black))[Name],
table.cell(align:center,stroke:(top:2pt + black,bottom:1.5pt + black))[In Stock],
table.cell(align:center,stroke:(top:2pt + black, bottom: 1.5pt + black))[Request #linebreak() Quantity], 
table.cell(align:center,stroke:(top:2pt + black, bottom: 1.5pt + black,right:none))[Approved #linebreak() Quantity],
table.cell(align:center,colspan:2,stroke:(top:2pt + black, bottom: 1.5pt + black,right:none))[Remarks],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],
table.cell(stroke:(left:none,bottom:none),align:bottom)[], table.cell(stroke:(bottom:none), colspan:2)[ ],table.cell(stroke:(bottom:none))[ ],table.cell(stroke:(bottom:none))[ ], table.cell(stroke:(right:none, bottom:none))[ ],table.cell(stroke:(right:none, bottom:none), colspan:2)[ ],

table.cell(stroke:(left:none, bottom: 1.5pt + black),align:bottom)[], table.cell(stroke:(bottom:1.5pt + black), colspan:2)[ ],table.cell(stroke:(bottom:2pt + black))[ ],table.cell(stroke:(bottom:2pt + black))[ ], table.cell(stroke:(right:none, bottom:2pt + black))[ ],table.cell(stroke:(right:none, bottom:2pt + black), colspan:2)[ ],
table.cell(stroke:(right:none,left:none,bottom:2pt + black,top:none))[], table.cell(stroke:(bottom:2pt + black,left:none,right:none),colspan:7,align:left)[Remarks:],

table.cell(stroke:none,align:bottom)[], table.cell(stroke:none, colspan:2)[],table.cell(stroke:none)[ ],table.cell(stroke:none)[ ], table.cell(stroke:none, colspan:2)[],table.cell(stroke:none)[],
table.cell(stroke:none,align:bottom)[], table.cell(stroke:none, colspan:2)[],table.cell(stroke:none)[ ],table.cell(stroke:none)[ ], table.cell(stroke:none, colspan:2)[],table.cell(stroke:none)[],

table.cell(stroke:none,align:bottom)[], table.cell(stroke:(bottom:none,left:none,right:none,top: 1.5pt + black), colspan:2)[Requested By ],table.cell(stroke:none)[ ],table.cell(stroke:none)[ ], table.cell(stroke:(right:none, bottom:none,left:none,top:1.5pt + black), colspan:2)[Approved By],table.cell(stroke:none)[],

)
]
    ]
]
  