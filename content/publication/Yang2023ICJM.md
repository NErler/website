---
title: "Personalized Biopsy Schedules Using an Interval-censored Cause-specific Joint Model"
authors:
- Zhenwei Yang
- Dimitris Rizopoulos
- Eveline A.M. Heijnsdijk
- Lisa F. Newcomb
- Nicole S. Erler

date: "2023-01-03"
doi: "10.48550/arXiv.2209.00105"

# Schedule page publish date (NOT publication's date).
publishDate: "01-03-2023"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["2"]

# Publication name and optional abbreviated publication name.
publication: "*arXiv*, 2023, 2209.00105 [stat.ME]"


abstract: "Active surveillance (AS), where biopsies are conducted to detect cancer progression, has been acknowledged as an efficient way to reduce the overtreatment of prostate cancer. Most AS cohorts use fixed biopsy schedules for all patients. However, the ideal test frequency remains unknown, and the routine use of such invasive tests burdens the patients. An emerging idea is to generate personalized biopsy schedules based on each patient's progression-specific risk. To achieve that, we propose the interval-censored cause-specific joint model (ICJM), which models the impact of longitudinal biomarkers on cancer progression while considering the competing event of early treatment initiation. The underlying likelihood function incorporates the interval-censoring of cancer progression, the competing risk of treatment, and the uncertainty about whether cancer progression occurred since the last biopsy in patients that are right-censored or experience the competing event. The model can produce patient-specific risk profiles until a horizon time. If the risk exceeds a certain threshold, a biopsy is conducted. The optimal threshold can be chosen by balancing two indicators of the biopsy schedules: the expected number of biopsies and expected delay in detection of cancer progression. A simulation study showed that our personalized schedules could considerably reduce the number of biopsies per patient by 34%-54% compared to the fixed schedules, though at the cost of a slightly longer detection delay."

tags: 
- Joint Model
- dynamic prediction
- interval censoring
- competing risk

featured: true

# links:
# - name: ""
#   url: ""
url_pdf: https://arxiv.org/pdf/2209.00105.pdf


# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []

---

