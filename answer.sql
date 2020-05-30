-- SQL query that maps out the daily average users before and after the feature change

SELECT 
count(distinct user_id) as daily_users,
DATE(login_timestamp, 'unixepoch') as login_date,
strftime('%j', DATE(login_timestamp, 'unixepoch')) AS day_of_year
FROM login_history
GROUP BY day_of_year;

--SQL query that indicates the number of status changes by card                      
SELECT cardId,
count(id) as n_status_change
FROM card_change_history
WHERE oldStatus <> newStatus
GROUP BY cardId;





