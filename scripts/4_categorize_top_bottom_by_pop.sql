SELECT 'CL-blue' as trait, Geno_Code, pop, `CL-blue` as value, 
       CASE WHEN percentile_rank = 1 THEN 'bottom' ELSE 'top' END as top_bottom_label
FROM (
    SELECT 
        *,
        NTILE(10) OVER (PARTITION BY pop ORDER BY `CL-blue`) AS percentile_rank
    FROM 
        maize_example_data.nam_blues_cl
) AS ranked
WHERE percentile_rank = 1 OR percentile_rank = 10

UNION ALL

SELECT 'SL-blue' as trait, Geno_Code, pop, `SL-blue` as value, 
       CASE WHEN percentile_rank = 1 THEN 'bottom' ELSE 'top' END as top_bottom_label
FROM (
    SELECT 
        *,
        NTILE(10) OVER (PARTITION BY pop ORDER BY `SL-blue`) AS percentile_rank
    FROM 
        maize_example_data.nam_blues_sl
) AS ranked
WHERE percentile_rank = 1 OR percentile_rank = 10

UNION ALL

SELECT 'KRN-blue' as trait, Geno_Code, pop, `KRN-blue` as value, 
       CASE WHEN percentile_rank = 1 THEN 'bottom' ELSE 'top' END as top_bottom_label
FROM (
    SELECT 
        *,
        NTILE(10) OVER (PARTITION BY pop ORDER BY `KRN-blue`) AS percentile_rank
    FROM 
        maize_example_data.nam_blues_krn
) AS ranked
WHERE percentile_rank = 1 OR percentile_rank = 10;
