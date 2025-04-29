# Cohort Retention and Churn Analysis

## Project Overview
This project analyzes customer retention and churn behavior over a 6-week period, based on 13 weekly cohort datasets collected from **November 1, 2020** to **January 30, 2021**.

🔗 [Project: Cohort_retention_analysis.xlsx](https://github.com/aliaksparkh/Cohort-retention-churn-analysis/blob/main/Cohort_retention_analysis.xlsx)

## Methodology
- **Cohort Analysis**: Users are grouped into weekly cohorts based on the week of their first activity.
- **Retention Calculation**: Measures the number and percentage of users active in each subsequent week after their initial engagement.
- **Category Segmentation**: Retention metrics are calculated separately for different categories (Desktop, Mobile, and Tablet).
- **Churn Analysis**: A user is considered churned if inactive after their initial engagement.

### SQL Scripts
- 🔹 [Total Retained Customers](https://github.com/aliaksparkh/Cohort-retention-churn-analysis/blob/main/Cohort_analysis_retention.sql) – Count of users who returned after their first week.
- 🔹 [Retention by Category](https://github.com/aliaksparkh/Cohort-retention-churn-analysis/blob/main/Retention_by_cohorts_by_category.sql) – Retained users segmented by category.

## Key Insights

### 📈 Number of Users by Cohort
<p align="center">
  <img src="https://github.com/aliaksparkh/Cohort-retention-churn-analysis/blob/main/Picture%201.png" width="400">
</p>

- The acquisition strategy leading into December was highly successful at driving user volume.
- Post-holiday cohorts are both smaller in size and lower in retention quality, indicating that volume without strong engagement is not sustainable.
- Holiday cohorts showed higher retention, suggesting that seasonal campaigns attracted higher-quality users. Analyzing acquisition channels and messaging during this period could help replicate success.

### 📊 Customer Retention Rate by Cohort
<p align="center">
  <img src="https://github.com/aliaksparkh/Cohort-retention-churn-analysis/blob/main/Cohort.png" width="400">
</p>

- **Cohorts 8 and 9** (December holiday season acquisitions) demonstrated stronger user engagement and longer retention.
- Higher retention suggests better marketing targeting or higher initial user intent during this period.

**Retention Behavior:**
- **Cohort 1**:
  - Week 1 retention: **94.2%**
  - Week 6 retention: **84.7%**
- **Cohort 8**:
  - Week 1 retention: **96.8%**
  - Week 6 retention: **93.4%**

**Comparison**:  
Cohort 8's retention at Week 6 is **8.7 percentage points higher** than Cohort 1.

- After Cohort 8, retention gradually declines through Cohort 13.
- While **Cohort 8** leads in retention rate, **Cohort 6** has the highest absolute number of retained users by Week 6.

## Recommended Actions

- **Replicate Holiday Acquisition Strategies**  
  Analyze channels, campaigns, and onboarding flows from Cohorts 8 and 9.  
  Apply successful practices throughout the year to lift baseline retention.

- **Strengthen Early Lifecycle Engagement**  
  Prioritize improving the Week 1 and Week 2 onboarding experience for new users, especially for users acquired after peak seasons.

- **Balance Acquisition Volume and Quality**  
  Focus not just on retention rates but also on maximizing the absolute number of retained users to directly drive revenue growth.

- **Monitor Tablet Experience (Low Priority)**  
  Conduct a lightweight UX review for tablet devices to preemptively improve early retention, while maintaining strategic focus on desktop and mobile platforms.

- **Implement Early Detection of Cohort Deterioration**  
  Set up monitoring to quickly spot and react to sudden drops in early retention (Weeks 1–2) in new cohorts.

 

---

⭐ **If you find this project helpful, feel free to star the repo!**
