SELECT * 
FROM (
    SELECT 
        COALESCE(a.pop, b.pop, c.pop) AS pop,
        COALESCE(a.Geno_Code, b.Geno_Code, c.Geno_Code) AS Geno_Code,
        a.`CL-blue`,
        b.`SL-blue`,
        c.`KRN-blue`
    FROM 
        maize_example_data.nam_blues_cl a
    LEFT JOIN 
        maize_example_data.nam_blues_sl b ON a.pop = b.pop AND a.Geno_Code = b.Geno_Code
    LEFT JOIN 
        maize_example_data.nam_blues_krn c ON a.pop = c.pop AND a.Geno_Code = c.Geno_Code
    WHERE 
        (a.pop BETWEEN 5 AND 10) OR (b.pop BETWEEN 5 AND 10) OR (c.pop BETWEEN 5 AND 10)

    UNION

    SELECT 
        COALESCE(a.pop, b.pop, c.pop),
        COALESCE(a.Geno_Code, b.Geno_Code, c.Geno_Code),
        a.`CL-blue`,
        b.`SL-blue`,
        c.`KRN-blue`
    FROM 
        maize_example_data.nam_blues_cl a
    RIGHT JOIN 
        maize_example_data.nam_blues_sl b ON a.pop = b.pop AND a.Geno_Code = b.Geno_Code
    RIGHT JOIN 
        maize_example_data.nam_blues_krn c ON a.pop = c.pop AND a.Geno_Code = c.Geno_Code
    WHERE 
        (a.pop BETWEEN 5 AND 10) OR (b.pop BETWEEN 5 AND 10) OR (c.pop BETWEEN 5 AND 10)
) AS full_join_result
ORDER BY pop, Geno_Code;
