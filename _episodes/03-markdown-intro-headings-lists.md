---
title: "Markdown Syntax: Creating Headings & Lists"
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

check to see if commit working
## Intro to R Markdown Syntax

Before we dive into learning R Markdown Syntax, let's talk a little about the "markdown" part.

R Markdown is a format for writing reproducible, dynamic reports with R which allows you to weave together narrative and code to produce elegantly formatted outputs. In practice, it allows you to use plain text for a document with bits of other things thrown in, but which will ultimately be converted to any number of other languages, for eventual display in the format you desire. It supports dozens of static and dynamic output formats such as HTML, PDF, MS Word. 

The text in an R Markdown document is written with the markdown syntax, which is a basic markup language that conveys how text should be displayed. The basic markdown syntax has dozens of flavors, of which R Markdown is one. Most markdown syntax is preserved and works identically no matter what flavor you use. However, the different flavors will have different options or slightly different implementations of certain things. 

R Markdown syntax is relatively simple and there are a number of tutorials and cheat sheets available online that you can consult while working on your reproducible report. In the next episodes we will be covering a subset of it, focusing on the most common formatting you may need to apply while writing reproducible documents. 

## Creating Headings and Subheadings

Most papers or articles need headings and subheadings to distinguish different parts of the paper. We can insert headings and subheadings in R Markdown using the pound sign (#). There are six heading/subheading sizes in R Markdown. The number of pound signs before your line of text determines the heading size, 1 being the largest heading and 6 being the smallest. 

```
# Heading 1  
## Heading 2  
### Heading 3 
#### Heading 4  
##### Heading 5  
###### Heading 6 
```

FIXME? Screenshot so it's consistent with Rmd output?
Displays as: 
  
# Heading 1  
## Heading 2  
### Heading 3  
#### Heading 4  
##### Heading 5  
###### Heading 6

*Note this is carpentries styling for headers, they look different in R Markdown, but relative sizing and hierarcy with 1 being the largest and 6 the smallest remains the same.


> ## Tip: Headings
> Be sure to put a space between the last # and the start of your heading text so R Markdown recognizes where your heading text starts: **\# Title NOT #Title**
{: .callout}

> ## Tip: Heading convention
> Headers should not be picked based on what styling you want for your paper. There are other ways to style your paper, including pre-created themes and css stylesheets. To conform to best practices, header 1 (#) should only be used for the title. From there, for each section only use one heading level lower, for example the introduction would then be header 2 (##).
{: .callout}

<br>
We want to insert headings and subheadings to divide our paper into more readable parts. Let’s start by adding one at the beginning to start our introduction. In the first line of our paper, make the word “Introduction” into a large heading by adding a “# “ before the line. 

~~~
# INTRODUCTION
~~~
{: .language-r}

FIXME screen shot output
> ## INTRODUCTION
{: .output}

<br>
Now we can go to the next section and add a main heading and a subheading. Find the “Materials and Methods” section (right after the introduction) and make the line that says “Materials and Methods” into a large heading and the lines that say “Survey Overview” and “Data Analysis” into subheadings. 

~~~
## MATERIALS AND METHODS  
### Survey Overview  
### Data Analysis  
~~~
{: .language-r}

FIXME screenshot output
> ## MATERIALS AND METHODS  <br>  
> ### Survey Overview  <br>
> ### Data Analysis  <br>
{: .output}

<br>

If you wish to create divisions between sections, you can insert a horizontal line in using 3 (or more) dashes or asterix:

```
---  
Some paragraph text between horizontal lines  
***  
```

FIXME screenshot output
Output:  
----------   
Some paragraph text between horizontal lines    
----------   


> ## CHALLENGE 3.1
> Insert headings throughout the rest of the paper so it is split into 5 sections (Introduction, Materials and Methods, Results and Discussion, Conclusion, and References). Use the search function in R Markdown to find these lines in the document. 
>
>  ## SOLUTION
>> ```
>> \## INTRODUCTION
>> \## MATERIALS AND METHODS
>> \## RESULTS AND DISCUSSION
>> \## CONCLUSION
>> \## REFERENCES
>> ```
> {: .solution}
{: .challenge}

> ## CHALLENGE 3.2
> Insert subheadings to divide our main sections into subsections. Since we already put the subheadings into the Materials and Methods section, we just need to do the Results and Discussion Section. 
> Find the lines with:
> 
> * Survey Demographics  
> * Current Landscape for Rigor and Transparency in Represented Shared Resources  
> * Core Implementation of Research Best Practices  
> * Strategies for Improving R&R in Core Operation
> 
> and add the appropriate subheading syntax.
>
> ## SOLUTION
>> ```
>> \## Survey Demographics
>> \## Current Landscape for Rigor and Transparency in Represented Shared Resources
>> \## Core Implementation of Research Best Practices
>> \## Strategies for Improving R&R in Core Operation
>> \## Creating Bulleted and Numbered Lists
>> ```
> {: .solution}
{: .challenge}

## Bulleted & Numbered Lists

Academic articles often include lists to make important findings stand out more or to summarize key points for readers. We will learn how to create both unordered lists with bullet points, and ordered numbered lists. 

### Unordered Bullet Lists

Creating unordered lists is relatively simple. For unordered lists, you can use: asterix, dash or plus characters  *, - or +:  
<br>
```
* A bullet point  
- Also a bullet point  
+ Still a bullet point   
```
Outputs as:
* A bullet point
- Also a bullet point
+ Still a bullet point

> ## CHALLENGE 3.3
>Now let’s practice creating bullet lists. Use the search function in RStudio to locate the phrase “At least 170”, in the example academic paper. This sentence and the following two should be turned into bullet points. 
>
>> ## SOLUTION
>> ```
>> * At least 170 (∼80%) respondents use documentation, in the form of quality control and standard operation procedures (SOPs) to support practices. 
>> * The incorporation of an instrumentation management plan, was not as highly utilized (56%).
>> * Oversight of data analyses and double-checking results were some of the least widely used ones (26%).
>> ```
> {: .solution}
{: .challenge}

<br>

Remember: You can use + or - too. You can also add sub-levels, to create sub-lists by indenting the next list item evenly by two or four spaces:
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

For ordered lists, you use a number with a dot, e.g: 1.  Your numbers do not need to be sequential.  Markdown will number the item in the order in which they appear rather than their numeric order.

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
{: .callout}

> ## CHALLENGE 3.4
> Use RStudio to locate the paragraph which ends with “in grant applications, as follows:” the next four sentences should be shown as numbered a list.
>
> ## SOLUTION
>> ```
>> \1. scientific premise forming the basis of the proposed research 
>> \2. rigorous experimental design for robust and unbiased results
>> \3. consideration of sex and other relevant biologic variables
>> \4. authentication of key biologic and chemical resources
>> ```
> {: .solution}
{: .challenge}

If needed, you can also combine sub-levels numbers or even combine bullets and numbered items in the same list, by indenting different levels. 
