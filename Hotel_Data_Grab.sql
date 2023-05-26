use [Portfolio Project 1];

with hotels as (
select * from dbo.[2018.Sales]
union
select * from dbo.[2019.Sales]
union
select * from dbo.[2020.Sales])

select * from hotels
left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = hotels.meal;