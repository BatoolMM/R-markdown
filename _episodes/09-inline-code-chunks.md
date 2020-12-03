---
exercises: 10
keypoints:
- 'What is Knitr?'
- Inline code
- Code chunks
- Code chunk options
- Global code chunk options
knit: |
    (function(inputFile, encoding) { out\_dir &lt;- '../\_episodes';
    rmarkdown::render(inputFile, encoding=encoding,
    output\_file=file.path(dirname(inputFile), out\_dir,
    '09-inline-code-chunks.md')) })
objectives:
- Understand the basic functions of Knitr
- Learn how to add inline code to your document
- Learn how to add code chunks to your document
- 'Distinguish when inline code vs. code chunks would be appropriate'
- Understand how to change the output characteristics of code chunks
output:
  md_document:
    preserve_yaml: True
    variant: markdown
questions:
- 'What is "Knitr"?'
- 'When would I want to add inline code?'
- 'How to add inline code?'
- 'When would I want to use code chunks?'
- 'How do I add code chunks?'
source: Rmd
teaching: 45
title: 'Knitr Syntax: Inline Code & Code Chunks'
---

What is Knitr?
--------------

(FIXME) Language for processing code chunks. Two main ways to process
code in Rmd\
1. Inline code\
2. Code Chunks

Adding Inline code
------------------

Inline code is best for calculating simple expressions integrated into
your narrative. For example, use inline code to calculate a summary
statistic (like \# of observations) of your dataframe in your results
section. One of the benefits of using this method is if something about
your data set changes (like leaving out NAs or null values) the code
will automatically update the calcuation specified.

i.e. "There are `#r nrow(my_data)` individuals who completed the survey"

We're going to find one such example in our data frame and convert a
static number or equation to inline code

(FIXME) Add example 1 here

> Tip: Inline code cannot span lines
> ----------------------------------
>
> You need to be sure that these in-line bits of code aren’t split
> across lines in your document. Otherwise you’ll just see the raw code
> and not the result that you want. {: .callout}

> CHALLENGE FIXME
> ---------------
>
> Find another spot in the narrative where you can replace a static
> number with a calculation from the dataset. What part of the paper is
> that? \*hint search for "\_\_\_" Use xxx function to add the inline
> code yourself.
>
> > SOLUTION
> > --------
> >
> > {: .solution} {: .challenge}

Inserting Code Chunks
---------------------

Code chunks are better when you need to do something more sophisticated
with your code, such as building plots or tables. There is also syntax
which allows you to change how that code gets rendered. We’ll learn more
about that as we walk through the “anatomy” of a code chunk.

### Basic Anatomy of the Code Chunk

You can quickly insert chunks like these into your file with:

-   the keyboard shortcut Ctrl + Alt + I (OS X: Cmd + Option + I)
-   the Add Chunk command in the editor toolbar
-   or by typing the chunk delimiters `{r} and`.

The most basic code chunk looks like so:

    #Some code here

{: .language-r}

Other than our \`\`\`\`\`'s for code chunks that surround the code top
and bottom, the only necessary piece is the specified language (r)
placed between the curly brackets which indicates the language to read
the code is R.

**Fun fact:** Although likely our most used language will be R, this
means it’s possible to use other languages. We have seen that we can use
Latex code for equations for example. You can also use python too, and
we (may) show an example with css. Other languages include: sql, julia,
bash, and c, etc. It should be noted however, that some languages (like
python) require that you install and load an additional package.

(FIXME) Adding the code Plot1 demo

-   FIXME Demonstrate Running the code individually in each chunk vs.
    Knitting

### Name/label your code chunks

Better practice is to give a name to each code chunk:

\*The chunk name is the only value other than r in the code chunk
options that doesn’t require a tag (i.e. echo=FALSE)

Note: We’ll see in a bit where this code chunk label comes in handy.

Let's go back and give our first code chunk a name.

FIXME add naming plot1

> Tip: Don't use spaces, periods or underscores in code chunk labels
> ------------------------------------------------------------------
>
> Try to avoid spaces, periods (.), and underscores (\_) in chunk labels
> and paths. If you need separators, you are recommended to use hyphens
> (-) instead. For example, setup-options is a good label, whereas
> setup.options and chunk 1 are bad; fig.path = 'figures/mcmc-' is a
> good path for figure output, and fig.path = 'markov chain/monte carlo'
> is bad. <https://yihui.org/knitr/options/> {: .callout}

### What else can we add to the code chunk options between the `{}`s?

<https://kbroman.org/knitr_knutshell/pages/Rmarkdown.html> There are
over 50 different code chunk options!!! Obviously we will not go over
all of them, but they fall in the main \_\_ categories: code evaluation,
text output, code style, cache options, plot output and animation. We’ll
talk about a few options for code evaluation, text output and plot
output.

Again, The chunk name is the only value other than r in the code chunk
options that doesn’t require a tag (i.e. echo=FALSE). So these chunk
options will always require a tag whose syntax looks like:

`{r code-label, OPTIONNAME = XXX}`

Eval = (logical or numeric) TRUE/FALSE to evaluate or a numeric value
like c(1,3) (only evaluate expressions 1 and 3. Echo = whether to
display source code or not (logical or numeric Warning = whether to
display the warnings in the output (TRUE). FALSE will output warnings to
the console only Include = whether to include the chunk output in the
output document Hide = Specifically for plots, generate plots but don’t
display them in the output

> CHALLENGE (FIXME)
> -----------------
>
> How will some hypothetical code render given the following options?
>
>     # FIXME change options
>     #Some r code
>
> {: .language-r} &gt; \#\# SOLUTION &gt; FIXME add answer {: .solution}
> {: .challenge}

CHALLENGE

Now, add plot2 from the r script. On this one let’s set echo to TRUE as
well as message to TRUE????

### Global Code Chunk Options:

To set global options that apply to every chunk in your file, call
knitr::opts\_chunk$set in a code chunk. Knitr will treat each option that you pass to knitr::opts_chunk$set
as a global default that can be overwritten in individual chunk headers

See also fig paths best practices

TIP: An option for the yaml header\*

Code folding: output: html\_document: code\_folding: "hide"

Your code chunks will be hidden in the output, but a small ‘code’ button
will be available to display it if necessary.

Challenge after global options:

What would be displayed when the above chunk was evaluated when: The
global chunk setting’s were was as listed: xxxxxxxxxxxxxxxxx, but we
manually set an individual chunk to the following xxxxxxxxxxxxx ?

\*Code chunk options must all appear on the same line, no returns

“If I’m writing a report for a collaborator, I’ll often use
include=FALSE to suppress all of the code and largely just include
figures.” - Karl Broman

ok, let's go back and remove the options we set in the individual code
chunks & set the global options in the document instead.

FIXME I had a tip to add, but I'm totally forgetting it now.
============================================================
