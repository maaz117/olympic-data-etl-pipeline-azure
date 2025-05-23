# 🏅 Olympic Data Analytics using Azure

This project implements a full Azure-based data pipeline to analyze Olympic performance and participation data. It covers ingestion, transformation, querying, and interactive dashboarding using real-world datasets related to athletes, coaches, medals, teams, and sports disciplines.


---


## 🧱 Architecture Overview

| Layer        | Tool/Service               | Role                                         |
|--------------|----------------------------|----------------------------------------------|
| Ingestion    | Azure Data Factory          | Load raw CSVs into Azure Data Lake Gen2      |
| Transformation | Azure Databricks (PySpark) | Clean, join, and prepare data                |
| Storage      | Azure Data Lake Gen2        | Raw (Bronze) and Cleaned (Silver) zones      |
| Analytics    | Azure Synapse Analytics     | Query transformed Parquet files via SQL      |
| Visualization| Power BI                    | Interactive dashboards for stakeholders      |


---


## 📁 Datasets Used

| Dataset         | Description                                   |
|-----------------|-----------------------------------------------|
| `athletes.csv`  | Athlete name, country, discipline             |
| `coaches.csv`   | Coach name, discipline, event, country        |
| `entriesgender.csv` | Gender-wise count of participants per sport |
| `medals.csv`    | Country-level gold, silver, bronze medal count|
| `teams.csv`     | Country teams by sport and gender event       |


---


## 🔄 Pipeline Flow

1. **Ingestion:** ADF copies raw CSVs to Data Lake's Bronze layer.
2. **Transformation:** Databricks reads raw data, applies cleaning, joins, and saves CSV files to Silver layer.
3. **Analytics:** Synapse Analytics queries the transformed data directly.
4. **Visualization:** Power BI connects to Synapse and visualizes metrics like medal counts, athlete stats, gender distribution, and more.



![Untitled Diagram drawio](https://github.com/user-attachments/assets/febcfd48-98ac-42b9-b69e-527e320f8365)


---


## 📊 Power BI Dashboard Highlights

| Visual Title                      | Dataset            | Insight                                 |
|----------------------------------|---------------------|------------------------------------------|
| Medal Distribution by Country    | `medals`            | Shows country-wise medal breakdown       |
| Athlete Participation by Sport   | `athletes`          | Highlights top sports by participation   |
| Gender Ratio by Discipline       | `entriesgender`     | Visualizes male/female counts per sport  |
| Coaches Distribution             | `coaches`           | Coach count by event and country         |



![Dashboard](https://github.com/user-attachments/assets/01d340f6-bbef-40e1-89cf-72a0ca17b74f)

---


## 📌 Conclusion

This project demonstrates the power of combining Azure Data Factory, Databricks, Synapse Analytics, and Power BI in building an end-to-end, scalable data analytics solution for Olympic performance and participation insights.


---


## 🚀 Tools Used

- Azure Data Factory
- Azure Data Lake Storage Gen2
- Azure Databricks (PySpark)
- Azure Synapse Analytics
- Power BI


---


## 👤 Author

**Maaz Adnan**  
[LinkedIn](https://linkedin.com/in/maazadnan) | [GitHub](https://github.com/maaz117)
