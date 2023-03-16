=========================================
-- Ujednolicenie nazw Państwa 2019-2022
=========================================


update public."2022"
set "Country"  = 'Luxembourg' 
where "Country"  = 'Luxembourg*';

update public."2022"
set "Country"  = 'Guatemala' 
where "Country"  = 'Guatemala*'; 

update public."2022"
set "Country" = 'Kuwait' 
where "Country" = 'Kuwait*';

update public."2022"
set "Country" = 'Belarus' 
where "Country" = 'Belarus*';

update public."2022"
set "Country" = 'Turkmenistan' 
where "Country" = 'Turkmenistan*';

update public."2022"
set "Country" = 'North Cyprus' 
where "Country" = 'North Cyprus*';

update public."2022"
set "Country" = 'Libya' 
where "Country" = 'Libya*';

update public."2022"
set "Country" = 'Azerbaijan' 
where "Country" = 'Azerbaijan*';

update public."2022"
set "Country" = 'Gambia' 
where "Country" = 'Gambia*';

update public."2022"
set "Country" = 'Liberia' 
where "Country" = 'Liberia*';

update public."2022"
set "Country" = 'Niger' 
where "Country" = 'Niger*';

update public."2022"
set "Country" = 'Comoros' 
where "Country" = 'Comoros*';

update public."2022"
set "Country" = 'Palestinian Territories' 
where "Country" = 'Palestinian Territories*';

update public."2022"
set "Country" = 'Eswatini, Kingdom of' 
where "Country" = 'Eswatini, Kingdom of*';

update public."2022"
set "Country" = 'Madagascar' 
where "Country" = 'Madagascar*';

update public."2022"
set "Country" = 'Chad' 
where "Country" = 'Chad*';

update public."2022"
set "Country" = 'Yemen' 
where "Country" = 'Yemen*';

update public."2022"
set "Country" = 'Mauritania' 
where "Country" = 'Mauritania*';

update public."2022"
set "Country" = 'Botswana' 
where "Country" = 'Botswana*';

update public."2022"
set "Country" = 'Rwanda' 
where "Country" = 'Rwanda*';

update public."2022"
set "Country" = 'Lesotho' 
where "Country" = 'Lesotho*';

update public."2019"
set "country" = 'Hong Kong S.A.R. of China' 
where "country" = 'Hong Kong';

update public."2019"
set "country" = 'Czechia' 
where "country" = 'Czech Republic';

update public."2020"
set "country" = 'Czechia' 
where "country" = 'Czech Republic';

update public."2021"
set "country" = 'Czechia' 
where "country" = 'Czech Republic';

update public."2019"
set "country" = 'North Cyprus' 
where "country" = 'Northern Cyprus';

update public."2019"
set "country" = 'Taiwan Province of China' 
where "country" = 'Taiwan';

update public."2020"
set "country" = 'North Macedonia' 
where "country" = 'Macedonia';



DELETE FROM public."2022"
WHERE "Country" ='xx'

DELETE FROM public."2022"
WHERE "Country" ='xx'

DELETE FROM public."2022"
WHERE "Country" ='Eswatini, Kingdom of'

DELETE FROM public."2022"
WHERE "Country" ='Congo'


====================================================================================
-- Średnia dla lat 2019 - 2022 dla wybranych wskazników // ujednoliczenie nazw 
-- // JAK ZAOKRĄGLIC???
====================================================================================


SELECT 
    country, 
    '2019' AS Year, 
    AVG("Happiness Score") AS Avg_Happiness_Score, 
    AVG("Economy (GDP per Capita)") AS Avg_Economy, 
    AVG("Social support") AS Avg_Social_Support, 
    AVG("Healthy life expectancy") AS Avg_Health_Life_Expectancy, 
    AVG("Perceptions of corruption") AS Avg_Perceptions_of_Corruption, 
    AVG(generosity) AS Avg_Generosity, 
    AVG("Freedom to make life choices") AS Avg_Freedom_to_Make_Life_Choices
FROM 
    public."2019" t 
GROUP BY 
    Country
UNION ALL
SELECT 
    country, 
    '2020' AS Year, 
    avg("Happiness Score") AS Avg_Happiness_Score, 
    AVG("Economy (GDP per Capita)") AS Avg_Economy, 
    AVG("Social support") AS Avg_Social_Support, 
    AVG("Healthy life expectancy") AS Avg_Health_Life_Expectancy, 
    AVG("Perceptions of corruption") AS Avg_Perceptions_of_Corruption, 
    AVG(generosity) AS Avg_Generosity, 
    AVG("Freedom to make life choices") AS Avg_Freedom_to_Make_Life_Choices
FROM 
    public."2020" t2 
GROUP BY 
    Country
UNION ALL
SELECT 
    country, 
    '2021' AS Year, 
    AVG("Happiness Score") AS Avg_Happiness_Score, 
    AVG("Economy (GDP per Capita)") AS Avg_Economy, 
    AVG("Social support") AS Avg_Social_Support, 
    AVG("Healthy life expectancy") AS Avg_Health_Life_Expectancy, 
    AVG("Perceptions of corruption") AS Avg_Perceptions_of_Corruption, 
    AVG(generosity) AS Avg_Generosity, 
    AVG("Freedom to make life choices") AS Avg_Freedom_to_Make_Life_Choices
FROM 
    public."2021" t3 
GROUP BY 
    Country
ORDER BY 
    Country, 
    Year;
    
UNION ALL
SELECT 
    Country, 
    '2022' AS Year, 
    AVG("Happiness Score") AS Avg_Happiness_Score, 
    AVG("Economy (GDP per Capita)") AS Avg_Economy, 
    AVG("Social support") AS Avg_Social_Support, 
    AVG("Healthy life expectancy") AS Avg_Health_Life_Expectancy, 
    AVG("Perceptions of corruption") AS Avg_Perceptions_of_Corruption, 
    AVG(generosity) AS Avg_Generosity, 
    AVG("Freedom to make life choices") AS Avg_Freedom_to_Make_Life_Choices
FROM 
    public."2022" t3 
GROUP BY 
    country


====================================================================================
--- Srednia z wszystkich lat dla wszystkich krajów dla poszczególnych wskanikow 
--- jak połączyć wszystkie poniższe w jedną tabelę
====================================================================================    
    

create table Average_indicators_for_2019_2021 AS
 
SELECT 
    country, 
    AVG("Happiness Score") AS Avg_Happiness_Score
FROM 
    (SELECT country, "Happiness Score" FROM public."2019"
     UNION ALL
     SELECT country, "Happiness Score" FROM public."2020"
     UNION ALL
     SELECT country, "Happiness Score" FROM public."2021")
     combined_data
GROUP BY 
    Country
ORDER BY 
    Country;    
   
   
SELECT 
    country, 
    AVG("Economy (GDP per Capita)") AS Economy_GDP_per_capita
FROM 
    (SELECT country, "Economy (GDP per Capita)"  FROM public."2019"
     UNION ALL
     SELECT country, "Economy (GDP per Capita)" FROM public."2020"
     UNION ALL
     SELECT country, "Economy (GDP per Capita)" FROM public."2021")
     combined_data
GROUP BY 
    Country
ORDER BY 
    Country;

   
SELECT 
    country, 
    AVG("Social support") AS Social_support
FROM 
    (SELECT country, "Social support"  FROM public."2019"
     UNION ALL
     SELECT country, "Social support" FROM public."2020"
     UNION ALL
     SELECT country, "Social support" FROM public."2021")
     combined_data
GROUP BY 
    Country
ORDER BY 
    Country;


--- dlaczego takie dziwne dane
   
SELECT 
    country, 
    AVG("Healthy life expectancy") as Healthy_life_expectancy
FROM 
    (SELECT country, "Healthy life expectancy"  FROM public."2019"
     UNION ALL
     SELECT country, "Healthy life expectancy" FROM public."2020"
     UNION ALL
     SELECT country, "Healthy life expectancy" FROM public."2021")
     combined_data
GROUP BY 
    Country
ORDER BY 
    Country;   

   
SELECT 
    country, 
    AVG("Perceptions of corruption") as Perception_of_corruption
FROM 
    (SELECT country, "Perceptions of corruption"  FROM public."2019"
     UNION ALL
     SELECT country, "Perceptions of corruption" FROM public."2020"
     UNION ALL
     SELECT country, "Perceptions of corruption" FROM public."2021")
     combined_data
GROUP BY 
    Country
ORDER BY 
    Country; 
    
SELECT 
    country, 
    AVG(generosity) as generosity
FROM 
    (SELECT country, generosity  FROM public."2019"
     UNION ALL
     SELECT country, generosity FROM public."2020"
     UNION ALL
     SELECT country, generosity FROM public."2021")
     combined_data
GROUP BY 
    Country
ORDER BY 
    Country;    
   
 SELECT 
    country, 
    AVG("Freedom to make life choices") as Freedom_to_make_life_choices
FROM 
    (SELECT country, "Freedom to make life choices"  FROM public."2019"
     UNION ALL
     SELECT country, "Freedom to make life choices" FROM public."2020"
     UNION ALL
     SELECT country, "Freedom to make life choices" FROM public."2021")
     combined_data
GROUP BY 
    Country
ORDER BY 
    Country;    
