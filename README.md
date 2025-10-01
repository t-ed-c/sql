# SQL Learning Repository 📊

A comprehensive collection of SQL scripts and examples for learning database fundamentals, from basic table operations to advanced functions and filtering techniques.

## 📁 Repository Structure

```
sql/
├── basicsql_day1/           # Day 1: Database Fundamentals
│   └── CREATE TABLE students (.sql
├── filters/                 # Day 2: Data Filtering & Querying
│   └── filters.sql
├── Functions/               # Day 3: SQL Functions & Expressions
│   └── functions.sql
├── Grouping/                # Day 4: Grouping & Subqueries
│   └── grouping.sql
└── README.md               # This file
```

## 🚀 Getting Started

### Prerequisites
- Oracle Database or compatible SQL environment
- SQL client (SQL*Plus, SQLcl, Oracle SQL Developer, etc.)

### Quick Setup
1. Clone this repository
2. Connect to your Oracle database
3. Run the scripts in order (Day 1 → Day 2 → Day 3 → Day 4)

## 📚 Learning Path

### Day 1: Database Fundamentals
**File:** `basicsql_day1/CREATE TABLE students (.sql`

Learn the basics of database creation and data manipulation:
- ✅ **CREATE TABLE** - Define table structure with primary keys
- ✅ **INSERT** - Add sample data to tables
- ✅ **SELECT** - Retrieve and display data
- ✅ **COMMIT** - Save changes to database

**Sample Dataset:** Student management system with 5 students across different courses

### Day 2: Data Filtering & Querying
**File:** `filters/filters.sql`

Master data retrieval with advanced filtering techniques:
- 🔍 **WHERE** clauses with comparison operators
- 🔗 **AND/OR** logical operators for complex conditions
- 📊 **BETWEEN** for range queries
- 📋 **IN** for multiple value matching
- 🔤 **LIKE** for pattern matching with wildcards
- 📈 **ORDER BY** for sorting results
- ❌ **NOT** for negative conditions

### Day 3: SQL Functions & Expressions
**File:** `Functions/functions.sql`

Explore powerful SQL functions and data manipulation:
- 📊 **Aggregate Functions**: COUNT, AVG, MIN, MAX
- 👥 **GROUP BY** for data summarization
- 🔤 **String Functions**: UPPER, LOWER, LENGTH, SUBSTR
- 🧮 **Numeric Expressions** and calculations
- 📅 **Date Functions**: SYSDATE, ADD_MONTHS, MONTHS_BETWEEN
- 🏷️ **Aliasing** for readable output
- 🔄 **Window Functions** with OVER clause
- ⚡ **CASE** statements for conditional logic

### Day 4: Grouping & Subqueries
**File:** `Grouping/grouping.sql`

Master advanced data analysis and complex queries:
- 📊 **GROUP BY** for sophisticated data grouping
- 🔍 **HAVING** clause for filtering grouped results
- 🎯 **Scalar Subqueries** for single value comparisons
- 📋 **IN Subqueries** for multiple value matching
- 🔗 **Subqueries in SELECT** for inline expressions
- 📊 **Derived Tables** with subqueries in FROM clause
- 🧮 **Complex Aggregations** with conditional logic

## 💡 Key Learning Outcomes

After completing this course, you'll be able to:
- Create and populate database tables
- Write complex queries with multiple conditions
- Use aggregate functions for data analysis
- Manipulate strings and dates effectively
- Group and summarize data
- Apply conditional logic in SQL
- Write advanced subqueries for complex data retrieval
- Filter grouped data with HAVING clauses
- Create derived tables for sophisticated analysis

## 🎯 Sample Queries

### Basic Student Query
```sql
SELECT * FROM students WHERE age > 20;
```

### Advanced Analytics
```sql
SELECT 
  course,
  COUNT(*) AS num_students,
  ROUND(AVG(age), 1) AS avg_age
FROM students 
GROUP BY course 
ORDER BY num_students DESC;
```

### String Manipulation
```sql
SELECT 
  first_name || ' ' || last_name AS full_name,
  UPPER(course) AS course_upper,
  LENGTH(first_name) AS name_length
FROM students;
```

### Advanced Grouping & Subqueries
```sql
-- Students older than average age
SELECT *
FROM students
WHERE age > (SELECT AVG(age) FROM students)
ORDER BY age DESC;

-- Courses with average age analysis
SELECT
  course,
  ROUND(AVG(age), 1) AS avg_age,
  COUNT(*) AS total_students
FROM students
GROUP BY course
HAVING COUNT(*) > 1
ORDER BY avg_age DESC;
```

## 🗃️ Sample Data

The repository includes a student database with the following structure:

| student_id | first_name | last_name | age | course |
|------------|------------|-----------|-----|---------|
| 1 | Alice | Kamau | 20 | Database Systems |
| 2 | Brian | Otieno | 22 | Networking |
| 3 | Cynthia | Mwangi | 19 | Database Systems |
| 4 | David | Mutua | 21 | Software Engineering |
| 5 | Emily | Njeri | 23 | Cybersecurity |

## 🛠️ How to Use

1. **Start with Day 1**: Run the table creation script to set up your environment
```sql
@basicsql_day1/CREATE\ TABLE\ students\ \(.sql
```

2. **Progress to Day 2**: Practice filtering and querying
```sql
@filters/filters.sql
```

3. **Advance to Day 3**: Explore functions and expressions
```sql
@Functions/functions.sql
```

4. **Master Day 4**: Learn grouping and subqueries
```sql
@Grouping/grouping.sql
```

## 📝 Best Practices Demonstrated

- ✅ Proper table design with primary keys
- ✅ Consistent naming conventions
- ✅ Well-commented code
- ✅ Incremental complexity
- ✅ Real-world examples
- ✅ Error-free syntax

## 🔄 Next Steps

Consider expanding your SQL knowledge with:
- JOINs between multiple tables
- Advanced window functions
- Common Table Expressions (CTEs)
- Stored procedures and functions
- Triggers and constraints
- Performance optimization
- Database design principles
- Data normalization

## 📞 Contributing

Feel free to:
- Add more example queries
- Improve documentation
- Fix any issues
- Suggest new learning modules

## 📄 License

This educational repository is open for learning and sharing.

---

**Happy Learning! 🎓**

*Remember: Practice makes perfect. Try modifying the queries and experiment with different conditions to deepen your understanding.*