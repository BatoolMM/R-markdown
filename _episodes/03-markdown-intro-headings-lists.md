---
title: "R Markdown Syntax: Headings & Lists"
teaching: 30
exercises: 10
questions:
- How does markdown in R compare to markdown in other programs?
- How to create headings and sub-headings in R markdown?
- How to create bulleted and numbered lists in R markdown?

objectives:
- Understand how R markdown relates to the markdown universe 
- Learn how to create headings and sub-headings in R markdown
- Learn how to create bulleted and numbered lists in R markdown

keypoints:
- Heading syntax (#, ##, ###, etc.) 
- Bulleted lists (*, - , or +)
- Numbered lists (1., 2., etc.)
source: Rmd
---

## Intro to R Markdown Syntax

Before we dive into learning R Markdown Syntax, let's talk a little about the "markdown" part.

R Markdown is a format for writing reproducible, dynamic reports with R which allows you to weave together narrative and code to produce elegantly formatted outputs. In practice, it allows you to use plain text for a document with bits of other things thrown in, but which will ultimately be converted to any number of other languages, for eventual display in the format you desire. It supports dozens of static and dynamic output formats such as HTML, PDF, MS Word. 

The text in an R Markdown document is written with the markdown syntax, which is a basic markup language that conveys how text should be displayed. The basic markdown syntax has dozens of flavors, of which R Markdown is one. Most markdown syntax is preserved and works identically no matter what flavor you use. However, the different flavors will have different options or slightly different implementations of certain things. 

R Markdown syntax is relatively simple and there are a number of tutorials and cheat sheets available online that you can consult while working on your reproducible report ([here is a link explaining Pandoc's markdown specs](https://pandoc.org/MANUAL.html#pandocs-markdown)). In the next episodes we will be covering a subset of it, focusing on the most common formatting you may need to apply while writing reproducible documents.  

<br>
> ## Tip: Blank Lines
> In your document, blank lines will be required before/after all headings, horizontal lines, and lists.  
You will need to make sure to add line breaks into your document or text will wrap when it renders (even if you hit enter/return and start typing on a new line in R studio)  
>
> You can add line breaks by using :  
> 
> * 2 enters/returns (leaving a blank line)
> * two spaces at the end of the line
> * an html break `<br>`  
>
> These line breaks will also be important to get your formatting to render correctly. In some cases you MUST have a blank line (just two spaces or a break won't do the trick)
{: .callout}

<br>

## Creating Headings and Subheadings

Most papers or articles need headings and subheadings to distinguish different parts of the paper. We can insert headings and subheadings in R Markdown using the pound sign `#`. There are six heading/subheading sizes in R Markdown. The number of pound signs before your line of text determines the heading size, 1 being the largest heading and 6 being the smallest. 

```
# Heading 1  
## Heading 2  
### Heading 3 
#### Heading 4  
##### Heading 5  
###### Heading 6 
```

<br>
Displays as: 
  
# Heading 1  
## Heading 2  
### Heading 3  
#### Heading 4  
##### Heading 5  
###### Heading 6

<br>
***Note** this is github's markdown "flavor" for headers, they look different in R Markdown.However, relative sizing and hierarchy with 1 being the largest and 6 the smallest remains the same.
<br>

> ## Tip: Headings
> It's good practice to put a space between the last `#` and the start of your heading. While R flavored markdown will still render `#Title`, other flavors of markdown (i.e. github) require a space between the `#`s and the heading text: `# Title`.
{: .callout}

### Numbered Sections
We would like to have numbered section headings in our paper. In order to do that we actually add a bit of code to the yaml section at the top. 
Specifically, we will add a return to put `html_document:` on the next line indented (don't forget to add the `:`), enter another line & indent again and then add `numbered_sections: true`.
<br>
It should look like the following:

~~~
```
---
title: "An Adapted Survey on Scientific Shared Resource Rigor and Reproducibility"
author: Add Your Name Here
date: "December 15, 2020"
output:
  html_document:
    number_sections: true
---
```
~~~
{: .source}

<br>
We want to insert headings and subheadings to divide our paper into more readable parts. Let’s start by adding one at the beginning to start our introduction. In the first line of our paper, make the word “Introduction” into a heading 2 by adding a `##` before the line.  

~~~
## INTRODUCTION
~~~
{: .source}

Now let's `knit` to see how the heading is formatted.     

Oops! for our Introduction we have `0.1 Introduction`. The numbering isn't right here...   

What's going on?  
Normally, to conform to best practices, header 1 `#` should only be used for the title. From there, for each heading level you only use one heading level lower, for example the introduction would then be header 2 `##`. HOWEVER, because an R Markdown document defines the title within the YAML header, you should use header 1 for the next highest header level after the title, (Introduction, Conclusion, etc.). Otherwise, if you use numbered sections, the numbering will be off. 

So, let's try this again, this time with heading 1 `#`:  

~~~
# INTRODUCTION
~~~
{: .source}

<br>

> ## Tip: More heading convention
> For best practices regarding all heading levels, you should never skip a heading level - heading levels inform the hierarchy of your paper compositions, they do not reflect styling choices. For styling you may employ CSS stylesheets, either importing an exisiting "theme", or creating your own.  
{: .callout}

<br>
Now we can go to the next section and add a main heading and a subheading. Find the “Materials and Methods” section (right after the introduction) and make the line that says “Materials and Methods” into heading 1 and the lines that say “Survey Overview” and “Data Analysis” into heading 2 for subheadings. 

~~~
# MATERIALS AND METHODS  
## Survey Overview  
## Data Analysis  
~~~
{: .source}

<br>

> ## Tip: Finding Content on RStudio
> Use Ctrl+F (Windows) or Command+F (Mac) shortcut keys, or from the Edit -> Find to locate content in your paper. We will be using that quite a lot during this workshop. 
{: .callout}

> ## CHALLENGE 3.1
> Insert headings and subheadings throughout the rest of the paper.  
> Make these lines into headings so our paper is split into 5 main sections: 
> * Introduction
> * Materials and Methods
> * Results and Discussion
> * Conclusion
> * References 
>
>
> Since we already put the subheadings into the Materials and Methods section, we just need to add subheadings to the Results and Discussion Section. 
> Make these lines into subheadings:
> * Survey Demographics  
> * Current Landscape for Rigor and Transparency in Represented Shared Resources  
> * Core Implementation of Research Best Practices  
> * Strategies for Improving R&R in Core Operation
>
>
> Think carefully about which heading levels you should use for consistency throughout your paper.
> *Use the search function in R Markdown `ctrl-f` or `cmd-f` to find these lines in the document quickly.
>
>> ## SOLUTION
>> ```
>> # INTRODUCTION
>> # MATERIALS AND METHODS
>> # RESULTS AND DISCUSSION
>> # CONCLUSION
>> # REFERENCES
>> 
>> ## Survey Demographics
>> ## Current Landscape for Rigor and Transparency in Represented Shared Resources
>> ## Core Implementation of Research Best Practices
>> ## Strategies for Improving R&R in Core Operation
>> ## Creating Bulleted and Numbered Lists
>> ```
> {: .solution}
{: .challenge}


> ## Time to Knit!
> Check how the headings look like in your paper. 
{: .checklist}


<br>
## Horizontal Lines
If you wish to create divisions between sections, you can insert a horizontal line in using 3 (or more) dashes, asterix, or underlines (`---`, `***`, or `___`):

```

---  

See some paragraph text   
between horizontal lines---  
Now you know markdown  

***    

```

The above renders as:    

---

See some paragraph text  
between horizontal lines---  
Now you know markdown  

---  

***Note** again that displayed here is the github styling for horizontal lines, they look different rendered in r markdown
<br>

> ## Tip: leave blank line before & after horizontal lines
> Depending on the platform, the markdown parser may interpret your attempt at a horizontal line as some other styling unless you add a blank line before and after the line. A break `<br>` may not even work, it should be a completely blank line.
{: .callout}


> ## Optional Challenge 
> Add horizontal lines after each section header.
>
>
>> ## SOLUTION
>> ```
>>
>> # INTRODUCTION
>> 
>> ***
>>
>> # MATERIALS AND METHODS
>>
>> ***
>>
>> # RESULTS AND DISCUSSION
>>
>> ***
>>
>> # CONCLUSION
>>
>> ***
>>
>> # REFERENCES
>>
>> ***
>> ```
> {: .solution}
{: .challenge}




## Bulleted & Numbered Lists

Academic articles often include lists to make important findings stand out more or to summarize key points for readers. We will learn how to create both unordered lists with bullet points, and ordered numbered lists. 

### Unordered Bullet Lists

Creating unordered lists is relatively simple. For unordered lists, you can use: asterix, dash or plus characters  `*`, `-` or `+`:  
```
* A bullet point  
- Also a bullet point  
+ Still a bullet point   
```
Outputs as:
* A bullet point
- Also a bullet point
+ Still a bullet point

> ## CHALLENGE 3.2 - Inserting Bullet Points
>Now let’s practice creating bullet lists. Search in the paper "it is important to highlight:" and apply bullet points for each of the next 3 sentences.
>
>> ## SOLUTION
>> ```
>> * At least 170 (∼80%) respondents use documentation, in the form of quality control and standard operation procedures (SOPs) to support practices. 
>> * The incorporation of an instrumentation management plan, was not as highly utilized (56%).
>> * Oversight of data analyses and double-checking results were some of the least widely used ones (26%).
>> ```
>> Remember: You can use `+` or `-` too.
> {: .solution}
{: .challenge}


> ## Time to Knit!
> Check how the bullet lists looks like in your paper. 
{: .checklist}


<br>

You can also add sub-levels, to create sub-lists by indenting the next list item evenly by two or four spaces:
```
* A bullet point  
  * Sub-level one  
    * Sub-level two   
```
Outputs to:
* A bullet-point  
  * Sub-level one  
    * Sub-level two  

### Ordered Numbered Lists

For ordered lists, you use a number with a dot, e.g: `1.`  Your numbers do not need to be sequential.  Markdown will number the item in the order in which they appear rather than their numeric order.

```
1. First item in our numbered list   
7. Second item in our numbered list   
2. Third item in our numbered list   
```
The above will appear as:
1. First item in our numbered list  
7. Second item in our numbered list  
2. Third item in our numbered list  

> ## Tip: No ) for numbered lists
> **Note:** Markdown parser does not accept parenthesis as a list delimiter, so if you use parenthesis, the output will be the same as above.
> i.e. `1)` outputs as `1.`.
{: .callout}

> ## CHALLENGE 3.3
> Use RStudio to locate the paragraph which ends with “in grant applications, as follows:” the next four sentences should be shown as numbered a list.
>
>> ## SOLUTION
>> ```
>> 1. scientific premise forming the basis of the proposed research 
>> 2. rigorous experimental design for robust and unbiased results
>> 3. consideration of sex and other relevant biologic variables
>> 4. authentication of key biologic and chemical resources
>> ```
> {: .solution}
{: .challenge}

> ## Time to Knit!
> Check how the numbered lists looks like in your paper. 
{: .checklist}


If needed, you can also combine sub-levels numbers or even combine bullets and numbered items in the same list, by indenting different levels.
