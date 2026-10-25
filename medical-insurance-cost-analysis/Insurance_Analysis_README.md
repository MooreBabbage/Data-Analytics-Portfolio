# Medical Insurance Cost Analysis

**Exploratory Data Analysis | Python · Pandas · NumPy · Matplotlib · Seaborn · Jupyter Notebook**

## Project overview

This project combines two original academic Python assignments examining patterns in medical insurance charges. The analysis starts by exploring BMI and age, then uses smoking status and correlation analysis to understand why individuals with similar characteristics can have very different charges.

### Business / analytical question

**Which characteristics are associated with higher medical insurance charges, and how can analysts avoid misleading conclusions from BMI or age alone?**

## Dataset size and scope

The dataset contains **1,338 observations and 7 variables**, with **no missing values** in the original inspection.

| Dataset measure | Value |
|---|---:|
| Records | 1,338 |
| Variables | 7 |
| Missing values | 0 |
| Mean charges | $13,270.42 |
| Median charges | $9,382.03 |
| Minimum charges | $1,121.87 |
| Maximum charges | $63,770.43 |

**Fields:** `age`, `sex`, `bmi`, `children`, `smoker`, `region`, and `charges`.

**Source:** The original notebooks load `insurance.csv` from a Kaggle dataset path. The commonly distributed [Medical Cost Personal Datasets](https://www.kaggle.com/datasets/mirichoi0218/insurance) provides this seven-column sample. The data is not included in this repository.

## Key work demonstrated

- **Data inspection and preparation:** Used Pandas to inspect row counts, column types, non-null values, and descriptive statistics.
- **Exploratory visualization:** Compared regional record counts and assessed why a bar chart was unsuitable for hundreds of distinct BMI values.
- **Relationship analysis:** Plotted BMI and age against charges using Pandas and Seaborn scatterplots.
- **Group comparisons:** Added smoking-status color grouping to reveal patterns not evident in the unsegmented plots.
- **Correlation analysis:** Calculated Pearson correlations and constructed a heatmap, with attention to the limitations of numerically encoded categorical fields.
- **Communication:** Documented observations in the original notebooks and translated them into practical reporting guidance below.

## Significant findings

| Finding | Evidence | Interpretation |
|---|---|---|
| **Age has a modest positive relationship with charges** | Pearson correlation: **0.299** | Charges generally increase with age, but vary considerably among people of similar ages. |
| **BMI alone is a weak explanation of charges** | Pearson correlation: **0.198** | A BMI-only comparison does not account for many high-charge observations. |
| **Smoking status helps explain visual differences** | Scatterplots colored by smoker/non-smoker show smokers concentrated among many higher-charge observations, particularly at higher BMI. | Grouping by smoking status makes charge patterns clearer than analyzing BMI alone. |
| **High charges pull up the average** | Mean: **$13,270.42**; median: **$9,382.03** | The distribution is right-skewed, so reporting the median alongside the mean better describes typical observations. |

**Interpretation note:** In the original correlation notebook, smoking was encoded as `yes = 0` and `no = 1`. Consequently, a negative correlation between the encoded variable and charges does **not** indicate that smoking reduces charges. Similarly, numeric region codes are arbitrary labels, not an ordered geographic measure.

## Practical decision supported by the analysis

**Recommendation: Build charge-reporting summaries that separate smokers from non-smokers, then compare age and BMI *within* those groups. Show both median and average charges.**

**Why this decision?** The ungrouped BMI–charges plots leave high-charge clusters unexplained, while smoking-status color grouping exposes clearer differences. The weak-to-modest BMI and age correlations reinforce that neither variable should be used as the only basis for interpreting charges. Showing the median alongside the mean avoids letting the highest-charge records dominate the summary.

**Business use:** This reporting approach would help an analyst or operations team prioritize follow-up investigation and communicate cost patterns more accurately. It is **not** evidence for making individual insurance pricing, coverage, or medical decisions.

## Repository files

```text
medical-insurance-cost-analysis/
├── notebooks/
│   └── medical_insurance_analysis.ipynb
├── data/                  # Add insurance.csv locally; not published
├── requirements.txt       # Python dependencies
└── README.md
```

*If your published notebook is the combined original file rather than `notebooks/medical_insurance_analysis.ipynb`, update the file path above to match what is actually on GitHub.*

## How to reproduce

1. Download `insurance.csv` from the dataset source and place it in a local `data/` folder.
2. From the repository root, install dependencies with `python3 -m pip install -r requirements.txt`.
3. Open the notebook in JupyterLab and select **Run → Run All Cells**.
4. **If using the unchanged original coursework notebook**, update its Kaggle-specific `read_csv` path to your local CSV location (or run it on Kaggle with the original dataset attached).
5. Review the tables, figures, and written analysis.

## Limitations

- This is **exploratory, observational analysis**. Visual patterns and correlations do not establish causation or validate a predictive model.
- Dataset representativeness is not established, so the findings should not be generalized automatically to all insured populations.
- The `charges` field should not be assumed to represent premiums, out-of-pocket expenses, or actual insurer payments.
- The original notebook describes regional record counts as “purchases”; the data supports **record counts by region**, not confirmed transactions.
- Arbitrary numeric encoding of region should not be interpreted as a meaningful Pearson correlation with geographic location.

## Project background

This project originated as **two academic Python assignments**. The original code, plots, and written explanations remain in the notebook; this README is an employer-facing summary of the methods, quantitative findings, and practical analytical implications.
