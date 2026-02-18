# IBM-HR-Analytics-Employee-Attrition-Performance

---

## IBM HR Analytics — Employee Attrition & Performance
End-to-end HR analytics project using Python, SQL, and Power BI to analyze employee attrition and performance. Includes data cleaning, EDA, ML models (Logistic Regression, Random Forest, XGBoost), feature importance, business insights, and recommendations.

**Author:** Deepika Priya K

---

## Executive Summary

This project presents an end-to-end HR Attrition Analytics pipeline built using:

- **Python** for data cleaning, EDA, and Machine Learning  
- **SQL** for relational data modeling and structured analysis  
- **Power BI** for interactive business dashboards  

The objective is to identify key factors driving employee attrition and build predictive models to forecast which employees are at risk of leaving.

The solution combines business analytics and machine learning to deliver actionable HR insights that support employee retention, workforce planning, and organizational stability.

---

## Business Problem

Employee turnover is costly and impacts productivity, hiring expenses, team morale, and overall business performance.

However, the HR team lacked visibility into critical questions such as:

- Who is most likely to leave?
- Does low satisfaction or low income increase attrition risk?
- Does overtime and workload contribute to burnout?
- Which roles and departments experience the highest churn?
- How strongly do workplace factors influence employee decisions?

Without these insights, the organization cannot effectively optimize retention strategies, compensation planning, or manager development programs.

---

## Methodology

### 1. Data Cleaning & Preparation
- Fixed data types and validated schema
- Removed duplicate and non-informative fields
- Encoded categorical variables
- Created derived features (e.g., AttritionFlag)

### 2. Exploratory Data Analysis (EDA)
- Analyzed attrition patterns by age, income, department, and job role
- Used boxplots, countplots, and distribution analysis
- Generated correlation heatmaps to identify key relationships

### 3. Predictive Modeling
- Logistic Regression
- Random Forest
- XGBoost (best balance between precision & recall)
- Compared models using Accuracy, Precision, Recall, F1-score, and ROC-AUC

### 4. Relational Data Modeling
- Designed normalized SQL-ready tables:
  - Employee data
  - Salary data
  - Satisfaction data
  - Attrition & Overtime data

### 5. Business Intelligence Dashboard
- Built interactive Power BI dashboards
- Visualized attrition by department, job role, income, and tenure
- Highlighted key attrition drivers
- Analyzed manager effectiveness and satisfaction metrics

---

## Skills & Tools

- **Programming:** Python (Pandas, NumPy, Scikit-learn, XGBoost)
- **SQL & Data Modeling:** Views, Joins, Relational Schema Design
- **Machine Learning:** Logistic Regression, Random Forest, XGBoost
- **Model Evaluation:** Accuracy, Precision, Recall, F1-score, ROC-AUC
- **Business Intelligence:** Power BI
- **Data Analysis:** EDA, Feature Engineering, Insight Generation

---

## Key Results & Insights

### Major Drivers of Attrition

Based on both EDA and Machine Learning feature importance:

- Overtime (Yes) – Strongest predictor of attrition
- Low Job Satisfaction
- Low Environment Satisfaction
- Poor Work-Life Balance
- Young Age (25–35 years)
- Early Tenure (1–3 years at company)
- Sales Department & Sales Executive roles
- Low Monthly Income
- Low Stock Option Level
- Frequent Business Travel

This indicates that workload pressure, compensation structure, and early-tenure risk are the primary business levers influencing attrition.

These findings are consistent across statistical analysis and machine learning feature importance, increasing confidence in the insights.

### 📊 Attrition Distribution
<p align="centre">
<img src="https://github.com/deepikapriyak30/IBM-HR-Analytics-Employee-Attrition-Performance/blob/main/dashboard-image/Attrition%20Distribution.jpg?raw=true" width="350">
</p>

### Model Performance Summary

- **Logistic Regression** – Highest recall (66%), best at identifying employees likely to leave.
- **Random Forest** – Highest precision (55.6%), fewer false positives.
- **XGBoost** – Best overall balance (highest F1-score among models).

The following table compares model performance on test data:

| Model               | Accuracy | Precision (Yes) | Recall (Yes) | F1-score | ROC-AUC |
| ------------------- | -------- | --------------- | ------------ | -------- | ------- |
| Logistic Regression | 0.777    | 0.386           | 0.661        | 0.487    | 0.809   |
| Random Forest       | 0.842    | 0.556           | 0.084        | 0.147    | 0.758   |
| XGBoost             | 0.837    | 0.489           | 0.406        | 0.444    | 0.766   |

Overall, Logistic Regression is most suitable for early risk detection, while XGBoost provides the most balanced performance for real-world HR deployment.

---

## Business Impact Potential

If high-risk employees are identified early using the predictive attrition model, HR can take proactive intervention actions such as:

- Proactively engage employees showing early attrition signals
- Reduce overtime exposure to lower burnout-driven exits
- Optimize compensation for lower salary bands to reduce voluntary attrition
- Strengthen work-life balance policies to improve retention

Even a 5–10% reduction in attrition could lead to substantial cost savings by reducing:
- Hiring costs
- Training expenses
- Productivity loss

This project demonstrates how predictive HR analytics can directly influence retention strategy, cost control, and long-term organizational stability.

---

## Business Recommendations

1. **Reduce Overtime Exposure**
   - Implement workload balancing
   - Introduce compensatory leave policies
   - Monitor high-risk departments

2. **Improve Compensation Strategy**
   - Review salary bands below ₹5000
   - Align compensation with industry benchmarks

3. **Enhance Work-Life Balance**
   - Offer flexible working hours
   - Enable hybrid/remote options where possible

4. **Strengthen Sales Department Support**
   - Improve incentive structures
   - Provide burnout prevention programs

5. **Improve Manager–Employee Engagement**
   - Increase 1-on-1 interactions
   - Improve onboarding support for early-tenure employees

6. **Boost Employee Satisfaction**
   - Recognition programs
   - Career growth planning
   - Continuous feedback systems

---

## Next Steps
- Deploy the best-performing model as an **HR risk scoring tool**
- Integrate model predictions into a **real-time HR dashboard**
- Improve model explainability for HR stakeholders
- Perform advanced hyperparameter tuning for further optimization
- Explore deployment options using Flask or FastAPI for production use


---

## Dataset Source
IBM HR Analytics Employee Attrition Dataset — Public dataset available on Kaggle for learning and research purposes.

_I do not own the data. All credit goes to the original authors._

---
