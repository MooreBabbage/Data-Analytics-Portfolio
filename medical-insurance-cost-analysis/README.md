# Medical Insurance Charges — Exploratory Data Analysis

**Python | Pandas | Seaborn | Matplotlib**

A consolidated, revised version of two academic Python assignments, investigating how BMI, age, and smoking status are associated with reported medical insurance charges.

## Business / analytical question
Which observable characteristics are associated with variation in reported charges, and why might BMI alone be insufficient to explain high-charge observations?

## Key work demonstrated
- Used `pandas` to inspect data types, missing entries, duplicates, and descriptive statistics.
- Compared the number of records by geographic region (not purchases).
- Built scatterplots of BMI and age against charges; segmented plots by smoking status.
- Computed smoking-group summaries and Pearson correlations.
- Replaced arbitrary numeric region encoding with an interpretable binary smoker indicator.

## Project files
- [`notebooks/medical_insurance_analysis.ipynb`](notebooks/medical_insurance_analysis.ipynb) — complete analysis.
- `requirements.txt` — Python dependencies.
- `data/` — See the "Data" folder or Download dataset here: https://www.kaggle.com/datasets/mirichoi0218/insurance

## Data source and attribution
Original school notebooks loaded `/kaggle/input/datasets/thedatawizard/insurance/insurance.csv`.
The same 7-column insurance sample is also available as **Medical Cost Personal Datasets** on [Kaggle](https://www.kaggle.com/datasets/mirichoi0218/insurance). Download `insurance.csv` and save it as `data/insurance.csv`. Confirm its columns: `age`, `sex`, `bmi`, `children`, `smoker`, `region`, `charges`. Check and follow the selected dataset host's license terms before redistributing data.

## How to run
1. Download or clone this repository.
2. Install Python 3.10+.
3. From the repository root, run:

   ```bash
   python3 -m venv .venv
   source .venv/bin/activate  # macOS/Linux
   pip install -r requirements.txt
   jupyter lab
   ```
4. Download `insurance.csv`, place it under `data/`, and open the notebook from the `notebooks/` folder.
5. Use **Run → Run All Cells**. The notebook will also work in Kaggle when its original dataset is attached at the supplied Kaggle path.

## Findings and interpretation
The original investigation identified high-charge observations that were not readily explained by BMI alone. Overlaying smoking status in the BMI–charges scatterplot made many of these observations easier to interpret. Age also showed a visible relationship with charges. **These are exploratory patterns, not causal findings.**

The notebook recomputes all numerical summaries from the downloaded data. Avoid reporting precise numbers unless you have executed it on your chosen copy of the dataset.

## Limitations
Observational records, unclear representativeness, and unknown selection mechanisms limit generalization. Correlation does not establish causation. `charges` represents billed medical charges and should not be interpreted as insured payment or patient out-of-pocket cost without additional evidence.

## Project history
Originally created as two school assignments by Christopher Moore; consolidated with clearer questions, improved plotting choices, reproducible imports, additional group summaries, and corrected correlation interpretation for GitHub portfolio presentation.
