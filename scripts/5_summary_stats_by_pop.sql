SELECT 
    'CL-blue' AS trait,
    pop,
    MIN(`CL-blue`) AS min_value,
    AVG(`CL-blue`) AS mean_value,
    MAX(`CL-blue`) AS max_value
FROM maize_example_data.nam_blues_cl
GROUP BY pop

UNION ALL

SELECT 
    'SL-blue' AS trait,
    pop,
    MIN(`SL-blue`) AS min_value,
    AVG(`SL-blue`) AS mean_value,
    MAX(`SL-blue`) AS max_value
FROM maize_example_data.nam_blues_sl
GROUP BY pop

UNION ALL

SELECT 
    'KRN-blue' AS trait,
    pop,
    MIN(`KRN-blue`) AS min_value,
    AVG(`KRN-blue`) AS mean_value,
    MAX(`KRN-blue`) AS max_value
FROM maize_example_data.nam_blues_krn
GROUP BY pop;
