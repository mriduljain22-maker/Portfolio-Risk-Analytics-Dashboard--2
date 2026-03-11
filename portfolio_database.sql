CREATE DATABASE portfolio_database;

USE portfolio_database;

CREATE TABLE instruments(
	instrument_id INT PRIMARY KEY,
    symbol VARCHAR(40),
    asset_class VARCHAR(40)
);

CREATE TABLE positions(
	position_id INT PRIMARY KEY,
    instrument_id INT,
    quantity INT,
    entry_price FLOAT
);

CREATE TABLE market_prices(
	symbol VARCHAR(40),
    date DATE,
    close_price FLOAT
);

INSERT INTO instruments VALUES
	(1, "ICICIBANK.NS", "Equity"),
    (2, "TCS.NS", "Equity"),
    (3, "HCLTECH.NS", "Equity"),
    (4, "SBIN.NS", "Equity"),
    (5, "BHARTIARTL.NS", "Equity"),
    (6, "LT.NS", "Equity"),
    (7, "MARUTI.NS", "Equity"),
    (8, "ASIANPAINT.NS", "Equity"),
    (9, "TITAN.NS", "Equity"),
    (10, "BAJFINANCE.NS", "Equity")
;

INSERT INTO positions VALUES
	(1, 1, 82, 291.90 ),
    (2, 2, 59, 1428.94),
    (3, 3, 309, 366.19),
    (4, 4, 183, 226.53),
    (5, 5, 618, 331.17),
    (6, 6, 114, 1210.89),
    (7, 7, 12, 8055.37),
    (8, 8, 84, 1223.58),
    (9, 9, 42, 902.22),
    (10,10, 841, 184.32)
    ;
       
select * from market_prices;
select * from positions;
select * from instruments;