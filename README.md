# IBM-HR-Analytics-Employee-Attrition-Performance
End-to-end HR analytics project using Python, SQL, and Tableau to analyze employee attrition and performance. Includes data cleaning, EDA, ML models (Logistic Regression, Random Forest, XGBoost), feature importance, business insights, and recommendations.
**Author:** Deepika Priya K

---

## Executive Summary

This project presents an end-to-end HR Attrition Analytics pipeline built using:

- **Python** for data cleaning, EDA, and Machine Learning  
- **SQL** for relational data modeling and structured analysis  
- **Power BI** for interactive business dashboards  

The objective is to identify key factors driving employee attrition and build predictive models to forecast which employees are at risk of leaving.

The project combines business analysis and machine learning to deliver actionable HR recommendations for improving employee retention and organizational stability.

---

## Business Problem
Employee turnover is costly and impacts productivity, hiring expenses, team morale, and overall business performance.

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
- Created new features (e.g., AttritionFlag)

**2. Performed exploratory data analysis (EDA)**
- Attrition patterns by age, income, department, job role
- Boxplots, countplots, and distribution analysis
- Correlation heatmap to identify strong relationships

**3. Built predictive ML models**
- Logistic Regression
- Random Forest
- XGBoost (best balance between precision & recall)
- Compared accuracy, recall, F1-score, ROC-AUC

**4. Designed relational data model**
- Employee data table
- Salary data table
- Satisfaction data table
- Attrition & Overtime table

**5. Designed Power BI dashboards**
- Attrition by department, job role, income, tenure
- Key drivers of attrition
- Manager effectiveness & satisfaction scores

---

## Skills & Tools
- **Programming:** Python (Pandas, NumPy, Scikit-learn, XGBoost)
- **Data Engineering:** SQL (Views, Joins, Data Modeling)
- **Machine Learning:** Logistic Regression, Random Forest, XGBoost
- **Model Evaluation:** Accuracy, Precision, Recall, F1-score, ROC-AUC
- **Visualization:** Tableau / Power BI
- **Analytics:** EDA, Feature Engineering, Business Insight Generation

---

## Key Results & Insights
## Major Drivers of Attrition
Based on both EDA and Machine Learning feature importance:
- **OverTime (Yes)** – Strongest predictor of attrition
- **Low Job Satisfaction**
- **Low Environment Satisfaction**
- **Low Work-Life Balance**
- **Young Age (25–35 years)**
- **Low Years at Company (1–3 years)**
- **Sales Department & Sales Executive roles**
- **Low Monthly Income**
- **Low Stock Option Level**
- **Frequent Business Travel**

These findings are consistent across statistical analysis and model feature importance, strengthening confidence in the results.

## 📊 Attrition Distribution
<p align="centre">
<img src="https://github.com/deepikapriyak30/IBM-HR-Analytics-Employee-Attrition-Performance/blob/main/dashboard-image/Attrition%20Distribution.jpg?raw=true" width="350">
</p>

**Machine Learning Results** 
  - **Logistic Regression** → Best recall (66%), catches more actual attrition cases 
  - **Random Forest** → Best precision (55%), fewer false positives 
  - **XGBoost** → Best overall balance (highest F1 among models)

The following table compares model performance on test data:
**Overall Model Comparison (Preview)**
| Model               | Accuracy | Precision (Yes) | Recall (Yes) | F1-score | ROC-AUC |
| ------------------- | -------- | --------------- | ------------ | -------- | ------- |
| Logistic Regression | 0.777    | 0.386           | 0.661        | 0.487    | 0.809   |
| Random Forest       | 0.842    | 0.556           | 0.084        | 0.147    | 0.758   |
| XGBoost             | 0.837    | 0.489           | 0.406        | 0.444    | 0.766   |

---

## Business Impact Potential

If high-risk employees are identified early using the predictive model:

- HR can proactively engage employees showing early attrition signals
- Reducing overtime exposure could significantly decrease attrition risk
- Improving compensation for lower salary bands may reduce voluntary exits
- Better work-life balance policies can increase employee retention

Even a 5–10% reduction in attrition can significantly reduce:
- Hiring costs
- Training expenses
- Productivity loss

This project demonstrates how data-driven HR analytics can directly improve organizational stability and long-term performance.

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
