---
name: test-skills
description: >
  A minimal test skill collection with two Salesforce skills — Apex code
  generation and SOQL query building.
version: 1.0.0
author: clientell
tags:
  - salesforce
  - apex
  - soql
  - test
---

# Test Skills Collection

## Overview

Two Salesforce skills for testing multi-skill repo submission.

## When to Use

- When writing Apex classes, triggers, or batch jobs
- When building or optimizing SOQL queries

## Available Skills

| Skill | Description | Invoke With |
|-------|-------------|-------------|
| **skill-one** | Generate Apex classes and triggers with governor limit awareness | `/skill-one` |
| **skill-two** | Build and optimize SOQL queries | `/skill-two` |

## Prerequisites

- Salesforce CLI v2+: `npm install @salesforce/cli -g`
- Authenticated org: `sf org login web --alias myOrg`
