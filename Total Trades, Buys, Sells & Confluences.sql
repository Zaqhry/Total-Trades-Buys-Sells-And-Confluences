



--#### TOTAL TRADES,BUYS,SELLS & CONFLUENCES #### 



--TOTAL TRADES TAKEN DURING EACH SESSION 

SELECT Session, 
       COUNT(Session)TradesTaken
FROM AUDJPY
	GROUP BY Session
	ORDER BY TradesTaken DESC

--TOTAL BUY & SELL POSITIONS

SELECT Position,
       COUNT(Position) PositionOccurence
FROM AUDJPY 
	GROUP BY Position 

--Total Wins/Losses for Buys/Sells FTP

SELECT * 
FROM BUYFTP buy 
INNER JOIN SELLFTP sell 
	ON buy.session = sell.session 
	ORDER BY buy.session,
	         sell.session,
		 buy.total DESC,
	         sell.total DESC

--Total Wins/Losses for Buys/Sells TSL

SELECT * 
FROM BUYTSL buy 
INNER JOIN SELLTSL sell 
	ON buy.session = sell.session 
	ORDER BY buy.session,
		 sell.session,
		 buy.total DESC,
		 sell.total DESC

--Types of Confluences & Number of Occurences 

SELECT Confluence, 
       COUNT(Confluence) TypeConfluence
FROM AUDJPY
	GROUP BY Confluence
	ORDER BY TypeConfluence DESC;
	
	
	
	
