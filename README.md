# MARVEL DATASET USING SQL  

## **Objective**  
To analyze a dataset containing movie performance metrics, including financial data, audience and critic ratings, and release details. The goal is to write SQL queries to retrieve, manipulate, and analyze the data to extract meaningful insights and answer business or analytical questions.  

---

## **About the Dataset**  
The dataset includes 18 columns:  
- **Category**: Movie title  
- **Year**: Release year  
- **Worldwide Gross ($m)**: Global revenue in millions  
- **% Budget Recovered**: Budget recouped as a percentage of gross revenue  
- **Critics % Score**: Critics' approval rating  
- **Audience % Score**: Audience approval rating  
- **Audience vs Critics % Deviance**: Difference between audience and critics' scores  
- **Budget ($m)**: Production budget in millions  
- **Domestic Gross ($m)**: Revenue from domestic markets  
- **International Gross ($m)**: Revenue from international markets  
- **Opening Weekend ($m)**: Revenue during the opening weekend  
- **Second Weekend ($m)**: Revenue during the second weekend  
- **1st vs 2nd Weekend Drop Off**: Percentage drop in revenue from the first to second weekend  
- **% Gross from Opening Weekend**: Proportion of total gross earned during the opening weekend  
- **% Gross from Domestic**: Proportion of total gross from domestic revenue  
- **% Gross from International**: Proportion of total gross from international revenue  
- **% Budget Opening Weekend**: Proportion of budget recouped in the opening weekend  
- **% Budget from Domestic**: Percentage of the budget recovered from domestic revenue  

---

## **SQL Query Categories**  

### **Basic**  
1. Retrieve specific columns (e.g., `Category`, `Year`, `Worldwide Gross ($m)`)  
2. Filter records (e.g., movies released after 2018)  
3. Sort data by `Worldwide Gross ($m)` in descending order  
4. Count the total number of movies  
5. Aggregate functions (e.g., calculate total `Worldwide Gross ($m)`)  
6. Filter using `WHERE` conditions (e.g., movies with `Critics % Score > 90%`)  
7. Group data by `Year` and calculate the total `Worldwide Gross ($m)`  

### **Intermediate**  
1. Filter records with multiple conditions  
2. Perform joins (e.g., with hypothetical `Genres` table)  
3. Calculate percentages (e.g., proportion of `Domestic Gross ($m)` to `Worldwide Gross ($m)`)  
4. Use aggregate functions with conditions (e.g., average budget for `Critics % Score < 80%`)  
5. Subqueries (e.g., find movies grossing higher than the average)  
6. Use `AND/OR` filters for complex conditions  
7. Categorize performance using `CASE` statements  

### **Advanced**  
1. Use window functions (e.g., rank movies by `Worldwide Gross ($m)` per year)  
2. Correlated subqueries (e.g., compare `Worldwide Gross ($m)` to yearly averages)    
3. Perform dynamic aggregations (e.g., yearly total, average, minimum, and maximum gross)  
4. Nested queries in the `FROM` clause  
5. Recursive CTEs (e.g., simulate cumulative gross revenue trends)  

---

## **How to Use**  
1. Clone this repository to your local machine.  
2. Load the dataset into your preferred SQL database.  
3. Use the queries provided to analyze and extract insights from the dataset.  

---

