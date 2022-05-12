-- Select the data to be manipulated. It's a file that contains life expectancy ratio of countries in the word from 1543 - 2019

select *
from [Test Database]..['life-expectancy$']

-- Dropping a column that isn't needed for analysis

alter table ['life-expectancy$']
drop column code

-- Cutting down the years of observation

delete from ['life-expectancy$']
where Year between 1400 and 1989

-- Calculating Average Life expectancy ratio

select entity as Entity, AVG((cast([Life expectancy] as int))) as AverageLifeExpectancy
from ['life-expectancy$']
group by Entity
order by AverageLifeExpectancy