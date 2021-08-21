# BEGIN...END

Syntax of the `BEGIN...END` statement:
```SQL
BEGIN
    { sql_statement | statement_block}
END
```

The `BEGIN...END` statement is used to define a statement block. A statement block consists of a set of SQL statements that execute together. A statement block is also known as a batch.

As an analogy `BEGIN` and `END` is equivalent to the `{` and `}` respectively. Whenever there is more one line of code to be written after an `IF`,`ELSE`,`WHILE` or after any control flow statements we need to use an `BEGIN` and `END`.

Example:
```cpp
--While loop in C family
while condition
{
  --statements to be executed
}
```

```SQL
--While loop in SQL
while boolean_expression
BEGIN
  -- sql_statements
END
```

In other words, if statements are sentences, the `BEGIN...END` statement allows you to define paragraphs.


The statement block can be nested. It simply means that you can place a `BEGIN...END` statement within another `BEGIN... END` statement.
