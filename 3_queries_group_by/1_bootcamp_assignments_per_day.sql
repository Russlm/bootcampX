SELECT day, count(id) as total_assignments
FROM assignments
GROUP by day
ORDER BY day;