SELECT b.AUTHOR_ID, AUTHOR_NAME, b.CATEGORY, SUM(SALES * PRICE) as TOTAL_SALES
FROM BOOK b
         JOIN AUTHOR a ON b.AUTHOR_ID = a.AUTHOR_ID
         JOIN BOOK_SALES bs ON b.BOOK_ID = bs.BOOK_ID
WHERE bs.SALES_DATE like "2022-01%"
GROUP BY AUTHOR_ID, CATEGORY
ORDER BY b.AUTHOR_ID, b.CATEGORY DESC;