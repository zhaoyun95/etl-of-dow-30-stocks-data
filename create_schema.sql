drop table if exists price_data_df;

-- Create Two Tables
CREATE TABLE price_data_df (
	id INT PRIMARY KEY,
	symbol TEXT,
	company TEXT,
	price float,
	change float,
	change_pct float,
	low float,
	high float,
	previous_close float,
	esg_rating int
);


drop table if exists dividend_df;
CREATE TABLE dividend_df (
	id INT PRIMARY KEY,
	symbol TEXT,
	dividend_yield float,
	annualized_dividend float,
	ex_div_date date,
	pay_date date
);
