---
title: "Publishing a Report"
teaching: 20 min
exercises: 10 min
questions:
- How to publish your report?

objectives:
- Explore Different methods for publishing your paper

keypoints:
- R-Studio lets you Knit and Publish to R-pubs
- Github has Github Pages 
source: Rmd
#output: 
#  md_document:
#    variant: markdown
#    preserve_yaml: true
#knit: (function(inputFile, encoding) { 
#      out_dir <- '../_episodes';
#      rmarkdown::render(inputFile,
#                        encoding=encoding, 
#                        output_file=file.path(dirname(inputFile), out_dir, '11-publishing-a-report.md')) })
---

### 11.1 Rendering R Markdown script 

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
This html document is self-contained and highly portable so you can easily move it to your own web hosting 
if you have something like that setup.

Other document types?

### 11.2 Publishing as website on GitHub*

Another, better, but slightly more involved option for publishing an RMarkdown document on the web is to use GitHub and GitHub Pages.  It is out of the scope of this lesson to use GitHub, but briefly, GitHub is a widely-used version control and collaboration system.  RStudio has built-in support for GitHub: in the upper right panel of your RStudio window, look for the Git tab, which allows you to sync your RMarkdown project with a remote repository stored on [github.com](https://github.com).  To enable publishing to GitHub Pages, go to the Settings page of your repository on GitHub and select a branch ("branch" is a repository term) to publish.  Name your main RMarkdown file `index.Rmd`, and render it to HTML as `index.html`.  With GitHub Pages enabled on your repository, the HTML file in your repository at https://github.com/myusername/myrepo/index.html will appear on the web as https://myusername.github.io/.

### 11.4 ??Converting RMarkdown to LaTeX??
