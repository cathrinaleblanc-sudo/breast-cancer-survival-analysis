-- Query: Tumor Size by Race and Stage
-- Purpose: Determine whether Black patients have physically larger tumors
-- at each stage compared to White patients -- indicating later detection
-- even within the same stage classification
-- Technique: AVG() grouped by both race and stage

SELECT
  `Race ` AS race,
  `6th Stage` AS cancer_stage,
  ROUND(AVG(`Tumor Size`), 1) AS avg_tumor_size_mm,
  COUNT(*) AS total_patients
FROM `cancer-survival-analysis.seer_breast_cancer.breast_cancer_data`
GROUP BY `Race `, `6th Stage`
ORDER BY `Race `, cancer_stage;
