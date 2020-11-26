---
title: "Adding Emphasis, Symbols, and Titles"
teaching: 30 min
exercises: 10 min
questions:
- How to find your way around RStudio?
- How to start an R Markdown document in Rstudio?
- How is an R markdown document configured?

objectives:
- Emphasising words or phrases in markdown
- Formatting with LaTeX (Lay-techhh) 
- Adding symbols in Rmarkdown

keypoints:
- Adding _*italicized*_, &quotquoted&quot, and _*bolded*_ texts
- Following LaTeX formatting guidelines
source: Rmd
---




## Adding Emphasis

Another way we can customize our R Markdown file output is by emphasizing words or phrases. In our paper, there are several instances of words and phrases that are italicized, bolded, or in “quotation marks”. We use markdown syntax to add these emphasis to words or phrases by surrounding them with matching symbols. Different symbols give different emphases effects. 

Put text in italics with single asterisks or single underscores.  

*italics* will give output italics  
_italics_ will give output italics

Make text bold with double asterisks or double underscores.  

**bold** will give output bold  
__bold__ will give output bold  

Put text in “quotation marks” using &quot;

&quot;Here is a quote.&quot; will give output “Here is a quote.”

In the second paragraph of our paper, we reference a survey conducted by Springer. We want to italicize Springer’s name. Find where we reference the survey and change Springer to Springer by putting either asterisks or underscores around the name (*Springer* or _Springer_). 

In that same paragraph, the phrase “more robust experimental design” is in quotations. Add the quotation marks to that phrase by typing &quot; at the beginning and end of the phrase. 
&quot;more robust experimental design&quot;
<br>
> ## Add emphasis to other words and phrases. 
>
> ~~~
>1. In the second paragraph
>Put the phrase “better statistics” in quotation marks
>Put the phrase “better mentorship” in quotation marks 
>When we reference the survey being published, italicize the word Nature so we can emphasize the >publisher. 
>
>2. In the Survey Overview section
>Put the phrase “enhance the reproducibility of research findings through increased scientific rigor >and transparency.” in quotation marks
>
>3. In the Strategies for Improving R&R in Core Operation section
>Put the phrase “provide incentives to support and monitor research rigor throughout the research >life cycle” in quotation marks
>Put the word “cultural” in quotation marks 
>
> ~~~
>
{: .challenge}


>## Tip: 
> ~~~
> you can combine emphasis styles by combining the symbols surrounding the word or phrase. 
> Make text bold and  italicized with triple asterisks or triple underscores.  
> ~~~
{: .callout}


***super emphasized*** will give output super emphasized 
___super emphasized___ will give output super emphasized



## Adding Symbols and Formulas

LaTeX (pronounced Lay-techhh) is a comprehensive document formatting and preparation system.  It is very powerful, but also famously difficult to use.  A few journals require that papers be written in LaTeX, and some fields, such as high energy physics, use it exclusively.  Why?  Because, despite its difficulty, its mathematics formatting (equations, formulas) is better than anything else out there.

RStudio has a most wonderful feature that allows you to use just the mathematics formatting portion of LaTeX without having to use LaTeX as a whole, without having to have a LaTeX installation on your system, and without having to understand LaTeX generally.

An inline formula is delimited with single dollar signs, as in $ 2+2 = 4 $.  A display equation uses double dollar signs.  What goes between the single or double dollar signs is LaTeX math formatting.  This is its own language, and you just have to learn it.  Some handy references:

TBD

But, know that it is very intuitive.  Put your math head on, not your programming head.  If you want to say that a equals b times c, in a programming language you might write something like a = b*c, but in LaTeX you would say $ a = bc $.  Spaces generally don’t matter in LaTeX; it “understands” your formula and uses rules to determine how to display things.

> ## Add the following text and formula to our data analysis section 
> (may change)
>
> ~~~
> [1] Let’s add the following text and formula to our data analysis section:
>
> Using the sampling error formula
>
> $$ e = { Zp(1-p) \over \sqrt{n} } $$
> 
> we compute that at a 95% confidence level (i.e., Z=1.96), with base probability p=1/2 and sample 
> size n=243, the margin of error is +/-3%.
> ~~~
>
{: .challenge}

Notice that RStudio previews the equation for you.  The formula uses curly braces for grouping 
(kind of like invisible parentheses).  \over gives a fraction with a big horizontal line.  Try 
replacing that with just / for an alternative rendering.

For inline formulas, replace Z=1.96 with $Z=1.96$ and similarly.  Notice the different formatting, and notice again RStudio’s preview.  In LaTeX, you would say $ \pm 3 \% $ for the +/-3%.  Later we’ll see how to have R compute this value inline.

[Compare our LaTeX rendered formula, versus crap rendering at https://www.educba.com/confidence-interval-formula/]

[Point out that RStudio makes a wonderful authoring environment for math-rich papers, that have nothing to do with R at all]

 
