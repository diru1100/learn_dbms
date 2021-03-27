## Notes I wrote while following a linkeidn course for learning SQL

- Statement is unitive execution in SQL
    - Has Clause.
        - FROM
        - WHERE
            - Has expression
- Fundamental Statements are CRUD
    - C - INSERT
    - R - SELECT
    - U - UPDATE
    - D - DELETE
- SELECT:
    - AS is used for alias
    - Single quotes are used for literal strings in SQL.
    - Double quotes for identifiers
    - WHERE can be used to limit using some logic
    - ORDER BY to represent in certain order ASC or DESC can have multiple values (..,..,..,).
    - LIMIT to limit the num' of records shown
    - OFFSET to change the starting point by certain number.
    - COUNT() to get the number of records shown from our query
    - DISTINCT to get unique value
- INSERT
    - INTO table_name(columns...)
    - VALUES (respective_values_
    - INTO DEFAULT VALUES; (inserts null value record)
    - instead of values we can use SELECT to get data from other table.
- UPDATE
    - table_name SET columns
    - WHERE to limit
    - we can unset by setting to NULL
- DELETE
    - FROM table_name where id or primary key to limit
    - Deleted rows are hard to recover
- CREATE TABLE table_name(

        cloumns, ...

    );

    - NOT NULL constraint
    - DEFAULT 'default_val'
    - UNIQUE
    - PRIMARY KEY
- DROP TABLE (IF EXISTS) table_name;
- WHERE
    - To get NULL values use IS NULL
    - opposite IS NOT NULL
    - AND OR to bind expression
    - LIKE
        - '%pattern match%'
        - 'island%' start must be island
        - '_a%' single 2nd letter match
    - IN match in a list {}
- NULL is a lack of value
- ALTER TABLE to change the table schema itself
    - ALTER TABLE table_name ADD column name, type, DEFAULT 'val';
- Conditional Expression
    - SELECT

        CASE WHEN column THEN 'true' ELSE    'false' END AS cloumn_alias

- In std sql 0 is flase and anything else is true
- JOIN
    - inner join
    - left outer join
    - right outer join(most dont support this, can be written as left with change in table order)
    - Full outer join
- String
    - Can be platform specific
    - LENGTH(String) in SQLite
    - SUBSTR(String, pos, num_of_chars)
    - TRIM(string, character), LTRIM,  RTRIM,
        - Trimming is case sensitive
    - UPPER,  LOWER functions can be used for sorting and comparisions
    - std way concatenate ||
    - SQLite compares data based on case.
- Numeric Types:
    - Entirely platform specific
    - TYPEOF()
    - Understand how type conversions are done in your system
    - ROUND()
    - Why can the use of real data types cause difficulties?
        - They sacrifice precision for scale.
        - We can get slightly different answers for the same calculation done in different ways.
    - Division of nums iis a num in sqlite
- DATE and TYPES:
    - UTC
    - Noo standard type is specified
- AGGREGRATE FUNCTIONS:
    - COUNT
    - GROUP BY
    - ORDER BY
    - HAVING clause is like WHERE clause for aggregate funcs
    - AVGG, MIN, MAX, SUM
    - DISTINCT for _ values
    - HAVING is followed by GROUP_BY
- TRANSACTIONS:
    - Grp of ops that are handled as one unit of work
    - If something fails in btw, everthing gets rolled back to original state.
    - Concurrent transactions are handled
    - Increases reliability/integrity  and performance.
    - Performance as you do not need to open and close data files as many times

    ```sql
    BEGIN TRANSACTION;
    	Statements....
    END TRANSACTION;/COMMIT 
    ROLLBACK (IF YOU WANT)
    ```

    - We can also use ROLLBACK to make it work
- TRIGGERS:
    - to automatically execute a group of statements whenever a specified event occurs
    - Diff from sys to sys
    - Triggers are used to maintain certain standards/rules are followed before or after any changes are done, also used to keep timestamp as well 🙂

    ```sql
    CREATE TRIGGER smtg AFTER / BEFORE smtg ON table
    BEGIN
    		Statements ...
    END
    ;
    ```

    - In sqlite [NEW.id](http://new.id) is used to access recently changed id by trigger
- Creating SUB SELECT:
    - Efficient ways to show data in different forms while maintaining integrity.
    - SELECT is basically a table so we can use to manage data without defining new tables
- Creating VIEWS:

    ```sql
    CREATE VIEW NAME AS 
    	statements...
    ;
    ```

    - Similarly can be used while JOIN etc...
    - We can drop VIEWS as well but it doesn't affect the tables 🙂