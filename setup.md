---
title: Setup
---
<h2>Setup instructions</h2>


R and RStudio are separate downloads and installations. R is the 
underlying statistical computing environment, but using R alone is no fun. 
RStudio is a graphical integrated development environment (IDE) that makes 
using R much easier and more interactive. You need to install R before you 
install RStudio. Once installed, because RStudio is an IDE, RStudio will 
run R in the background. You do not need to run it separately.

<h3>Windows</h3>

<h4>If you already have R and RStudio installed</h4> 
 
<li>Open RStudio, and click on “Help” > “Check for updates”. If a new version is available, quit RStudio, 
    and download the latest version for RStudio.</li> 
<li>To check which version of R you are using, start RStudio and the first thing that appears in the console 
    indicates the version of R you are running. Alternatively, you can type <code>sessionInfo()</code>, which will also display which version of R you are running. 
    Go on the <a href="https://cran.r-project.org/bin/windows/base/">CRAN website</a>, and check whether a more recent version is available. If so, please download and 
    install it. 
    You can check <a href="https://cran.r-project.org/bin/windows/base/rw-FAQ.html#How-do-I-UNinstall-R_003f">here</a> for more information on how to remove old 
    versions from your system if you wish to do so.</li>


<h4>If you don’t have R and RStudio installed</h4>

<li>Download R from the CRAN website.</li>
<li>Run the <code>.exe</code> file that was just downloaded.</li>
<li>Go to the <a href="https://rstudio.com/products/rstudio/download/#download">RStudio download page</a>.</li>
<li>Under <i>Installers</i> select <b>RStudio x.yy.zzz - Windows. Vista/7/8/10</b> (where x, y, and z represent version numbers).
<li>Double click the file to install it.</li>
<li>Once it’s installed, open RStudio to make sure it works and you don't get any error messages.</li>


<h3>macOS</h3>

<h4>If you already have R and RStudio installed</h4>

Open RStudio, and click on “Help” > “Check for updates”. If a new version is available, quit RStudio, and download the latest version for RStudio.
To check the version of R you are using, start RStudio and the first thing that appears on the terminal indicates the version of R you are running. 
Alternatively, you can type <code>sessionInfo()</code>, which will also display which version of R you are running. Go on the CRAN website and check whether a 
more recent version is available. If so, please download and install it. 
In any case, make sure you have at least R 3.6.

<h4>If you don’t have R and RStudio installed</h4>

<li>Download R from the <a href="https://cran.r-project.org/bin/macosx/">CRAN website</a>.</li>
<li>Select the <code>.pkg</code> file for the latest R version. Double click on the downloaded file to install R.</li>
<li>Go to the <a href="https://rstudio.com/products/rstudio/download/#download">Rstudio download page</a></li>
<li>Under <i>Installers</i> select <b>RStudio x.yy.zzz - Mac OS X 10.6+ (64-bit)</b> (where x, y, and z represent version numbers).</li>
<li>Double click the file to install RStudio.</li>
<li>Once it’s installed, open RStudio to make sure it works and you don’t get any error messages.</li>



<h3>Linux</h3>

<li>Follow the instructions for your distribution from CRAN, they provide information to get the most recent version of R for common distributions. 
    For most distributions, you could use your package manager (e.g., for Debian/Ubuntu run <code>sudo apt-get install r-base</code>, and for Fedora <code>sudo yum 
    install R</code>), but we don’t recommend this approach as the versions provided by this approach are usually out of date. In any case, make sure you have 
    at least R 3.6.</li>
<li>Go to the <a href="https://rstudio.com/products/rstudio/download/#download">RStudio download page</a>.</li>
<li>Under *Installers* select the version that matches your distribution, and install it with your preferred method (e.g., with Debian/Ubuntu <code>sudo dpkg 
    -i rstudio-x.yy.zzz-amd64.deb</code> at the terminal).</li>
<li>Once it’s installed, open RStudio to make sure it works and you don’t get any error messages.</li>


