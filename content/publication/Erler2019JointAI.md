+++
title = "JointAI: Joint Analysis and Imputation of Incomplete Data in R"
date = "2019-07-25"
authors = ["Nicole S. Erler", "Dimitris Rizopoulos", "Emmanuel M.E.H. Lesaffre"]
featured = true

publication_types = ["2"]

tags = ["imputation", "Bayesian", "missing covariate", "non-linear",
        "interaction", "multi-level", "survival", "R", "JAGS"]

publication = "*arXiv*, 1907.10867"

abstract = "Missing data occur in many types of studies and typically complicate the analysis. Multiple imputation, either using joint modelling or the more flexible fully conditional specification approach, are popular and work well in standard settings. In settings involving non-linear associations or interactions, however, incompatibility of the imputation model with the analysis model is an issue often resulting in bias. Similarly, complex outcomes such as longitudinal or survival outcomes cannot be adequately handled by standard implementations.<br>In this paper, we introduce the R package **JointAI**, which utilizes the Bayesian framework to perform simultaneous analysis and imputation in regression models with incomplete covariates. Using a fully Bayesian joint modelling approach it overcomes the issue of uncongeniality while retaining the attractive flexibility of fully conditional specification multiple imputation by specifying the joint distribution of analysis and imputation models as a sequence of univariate models that can be adapted to the type of variable. **JointAI** provides functions for Bayesian inference with generalized linear and generalized linear mixed models as well as survival models, that take arguments analogous to their corresponding and well known complete data versions from base R and other packages. Usage and features of **JointAI** are described and illustrated using various examples and the theoretical background is outlined."

projects = ["JointAI",  "Dissertation"]

url_pdf = ""
url_preprint = "https://arxiv.org/pdf/1907.10867"
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""
doi = ""

url_custom = [{name = "arXiv", url = "https://arxiv.org/abs/1907.10867"}]

math = true
+++
