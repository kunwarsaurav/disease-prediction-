
SELECT 
    FLOOR(age / 10) * 10 AS age_group,
    COUNT(*) AS total_patients,
    SUM(diabetes) AS diabetic_count,
    ROUND(AVG(diabetes) * 100, 2) AS risk_percent
FROM eda
GROUP BY age_group
ORDER BY age_group;