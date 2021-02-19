---
title: "Pairwise estimation of multivariate longitudinal outcomes in a Bayesian setting with extensions to the joint model"
authors:
- Katya Mauff
- Nicole S. Erler
- Isabella Kardys
- Dimitris Rizopoulos

date: "2021-02-01"
doi: "10.1177/1471082X20945069"

# Schedule page publish date (NOT publication's date).
publishDate: ""

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["2"]

# Publication name and optional abbreviated publication name.
publication: "*Statistical Modelling*, 2020, 21 (1-2), 115--136"
publication_short: ""

abstract: "Multiple longitudinal outcomes are theoretically easily modelled via
extension of the generalized linear mixed effects model. However, due to
computational limitations in high dimensions, in practice these models are
applied only in situations with relatively few outcomes. We adapt the solution
proposed by Fieuws and Verbeke (2006) to the Bayesian setting: fitting all
pairwise bivariate models instead of a single multivariate model, and combining
the Markov Chain Monte Carlo (MCMC) realizations obtained for each pairwise
bivariate model for the relevant parameters. We explore importance sampling as a
method to more closely approximate the correct multivariate posterior
distribution. Simulation studies show satisfactory results in terms of bias,
RMSE and coverage of the 95% credible intervals for multiple longitudinal
outcomes, even in scenarios with more limited information and non-continuous
outcomes, although the use of importance sampling is not successful. We further
examine the incorporation of a time-to-event outcome, proposing the use of
Bayesian pairwise estimation of a multivariate GLMM in an adaptation of the
corrected two-stage estimation procedure for the joint model for multiple
longitudinal outcomes and a time-to-event outcome (Mauff et al., 2020,
*Statistics and Computing*). The method does not work as well in the case of the
corrected two-stage joint model; however, the results are promising and should
be explored further."

# Summary. An optional shortened abstract.
summary: ""

tags:
- pairwise
- multivariate
- mixed effects
- bayesian
- joint
- importance sampling

featured: true

links:
 - name: "Supplementary material"
   url: "http://www.statmod.org/smij/archive.html"
url_pdf: 'https://journals.sagepub.com/doi/pdf/10.1177/1471082X20945069'
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/jdD8gXaTZsc)'
focal_point: ""
preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: example
---
