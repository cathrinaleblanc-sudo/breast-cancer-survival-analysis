-- Query: Survival Rate by Race and Stage
-- Purpose: Determine whether Black patients survive at lower rates
-- even when diagnosed at the SAME cancer stage as White patients
-- This controls for stage to isolate whether race itself is associated
-- with different survival outcomes beyond just late detection
-- Technique: COUNTIF + AVG grouped by both race and stage

SELECT
  `Race ` AS race,
  `6th Stage` AS cancer_stage,
  COUNT(*) AS total_patients,
  ROUND(COUNTIF(Status = 'Alive') / COUNT(*) * 100, 1) AS survival_rate_pct,
  ROUND(AVG(`Survival Months`), 1) AS avg_survival_months
FROM `cancer-survival-analysis.seer_breast_cancer.breast_cancer_data`
GROUP BY `Race `, `6th Stage`
ORDER BY cancer_stage, survival_rate_pct DESC;
