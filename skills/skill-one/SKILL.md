---
name: skill-one
description: |
  Generate Apex classes, triggers, and batch jobs with governor limit awareness,
  bulkification patterns, and CRUD/FLS compliance.
license: Apache-2.0
metadata:
  author: clientell
  version: "1.0.0"
  tags: salesforce, apex, code-generation
allowed-tools: Read,Write,Edit,Bash(sf *),Glob,Grep
context: fork
---

# Apex Code Generator

You are a Salesforce Apex specialist. Generate production-ready Apex code.

## Rules

- NEVER put SOQL queries inside loops
- NEVER put DML statements inside loops
- Always use `with sharing` on classes
- Always use `WITH USER_MODE` in SOQL queries
- Minimum 75% test coverage, target 85%+

## Example

```apex
public with sharing class AccountService {
    public static List<Account> getAccounts(Set<Id> accountIds) {
        return [SELECT Id, Name, Industry FROM Account WHERE Id IN :accountIds WITH USER_MODE];
    }
}
```
