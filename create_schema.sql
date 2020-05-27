drop table if exists price_data_df;

-- Create Two Tables
CREATE TABLE price_data_df (
	symbol TEXT PRIMARY KEY VARCHAR,
	company TEXT NOT NULL,
	price float NOT NULL,
	low float NOT NULL,
	high float NOT NULL,
	previous_close float NOT NULL,
	esg_rating int NOT NULL
);

drop table if exists dividend_df;
CREATE TABLE dividend_df (
	symbol TEXT PRIMARY KEY VARCHAR,
	dividend_yield float NOT NULL,
	annualized_dividend float NOT NULL,
	ex_div_date date NOT NULL,
	pay_date date NOT NULL
);

select * from price_data_df;
select * from dividend_df;

-- Joins tables
SELECT price_data_df.symbol, price_data_df.company, price_data_df.price, 
       price_data_df.low, price_data_df.high,price_data_df.previous_close, 
       price_data_df.esg_rating, dividend_df.symbol, dividend_df.dividend_yield, 
       dividend_df.annualized_dividend, dividend_df.ex_div_date, dividend_df.pay_date
FROM price_data_df
JOIN dividend_df
ON price_data_df.symbol = dividend_df.symbol;
