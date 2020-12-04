# Authoring scientific publications with R Markdown

[![Create a Slack Account with us](https://img.shields.io/badge/Create_Slack_Account-The_Carpentries-071159.svg)](https://swc-slack-invite.herokuapp.com/)

This repository generates the corresponding lesson website from [The Carpentries](https://carpentries.org/) repertoire of lessons. 

## Contributing

We welcome all contributions to improve the lesson! Maintainers will do their best to help you if you have any
questions, concerns, or experience any difficulties along the way.

We'd like to ask you to familiarize yourself with our [Contribution Guide](CONTRIBUTING.md) and have a look at
the [more detailed guidelines][lesson-example] on proper formatting, ways to render the lesson locally, and even
how to write new episodes.

Please see the current list of [issues][FIXME] for ideas for contributing to this
repository. For making your contribution, we use the GitHub flow, which is
nicely explained in the chapter [Contributing to a Project](http://git-scm.com/book/en/v2/GitHub-Contributing-to-a-Project) in Pro Git
by Scott Chacon.
Look for the tag ![good_first_issue](https://img.shields.io/badge/-good%20first%20issue-gold.svg). This indicates that the maintainers will welcome a pull request fixing this issue.  


## Maintainer(s)

Current maintainers of this lesson are 

* Renata Curty
* Greg Janee
* Ian Lessing
* Torin White


## Authors

A list of contributors to the lesson can be found in [AUTHORS](AUTHORS)

## Citation

To cite this lesson, please consult with [CITATION](CITATION)

[lesson-example]: https://carpentries.github.io/lesson-example

## Lesson Review
Two sets of reviewers:  
1) for formatting & grammar   
2) for content  
Sign-up to review here: https://docs.google.com/spreadsheets/d/1ukHnhh2-1ZJSZhCyjhRjQt4MrXJHmA6E76_tGrenpWk/edit#gid=1446449919  

Each reviwer should look for:

### Formatting Reviewers (see formatting tips under Lesson development below):
1) line breaks - is there a line break when there should be?
2) Code,  Callout, and Challenge formatting is correct (see below)
3) General grammar & mispellings
4) markdown code errors

For issues, if it is a fix you can do yourself, go ahead and edit yourself (NOTE: you must ONLY edit the .Rmd file and will need to re-render .md as described at the end of the readme). Otherwise, submit a github issue starting with `ep.# <description of issues> (formatting)`. Mark issues in github with `priority` label if they MUST be done before the workshop. Mark with `enhancement` if it would be nice to finish before the workshop, but not critical to teaching.

### Content Reviewers:
Work through the whole lesson as a learner would (download the setup files & follow instructions & challenges) Ignore any formatting or grammar issues - others will review this (unless the formatting makes it too difficult to understand instructions). Make issues for any unclear steps or challenges & if there are missed edits or formatting to the paper. 

For issues, submit a github issue with format `ep.# <description of issues> (content)`
  
Mark issues in github with `priority` label if they MUST be done before the workshop. Mark with `enhancement` if it would be nice to finish before the workshop, but not critical to teaching.

## Lesson Development

ONLY edit the .Rmd files. At the end of the readme see a script in the RStudio terminal to generate the .md automatically. Never directly edit the .md files.
Also, see for a walkthrough on converting the google doc rough drafts to .Rmd: https://docs.google.com/document/d/1bfzVnnrVR2qr8YGb12x0MqbXglcP8XBhyxY2JonUtuY/edit?usp=sharing

## R Markdown vs. Github Markdown
Note the two flavors of markdown are different. Some formatting tips:

- **Line Breaks:** must have two spaces at the end of the line or manually add a break <br>

### Lesson-specific formatting 
For formatting & consistency's sake, we should :
1) for examples that don't need to be input to the paper example rmd file, DON'T use `{: .source}` callouts but DO use  \``` \``` so the markdown doesn't render. For short partial line chunks ` ` can be used. 
2) use `{: .source}` callouts for code we're walking them through to add to the rmd file.
3) for challenge solutions the solutions should be unrendered markdown syntax between \``` \```
4) for tips, use the {: .callout} callout

Examples: 
1) **R markdown examples**
code: 
![image](https://user-images.githubusercontent.com/58574172/100487984-54d48500-30c0-11eb-9a35-0705f9c5e15d.png)
*I can't get the markdown to render correctly this this comment so this is just a screenshot

outputs to:
![image](https://user-images.githubusercontent.com/58574172/100487875-b3e5ca00-30bf-11eb-98a8-554a7eb081bd.png)

2) **Paper edits (not challenges)**
code: 
```
~~~
## MATERIALS AND METHODS  
### Survey Overview  
### Data Analysis  
~~~
{: .source}
```
outputs as: 
![image](https://user-images.githubusercontent.com/58574172/100487796-55b8e700-30bf-11eb-8925-52fad5db9c18.png)

3) **Paper edits (challenges)**
- Make sure to label challenges `CHALLENGE [ep#.challenge#]`
- the solution is just `SOLUTION`
code: 
```
> ## CHALLENGE 3.1
> Insert headings throughout the rest of the paper so it is split into 5 sections (Introduction, Materials and Methods, Results and Discussion, Conclusion, and References). Use the search function in R Markdown to find these lines in the document. 
>
>> ## SOLUTION
>> ```
>> ## INTRODUCTION
>> ## MATERIALS AND METHODS
>> ## RESULTS AND DISCUSSION
>> ## CONCLUSION
>> ## REFERENCES
>> ```
>> Why are we using `##`? Because `#` should only be used once in the paper (for the title) and `##` is for the next heading level.
> {: .solution}
{: .challenge}
```
outputs as:
![image](https://user-images.githubusercontent.com/58574172/100487815-6e290180-30bf-11eb-8e54-c4f97dfb39be.png)

4) 
- heading should say `Tip: [short description of tip]`
```
> ## Tip: how to make callouts
> Use `>`s on each line of callout and after callout ends the next line should contain {: .callout}
{: .callout}
```

### Generate regular vanilla Markdown from R-markdown for episodes

When creating episodes in the `_episodes_rmd` directory you'll want to process them into rgular markdown so they will be further processed by Github and published when pushed to Github.  If you have the `make` utility, which Mac or Linux has by default you can call `make lesson-m`.   But if you do not have `make` which is the case for most windows users then you can use R and Knitr from the command line.

#### 4 methods:
(ordered from most automated to least automated)

**3) example of using knitr from the command line/ Rstudio terminal to process an R-markdown file into a regular markdown file:**
*assumes you are in the root directory
*change the file name to match the episode you edited
```
Rscript -e 'knitr::knit("./_episodes_rmd/01-r-markdown-episode-template.Rmd", output = "./_episodes/01-r-markdown-episode-template.md")'
```

**4) Change your knit button settings**
Next to the knit button there is a gear for options. Click it and chose `output options` at the very bottom of the list. Choose the `Advanced` tab and check `keep markdown source file`. Make sure to 1) move the `.md` file to the `_episodes/` folder and 2) delete the html file output. 


THESE ARE NOT WORKING: DO NOT USE UNTIL FURTHER NOTICE
**1) BEST: Add output & knit code to yaml header**
1) add output to yaml header 
2) add knit code
+ change `[00-FilenameOfEpisode]`

```
---
...
source: Rmd
output: 
  md_document:
    preserve_yaml: true
knit: (function(inputFile, encoding) { 
      out_dir <- '../_episodes';
      rmarkdown::render(inputFile,
                        encoding=encoding, 
                        output_file=file.path(dirname(inputFile), out_dir, '[00-FilenameOfEpisode].md')) })
---
```

**2) Add an output `md_document` to the yaml header**
at the end of your yaml file, after `source` add:
```
...
output: md_document
---
```
\*Make sure to move the `.md` file to the `_episodes/` folder



