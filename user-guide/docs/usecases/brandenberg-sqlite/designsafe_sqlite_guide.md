# SQLite3 Database Management in DesignSafe NHERI Jupyter Notebooks

**A Comprehensive Guide to Database Creation, Management, and Analysis**

---

## Table of Contents

1. [Overview](#overview)
2. [Understanding Database Types for Research Data](#understanding-database-types-for-research-data)
3. [Choosing the Right Data Storage Format](#choosing-the-right-data-storage-format)
4. [Getting Started with SQLite3](#getting-started-with-sqlite3)
5. [Command Line SQLite3 Operations](#command-line-sqlite3-operations)
6. [Python Integration with SQLAlchemy](#python-integration-with-sqlalchemy)
7. [Data Analytics with Pandas](#data-analytics-with-pandas)
8. [Data Import/Export Workflows](#data-importexport-workflows)
9. [Best Practices for NHERI Data](#best-practices-for-nheri-data)

---

## Overview

This documentation provides comprehensive guidance for using SQLite3 databases within DesignSafe NHERI Jupyter notebooks. SQLite3 is an excellent choice for research data management due to its:

- **Portability**: Single file databases that can be easily shared
- **Performance**: Fast queries and low memory footprint
- **Integration**: Native support in Python and Jupyter environments
- **Reliability**: ACID compliance and robust data integrity
- **Accessibility**: No server setup required, works entirely in local file system

### Why SQLite3 for NHERI Research?

- **Data Organization**: Structure heterogeneous engineering data with relationships
- **Collaboration**: Share complete datasets as single database files
- **Reproducibility**: Embed data and analysis in the same computational environment
- **Scalability**: Handle datasets from small experiments to large field studies
- **Standards Compliance**: SQL queries work across different database systems

---

## Understanding Database Types for Research Data

### What is a Database?

Before diving into specific technologies, it's important to understand what databases are and why they matter for research. A **database** is simply an organized collection of data that allows you to:

- **Store** large amounts of information efficiently
- **Retrieve** specific data quickly using queries
- **Organize** related information in a structured way
- **Share** data consistently across research teams
- **Preserve** data integrity and prevent corruption

Think of a database as a sophisticated filing system for your research data, much more powerful than scattered Excel files or text documents.

### Relational vs. Flat File Databases

#### Relational Databases: The Traditional Approach

A **relational database** organizes data into tables (like spreadsheets) that are connected through relationships. Imagine you're studying earthquake damage to buildings:

**Buildings Table:**
```
Building_ID | Address        | Construction_Year | Material
B001        | 123 Main St    | 1985             | Concrete
B002        | 456 Oak Ave    | 1992             | Steel
```

**Damage_Reports Table:**
```
Report_ID | Building_ID | Earthquake_Date | Damage_Level
R001      | B001        | 2023-01-15      | Moderate
R002      | B001        | 2023-06-20      | Minor
R003      | B002        | 2023-01-15      | None
```

The `Building_ID` **links** these tables together. This relationship allows you to ask complex questions like "Show me all damage reports for concrete buildings built before 1990" without duplicating building information in every damage report.

**Key Benefits of Relational Databases:**
- **Eliminate data duplication** (building info stored once, referenced many times)
- **Maintain data consistency** (update building address once, changes everywhere)
- **Enforce data integrity** (can't create damage report for non-existent building)
- **Support complex queries** across multiple related datasets
- **Handle concurrent access** (multiple researchers can work simultaneously)

**Common Relational Databases:**
- **SQLite** (what this guide focuses on) - Single file, no server needed
- **PostgreSQL** - Full-featured server database for large projects
- **MySQL** - Popular web-oriented database
- **Microsoft SQL Server** - Enterprise database system

#### Flat File Databases: The Modern Alternative

A **flat file database** stores data in a single, self-contained file without the complex relationships of traditional databases. Think of it as a very sophisticated spreadsheet that can handle massive amounts of data efficiently.

**When Flat Files Excel:**
- **Time series data** from sensors (millions of timestamp-value pairs)
- **Scientific arrays** (3D stress tensors, image data, simulation results)
- **Simple datasets** that don't need complex relationships
- **Data archival** and long-term storage
- **High-performance analytics** on large datasets

---

## Choosing the Right Data Storage Format

### SQLite: The Relational Powerhouse

**What is SQLite?**
SQLite is a lightweight relational database that stores everything in a single file. Unlike server-based databases, SQLite requires no installation, configuration, or maintenance. It's like having a powerful database engine built right into your data file.

**When to Use SQLite:**

✅ **Perfect for:**
- **Multi-table research projects** (experiments, specimens, sensors, measurements)
- **Data with complex relationships** (one experiment → many specimens → many tests)
- **Collaborative research** where data integrity is crucial
- **Projects requiring data validation** and quality control
- **Datasets with mixed data types** (text, numbers, dates, metadata)
- **Interactive analysis** requiring frequent queries and filtering
- **Data that evolves over time** (adding new experiments, updating results)

✅ **Research Scenarios:**
- Earthquake engineering databases tracking buildings, ground motions, and damage
- Laboratory testing programs with specimens, test protocols, and results
- Field monitoring campaigns with site information, sensors, and time series data
- Meta-analyses combining data from multiple studies
- Longitudinal studies tracking changes over time

**SQLite Advantages:**
- **ACID compliance** ensures data integrity even during system crashes
- **Cross-platform compatibility** works on Windows, Mac, Linux
- **No size limits** for practical research (tested up to 281 TB)
- **Concurrent read access** allows multiple researchers to query simultaneously
- **Built-in data types** handle integers, floats, text, dates, and binary data
- **Extensive tooling** with GUI browsers, command-line tools, and programming libraries

**SQLite Limitations:**
- **Single writer** - only one process can modify data at a time
- **Not optimized for analytics** on very large datasets (> 1GB)
- **Limited built-in analytics** compared to specialized formats

### Parquet: The Analytics Optimizer

**What is Parquet?**
Parquet is a columnar storage format designed for analytical workloads. Instead of storing data row-by-row like a spreadsheet, it stores data column-by-column, making it incredibly fast for calculations and analysis.

**How Parquet Works:**
```
Traditional (row-based): [timestamp1, accel_x1, accel_y1] [timestamp2, accel_x2, accel_y2] ...
Parquet (column-based):  [timestamp1, timestamp2, ...] [accel_x1, accel_x2, ...] [accel_y1, accel_y2, ...]
```

When you want to analyze acceleration trends, Parquet only reads the acceleration columns, skipping timestamps entirely.

**When to Use Parquet:**

✅ **Perfect for:**
- **Large analytical datasets** (> 100MB) requiring frequent calculations
- **Time series analysis** with millions of sensor readings
- **Statistical analysis** across many variables
- **Data science workflows** using Python, R, or big data tools
- **Archival storage** of processed research data
- **Cloud-based analysis** (works excellently with AWS, Google Cloud)
- **Data pipelines** that process and transform large datasets

**Parquet Advantages:**
- **Blazing fast analytics** - 10-100x faster than CSV for calculations
- **Excellent compression** - often 75% smaller than equivalent CSV files
- **Schema preservation** - remembers data types, column names, metadata
- **Columnar efficiency** - only read columns you need for analysis
- **Cross-language support** - works with Python, R, Java, C++, and more

**Parquet Limitations:**
- **Write-once nature** - difficult to update individual records
- **No built-in querying** - need external tools (Pandas, SQL engines)
- **Less human-readable** - binary format requires tools to view

### HDF5: The Scientific Heavyweight

**What is HDF5?**
HDF5 (Hierarchical Data Format) is like a file system within a file. It can store multiple datasets, arrays, and metadata in a single file with a hierarchical structure.

**HDF5 Structure Example:**
```
earthquake_study.h5
├── metadata/
│   ├── experiment_info
│   └── site_description
├── ground_motion/
│   ├── acceleration_time_series
│   ├── velocity_time_series
│   └── displacement_time_series
├── structural_response/
│   ├── story_displacements
│   ├── member_forces
│   └── damage_indicators
└── analysis_results/
    ├── response_spectra
    └── fragility_curves
```

**When to Use HDF5:**

✅ **Perfect for:**
- **Complex scientific datasets** with multiple related arrays
- **Multi-dimensional data** (3D stress fields, 4D spatio-temporal data)
- **Mixed data types** (arrays, tables, images, metadata) in one file
- **High-performance computing** applications
- **Datasets requiring partial reading** (access subset without loading entire file)
- **Long-term data archival** with rich metadata

**HDF5 Advantages:**
- **Hierarchical organization** keeps related data together
- **Efficient partial access** - read only what you need from large files
- **Rich metadata support** - embed documentation within data files
- **Cross-platform portability** - same file works everywhere
- **Excellent performance** for array operations and scientific computing

**HDF5 Limitations:**
- **Complexity** - steeper learning curve than simpler formats
- **Specialized tools required** - need HDF5-aware software to access
- **File corruption risk** - complex format can be sensitive to incomplete writes

### Decision Matrix: Choosing the Right Format

| Use Case | SQLite | Parquet | HDF5 |
|----------|--------|---------|------|
| **Small datasets (< 100MB)** | ✅ Excellent | ❌ Overkill | ❌ Overkill |
| **Relational data** | ✅ Perfect | ❌ Poor | ❌ Poor |
| **Time series analytics** | ⚠️ Okay | ✅ Excellent | ✅ Excellent |
| **Frequent updates** | ✅ Excellent | ❌ Poor | ⚠️ Okay |
| **Multi-user access** | ✅ Good | ✅ Good | ⚠️ Limited |
| **Data validation** | ✅ Excellent | ❌ Limited | ❌ Limited |
| **Long-term archival** | ✅ Good | ✅ Excellent | ✅ Excellent |
| **Learning curve** | ⚠️ Moderate | ✅ Easy | ❌ Steep |

### Hybrid Approaches: Using Multiple Formats Together

**Example: Earthquake Engineering Study**
1. **SQLite for metadata and relationships**
   - Experiment catalog, specimen properties, test protocols
   - Links between experiments, sites, and researchers

2. **Parquet for large analytical datasets**
   - Time series sensor data from experiments
   - Processed results and derived parameters

3. **HDF5 for complex simulation data**
   - Finite element model results
   - Multi-dimensional parameter studies

**Performance Guidelines:**
- **< 10 MB**: Any format works, choose based on use case
- **10 MB - 1 GB**: SQLite for relational, Parquet for analytics
- **1 GB - 10 GB**: Prefer Parquet or HDF5, avoid SQLite for large tables
- **> 10 GB**: Consider splitting data or using distributed formats

---

## Getting Started with SQLite3

### Installation and Setup

SQLite3 comes pre-installed in DesignSafe Jupyter environments:

```python
import sqlite3
import pandas as pd
import sqlalchemy as sa
import numpy as np
from datetime import datetime, date

print(f"SQLite3 version: {sqlite3.sqlite_version}")
```

### Basic Database Creation

```python
# Create a new SQLite database
conn = sqlite3.connect('nheri_research.db')
cursor = conn.cursor()

# Create a simple table
cursor.execute('''
CREATE TABLE IF NOT EXISTS experiments (
    experiment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    investigator TEXT,
    institution TEXT,
    date_conducted DATE,
    facility TEXT,
    experiment_type TEXT,
    status TEXT DEFAULT 'active',
    created_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
)
''')

conn.commit()
print("Database created successfully!")
```

---

## Command Line SQLite3 Operations

### Essential SQLite3 Commands

```bash
# Access SQLite3 directly
!sqlite3 nheri_research.db

# Inside SQLite prompt:
.tables                    # View all tables
.schema experiments        # Show table structure  
.headers on               # Turn on headers
.mode column              # Column-aligned output
SELECT * FROM experiments LIMIT 5;  # View data
.quit                     # Exit
```

### CSV Import/Export

```sql
-- Import CSV data
CREATE TABLE specimen_tests (
    test_id INTEGER PRIMARY KEY,
    specimen_id TEXT,
    test_type TEXT,
    load_kN REAL,
    displacement_mm REAL,
    test_date DATE
);

.mode csv
.headers on
.import specimen_data.csv specimen_tests

-- Export to CSV
.mode csv
.output experiments.csv
SELECT * FROM experiments;
.output stdout
```

---

## Python Integration with SQLAlchemy

### Setting Up SQLAlchemy

```python
from sqlalchemy import create_engine, Column, Integer, String, Float, Date
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

engine = create_engine('sqlite:///nheri_research.db')
Base = declarative_base()

class Experiment(Base):
    __tablename__ = 'experiments'
    
    experiment_id = Column(Integer, primary_key=True, autoincrement=True)
    title = Column(String(200), nullable=False)
    investigator = Column(String(100))
    date_conducted = Column(Date)
    facility = Column(String(50))
    experiment_type = Column(String(50))

Base.metadata.create_all(engine)
```

### CRUD Operations

```python
Session = sessionmaker(bind=engine)
session = Session()

# CREATE
new_experiment = Experiment(
    title="Seismic Response of RC Columns",
    investigator="Dr. Jane Smith",
    date_conducted=date(2024, 3, 15),
    facility="NHERI@UC Berkeley",
    experiment_type="shake_table"
)
session.add(new_experiment)
session.commit()

# READ
experiments = session.query(Experiment).filter(
    Experiment.experiment_type == 'shake_table'
).all()

# UPDATE
session.query(Experiment).filter(
    Experiment.experiment_id == 1
).update({"status": "completed"})

session.commit()
session.close()
```

---

## Data Analytics with Pandas

### Reading Data into Pandas

```python
# Method 1: Direct SQL query
engine = create_engine('sqlite:///nheri_research.db')
df_experiments = pd.read_sql_query("""
    SELECT e.*, COUNT(st.test_id) as test_count
    FROM experiments e
    LEFT JOIN specimen_tests st ON e.experiment_id = st.experiment_id
    GROUP BY e.experiment_id
""", engine)

# Method 2: Read entire table
df_tests = pd.read_sql_table('specimen_tests', engine)
```

### Data Analysis and Visualization

```python
import matplotlib.pyplot as plt
import seaborn as sns

# Basic data exploration
print(f"Shape: {df_tests.shape}")
print(df_tests.describe())

# Visualization
fig, axes = plt.subplots(2, 2, figsize=(15, 10))

# Load distribution
axes[0,0].hist(df_tests['load_kN'].dropna(), bins=30)
axes[0,0].set_title('Load Distribution (kN)')

# Stress-Strain relationship
axes[0,1].scatter(df_tests['strain_percent'], df_tests['stress_MPa'])
axes[0,1].set_title('Stress vs Strain')

# Test type distribution
test_counts = df_tests['test_type'].value_counts()
axes[1,0].pie(test_counts.values, labels=test_counts.index)
axes[1,0].set_title('Test Type Distribution')

plt.tight_layout()
plt.show()
```

---

## Data Import/Export Workflows

### CSV Import/Export

```python
# Export to CSV
def export_to_csv(table_name, filename, query=None):
    if query is None:
        query = f"SELECT * FROM {table_name}"
    
    df = pd.read_sql_query(query, engine)
    df.to_csv(filename, index=False)
    print(f"Exported {len(df)} records to {filename}")

# Import CSV with validation
def import_csv_with_validation(filename, table_name, required_columns):
    try:
        df = pd.read_csv(filename)
        
        # Check required columns
        missing_cols = set(required_columns) - set(df.columns)
        if missing_cols:
            raise ValueError(f"Missing required columns: {missing_cols}")
        
        # Data type conversion
        if 'test_date' in df.columns:
            df['test_date'] = pd.to_datetime(df['test_date']).dt.date
        
        # Write to database
        df.to_sql(table_name, engine, if_exists='append', index=False)
        print(f"Successfully imported {len(df)} records")
        
    except Exception as e:
        print(f"Import failed: {e}")
```

### Excel and JSON Support

```python
# Excel export with multiple sheets
def export_to_excel(filename, tables_queries):
    with pd.ExcelWriter(filename, engine='openpyxl') as writer:
        for sheet_name, query in tables_queries.items():
            df = pd.read_sql_query(query, engine)
            df.to_excel(writer, sheet_name=sheet_name, index=False)

# JSON export
def export_to_json(table_name, filename):
    df = pd.read_sql_query(f"SELECT * FROM {table_name}", engine)
    df.to_json(filename, orient='records', date_format='iso', indent=2)
```

---

## Best Practices for NHERI Data

### Data Organization Standards

```python
# Standardized naming conventions
def generate_experiment_id(year, facility, sequence):
    return f"EXP_{year}_{facility.upper()}_{sequence:03d}"

def generate_specimen_id(material, sequence):
    return f"SPEC_{material.upper()}_{sequence:02d}"

# Example usage
exp_id = generate_experiment_id(2024, "berkeley", 15)  # EXP_2024_BERKELEY_015
spec_id = generate_specimen_id("concrete", 3)          # SPEC_CONCRETE_03
```

### Data Validation and Quality Control

```python
def validate_experiment_data():
    validation_queries = {
        'missing_critical_fields': """
            SELECT experiment_id, title 
            FROM experiments 
            WHERE date_conducted IS NULL OR facility IS NULL
        """,
        'future_dates': """
            SELECT experiment_id, title, date_conducted
            FROM experiments 
            WHERE date_conducted > DATE('now')
        """
    }
    
    for check_name, query in validation_queries.items():
        df = pd.read_sql_query(query, engine)
        if len(df) > 0:
            print(f"⚠️  {check_name}: {len(df)} issues found")
        else:
            print(f"✅ {check_name}: No issues")

validate_experiment_data()
```

### Database Backup and Versioning

```python
def create_data_backup(backup_name=None):
    if backup_name is None:
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup_name = f"nheri_backup_{timestamp}.db"
    
    conn = sqlite3.connect('nheri_research.db')
    backup_conn = sqlite3.connect(backup_name)
    conn.backup(backup_conn)
    backup_conn.close()
    conn.close()
    
    print(f"Database backed up to: {backup_name}")
    return backup_name

# Create regular backups
backup_file = create_data_backup()
```

---


### Best Practices
1. **Design schema early** with clear relationships and data types
2. **Implement data validation** to ensure quality and consistency
3. **Use standardized naming conventions** for better organization
4. **Create regular backups** and version snapshots
5. **Document metadata thoroughly** for future researchers

---

*For additional support and examples, visit the [DesignSafe Learning Center](https://www.designsafe-ci.org/learning-center/) and [NHERI Community](https://www.designsafe-ci.org/community/).*