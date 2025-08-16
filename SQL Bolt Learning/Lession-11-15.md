-- SQL Lesson 12: Order of execution of a Query ======================
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

-- SQL Lesson 13: Inserting rows ======================

🔹 Schema क्या होता है?

Database का schema table की structure को define करता है।
इसमें बताया जाता है कि कौनसे column का data-type क्या होगा।

Example: Movies table
Year → Integer
Title → String

Schema fix होने की वजह से ही database efficient और consistent रहता है, चाहे उसमें करोड़ों rows क्यों न हों।

✅ Recap:

Schema = Table structure + column datatypes
INSERT INTO … VALUES → सभी columns के लिए values
INSERT INTO (columns) VALUES → सिर्फ selected columns
Expressions भी use कर सकते हो