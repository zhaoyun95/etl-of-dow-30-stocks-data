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
