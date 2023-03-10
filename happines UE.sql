--weryfikacja nazw w celu ujednolicenia 

select a.country , b.country, c.country, d.country
from public."2022" as a 
inner  join 
public."2021" as b
on 
a.country=b.country
inner join 
public."2020" as c 
on
a.country=c.country 
inner join 
public."2019" as d 
on 
a.country=d.country 
inner join public."2018" as e 
on 
a.country=e.country

select a.country , b.country, c.country, d.country
from public."2022" as a 
left join 
public."2021" as b
on 
a.country=b.country
left  join
public."2020" as c 
on
a.country=c.country 
left  join
public."2019" as d 
on 
a.country=d.country 

-- Ujednolicenie nazw Państwa 2019-2022

update public."2022"
set country = 'Luxembourg' 
where country = 'Luxembourg*'

update public."2022"
set country = 'Guatemala' 
where country = 'Guatemala*' 

update public."2022"
set country = 'Kuwait' 
where country = 'Kuwait*'

update public."2022"
set country = 'Belarus' 
where country = 'Belarus*'

update public."2022"
set country = 'Turkmenistan' 
where country = 'Turkmenistan*'

update public."2022"
set country = 'North Cyprus' 
where country = 'North Cyprus*'

update public."2022"
set country = 'Libya' 
where country = 'Libya*'

update public."2022"
set country = 'Azerbaijan' 
where country = 'Azerbaijan*'

update public."2022"
set country = 'Gambia' 
where country = 'Gambia*'

update public."2022"
set country = 'Liberia' 
where country = 'Liberia*'

update public."2022"
set country = 'Niger' 
where country = 'Niger*'

update public."2022"
set country = 'Comoros' 
where country = 'Comoros*'

update public."2022"
set country = 'Palestinian Territories' 
where country = 'Palestinian Territories*'

update public."2022"
set country = 'Eswatini, Kingdom of' 
where country = 'Eswatini, Kingdom of*'

update public."2022"
set country = 'Madagascar' 
where country = 'Madagascar*'

update public."2022"
set country = 'Chad' 
where country = 'Chad*'

update public."2022"
set country = 'Yemen' 
where country = 'Yemen*'

update public."2022"
set country = 'Mauritania' 
where country = 'Mauritania*'

update public."2022"
set country = 'Botswana' 
where country = 'Botswana*'

update public."2022"
set country = 'Rwanda' 
where country = 'Rwanda*'

update public."2022"
set country = 'Lesotho' 
where country = 'Lesotho*'

update public."2019"
set country = 'Hong Kong S.A.R. of China' 
where country = 'Hong Kong'

update public."2019"
set country = 'Czechia' 
where country = 'Czech Republic'

update public."2020"
set country = 'Czechia' 
where country = 'Czech Republic'

update public."2021"
set country = 'Czechia' 
where country = 'Czech Republic'

update public."2019"
set country = 'North Cyprus' 
where country = 'Northern Cyprus'

update public."2019"
set country = 'Taiwan Province of China' 
where country = 'Taiwan'

update public."2020"
set country = 'North Macedonia' 
where country = 'Macedonia'



DELETE FROM public."2022"
WHERE country='xx'

DELETE FROM public."2022"
WHERE country='xx'

DELETE FROM public."2022"
WHERE country='Eswatini, Kingdom of'

DELETE FROM public."2022"
WHERE country='Congo'

-------- wybranie krajów UE

select * from "2019"
where country = 'Austria' 
or country= 'Belgium' or country='Bulgaria'or country= 'Croatia'or country= 'Cyprus'or country=  'Czechia'or country=  'Denmark'or country=  'Estonia'
or country= 'Finland'or country= 'France' or country= 'Greece'or country=  'Spain'or country='Ireland'or country=  'Lithuania'or country=  'Luxembourg'
or country= 'Latvia'or country= 'Malta'or country=  'Netherlands'or country= 'Germany'or country= 'Poland'or country='Portugal'or country=  'Romania'
or country='Slovakia'or country= 'Slovenia'or country= 'Sweden'or country= 'Hungary'or country= 'Italy'


select * from "2020"
where country = 'Austria' 
or country= 'Belgium' or country='Bulgaria'or country= 'Croatia'or country= 'Cyprus'or country=  'Czechia'or country=  'Denmark'or country=  'Estonia'
or country= 'Finland'or country= 'France' or country= 'Greece'or country=  'Spain'or country='Ireland'or country=  'Lithuania'or country=  'Luxembourg'
or country= 'Latvia'or country= 'Malta'or country=  'Netherlands'or country= 'Germany'or country= 'Poland'or country='Portugal'or country=  'Romania'
or country='Slovakia'or country= 'Slovenia'or country= 'Sweden'or country= 'Hungary'or country= 'Italy'

select * from "2021"
where country = 'Austria' 
or country= 'Belgium' or country='Bulgaria'or country= 'Croatia'or country= 'Cyprus'or country=  'Czechia'or country=  'Denmark'or country=  'Estonia'
or country= 'Finland'or country= 'France' or country= 'Greece'or country=  'Spain'or country='Ireland'or country=  'Lithuania'or country=  'Luxembourg'
or country= 'Latvia'or country= 'Malta'or country=  'Netherlands'or country= 'Germany'or country= 'Poland'or country='Portugal'or country=  'Romania'
or country='Slovakia'or country= 'Slovenia'or country= 'Sweden'or country= 'Hungary'or country= 'Italy'

select * from "2022"
where country = 'Austria' 
or country= 'Belgium' or country='Bulgaria'or country= 'Croatia'or country= 'Cyprus'or country=  'Czechia'or country=  'Denmark'or country=  'Estonia'
or country= 'Finland'or country= 'France' or country= 'Greece'or country=  'Spain'or country='Ireland'or country=  'Lithuania'or country=  'Luxembourg'
or country= 'Latvia'or country= 'Malta'or country=  'Netherlands'or country= 'Germany'or country= 'Poland'or country='Portugal'or country=  'Romania'
or country='Slovakia'or country= 'Slovenia'or country= 'Sweden'or country= 'Hungary'or country= 'Italy'

-----------stworzenie nowych tabel

CREATE TABLE "2019-UE" ("Overall rank" float, "country" varchar, "score" float, "GDP per capita" float, "Social support" float, "Healthy life expectancy" float, 
"Freedom to make life choices" float, "generosity" float, "Perceptions of corruption" float)

INSERT INTO "2019-UE"
select * from "2019"
where country = 'Austria' 
or country= 'Belgium' or country='Bulgaria'or country= 'Croatia'or country= 'Cyprus'or country=  'Czechia'or country=  'Denmark'or country=  'Estonia'
or country= 'Finland'or country= 'France' or country= 'Greece'or country=  'Spain'or country='Ireland'or country=  'Lithuania'or country=  'Luxembourg'
or country= 'Latvia'or country= 'Malta'or country=  'Netherlands'or country= 'Germany'or country= 'Poland'or country='Portugal'or country=  'Romania'
or country='Slovakia'or country= 'Slovenia'or country= 'Sweden'or country= 'Hungary'or country= 'Italy'

select * from "2019-UE"

CREATE TABLE "2020-UE" ("country" varchar, "Regional indicator" varchar, "Ladder score" float, "Standard error of ladder score" float, "upperwhisker" float, 
"lowerwhisker" float, "Logged GDP per capita" float, "Social support" float, "Healthy life expectancy" float, "Freedom to make life choices" float, "generosity" float, 
"Perceptions of corruption" float, "Ladder score in Dystopia" float, "Explained by: Log GDP per capita" float, "Explained by: Social support"float, "Explained by: Healthy life expectancy" float, 
"Explained by: Freedom t make life choices" float, "Explained by: Generosity" float, "Explained by: Perceptions of corruption" float, "Dystopia + residual" float)

INSERT INTO "2020-UE"
select * from "2020"
where country = 'Austria' 
or country= 'Belgium' or country='Bulgaria'or country= 'Croatia'or country= 'Cyprus'or country=  'Czechia'or country=  'Denmark'or country=  'Estonia'
or country= 'Finland'or country= 'France' or country= 'Greece'or country=  'Spain'or country='Ireland'or country=  'Lithuania'or country=  'Luxembourg'
or country= 'Latvia'or country= 'Malta'or country=  'Netherlands'or country= 'Germany'or country= 'Poland'or country='Portugal'or country=  'Romania'
or country='Slovakia'or country= 'Slovenia'or country= 'Sweden'or country= 'Hungary'or country= 'Italy'

select * from "2020-UE"

select * from "2021"

CREATE TABLE "2021-UE" ("country" varchar, "Regional indicator" varchar, "Ladder score" float, "Standard error of ladder score" float, "upperwhisker" float, 
"lowerwhisker" float, "Logged GDP per capita" float, "Social support" float, "Healthy life expectancy" float, "Freedom to make life choices" float, "generosity" float, 
"Perceptions of corruption" float, "Ladder score in Dystopia" float, "Explained by: Log GDP per capita" float, "Explained by: Social support"float, 
"Explained by: Healthy life expectancy" float, "Explained by: Freedom t make life choices" float, "Explained by: Generosity" float, 
"Explained by: Perceptions of corruption" float, "Dystopia + residual" float)

INSERT INTO "2021-UE"
select * from "2021"
where country = 'Austria' 
or country= 'Belgium' or country='Bulgaria'or country= 'Croatia'or country= 'Cyprus'or country=  'Czechia'or country=  'Denmark'or country=  'Estonia'
or country= 'Finland'or country= 'France' or country= 'Greece'or country=  'Spain'or country='Ireland'or country=  'Lithuania'or country=  'Luxembourg'
or country= 'Latvia'or country= 'Malta'or country=  'Netherlands'or country= 'Germany'or country= 'Poland'or country='Portugal'or country=  'Romania'
or country='Slovakia'or country= 'Slovenia'or country= 'Sweden'or country= 'Hungary'or country= 'Italy'

select * from "2021-UE"

select * from "2022"

CREATE TABLE "2022-UE" ("RANK" float, "country" varchar, "Happiness score" float, "Whisker-high" float, "Whisker-low" float, "Dystopia (1,83) + residual" float,
"Explained by: Log GDP per capita" float, "Explained by: Social support"float, "Explained by: Healthy life expectancy" float, 
"Explained by: Freedom t make life choices" float, "Explained by: Generosity" float, "Explained by: Perceptions of corruption" float)

INSERT INTO "2022-UE"
select * from "2022"
where country = 'Austria' 
or country= 'Belgium' or country='Bulgaria'or country= 'Croatia'or country= 'Cyprus'or country=  'Czechia'or country=  'Denmark'or country=  'Estonia'
or country= 'Finland'or country= 'France' or country= 'Greece'or country=  'Spain'or country='Ireland'or country=  'Lithuania'or country=  'Luxembourg'
or country= 'Latvia'or country= 'Malta'or country=  'Netherlands'or country= 'Germany'or country= 'Poland'or country='Portugal'or country=  'Romania'
or country='Slovakia'or country= 'Slovenia'or country= 'Sweden'or country= 'Hungary'or country= 'Italy'

select * from "2022-UE"

--rankingi najlepszych krajów UE na podstawie score (najlepsza 10)

select * from "2019-UE"

SELECT country, score , "Overall rank" ,
     RANK() OVER( ORDER BY score desc) AS UErank2019
from "2019-UE" 
limit 10

select * from "2020-UE"

SELECT country , "Ladder score" , 
     RANK() OVER( ORDER BY "Ladder score" desc) AS UErank2020
from "2020-UE" 
limit 10

select * from "2021-UE"

SELECT country , "Ladder score" , 
     RANK() OVER( ORDER BY "Ladder score" desc) AS UErank2021
from "2021-UE" 
limit 10

select * from "2022-UE"

SELECT country , "Happiness score" , "RANK" ,
     RANK() OVER( ORDER BY "Happiness score" desc) AS UErank2022
from "2022-UE" 
limit 10

-- porównanie rankingu latami (jak się zmieniał)

CREATE TABLE "YearRank" AS
select a.country,  RANK() OVER( ORDER BY score desc) AS UErank2019,  RANK() OVER( ORDER BY b."Ladder score" desc) AS UErank2020,
RANK() OVER( ORDER BY c."Ladder score" desc) AS UErank2021,  RANK() OVER( ORDER BY "Happiness score" desc) AS UErank2022
FROM public."2019-UE" as a 
left join public."2020-UE"
 as b 
 on a.country = b.country
 left join public."2021-UE"
 as c
 on a.country = c.country
 left join public."2022-UE"
 as d
 on a.country = d.country

 select * from "YearRank"

 select * from "2019-UE"
 
 ---- ujednolicenie tabel
 
 alter table "2019-UE"
 drop column "Overall rank"
 
  select * from "2020-UE"
  
  alter table "2020-UE"
 drop column "Regional indicator"
 
  alter table "2020-UE"
 rename column "Ladder score" to "Score"
 
   alter table "2020-UE"
 drop column "Regional indicator"
 
    alter table "2020-UE"
 drop column "Standard error of ladder score"
 
  alter table "2020-UE"
 drop column "upperwhisker" 
 
  alter table "2020-UE"
 drop column "lowerwhisker"
 
   alter table "2020-UE"
 rename column "Logged GDP per capita" to "GDP per capita"
 
  alter table "2020-UE"
 drop column "Ladder score in Dystopia"
 
  alter table "2020-UE"
 drop column "Explained by: Log GDP per capita"
 
 alter table "2020-UE"
 drop column "Explained by: Social support"
 
  alter table "2020-UE"
 drop column "Explained by: Healthy life expectancy"
 
  alter table "2020-UE"
 drop column "Explained by: Freedom t make life choices"
 
  alter table "2020-UE"
 drop column "Explained by: Generosity"
 
  alter table "2020-UE"
 drop column "Explained by: Perceptions of corruption"
 
  alter table "2020-UE"
 drop column "Dystopia + residual"
 
  alter table "2021-UE"
 drop column "Regional indicator"
 
   alter table "2021-UE"
 rename column "Ladder score" to "Score"
 
   alter table "2021-UE"
 drop column "Standard error of ladder score"
 
   alter table "2021-UE"
 drop column "upperwhisker"
 
   alter table "2021-UE"
 drop column "lowerwhisker"
 
    alter table "2021-UE"
 rename column "Logged GDP per capita" to "GDP per capita"
 

  alter table "2021-UE"
 drop column "Ladder score in Dystopia"
  
   alter table "2021-UE"
 drop column "Explained by: Log GDP per capita"
  
   alter table "2021-UE"
 drop column "Explained by: Social support"
  
  alter table "2021-UE"
 drop column "Explained by: Healthy life expectancy"
 
  alter table "2021-UE"
 drop column "Explained by: Freedom t make life choices"
 
  alter table "2021-UE"
 drop column "Explained by: Generosity"
 
  alter table "2021-UE"
 drop column "Explained by: Perceptions of corruption"
 
  alter table "2021-UE"
 drop column "Dystopia + residual"
  
    select * from  "2022-UE"
  
  alter table "2022-UE"
 drop column "RANK"
    
  alter table "2022-UE"
 rename column "Happiness score" to "Score"
 
  alter table "2022-UE"
 drop column "Whisker-high"
  
  alter table "2022-UE"
 drop column "Whisker-low"
 
  alter table "2022-UE"
 drop column "Dystopia (1,83) + residual"
  
 alter table "2022-UE"
 rename column "Explained by: Log GDP per capita" to "GDP per capita"
  
   alter table "2022-UE"
 rename column "Explained by: Social support" to "Social support"
 
    alter table "2022-UE"
 rename column "Explained by: Healthy life expectancy" to "Healthy life expectancy"
 
   alter table "2022-UE"
 rename column "Explained by: Freedom t make life choices" to "Freedom t make life choices"
 
  select * from  "2022-UE"
 
   alter table "2022-UE"
 rename column "Explained by: Generosity" to "Generosity"
 
  alter table "2022-UE"
 rename column "Explained by: Perceptions of corruption" to "Perceptions of corruption"
 
 
 select * from "2022-UE"