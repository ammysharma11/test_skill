# Test Skills

A minimal Salesforce skill collection for testing [Skills Directory](https://www.skillsdirectory.com) multi-skill repo submission.

## Skills

| Skill | Description | Invoke |
|-------|-------------|--------|
| **skill-one** | Generate Apex classes, triggers, and batch jobs with governor limit awareness | `/skill-one` |
| **skill-two** | Build and optimize SOQL queries with relationship queries and aggregates | `/skill-two` |

## Quick Start

```bash
npx skills add ammysharma11/test_skill
```

## Install Individual Skills

```bash
npx skills add ammysharma11/test_skill@skill-one
npx skills add ammysharma11/test_skill@skill-two
```

## Prerequisites

- **Salesforce CLI v2+**
  ```bash
  npm install @salesforce/cli -g
  ```

- **Authenticated Salesforce org**
  ```bash
  sf org login web --alias myOrg
  ```

## Project Structure

```
test-skills/
├── README.md
└── skills/
    ├── skill-one/
    │   └── SKILL.md       # Apex code generation
    └── skill-two/
        └── SKILL.md       # SOQL query building
```

## License

Apache-2.0
