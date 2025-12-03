# IBM-HR-Analytics-Employee-Attrition-Performance
End-to-end HR analytics project using Python, SQL, and Tableau to analyze employee attrition and performance. Includes data cleaning, EDA, ML models (Logistic Regression, Random Forest, XGBoost), feature importance, business insights, and recommendations.

---

# IBM HR Analytics — Employee Attrition & Performance  
**Author:** Deepika Priya K

---

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
Employee turnover is expensive — it affects productivity, hiring costs, team morale, and business performance.

However, the HR team lacked visibility into critical areas such as:

- Who is most likely to leave
- Whether low satisfaction or low income impacts attrition
- If overtime and workload create burnout
- Which roles & departments experience the highest churn
- How strongly workplace factors influence employee decisions

Without these insights, the company cannot optimize retention strategies, compensation plans, or manager development programs.

---

## Methodology
**1. Cleaned & prepared the dataset**
- Fixed data types
- Removed duplicate/unnecessary fields
- Handled categorical encoding
- Created new features (AttritionFlag)

**2. Performed exploratory data analysis (EDA)**
- Attrition patterns by age, income, department, job role
- Boxplots, countplots, and distribution analysis
- Correlation heatmap to identify strong relationships

**3. Built predictive ML models**
- Logistic Regression
- Random Forest
- XGBoost (best balance between precision & recall)
- Compared accuracy, recall, F1-score, ROC-AUC

**4. Created SQL-ready tables**
- Employee master
- Salary details
- Job satisfaction data
- Attrition & overtime records

**5. Designed Tableau dashboards (in-progress)**
- Attrition by department, job role, income, tenure
- Key drivers of attrition
- Manager effectiveness & satisfaction scores

---

## Skills & Tools
- **Python:** Pandas, Numpy, Matplotlib, Seaborn, scikit-learn, XGBoost  
- **Data engineering:** CSV export, table split for SQL/BI  
- **Machine Learning:** Logistic Regression, Random Forest, XGBoost, model evaluation
- **Visualization & storytelling:** EDA charts, feature importance, executive recommendations

---

## Key Results & Insights
**Major Drivers of Attrition**
- OverTime = Yes → strongest predictor
- Low Job Satisfaction
- Low Environment Satisfaction
- Low Monthly Income
- YearsAtCompany (1–3 years) → early-tenure employees leave more
- Sales Executives & Sales Department show highest churn
- Weak manager relationship (low YearsWithCurrManager)

## 📊 Attrition Distribution
<p align="centre">
<img src="https://github.com/deepikapriyak30/supermart-grocery-sales-analysis/blob/main/images/sales_by_category.jpg?raw=true" width="650">
</p>

**Machine Learning Results** 
  - **Logistic Regression** → Best recall (66%), catches more actual attrition cases 
  - **Random Forest** → Best precision (55%), fewer false positives 
  - **XGBoost** → Best overall balance (highest F1 among models)

**Overall Model Comparison (Preview)**
| Model               | Accuracy | Precision (Yes) | Recall (Yes) | F1-score | ROC-AUC |
| ------------------- | -------- | --------------- | ------------ | -------- | ------- |
| Logistic Regression | 0.777    | 0.386           | 0.661        | 0.487    | 0.809   |
| Random Forest       | 0.842    | 0.556           | 0.084        | 0.147    | 0.758   |
| XGBoost             | 0.837    | 0.489           | 0.406        | 0.444    | 0.766   |

---

## Business Recommendations
**1. Reduce overtime:** Implement flexible schedules, rotate workloads, and limit excessive work hours.

**2. Increase salary for lower bands:** Employees earning below ₹5000 show significantly higher attrition.

**3. Improve work-life balance:** Remote work options, flexible timing, and fewer weekend shifts.

**4. Strengthen the Sales department:** Sales roles show the highest burnout → improve targets, incentives, and mental-health support.

**5. Improve manager–employee relationships:** Early-tenure employees with new managers leave faster → Increase 1-on-1s, manager training, onboarding support.

**6. Focus on job satisfaction:** Recognize good work, career development discussions, and feedback cycles.

---

## Next Steps
1. Add Tableau dashboards for department-wise and manager-wise attrition.
2. Build a churn-risk scoring model for each employee.
3. Integrate HR SQL tables into Tableau for automated reporting.
4. Explore SHAP values to explain XGBoost predictions more clearly.
5. Add segmentation analysis (Age bands, salary groups, job families).

---

## Dataset Source
IBM HR Analytics Employee Attrition Dataset — Public dataset available on Kaggle for learning and research purposes.
(I do not own the data; full credit to the original creator.)

---
