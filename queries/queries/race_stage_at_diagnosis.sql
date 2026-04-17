-- Query: Stage at Diagnosis by Race
-- Purpose: Determine whether Black patients are being diagnosed 
-- at later cancer stages compared to White patients
-- Technique: Window function SUM() OVER (PARTITION BY) to calculate
-- percentage of each race diagnosed at each stage
-- Finding: Shows racial disparity in stage at detection

SELECT
  `Race ` AS race,
  `6th Stage` AS cancer_stage,
  COUNT(*) AS total_patients,
  ROUND(COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY `Race `) * 100, 1) AS pct_within_race
FROM `cancer-survival-analysis.seer_breast_cancer.breast_cancer_data`
GROUP BY `Race `, `6th Stage`
ORDER BY `Race `, cancer_stage;
