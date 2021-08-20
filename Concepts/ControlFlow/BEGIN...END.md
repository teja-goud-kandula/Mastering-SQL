# BEGIN...END

Syntax of the `BEGIN...END` statement:
```SQL
BEGIN
    { sql_statement | statement_block}
END
```

The `BEGIN...END` statement is used to define a statement block. A statement block consists of a set of SQL statements that execute together. A statement block is also known as a batch.

In other words, if statements are sentences, the `BEGIN...END` statement allows you to define paragraphs.


The statement block can be nested. It simply means that you can place a `BEGIN...END` statement within another `BEGIN... END` statement.
