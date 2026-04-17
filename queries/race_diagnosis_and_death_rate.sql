-- Query: Diagnosis Volume & Death Rate by Race
-- Purpose: Understand which racial groups are most diagnosed 
-- and which have the highest death rates
-- Finding: Black patients have a 25.1% death rate vs 14.9% for White patients
-- despite making up only 7.2% of all diagnoses
SELECT
  `Race ` AS race,
  COUNT(*) AS total_diagnosed,
  ROUND(COUNT(*) / (SELECT COUNT(*) FROM `cancer-survival-analysis.seer_breast_cancer.breast_cancer_data`) * 100, 1) AS pct_of_all_patients,
  COUNTIF(Status = 'Dead') AS total_deaths,
  ROUND(COUNTIF(Status = 'Dead') / COUNT(*) * 100, 1) AS death_rate_pct,
  ROUND(AVG(`Survival Months`), 1) AS avg_survival_months
FROM `cancer-survival-analysis.seer_breast_cancer.breast_cancer_data`
GROUP BY `Race `
ORDER BY total_diagnosed DESC;
