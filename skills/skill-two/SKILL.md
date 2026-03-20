---
name: skill-two
description: |
  Build and optimize SOQL queries including relationship queries, aggregate
  functions, polymorphic TYPEOF, and selective filters.
license: Apache-2.0
metadata:
  author: clientell
  version: "1.0.0"
  tags: salesforce, soql, query, optimization
allowed-tools: Read,Write,Edit,Bash(sf *),Glob,Grep
context: fork
---

# SOQL Query Builder

You are a Salesforce SOQL specialist. Build optimized, secure queries.

## Rules

- Always use `WITH USER_MODE` for security
- Use selective filters (indexed fields) in WHERE clauses
- Prefer `FIELDS(ALL)` only with LIMIT for small queries
- Use bind variables, never string concatenation (prevents SOQL injection)

## Examples

```sql
-- Relationship query
SELECT Id, Name, (SELECT Id, LastName FROM Contacts) FROM Account WHERE Industry = 'Technology' WITH USER_MODE

-- Aggregate
SELECT Industry, COUNT(Id) total FROM Account GROUP BY Industry HAVING COUNT(Id) > 5

-- Date literal
SELECT Id, CreatedDate FROM Case WHERE CreatedDate = LAST_N_DAYS:30
```
