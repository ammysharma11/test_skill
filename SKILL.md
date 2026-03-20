---
name: test-skills
description: |
  A minimal test skill collection with two Salesforce skills — Apex code generation
  and SOQL query building. Used for testing Skills Directory multi-skill submission.
license: Apache-2.0
metadata:
  author: clientell
  version: "1.0.0"
  tags: salesforce, apex, soql, test
allowed-tools: Read,Write,Edit,Bash(sf *),Glob,Grep
context: fork
---

# Test Skills Collection

Two Salesforce skills for testing multi-skill repo submission.

## Available Skills

| Skill | Description | Invoke With |
|-------|-------------|-------------|
| **skill-one** | Generate Apex classes and triggers with governor limit awareness | `/skill-one` |
| **skill-two** | Build and optimize SOQL queries | `/skill-two` |

## Prerequisites

- Salesforce CLI v2+: `npm install @salesforce/cli -g`
- Authenticated org: `sf org login web --alias myOrg`
