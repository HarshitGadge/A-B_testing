# Amazon Robotics A/B Testing: Task Allocation Optimization

This project evaluates the performance of two robotic task allocation algorithms (Algorithm A and Algorithm B) used in an automated robotics system. The objective is to determine which algorithm performs better across three key metrics: task duration, error rate, and energy consumption. The entire pipeline is built using AWS tools and services.

## Project Summary

- Objective: Compare performance of Algorithm A and B using A/B testing
- Dataset: Simulated task logs with fields for duration, energy usage, and error status
- Analysis: Conducted statistical tests to evaluate the significance of differences between the two algorithms
- Tools: AWS S3, AWS Glue, Athena, SageMaker, QuickSight

## Tools and Technologies

| Component        | Tools Used                       |
|------------------|----------------------------------|
| Storage          | Amazon S3                        |
| ETL              | AWS Glue                         |
| Query Engine     | Amazon Athena                    |
| Data Analysis    | SageMaker (Jupyter Notebook), pandas, scipy |
| Visualization    | Amazon QuickSight                |
| Statistical Tests| Welch’s t-test, Chi-square test  |

## Dataset Description

The dataset contains 5,000 rows of simulated robotic task data with the following columns:

| Column Name       | Description                                 |
|-------------------|---------------------------------------------|
| `algorithm`       | Task allocation algorithm used (A or B)      |
| `duration_min`    | Task duration in minutes                     |
| `error_occurred`  | 1 if an error occurred, otherwise 0          |
| `energy_kwh`      | Energy consumed to complete the task (kWh)   |

Data file: `robotic_task_logs.csv`

## Statistical Analysis

| Metric              | Test Type         | Outcome | P-value   | Conclusion                   |
|---------------------|-------------------|---------|-----------|------------------------------|
| Task Duration       | Welch’s T-test     | B < A   | < 0.0001  | Statistically significant    |
| Error Rate          | Chi-square test    | B < A   | ≈ 0.00007 | Statistically significant    |
| Energy Consumption  | Welch’s T-test     | B < A   | < 0.0001  | Statistically significant    |

## Key Findings

Algorithm B demonstrated:
- Lower average task duration
- Lower error rate
- Lower energy consumption

All differences were statistically significant with p-values < 0.05.

## Dashboard

A QuickSight dashboard was created to visualize:
- Average duration, energy usage, and error rate by algorithm
- KPI summaries and comparative bar charts

*Include a screenshot in the repository if applicable (e.g., `dashboard_screenshot.png`).*

## Folder Structure

```
├── robotic_task_logs.csv
├── ab_testing_analysis.ipynb
├── README.md
```

## How to Reproduce

1. Upload `robotic_task_logs.csv` to an S3 bucket
2. Use AWS Glue to create a table and catalog the data
3. Query the data in Amazon Athena
4. Analyze the data in SageMaker using provided notebook
5. Create visuals in Amazon QuickSight using Athena as a source

## Author

Harshit Gadge  
M.S. Data Science, University of Maryland  
GitHub: https://github.com/harshitgadge  
LinkedIn: https://www.linkedin.com/in/harshitgadge/
