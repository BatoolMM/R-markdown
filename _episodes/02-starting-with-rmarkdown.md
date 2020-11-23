---
title: "Introduction to R Markdown"
teaching: 30 min
exercises: 10 min
questions:
- How to find your way around RStudio?
- How to start an R Markdown document in Rstudio?
- How is an R markdown document configured?

objectives:
- Key Functions on Rstudio 
- Learn how to start an R markdown document 
- Understand the anatomy of an R Markdown file

keypoints:
- FIXME
- FIXME
source: Rmd
---


## Before Starting The Workshop

Please ensure you have the latest version of R and RStudio installed on your machine. This is important, as some packages used in the workshop may not install correctly (or at all) if R is not up to date.

* [Download and install the latest version of R here](https://www.r-project.org/)
* [Download and install RStudio here](https://www.rstudio.com/)

## Brief Tour of RStudio

Throughout this lesson, we're going to teach you some of the fundamentals of using R Markdown as part of your RStudio workflow.

We'll be using RStudio: a free, open source R Integrated Development
Environment (IDE). It provides a built in editor, works on all platforms (including
on servers) and provides many advantages such as integration with version
control and project management.

This lesson assumes you already have a basic understanding of R and RStudio but we will do a brief tour of the IDE, review R projects and the best practices for organizing your work, and how to install packages you may want to use to work with R Markdown.


**Basic layout**

When you first open RStudio, you will be greeted by three panels:

  * The interactive R console/Terminal (entire left)
  * Environment/History/Connections (tabbed in upper right)
  * Files/Plots/Packages/Help/Viewer (tabbed in lower right)

![RStudio layout](../fig/02-rstudio.png)

Once you open files, such as .Rmd files, an editor panel will also open
in the top left.

![RStudio layout with .R file open](../fig/02-rstudio-script.png)


## R Project

The scientific process is naturally incremental, and many projects
start life as random notes, some code, then a manuscript, and
eventually everything is a bit mixed together.

<blockquote class="twitter-tweet"><p>Managing your projects in a reproducible fashion doesn't just make your science reproducible, it makes your life easier.</p>— Vince Buffalo (@vsbuffalo) <a href="https://twitter.com/vsbuffalo/status/323638476153167872">April 15, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Most people tend to organize their projects like this:

![](../fig/02-bad-layout.png)

There are many reasons why we should *ALWAYS* avoid this:

1. It is really hard to tell which version of your data is
the original and which is the modified;
2. It gets really messy because it mixes files with various
extensions together;
3. It probably takes you a lot of time to actually find
things, and relate the correct figures to the exact code
that has been used to generate it;

A good project layout will ultimately make your life easier:

* It will help ensure the integrity of your data;
* It makes it simpler to share your code with someone else
(a lab-mate, collaborator, or supervisor);
* It allows you to easily upload your code with your manuscript submission;
* It makes it easier to pick the project back up after a break.

## A possible solution

Fortunately, there are tools and packages which can help you manage your work effectively.

One of the most powerful and useful aspects of RStudio is its project management
functionality. We'll be using an R project today to compliment our Rmarkdown document and bundle all the files needed for our paper into a self-contained, reproducible
project. After opening the project we'll review good ways to organize your work. 

The simplest way to open an RStudio project once it has been created is to click
through your file system to get to the directory where it was saved and double
click on the `.Rproj` file. This will open RStudio and start your R session in the
same directory as the `.Rproj` file. All your data, plots and scripts will now be
relative to the project directory. RStudio projects have the added benefit of
allowing you to open multiple projects at the same time each open to its own
project directory. This allows you to keep multiple projects open without them
interfering with each other.

> ## Challenge 2: Opening an RStudio project through the file system
>
>
> 1. Exit RStudio.
> 2. Navigate to the directory where you downloaded & unzipped the zip folder for this workshop
> 3. Double click on the `.Rproj` file in that directory.
{: .challenge}

## Best practices for project organization

Although there is no "best" way to lay out a project, there are some general
principles to adhere to that will make project management easier:

### Treat data as read only

This is probably the most important goal of setting up a project. Data is
typically time consuming and/or expensive to collect. Working with them
interactively (e.g., in Excel) where they can be modified means you are never
sure of where the data came from, or how it has been modified since collection.
It is therefore a good idea to treat your data as "read-only".

### Data Cleaning

In many cases your data will be "dirty": it will need significant preprocessing
to get into a format R (or any other programming language) will find useful.
This task is sometimes called "data munging". Storing these scripts in a
separate folder, and creating a second "read-only" data folder to hold the
"cleaned" data sets can prevent confusion between the two sets.

### Treat generated output as disposable

Anything generated by your scripts should be treated as disposable: it should
all be able to be regenerated from your scripts.

There are lots of different ways to manage this output. Having an output folder
with different sub-directories for each separate analysis makes it easier later.
Since many analyses are exploratory and don't end up being used in the final
project, and some of the analyses get shared between projects.

### Where R Markdown Files come into play

FIXME add this

> ## Tip: Good Enough Practices for Scientific Computing
>
> [Good Enough Practices for Scientific Computing](https://github.com/swcarpentry/good-enough-practices-in-scientific-computing/blob/gh-pages/good-enough-practices-for-scientific-computing.pdf) gives the following recommendations for project organization:
>
> 1. Put each project in its own directory, which is named after the project.
> 2. Put text documents associated with the project in the `doc` directory.
> 3. Put raw data and metadata in the `data` directory, and files generated during cleanup and analysis in a `results` directory.
> 4. Put source for the project's scripts and programs in the `src` directory, and programs brought in from elsewhere or compiled locally in the `bin` directory.
> 5. Name all files to reflect their content or function.
>
{: .callout}

We used the following setup for folders and files in this project:

**bin:** contains a a .csl file for changing the bibliography to APA format from the default Rstudio Chicago style
**code:** a different name for the `src` folder. This will contain our data cleaning scripts, R scripts for plots and Rmarkdown scripts for writing our paper
**data:** this folder contains our raw data files. We downloaded both an .xlxs and .txt
**docs:** This contains our raw text file for the paper and our .bibtex for bibliography as well as any other notes we have about the project. 
**figs:** This is for the .png figures we found and wanted to add into our paper. It can also be used to save .png or .jpeg copies of the figures we output from our code.
**results:** This is where the rendered version of our .Rmd file will save to.
**RMarkdown_Workshop.Rproj** lives in the root directory
**README.md**
**CITATION.txt**
**LICENSE.txt**

There are no hard and fast rules here, but remember, it is important at least to keep your raw data files separate and to make sure they don't get overidden after you use a script to clean your data. It's also very helpful to keep the different files generated by your analysis organized in a folder.

### Version Control

It is important to use version control with projects.  Go [here for a good lesson which describes using Git with RStudio](https://swcarpentry.github.io/git-novice/14-supplemental-rstudio/).

# Is this section needed or should it be shortened? FIXME
### R Packages

It is possible to add functions to R by writing a package, or by
obtaining a package written by someone else. As of this writing, there
are over 10,000 packages available on CRAN (the comprehensive R archive
network). R and RStudio have functionality for managing packages:

* You can see what packages are installed by typing
  `installed.packages()`
* You can install packages by typing `install.packages("packagename")`,
  where `packagename` is the package name, in quotes.
* You can update installed packages by typing `update.packages()`
* You can remove a package with `remove.packages("packagename")`
* You can make a package available for use with `library(packagename)`

Packages can also be viewed, loaded, and detached in the Packages tab of the lower right panel in RStudio. Clicking on this tab will display all of installed packages with a checkbox next to them. If the box next to a package name is checked, the package is loaded and if it is empty, the package is not loaded. Click an empty box to load that package and click a checked box to detach that package. 

Packages can be installed and updated from the Package tab with the Install and Update buttons at the top of the tab. 

FIXME: change Challenge  packages 

> ## Challenge 1
>
> Install the following packages: `bookdown, `tidyverse`, ``
>
> > ## Solution to challenge 5
> >
> > We can use the `install.packages()` command to install the required packages.
> > 
> > ~~~
> > install.packages("bookdown")
> > install.packages("tidyverse")
> > ~~~
> > {: .language-r}
> >
> > An alternate solution, to install multiple packages with a single `install.packages()` command is:
> > 
> > ~~~
> > install.packages(c("bookdown", "tidyverse"))
> > ~~~
> > {: .language-r}
> {: .solution}
{: .challenge}

##Starting a R Markdown File 


Start a new R markdown document in RStudio by clicking File > New File > R Markdown…

![Opening a new Rmarkdown document](../fig/02-file-navigation-rmd.png)

If this is the first time you have ever opened an R markdown file a dialog box will open up to tell you what packages need to be installed. 

![RStudio layout with .R file open](../fig/02-rmd-installpackages-dialogbox.png)

Click "Yes". The packages will take a few seconds to install. You should see that this was successful.

![RStudio layout with .R file open](../fig/02-rmd-installpackages.png)

Once the package installs have completed, a dialog box will pop up and ask you to name the file and add an author name (may already know what your name is) The default output is HTML and as the wizard indicates, it is the best way to start and in your final version or later versions you have the option of changing to pdf or word document (among many other output formats! We'll see this later). 

![Name new .Rmd file](../fig/02-name-new-rmd-blank.png)

New R Markdown will always pop up with a generic template…

If you see this template you're good to go.
![.Rmd new file generic template](../fig/02-rmd-new-template.png)

Now we’ll get into how the Rmarkdown file is organized and then on to editing and styling!

## Anatomy of an R Markdown File
 
Notice that the default file contains three types of content:
- YAML header (optional)
- Formatted text: 
- Code Chunks: 
 
Let’s dig in to those more:

### YAML header: 
- An (optional) YAML header surrounded by ---s
What is YAML anyway? ** FIXME ** add more explanation
Title, author, date, output
We’ll see other formatting options for YAML later on including how to …
[FIXME insert screen shot of YAML header]


### Formatted text: 
- Text mixed with simple text formatting
Formatted text is one of the benefits added above and beyond the capabilities of a regular r script. Notice you don’t need to encase the text in any symbols as you do code chunks. Any symbols you do see that aren’t regular grammar components are for formatting, such as ##, ** **, and < >

CHALLENGE 2.1 : can you deduce what each of the three (above) symbols do for formatting?
[FIXME insert screenshot of formatted text section]
Code Chunks: R code chunks surrounded by ```s
Highlighted in gray
This is the R code, if you’ve already written an r script you can copy and paste your code between the ``` ``` to output whichever pieces you want at that particular spot in the document

[FIXME insert screenshot of code chunks]
 
### Starting our paper
Ok, now let’s start on our own document…We will start our own document by deleting everything except the yaml header and first code chunk, but FIRST we’re going to pause and see what the Rmarkdown does when it’s rendered into the final html document we indicated the output to be -  this will be a little preview of what’s to come tomorrow (later) in the 4th(?) episode. 

This is called Knitting and the button looks like a spool of yarn with a knitting needle. Clicking the knit button will output the type of file indicated in your yaml header. In our case it’s html but the other options we saw were word and pdf. One nice thing about the knit button is that it saves the .Rmd document each time you run it.
[FIXME insert spool icon]

Pay close attention to the first code chunk that isn’t working with either of the data sets as the others are. This code chunk isn’t necessary but it defaults all of the code chunks to either display (TRUE) or not display (FALSE) the code in the final document so it can be nice to have as a starting point for your R markdown documents. 

Here, I’ll demonstrate the difference. 
First, to view the final document click “knit” the first time you click knit it will ask that you choose a file name. That will be the default file name each time you click knit for this rmarkdown file after this first time. You can also change where it saves.

![.First knit choose filename](../fig/02-knit-filename.png)

How the document looks when you knit with echo=TRUE:
![.Knit echo=TRUE](../fig/02-knit-echoTRUE.png)

Now, with echo=FALSE. Can you spot the difference?
![.Knit echo=FALSE](../fig/02-knit-echoFALSE.png)

You’ll notice that the gray code chunk that contains summary(cars) displayed the first time when echo = TRUE, but not the second time when echo = FALSE. 
But why didn’t the code chunk for the plot (...insert code..) not display in the first (echo=TRUE example)? That specific code chunk was set to FALSE which overrides any default setting determined at the beginning of the document. If you don’t understand this now that’s okay. We’ll be going over the code chunks and the settings for the code chunks later. For now, we just want to understand the basics of what knit button does and make sure we have the right defaults to start out.
So for our setup - actually let’s keep/set this to echo=FALSE instead of the default TRUE in the template R Markdown document. 

CHALLENGE [FIXME]
You can now do this on your own if you haven’t already, 1) delete everything except the yaml header and first code chunk. 2) change echo=TRUE to echo=FALSE in your first code chunk.
Next, we’re going to copy and paste the raw text for our paper into R markdown ** Obviously this isn’t how you’d end up writing your own paper but we aren’t going to make you write a whole paper from scratch in this workshop…

**(probably won’t work to paste in zoom chat because there’s a cut-off on length. Will have to walk them through opening the file and copying/pasting into rmarkdown).

We’re also going to edit our yaml header. Next we’ll see how to do the text formatting and after that styling and adding the code chunks. 

[FIXME add instructions for yaml header here] *at least initial. I imagine in the bibliography section we will add the .bibtex etc. 

Now we’ll be set for our next episode which is about adding Markdown syntax to style your text chunks (white sections)- including headers, bold, italics, citations, footnotes, links, bibliography etc. 

