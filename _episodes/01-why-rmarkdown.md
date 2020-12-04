---
title: "Why R Markdown?"
teaching: 0
exercises: 2
questions:
- What is reproducible research?
- How can R Markdown help research to be more reproducible?
- What are the benefits of using R Markdown?
objectives:
- Understand what scientific reproducibility entails.
- Identify the benefits of using R Markdown to create research reports.
- Understand how R Markdown is a useful tool in Open Science approaches.
- Learn how R Markdown can help one’s research.
keypoints:
- Reproducible research is key for scientific advancement.
- R Markdown can help you to organize, have better control over and produce reproducible research.
source: Rmd
output: 
  html_document: 
    keep_md: yes
---



## Warm-up

Let's get into breakout rooms. What is reproducibility for you? Have you ever experienced issues to reproduce someone else's study or even your own research? 


## The importance of Reproducibility in Research

![PhD Comics cartoon](../fig/01-fig1.png)


### Discussion: A scary anecdote

* A group of researchers obtain great results and submit their work to a high-profile journal.
* Reviewers ask for new figures and additional analysis.
* The researchers start working on revisions and generate modified figures, but find inconsistencies with old figures.
* The researchers can’t find some of the data they used to generate the original results, and can’t figure out which parameters they used when running their analyses.
* The manuscript is still languishing in the drawer …

According to the [U.S. National Science Foundation (NSF) subcommittee on replicability in science](https://www.nsf.gov/sbe/AC_Materials/SBE_Robust_and_Reliable_Research_Report.pdf): 

Science should routinely evaluate the reproducibility of findings that enjoy a prominent role in the published literature. To make reproduction possible, efficient, and informative, researchers should sufficiently document the details of the procedures used to collect data, to convert observations into analyzable data, and to analyze data.

Reproducibility refers to the ability of a researcher to duplicate the results of a prior study using the same materials as were used by the original investigator. That is, a second researcher might use the same raw data to build the same analysis files and implement the same statistical analysis in an attempt to yield the same results. Reproducibility is a minimum necessary condition for a finding to be considered rigorous, believable and informative.


### Why all the talk about reproducible research?

A 2016 survey in Nature revealed that irreproducible experiments are a problem across all domains of science:
 
![Nature Report - 2016](../fig/01-fig2.png)
 

## Factors behind irreproducible research

![Science is not a miracle](../fig/01-fig3.png)

* Not enough documentation on how experiment is conducted and data is generated
* Data used to generate original results unavailable
* Software used to generate original results unavailable
* Difficult to recreate software environment (libraries, versions) used to generate original results
* Difficult to rerun the computational steps


### Reproducible, replicable, robust, generalizable

While reproducibility is the minimum requirement and can be solved with “good enough” computational practices, replicability/robustness/generalizability of scientific findings are an even greater concern involving research misconduct, questionable research practices (p-hacking, HARKing, cherry-picking), sloppy methods, and other conscious and unconscious biases.
 
![How science should be](../fig/01-fig4.png)
 
 
If contributing to science and other researchers seems not to be compelling enough, here are 5 selfish reasons to work reproducibly (Markowetz, 2015)

* Helps to avoid data loss and disaster
* Makes it easier to write papers
* Helps reviewers see it your way
* Enables continuity of your work
* Helps to build your reputation


### When do you need to worry about reproducibility?

Let’s assume that I have convinced you that reproducibility and transparency are in your own best interest. Then what is the best time to worry about it?
 
Throughout the whole research life cycle! Before you start the project because you might have to learn tools like R or Git. While you do the analysis because if you wait too long you might lose a lot of time trying to remember what you did two months ago. When you write the paper because you want your numbers, tables, and figures to be up-to-date. When you co-author a paper, because you want to make sure that the analyses presented in a paper with your name on are sound. When you review a paper, because you can’t judge the results if you don’t know how the authors got there.
 

### Levels of Reproducibility

<figure>
<img src="../fig/01-fig5.png" width = "400" height = "300">
</figure> 

<!--![Levels of Reproducibility](../fig/01-fig5.png){width=50%}-->

A published article is like the top of a pyramid, meaning that a reproducible paper/report rests on multiple levels that each contributes to its reproducibility. 
 

## What is R Markdown and how it connects to reproducible research?

RMarkdown is a variant of Markdown, a system for writing simple, readable text that is easily converted to html which allows you to write using an easy-to-read, easy-to-write plain text format. 

R Markdown belongs to the field of literate programming which is about weaving text and source code into a single document to make it easy to create reproducible web-based reports. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents and much, much more. R Markdown provides the flexibility of Markdown with the implementation of R input and output. For more details on using R Markdown check [http://rmarkdown.rstudio.com](http://rmarkdown.rstudio.com).

The idea of literate programming shines some light on this dark area of science. This is an idea from Donald Knuth where you combine your text with your code output to create a document. This is a blend of your literature (text), and your programming (code), to create something that you can read from top to bottom. Imagine your paper - the introduction, methods, results, discussion, and conclusion, and all the bits of code that make each section. With R Markdown, you can see all the pieces of your data analysis altogether.

You can include both text and code to execute. It is a convenient tool for reproducible and dynamic reports with R! With R Markdown, you are able to:

1. Keep an eye on text (the paper) AND the source code. These computational steps are essential to ensure computational reproducibility.
2. Conduct the entire analysis pipeline in an R Markdown document: data (pre-)processing, analysis, outputs, visualization.
3. Apply a formatting syntax that is part of the R ecosystem and supports LaTeX.
4. Combine text written in Markdown and source code written in R (and other languages).
5. Easily share R Markdown documents with colleagues, as supplemental material, or as the paper under review. Thanks to the package knitr, others can execute the document with a single click and receive, for example, HTML or PDF renderings.
6. Get figures automatically updated if you change the underlying parameters in the code. The error-prone task of exporting figures and uploading the right figure version to another platform is thus not needed anymore.
7. Since Markdown is a text-based format, you can also use versioning control with Git.
8. If you do not make any changes to the document after creating the output document, you can be sure that the paper was executable at least at the time of submission. 
9. Refer to the corresponding code lines in the methodology section making it unnecessary to use pseudocode, high-level textual descriptions, or just too many words to describe the computational analysis.
10. Use packages such as rticles to use templates from publishers and create submission-ready documents.

FIXME: Greg’s will add the link a nd a short description for three motivating examples:

* Chris Lortie’s COVID page
* Using RMarkdown for math formatting
* Reconstructing paper’s plots, difficulty thereof

FIXME: Our goal is that by the end of this workshop you will be able to create a reproducible report applying R markdown and Knitr to publish a paper such as this (link to the html version of the paper in R Pubs).
