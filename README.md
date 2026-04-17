# 🎗️ Breast Cancer Survival Analysis: Does Early Detection Save Lives?

## Overview
This project analyzes real breast cancer patient data from the National Cancer Institute's 
SEER (Surveillance, Epidemiology, and End Results) program to answer two central questions:

> **1. Does the stage at which cancer is detected significantly impact a patient's chance of survival?**
> **2. Do racial disparities exist in breast cancer outcomes — and is late detection the only explanation?**

Tools used: SQL · Google BigQuery · Tableau Public · GitHub

---

## Dataset
- **Source:** SEER Program, National Cancer Institute via Kaggle
- **Records:** 4,024 breast cancer patients
- **Years covered:** 2006–2010
- **Key fields:** Cancer stage, survival months, vital status, age, race, tumor size

---

## Tools & Techniques Used
- **SQL (BigQuery)** — data cleaning, analysis, window functions
- **Tableau Public** — multi-dashboard interactive visualization
- **GitHub** — project documentation and query storage

---

## Part 1: Early Detection & Survival

### Key Question: Does cancer stage at diagnosis affect survival rate?
Yes — dramatically.

| Stage | Survival Rate | Avg Survival (months) |
|-------|--------------|----------------------|
| IIA   | 92.6%        | 74.4                 |
| IIB   | 88.1%        | 72.2                 |
| IIIA  | 82.5%        | 70.2                 |
| IIIB  | 70.1%        | 69.4                 |
| IIIC  | 61.7%        | 63.2                 |

**→ Patients diagnosed at Stage IIA survive at a rate 31 percentage points higher than Stage IIIC.**

### Are early-stage tumors physically smaller?
Yes — confirming early detection catches cancer before it grows.

| Stage | Avg Tumor Size |
|-------|---------------|
| IIA   | 14.2 mm       |
| IIB   | 30.6 mm       |
| IIIC  | 42.5 mm       |
| IIIA  | 43.6 mm       |
| IIIB  | 54.3 mm       |

**→ Stage IIA tumors are nearly 4x smaller than Stage IIIB tumors at time of diagnosis.**

---

## Part 2: Racial Equity Analysis

### Finding 1 — Black patients die at nearly double the rate
| Race | Death Rate | Avg Survival (months) |
|------|-----------|----------------------|
| Other | 10.3% | 73.2 |
| White | 14.9% | 71.5 |
| Black | 25.1% | 66.6 |

**→ Black patients die at a rate 10.2 points higher than White patients and survive 4.9 fewer months on average.**

### Finding 2 — Black patients are diagnosed at later stages
Black patients are diagnosed at Stage IIIC at a rate of 15.1% vs 11.5% for White patients — 
a 3.6 point gap at the most deadly stage.

### Finding 3 — At late stages, Black patients' tumors are significantly larger
At Stage IIIB, Black patients have tumors averaging 67.7mm vs 53.5mm for White patients — 
a 14.2mm gap suggesting more time passed between symptom onset and diagnosis.

### Finding 4 — The most critical finding: survival gap exists at EVERY stage
Even when controlling for cancer stage, Black patients survive at lower rates than 
White patients at every single stage:

| Stage | Black Survival | White Survival | Gap |
|-------|---------------|----------------|-----|
| IIA   | 85.7%         | 93.0%          | -7.3 pts |
| IIB   | 80.2%         | 88.5%          | -8.3 pts |
| IIIA  | 69.6%         | 82.8%          | -13.2 pts |
| IIIB  | 66.7%         | 70.2%          | -3.5 pts |
| IIIC  | 52.3%         | 61.3%          | -9.0 pts |

**→ The racial survival gap is NOT only about late detection. Even Black patients caught 
at Stage IIA — the earliest, most treatable stage — survive at 7.3 points lower than 
White patients at the same stage. This points to systemic disparities in treatment 
quality and post-diagnosis care.**

---

## SQL Queries
All queries are saved in the [`/queries`](/queries) folder including:
- Survival rate by stage
- Survival rate by race
- Tumor size by stage and race
- Stage distribution by race
- Survival rate by race AND stage (window function)
- Death rate by race

---

## Dashboards
📊 [Dashboard 1 — Early Detection & Survival](https://public.tableau.com/views/BreastCancerSurvivalAnalysis_17764266948730/BreastCancerSurvivalAnalysis)

📊 [Dashboard 2 — Racial Equity Analysis](https://public.tableau.com/views/BreastCancerSurvivalAnalysis_17764266948730/RaceAnalysis)

---

## Conclusion
The data tells two powerful stories. First — early detection saves lives. A patient 
diagnosed at Stage IIA has a 92.6% survival rate vs 61.7% at Stage IIIC. Second — 
and more troubling — Black patients face a survival gap that cannot be explained by 
late detection alone. Even at the same cancer stage, Black patients survive at 
consistently lower rates. This points to systemic inequities in post-diagnosis care 
that go beyond screening access.

Closing the racial survival gap in breast cancer requires not just better screening 
access, but equal quality of treatment after diagnosis.
