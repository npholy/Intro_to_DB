USE alx_book_store;
SELECT 
    COLUMN_NAME AS Field,
    DATA_TYPE AS Type,
    IF(CHARACTER_MAXIMUM_LENGTH IS NOT NULL, 
       CONCAT(DATA_TYPE, '(', CHARACTER_MAXIMUM_LENGTH, ')'), 
       DATA_TYPE) AS Type_Length,
    IS_NULLABLE AS Null,
    COLUMN_KEY AS Key,
    EXTRA AS Extra
FROM 
    INFORMATION_SCHEMA.COLUMNS 
WHERE 
    TABLE_SCHEMA = 'alx_book_store' 
    AND TABLE_NAME = 'Books';