---
title: Bayesian Imputation of Missing Covariates
subtitle: Doctoral Dissertation
summary: Doctoral Dissertation
tags:
- Bayesian
- imputation
- missing data
date: "2019-08-21T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption: cover image by Marijke van Zuilen
  focal_point: Top

links:
- icon: twitter
  icon_pack: fab
  name: Follow
  url: https://twitter.com/N_Erler
url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""



# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
---

## Abstract
Missing values are a pervasive problem in almost all kinds of studies. 
In large cohort studies, the type of study most often conducted in the field of
epidemiology, missing observations in covariates pose the major challenge. 
Since measurements are taken in an uncontrolled environment, typically many 
covariates need to be considered as potential confounders to filter out unwanted
influences that environmental factors may have on the estimates of interest. 
Due to the large number of variables measured and the fact that measurement often
relies on participants recalling and reporting detailed information, large
proportions of missing data are common in these types of studies.

In light of the above, the research that forms this thesis focuses on the 
analysis of incomplete cohort study data where missingness is in the covariates.

We describe a fully Bayesian approach to analyse and impute data in this setting
and discuss a number of naive and more sophisticated approaches to impute such 
data using multiple imputation with chained equations (MICE). The fully Bayesian
approach is applied to multiple applications from the field of Epidemiology, 
and is further extended to settings with time-varying covariates, in which
additional challenges, such as the functional form of the association between
outcome and covariate and potential endogeneity arise.

Moreover, the implementation of the fully Bayesian approach in the R package 
**JointAI** is described and illustrated by means of various examples.

<hr>

<style>
input.MyButton {
padding: 0px 5px; 
cursor: pointer; 
font-weight: bold;
background: #fff; 
color: #80005e;
border-radius: 5px; 
border: 1px solid #80005e; 
font-size: 100%;
}

input.MyButton:hover {
color: #fff;
background: #80005e;
border: 1px solid #80005e;
}
</style>

Read the html version (created with [bookdown](https://bookdown.org))
<input class="MyButton" type="button" value="here" onclick="window.open('/dissertation/_book')"/>
