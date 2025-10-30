create database startup_analysis;
use startup_analysis;

-- 1. Basic Data Exploration

-- View first 10 records
select * 
from startup
limit 10;

-- Total number of startups
select count(distinct `Startup Name`) as total_startups
from startup;

-- Total funding (in INR)
select round(sum(`Amount in INR(K)`),2) as total_funding_in_inr
from startup;

-- Distinct industries and cities
select count(distinct `Industry Vertical`) as total_industries,
       count(distinct `City Location`) as total_cities
from startup;

-- 2. Funding Analysis

-- Top 10 funded startups
select `Startup Name`,
       sum(`Amount in INR(K)`) as total_funding
from startup
group by `Startup Name`
order by total_funding desc
limit 10;

-- Average funding per startup
select round(avg(`Amount in INR(K)`),2) as avg_funding_per_startup
from startup;

-- Funding by industry
select `Industry Vertical`,
       round(sum(`Amount in INR(K)`),2) as total_funding
from startup
group by `Industry Vertical`
order by total_funding desc;

-- Funding by city
select `City Location`,
       round(sum(`Amount in INR(K)`),2) as total_funding
from startup
group by `City Location`
order by total_funding desc;

-- 3. Time-based Insights

-- Yearly funding trend
select extract(year from `Date`) as funding_year,
       round(sum(`Amount in INR(K)`),2) as total_funding
from startup
group by funding_year
order by funding_year;

-- Monthly funding trend
select extract(year from `Date`) as funding_year,
       extract(month from `Date`) as funding_month,
       round(sum(`Amount in INR(K)`),2) as total_funding
from startup
group by funding_year, funding_month
order by funding_year, funding_month;

-- 4. City & Tier Analysis

-- Funding by city tier
select `City Tier`,
       round(sum(`Amount in INR(K)`),2) as total_funding
from startup
group by `City Tier`
order by total_funding desc;

-- Average funding per city
select `City Location`,
       round(avg(`Amount in INR(K)`),2) as avg_funding
from startup
group by `City Location`
order by avg_funding desc;

-- 5. Investor Insights

-- Top 10 investors by total investment
select `Investors Name`,
       sum(`Amount in INR(K)`) as total_invested
from startup
group by `Investors Name`
order by total_invested desc
limit 10;

-- Most active investors (by number of startups)
select `Investors Name`,
       count(distinct `Startup Name`) as startups_invested_in
from startup
group by `Investors Name`
order by startups_invested_in desc
limit 10;

-- 6. Success Analysis

-- Overall success rate
select 
    count(case when `Success` = 1 then 1 end) * 100.0 / count(*) as success_rate_percent
from startup;

-- Success rate by industry
select `Industry Vertical`,
       count(case when `Success` = 1 then 1 end) * 100.0 / count(*) as success_rate_percent
from startup
group by `Industry Vertical`
order by success_rate_percent desc;

-- Success rate by city
select `City Location`,
       count(case when `Success` = 1 then 1 end) * 100.0 / count(*) as success_rate_percent
from startup
group by `City Location`
order by success_rate_percent desc;

-- 7. Combined Insights

-- Top 5 industries by funding and success
select `Industry Vertical`,
       sum(`Amount in INR(K)`) as total_funding,
       count(case when `Success` = 1 then 1 end) * 100.0 / count(*) as success_rate
from startup
group by `Industry Vertical`
order by total_funding desc
limit 5;

-- Funding vs. number of investors
select `Startup Name`,
       `No Of Investors`,
       `Amount in INR(K)`
from startup
where `No Of Investors` is not null;

