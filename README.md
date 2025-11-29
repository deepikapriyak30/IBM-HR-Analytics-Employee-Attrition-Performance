# IBM-HR-Analytics-Employee-Attrition-Performance
End-to-end HR analytics project using Python, SQL, and Tableau to analyze employee attrition and performance. Includes data cleaning, EDA, ML models (Logistic Regression, Random Forest, XGBoost), feature importance, business insights, and recommendations.

# IBM HR Analytics — Employee Attrition & Performance  
**Author:** Deepika Priya K

## Executive Summary
Using Python, SQL, and Tableau, I analyzed the IBM HR Analytics dataset to understand **why employees leave the company** and **which factors drive attrition the most.**

The project includes:

- Cleaning and preparing HR employee records
- Exploring key patterns in satisfaction, income, overtime, and tenure
- Building ML models to predict attrition
- Creating separate SQL-ready tables for BI dashboards
- Delivering clear, actionable recommendations for HR teams

The analysis helps companies improve **employee retention, compensation planning, workload balance, and managerial effectiveness.**

---

## Business Problem
High attrition adds recruiting and onboarding costs and disrupts teams. This analysis answers:
- Which employees are at risk of leaving?
- Which factors drive attrition (actionable levers)?
- What interventions will reduce churn?

## Methodology
1. Read raw HR data (kept untouched) → exploratory data analysis (EDA) and visualizations.
2. Prepare ML dataset (one-hot encoding, derive `AttritionFlag`).
3. Train/Test split (stratified), then:
   - Logistic Regression (scaled features)
   - Random Forest (no scaling)
   - XGBoost (no scaling, `scale_pos_weight` to handle imbalance)
4. Evaluate models using Accuracy, Precision, Recall, F1, ROC-AUC. Save model comparison and top features.
5. Export 4 CSV tables for SQL / Power BI: `employee_master.csv`, `salary_data.csv`, `satisfaction_data.csv`, `attrition_data.csv`.

## Skills & Tools
- Python: Pandas, Matplotlib, Seaborn, scikit-learn, XGBoost  
- Data engineering: CSV export, table split for SQL/BI  
- Modeling: Logistic Regression, Random Forest, XGBoost, class-imbalance handling  
- Visualization & storytelling: EDA charts, feature importance, executive recommendations

## Results & Business Recommendations
**Key ML / EDA findings**
- **Top drivers of attrition**: Overtime (Yes), low stock options, Sales roles, low YearsAtCompany/YearsWithManager, low job satisfaction, lower monthly income, younger age, poor environment satisfaction.
- **Model performance summary** (example):  
  - Logistic Regression: Accuracy ~0.777, Recall ~0.661, ROC-AUC ~0.809 (good for finding churn but lower precision)  
  - Random Forest: Accuracy ~0.842, Precision ~0.556 (avoids false positives)  
  - XGBoost: Accuracy ~0.837, best F1-balance (~0.444), good overall tradeoff

**Business actions (top recommendations)**
1. **Reduce overtime**: cap OT hours; rotate workload; provide comp-off.  
2. **Improve pay / stock options for low bands**: review bands for employees with MonthlyIncome < ₹5,000 (or company-equivalent).  
3. **Manager training & onboarding**: support employees in first 2–4 years; improve manager–employee check-ins.  
4. **Improve role experience in Sales**: re-evaluate targets, mental-health support, better incentives.  
5. **Measure & iterate**: run A/B tests on comp-off, flexible hours, and increased ESOPs; track attrition change.

## Next Steps
1. Deploy XGBoost model as a daily prediction job (score new hires / high-risk employees).  
2. Build a dashboard (Power BI/Tableau) that lists high-risk employees + top contributing features per person.  
3. Validate interventions (e.g., overtime limit pilot) using a randomized pilot and measure attrition change after 6 months.

## Files in repo
- `HR-Employee-Attrition.csv` *(original — keep private if sensitive)*  
- `notebook.ipynb` or `hr_attrition_cleaned.py` (clean notebook)  
- `cleaned_ml_hr_dataset.csv` (used for modeling)  
- `employee_master.csv`, `salary_data.csv`, `satisfaction_data.csv`, `attrition_data.csv` (SQL/BI import)  
- `model_comparison.csv` (summary metrics)

---
