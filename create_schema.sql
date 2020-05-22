drop table if exists price_data_df;

-- Create Two Tables
CREATE TABLE price_data_df (
	symbol TEXT PRIMARY KEY,
	company TEXT,
	price float,
	low float,
	high float,
	previous_close float,
	esg_rating int
);

drop table if exists dividend_df;
CREATE TABLE dividend_df (
	symbol TEXT PRIMARY KEY,
	dividend_yield float,
	annualized_dividend float,
	ex_div_date date,
	pay_date date
);

select * from price_data_df;
select * from dividend_df;

-- Joins tables
SELECT price_data_df.symbol, price_data_df.company, price_data_df.price, price_data_df.low, price_data_df.high,
price_data_df.previous_close, price_data_df.esg_rating, dividend_df.symbol, dividend_df.dividend_yield, 
dividend_df.annualized_dividend, dividend_df.ex_div_date, dividend_df.pay_date
FROM price_data_df
JOIN dividend_df
ON price_data_df.symbol = dividend_df.symbol;
