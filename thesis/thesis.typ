/* Thesis. */

#import "/thesis/template/imports.typ": *
#import "/thesis/template/styles.typ": *
#import "/thesis/template/pages.typ": *

#show: global-style
#show: alexandria(prefix: "bib-", read: path => read(path))
#show footnote.entry: content => {
  set align(left)
  content
} // end #show footnote.entry
#set footnote.entry(separator: [
  #set align(left)
  #line(length: 35%, stroke: 0.5pt)
]) // end #set footnote.entry
#title-page()
#abstract-page()[#include "/thesis/chapters/abstract.typ"]
#auth-page()
#signature-page()
#dedication-page()[#include "/thesis/chapters/dedication.typ"]
#acknowledgments-page()[#include "/thesis/chapters/acknowledgments.typ"]
#table-of-contents-page()
#list-of-kind-page(kind: image, title: "List of Figures")
#list-of-kind-page(kind: table, title: "List of Tables")

#show: main-style
#include "/thesis/chapters/main.typ"

#show: bib-and-refs-style
#include "/thesis/chapters/bib-and-refs.typ"

#show: appendix-style
#include "/thesis/chapters/appendix-list-of-pubs.typ"
#include "/thesis/chapters/appendix-others.typ"
