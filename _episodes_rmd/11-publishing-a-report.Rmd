---
title: "Publishing a Report"
teaching: 20
exercises: 10
questions:
- How to change the output folder for your rendered document?
- How to publish your report on RPubs?
- How to use Github to publish your document as a webpage?

objectives:
- Explore Different methods for publishing your paper

keypoints:
- Define a new function for `knit` in the yaml to change your outputs
- R-Studio lets you Knit and Publish to R-pubs
- Github has Github Pages to publish work as a free webpage
source: Rmd
---

## Changing the behavior of the Knit Button

Way back in episode 2 we said we would show you later on how to change the behavior of the knit button so you could conform to best practices for organizing your R project. We would prefer to save the output to the `results` folder instead of the `code` folder because it's best practice to save your outputs (whether knit rmd documents, the outputs of r scripts, or cleaned data) in a folder separate from you 'raw' code and data. That way for instance, you can avoid deleting or saving over your raw data and you can save different iterations of your outputs without worry. 

Unfortunately we can't do much to change the knit button with just the options in R Studio (we have the choice to change the output type and a few other things). We CAN however add code to the yaml which changes the behavior of the knit button. So everytime you hit 'knit', R Studio uses your customized directives to render the code. 

So, let's copy and paste the the following to our yaml header (at the end is fine after the bibliography and/or csl section):

```
...
...
knit: (function(inputFile, encoding) { 
      out_dir <- '../results';
      rmarkdown::render(inputFile,
                        encoding=encoding, 
                        output_file=file.path(dirname(inputFile), out_dir, 'rmd-workshop-paper.html')) })
---
```
**out_dir** is a variable you define which will designate which folder you want to save the knit document to (relative path). In our case we know this is the `results` folder so we use `..` to go back to our root directory (from the code folder). The "default" folder is the folder where your rmd file is save, so any 'directions' you give by indicating a relative path will be from the folder where the rmd file is to the folder where you want to save the html rendered document. 

**knit** we are changing the behavior of the knit function by defining our own:

**function(inputFile, encoding)** as stated above we are defining our own function by calling `function()` so we can re-design what happens when we hit 'knit'. We use `inputFile` and `encoding` as parameters we're feeding the `render` function. This just means that the inputFile is 'this' file - the .rmd file we're working in, and encoding means we'll be importing the default encoding R Studio uses. 

**rmarkdown::render** this is the command that the knit button runs when you click it in the IDE, you can view the specifications by typing `?rmarkdown::render` in the console. We will be using three arguments of `rmarkdown::render`. 

- *input*: The file we're feeding the function. We already determined this is `inputFile` or 'this' document.
- *encoding*: again we are indicating we're using the encoding we brought in from R Studio.
- *output_file*: this long string seems complicated* but all we are indicating here is:
    - what is the file path to get to 'this' document? = `file.path(dirname(inputFile)`. 
    - what is the folder we want to save it to(relative to the inputFile folder)? = `out_dir` and ...
    - what's the name of the document we want to be knit? = `'rmd-workshop-paper.html'`
    
\*we *could* just write out the file path/name here too if this is confusing.  
  
> ## Time to Knit!
> Check if your html file saved to the `results` folder.   
{: .checklist}

##  Rendering R Markdown script 

Once you have your `.Rmd` document refined and the _Knit_ output looks good it is ready to publish.  When using RStudio the simplest option is to publish to [Rpubs.com](https://rpubs.com).  Rpubs is a bare-bones web hosting service created for the sole purpose of hosting RMarkdown documents.  It provides no other services--- no support for search, collaboration, persistent identifers, or versioning.  But, it is the simplest and most direct way of getting your RMarkdown document on the web from RStudio.  For a more full-featured hosting service consider GitHub and GitHub Pages, described later.

Notice the "Publish" button in the upper right corner of your _Knit_ output.  Click this to publish to Rpubs.  This is where you'll need an Rpubs account as mentioned in [setup](#FIXME) 
for this workshop.  

Click the publish button 
![](../fig/r-studio-knit-publish-button-scrnshot.png)

and you'll be presented with the following panels:

![](../fig/11-r-studio-knit-publish-to-scrnshot.png)
(The other option in the dialog box, RStudio Connect, is a standalone publishing platform for teams to share content.  It requires purchase to host and use.)

![](../fig/11-r-studio-knit-publish-confirm-scrnshot.png)

At the end of the publish process your paper will be live on the internet 
with a URL similar to: `https://rpubs.com/yourname/678624`

R-Studio also saves an HTML version of your *knit* document to your local file system.  Look for it in the *results* 
directory in the same directory as the R-markdown file in your R-Studio project directory.  
This html document is self-contained and highly portable.  Images are encoded directly into the HTML so you can easily move it to any web hosting you have available.


## Publishing as website on GitHub*

Another, better, but slightly more involved option for publishing an RMarkdown document on the web is to use GitHub and GitHub Pages.  It is out of the scope of this lesson to use GitHub, but briefly, GitHub is a widely-used version control and collaboration system.  RStudio has built-in support for GitHub: in the upper right panel of your RStudio window, look for the Git tab, which allows you to sync your RMarkdown project with a remote repository stored on [github.com](https://github.com).  To enable publishing to GitHub Pages, go to the Settings page of your repository on GitHub and select a branch ("branch" is a repository term) to publish.  Name your main RMarkdown file `index.Rmd`, and render it to HTML as `index.html`.  With GitHub Pages enabled on your repository, the HTML file in your repository at https://github.com/myusername/myrepo/index.html will appear on the web as https://myusername.github.io/.

## Other document types

When you create a new R-markdown file in R Studio you are presented with a choice of Output Formats:

![](../fig/11-rstudio-output-formats-scrnshot.png)

For the purposes of this workshop we're using HTML as the output format but other types are available.  You can render your R Markdown as a document, a presentation or a *Shiny* app.  With the default installation of R-Studio HTML output is most likely to work.  Other formats may require additional R packages and/or code libraries be installed on your computer.  R Studio also has a templating system to help with creating R Markdown files with common elements, YAML metadata and rendering instructions.  This can be very helpful for example if you want to create a weekly or monthly report documenting an ongoing experiment, study or other changing data.




