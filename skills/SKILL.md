---
name: gip-data-squad
description: >
  GIP Data Analyst Squad — 5 specialist AI agents for end-to-end data analysis.
  Use this skill whenever the user says 'run analysis', 'analyze this data', 'data squad',
  'EDA', 'explore this dataset', 'build a report', 'data pipeline', 'clean my data',
  'SQL query', 'hypothesis test', 'forecast', 'KPI report', 'exec summary', or wants
  any data analysis, visualization, statistical test, or data-driven report.
  GLOBAL PATH: C:\Users\frsbr\.gemini\antigravity\xquads-squads\gip-data-squad\
---

# GIP Data Analyst Squad — Skill Instructions

## 1. Global Installation Path

```
C:\Users\frsbr\.gemini\antigravity\xquads-squads\gip-data-squad\
```

## 2. Agents

| Agent | File | Triggers |
|-------|------|----------|
| data-director | agents/data-director.md | full analysis, routing |
| ingestion-agent | agents/ingestion-agent.md | ETL, SQL, data cleaning |
| eda-agent | agents/eda-agent.md | EDA, charts, patterns |
| stats-agent | agents/stats-agent.md | stats, ML, forecasting |
| reporting-agent | agents/reporting-agent.md | reports, decks, summaries |

## 3. How to Activate

### Step 1 — Read the chief agent
```
C:\Users\frsbr\.gemini\antigravity\xquads-squads\gip-data-squad\agents\data-director.md
```

### Step 2 — Route to specialist
Use routing matrix in `squad.yaml`. Read specialist `.md` and embody their persona.

### Step 3 — Execute task
```
C:\Users\frsbr\.gemini\antigravity\xquads-squads\gip-data-squad\tasks\
```

### Step 4 — Quality check
```
C:\Users\frsbr\.gemini\antigravity\xquads-squads\gip-data-squad\checklists\output-quality.md
```

## 4. Routing Matrix

| User Says | Agent |
|-----------|-------|
| import data, clean, SQL, ETL | ingestion-agent |
| explore, EDA, patterns, chart | eda-agent |
| hypothesis, regression, forecast, ML | stats-agent |
| report, deck, KPI, exec summary | reporting-agent |
| run analysis, data squad, full pipeline | data-director → all |
