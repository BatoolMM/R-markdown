---
title: 'Knitr Syntax: Inline Code & Code Chunks'
teaching: 45
exercises: 10
questions:
- What is "Knitr"?
- When would I want to add inline code?
- How to add inline code?
- When would I want to use code chunks?
- How do I add code chunks?
objectives:
- Understand the basic functions of Knitr
- Learn how to add inline code to your document
- Learn how to add code chunks to your document
- Distinguish when inline code vs. code chunks would be appropriate
- Understand how to change the output characteristics of code chunks
keypoints:
- What is Knitr?
- Inline code
- Code chunks
- Code chunk options
- Global code chunk options
source: Rmd
---




## What is Knitr?
(FIXME) Syntax for processing code chunks. Two main ways to process code in Rmd:  
1. Inline code  
2. Code Chunks  

## Adding Inline code

Inline code is best for calculating simple expressions integrated into your narrative.
For example, use inline code to calculate an error margin or summary statistic, such as # of observations, of your dataframe in your results section. One of the benefits of using this method is if something about your data set changes (like leaving out NAs or null values) the code will automatically update the calcuation specified.

We're going to go ahead and change the LaTex code we used to input the error margin and calculate it dynamically using r code. So, instead of `$ \pm 3 \% $`, let's add this:


> ```
> 
> ~~~
> `r round(1.96*0.5*(1-0.5)/sqrt(243))*100)`%  
> ~~~
> {: .language-r}
> ```
{: .source}

Notice how we put the % sign after the ticks. In this case the percentage sign should be plain text. If we had put it inside the ` r would have attempted to calculate the modulo since that's what that symbol stands for in R. 

Where else can we add inline code? We can replace observation counts!

i.e. "There are `#r nrow(my_data)` individuals who completed the survey"

Now, we're going to find one such example in our data frame and convert a static number or equation to inline code. In our paper text we read "a total of 243 individuals from 21 countries completed this section." Here we can use inline r code to calculate the total responses instead of typing it in. However, because we don't have access to the original dataset (and thus only aggregate counts) we can't use `nrow()` to count our number of observations. we will count the column `count` in our `data` dataframe which sums the responses relating to how familiar respondents are with current NIH guidelines on reproducibility and is used to create Fig 1. We will use *r sum(data$count)* in between the tick marks instead to total the count for each level of familiarity ("Very Aware", "Somewhat Aware", "Completely Unaware").

We will add the inline code to the sentence:

> 
> ~~~
> "a total of `r sum(data$count)` individuals from 21 countries completed this section."
> ~~~
> {: .language-r}


Output: "a total of 242 individuals from 21 countries completed this section."

Oh! Wow we were off on out total count by one anyway, good thing we added this inline code!

> ## Tip: Inline code cannot span lines  
> You need to be sure that these in-line bits of code aren’t split across lines in your document. Otherwise you’ll just see the raw code and not the result that you want.  
{: .callout}


> ## CHALLENGE 9.1
> There are two more spots in the paper where the count 243 was stated (search '243' or look just around the paragraph we just edited) Find both and replace with code. What part of the paper is that? 
>
>> ## SOLUTION
>> 
>> ~~~
>> 1. the margin of error is ±`r round(1.96*0.5*(1-0.5)/sqrt(sum(data$count))*100)`%
>> ~~~
>> {: .language-r}
>> Note: since this count was in the inline code we just added you only need to substitute `sum(data$count)` for 243.
>> 
>> ~~~
>> 2. sample size $n=`r sum(data$count)`$
>> ~~~
>> {: .language-r}
>> Note: Look at that! you can add r inline code in LaTex formatting, it evaluates the r code and then displays in LaTex format!
>>
> {: .solution}  
{: .challenge}

## Inserting Code Chunks
Code chunks are better when you need to do something more sophisticated with your code, such as building plots or tables. There is also syntax which allows you to change how that code gets rendered. We’ll learn more about that as we walk through the “anatomy” of a code chunk.  

### Basic Anatomy of the Code Chunk
You can quickly insert chunks like these into your file with:

* the keyboard shortcut Ctrl + Alt + I (OS X: Cmd + Option + I)
* the Add Chunk  command in the editor toolbar
* or by typing the chunk delimiters ```{r} and ```.

The most basic code chunk looks like so:
```

~~~
#Some code here
~~~
{: .language-r}
```

Other than our hashes ``` for code chunks that surround the code top and bottom, the only necessary piece is the specified language (r) placed between the curly brackets. This indicates that the language to read the code is R. 

> ##Fun fact: 
> Although we will (mostly) be using R in this workshop, it’s possible to use other programming or markup languages. For example, we have seen that we can use LaTeX code for equations. You can also use python too, and we (may) show an example with css. Other languages include: sql, julia, bash, and c, etc. It should be noted however, that some languages (like python) will require installing and loading additional packages. 
{: .callout}

### Add a code chunk

Ok, let's add some code! Earlier, we added three images to our document. Now, images of our plots are great and all, but since R Markdown allows us to evaluate live code it would be more reproducible to use code chunks to display those plots. Like with our inline code, this assures that if there are any changes to the data, the plots update automatically. This also makes our life easier because when there's a change we don't have to re-generate plots, save them as images and then add them back in to our paper. This will potentially help prevent version errors as well!  So we're actually going to go ahead and convert a few of our plots to code chunks.

We'll start by typing our our starting hashes & r between curly brackets. (in your own workflow you may want to add the ending three hashes as well so you don't forget after adding your code):

```

```
Now, let's open our `plot-figure-1.r` file in our `code` folder. Copy the code and paste it in between the two lines with hashes.

*There's actually a button you can use in the menu to generate the code chunks automatically. Automatic code chunk generation is available for several other languages as well.
FIXME add screenshot


```

~~~
data <- read_csv("../data/figure-1-data.csv", col_types="fi")

pie_data <- data %>%
  mutate(proportion=count/sum(count)) %>%
  arrange(desc(proportion)) %>%
  mutate(lab.ypos = cumsum(proportion) - 0.5*proportion)

ggplot(pie_data, aes(x=2, y=proportion, fill=familiarity)) +
  geom_bar(stat="identity", color="white") +
  coord_polar(theta="y", start=0) +
  geom_text(aes(y=lab.ypos, label=paste(round(proportion*100), "%", sep="")), color="white") +
  scale_fill_brewer(palette="Set1", name="Familiarity", guide=guide_legend(reverse=TRUE)) +
  theme_void()
~~~
{: .language-r}
```
### Run your code

Now, to check to make sure our code is rendering correctly, we could click the "knit" button as we have been doing. However, with the code chunks we have other opportunities for rendering. 

1) Knit button - knitting will 

2) Run from Rmd file (chunk run button)

3) Run menu 

### Name your code chunks

While not necessary to run your code, better practice is to give a name to each code chunk:


*The chunk name is the only value other than r in the code chunk options that doesn’t require a tag (i.e. echo=FALSE)

Note: 
We’ll see in a bit where this code chunk label comes in handy. 

Let's go back and give our first code chunk a name.

FIXME add naming plot1


> ## Tip: Don't use spaces, periods or underscores in code chunk labels
>Try to avoid spaces, periods (.), and underscores (_) in chunk labels and paths. If you need separators, you are recommended to use hyphens (-) instead. For example, setup-options is a good label, whereas setup.options and chunk 1 are bad; fig.path = 'figures/mcmc-' is a good path for figure output, and fig.path = 'markov chain/monte carlo' is bad. https://yihui.org/knitr/options/
{: .callout}

### More code chunk options

https://kbroman.org/knitr_knutshell/pages/Rmarkdown.html
There are over 50 different code chunk options!!! Obviously we will not go over all of them, but they fall in the main __ categories: code evaluation, text output, code style, cache options, plot output and animation. We’ll talk about a few options for code evaluation, text output and plot output.

Again, The chunk name is the only value other than r in the code chunk options that doesn’t require a tag (i.e. echo=FALSE). So these chunk options will always require a tag whose syntax looks like:

`{r code-label, OPTIONNAME = XXX}`


Eval = (logical or numeric) TRUE/FALSE to evaluate or a numeric value like c(1,3) (only evaluate expressions 1 and 3.
Echo =  whether to display source code or not (logical or numeric
Warning = whether to display the warnings in the output (TRUE). FALSE will output warnings to the console only
Include = whether to include the chunk output in the output document
Hide = Specifically for plots, generate plots but don’t display them in the output
 
 
> ## CHALLENGE 9.2
> How will some hypothetical code render given the following options?
>
> 
> ~~~
> # FIXME change options
> #Some r code
> ~~~
> {: .language-r}
>> ## SOLUTION
>> FIXME add answer
> {: .solution}
{: .challenge}


> ## CHALLENGE 9.3
>
> Now, let's add the code to regenerate Figure 3 from the r script `plot-figure-3.r` in the `code` folder. Go ahead and load the data in the chunk at the top of your paper with our other data and make a new code chunk (with a name) with the options set to echo = TRUE and message = TRUE with the code that renders the plot.
>
>> ## SOLUTION
>> 1. add to `code-chunk-name` here: to load the data
>> ```
>> ```
>> 2. create a new code chunk at the spot in the paper we want figure 3 and add the following code:
>> ```
>> ```
> {: .solution}
{: .challenge}


### Global Code Chunk Options:
On each of our two plots we set the options separately (though we used the same options and values). However, we may have quite a few code chunks in our paper and it might be a lot of work to keep track of what options we're using throughout the paperWe can automate this process by setting the options once at the beginning of the document (FIXME same with libraries?). Then, each code chunk that runs will refer to the default options we set one time at the beginning of the file. 

To set global options that apply to every chunk in your file, call we will call `knitr::opts_chunk$set` in a code chunk right after our yaml header. Knitr will treat each option that you pass to knitr::opts_chunk$set as a global default. 


~~~
# knitr::opts_chunk$set(ADD options here)
~~~
{: .language-r}

What if you want most of your code chunks to render the same, but you just have one or two that you want to tweak the options on? Good news!  The global options can be overwritten in each individual code chunk.

See also fig paths best practices

TIP:
An option for the yaml header*

Code folding: output:
  html_document:
    code_folding: "hide"

Your code chunks will be hidden in the output, but a small ‘code’ button will be available to display it if necessary.



Challenge after global options:

What would be displayed when the above chunk was evaluated when:
The global chunk setting’s were was as listed: xxxxxxxxxxxxxxxxx, 
but we manually set an individual chunk to the following xxxxxxxxxxxxx ?
 
*Code chunk options must all appear on the same line, no returns

“If I’m writing a report for a collaborator, I’ll often use include=FALSE to suppress all of the code and largely just include figures.” - Karl Broman

ok, let's go back and remove the options we set in the individual code chunks & set the global options in the document instead. 


# FIXME I had a tip to add, but I'm totally forgetting it now. 
