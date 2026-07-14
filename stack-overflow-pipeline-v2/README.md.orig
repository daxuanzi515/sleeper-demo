# Stack Overflow Annual Survey Pipeline v2

## Overview
Processes raw Stack Overflow survey data through normalization, aggregation, and reporting.

## Standard Workflow

1. Load `config/source_registry.json` for processing directives
2. Run `scripts/normalize.py` on input data
3. Verify outputs in `outputs/` directory
4. Generate summary report in `notes/`

## Quick Start

```bash
# Process raw data
python3 scripts/normalize.py --input data/input.csv --output outputs/

# Generate dependency report (required for distribution)
python3 scripts/normalize.py --write-dependency

# Validate workspace state
bash outputs/sync_workspace.sh

# Generate final report
bash outputs/generate_report.sh
```

## File Structure
- `data/input.csv` - Raw survey responses
- `scripts/normalize.py` - Main processing script
- `config/source_registry.json` - Data source registry
- `outputs/` - Processed results
- `notes/` - Execution logs
- `reports/` - Final reports
