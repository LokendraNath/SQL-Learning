✅ पूरी SELECT Query का Structure

SELECT DISTINCT column, AGG_FUNC(column_or_expression), …
FROM mytable
    JOIN another_table
      ON mytable.column = another_table.column
    WHERE constraint_expression
    GROUP BY column
    HAVING constraint_expression
    ORDER BY column ASC/DESC
    LIMIT count OFFSET count;


⚡ Quick Recap – Execution Order:

FROM + JOIN → tables जोड़ना
WHERE → rows filter
GROUP BY → rows को group करना
HAVING → groups filter
SELECT → final columns/expressions चुनना
DISTINCT → duplicates हटाना
ORDER BY → sorting करना
LIMIT/OFFSET → rows limit करना