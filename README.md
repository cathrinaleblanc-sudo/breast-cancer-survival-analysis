# breast-cancer-survival-analysis
Analyzing how cancer stage at diagnosis impacts survival rates using real SEER data from the National Cancer Institute | SQL · BigQuery · Tableau
# 🎗️ Breast Cancer Survival Analysis: Does Early Detection Save Lives?

## Overview
This project analyzes real breast cancer patient data from the National Cancer Institute's 
SEER (Surveillance, Epidemiology, and End Results) program to answer one central question:

> **Does the stage at which cancer is detected significantly impact a patient's chance of survival?**

This project was built as a capstone for the Google Data Analytics Certificate using SQL 
(BigQuery) and Tableau.

---

## Dataset
- **Source:** SEER Program, National Cancer Institute via Kaggle
- **Records:** 4,024 breast cancer patients
- **Years covered:** 2006–2010
- **Key fields:** Cancer stage, survival months, vital status, age, race, tumor size

---

## Tools Used
- **BigQuery (SQL)** — data cleaning and analysis
- **Tableau** — interactive dashboard and data visualization
- **GitHub** — project documentation

---

## Key Questions & Findings

### 1. Does cancer stage at diagnosis affect survival rate?
Yes — dramatically.

| Stage | Survival Rate | Avg Survival (months) |
|-------|--------------|----------------------|
| IIA   | 92.6%        | 74.4                 |
| IIB   | 88.1%        | 72.2                 |
| IIIA  | 82.5%        | 70.2                 |
| IIIB  | 70.1%        | 69.4                 |
| IIIC  | 61.7%        | 63.2                 |

**→ Patients diagnosed at Stage IIA survive at a rate 31 percentage points higher than Stage IIIC.**

### 2. Are early-stage tumors physically smaller?
Yes — confirming early detection catches cancer before it grows.

| Stage | Avg Tumor Size |
|-------|---------------|
| IIA   | 14.2 mm       |
| IIB   | 30.6 mm       |
| IIIC  | 42.5 mm       |
| IIIA  | 43.6 mm       |
| IIIB  | 54.3 mm       |

**→ Stage IIA tumors are nearly 4x smaller than Stage IIIB tumors at time of diagnosis.**

### 3. Do survival rates differ by race?
Yes — a significant equity gap exists.

| Race  | Survival Rate | Avg Survival (months) |
|-------|--------------|----------------------|
| Other | 89.7%        | 73.2                 |
| White | 85.1%        | 71.5                 |
| Black | 74.9%        | 66.6                 |

**→ Black patients have a 10.2 percentage point lower survival rate than White patients.**

### 4. Does age at diagnosis affect survival?
Surprisingly, patients under 40 have the lowest survival rate (79.6%) — likely due to 
delayed diagnosis since breast cancer is less expected in younger women.

| Age Group | Survival Rate |
|-----------|--------------|
| 40–49     | 87.9%        |
| 50–59     | 86.4%        |
| 60–69     | 80.9%        |
| Under 40  | 79.6%        |

---

## SQL Queries
All queries used in this analysis are saved in the [`/queries`](/queries) folder.

---

## Dashboard
📊 [View Interactive Tableau Dashboard](#) ← link coming soon

---

## Conclusion
The data clearly shows that early detection saves lives. A patient diagnosed at Stage IIA 
has a 92.6% survival rate — compared to 61.7% at Stage IIIC. Closing the racial equity 
