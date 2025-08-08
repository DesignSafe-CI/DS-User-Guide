/// html | header

## SQLite Database Management in DesignSafe

SQLite3 Database Creation, Management, and Analysis
///

**Brandenberg, S.J. - UCLA**<br/>
**Kumar, K. - UT Austin**

The example makes use of the following DesignSafe resources:

[Jupyter notebooks on DS Juypterhub](https://www.designsafe-ci.org/use-designsafe/tools-applications/analysis/jupyter/){target=_blank}<br/>
[SQLite Documentation](https://www.sqlite.org/docs.html){target=_blank}<br/>

| Scope | Notebook | Link | 
| :-------: | :---------:  | :---------:  |
| Basic example | SQLiteExample.ipynb | [![Open In DesignSafe](https://raw.githubusercontent.com/geoelements/LearnMPM/main/DesignSafe-Badge.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/CommunityData/Use%20Case%20Products/SQLite/SQLiteExample.ipynb) |

### Background
#### Citations and Licensing

* Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246){target=_blank} to acknowledge the use of DesignSafe resources.

* This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html){target=_blank}.

## Description

SQLite3 provides an excellent solution for research data management within DesignSafe NHERI environments. Unlike server-based databases, SQLite stores everything in a single file, making it ideal for sharing complete datasets and ensuring reproducibility in research workflows.

This guide demonstrates how to effectively use SQLite databases for NHERI research projects, focusing on data organization, basic connectivity, and integration with Python analysis tools. SQLite excels at managing structured data with relationships, making it perfect for experimental datasets that include specimens, tests, measurements, and metadata.

The key advantages of SQLite for NHERI research include portability (single file databases), performance (fast queries with low memory footprint), reliability (ACID compliance), and seamless integration with Python and Jupyter environments. Most importantly, SQLite requires no server setup and works entirely within the local file system, making it accessible to all researchers regardless of their technical background.

A **database** is an organized collection of data that allows researchers to store, retrieve, and analyze information efficiently. Unlike scattered Excel files or text documents, databases provide structured data management with built-in integrity checks and powerful querying capabilities.

For NHERI research, databases excel at managing complex experimental data where relationships between different components matter - such as linking specimens to tests, tests to measurements, and measurements to analysis results.

### Relational Database Concepts

Relational databases organize data into tables that are connected through relationships. For engineering research, this means you can link experiments to specimens, specimens to tests, and tests to measurements without duplicating information.

Key benefits include:

- **Data consistency** - update information once, changes everywhere
- **Data integrity** - prevents invalid relationships
- **Complex queries** - analyze across multiple related datasets
- **Reduced redundancy** - information stored once, referenced many times

SQLite is the ideal relational database for NHERI research because it requires no server setup and stores everything in a single portable file.



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

🔑 **Key Characteristics of SQLite**

1. **🗃️ Self-Contained**: Complete database in a single file
2. **🚀 Serverless**: No installation, configuration, or administration needed
3. **🌍 Cross-Platform**: Works on Windows, Mac, Linux
4. **⚡ Fast**: Optimized for read operations and small to medium datasets
5. **🛡️ ACID Compliant**: Atomic, Consistent, Isolated, Durable transactions
6. **📝 SQL Standard**: Uses familiar SQL syntax with some extensions

**When to Use SQLite:**

✅ **Perfect for:**

- **Multi-table research projects** (experiments, specimens, sensors, measurements)
- **Data with complex relationships** (one experiment → many specimens → many tests)
- **Collaborative research** where data integrity is crucial
- **Projects requiring data validation** and quality control
- **Datasets with mixed data types** (text, numbers, dates, metadata)
- **Interactive analysis** requiring frequent queries and filtering
- **Data that evolves over time** (adding new experiments, updating results)

🆚 **SQLite vs Other Databases**

| Feature | SQLite | MySQL/PostgreSQL | Excel/CSV |
|---------|--------|------------------|-----------|
| **Setup** | None required | Server installation | Application needed |
| **File Type** | Single .db file | Multiple server files | .xlsx/.csv files |
| **Queries** | Full SQL support | Full SQL support | Limited formulas |
| **Relationships** | Foreign keys, joins | Foreign keys, joins | Manual linking |
| **Concurrent Users** | Multiple readers, one writer | Many simultaneous users | File locking issues |
| **Data Integrity** | ACID transactions | ACID transactions | Manual validation |
| **Size Limit** | 281 TB theoretical | Very large | Memory limitations |

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

SQLite3 comes pre-installed in DesignSafe Jupyter environments and requires no additional setup. Basic database operations involve:

1. **Creating a connection** to a database file (creates the file if it doesn't exist)
2. **Defining tables** with appropriate data types and constraints
3. **Inserting data** from experiments and measurements
4. **Querying data** for analysis and visualization
5. **Updating records** as research progresses

Basic connection syntax uses `sqlite3.connect('database_name.db')` to establish a connection to your research database.

### Command Line SQLite3 Operations

The most common operations in a database include:

- **CREATE TABLE** - Define data structure with appropriate data types
- **INSERT** - Add new experimental data and measurements
- **SELECT** - Query and filter data for analysis
- **UPDATE** - Modify existing records as experiments progress
- **JOIN** - Combine related data from multiple tables

SQLite provides a command-line interface for direct database interaction. Essential commands include:

- `.tables` - View all tables in the database
- `.schema table_name` - Show table structure and column definitions
- `.headers on` - Display column headers in query results
- `.mode column` - Format output in readable columns
- `.import file.csv table_name` - Import CSV data into tables
- `.output file.csv` - Export query results to CSV

These commands are particularly useful for quick data exploration and bulk data import/export operations.

### Python Integration with SQLAlchemy

SQLAlchemy provides a powerful Object-Relational Mapping (ORM) interface for SQLite databases in Python. Key concepts include:

- **Engine creation** - Establishes connection to SQLite database
- **Table definitions** - Define database schema using Python classes
- **Session management** - Handle database transactions safely
- **CRUD operations** - Create, Read, Update, Delete data programmatically

SQLAlchemy abstracts SQL complexity while maintaining full database functionality, making it ideal for research workflows that need both data management and analysis capabilities.

### Data Analytics with Pandas

Pandas provides seamless integration with SQLite databases through `pd.read_sql_query()` and `pd.read_sql_table()` functions. This integration enables:

- **Direct SQL queries** - Execute complex queries and load results into DataFrames
- **Table reading** - Load entire tables for comprehensive analysis
- **Data filtering** - Apply SQL WHERE clauses before loading data
- **Join operations** - Combine related tables in single queries
- **Aggregation** - Perform GROUP BY operations at the database level

This approach is particularly powerful for NHERI research because it combines SQL's querying capabilities with Pandas' analytical and visualization tools.

### Data Import/Export Workflows

SQLite databases support various data exchange formats commonly used in NHERI research:

- **CSV files** - Standard format for tabular data exchange
- **Excel spreadsheets** - Multi-sheet workbooks for organized data
- **JSON files** - Structured data with nested relationships
- **Direct database connections** - Link with other research databases

Pandas provides built-in functions like `df.to_sql()` for importing data and `pd.read_sql()` for exporting, making data exchange workflows straightforward and reliable.

### Best Practices for NHERI Data

Effective SQLite database management for NHERI research follows these key principles:

- **Schema design** - Plan table relationships and data types early in the project
- **Naming conventions** - Use consistent, descriptive names for experiments, specimens, and measurements
- **Data validation** - Implement checks for data quality and consistency
- **Regular backups** - Create versioned snapshots of research databases
- **Documentation** - Maintain clear metadata and table descriptions
- **Access control** - Manage concurrent access when collaborating

### Example Applications

This notebook contains practical examples of SQLite database operations for NHERI research, including:

1. Database creation and table design for experimental data
2. Data insertion from laboratory tests and field measurements
3. Complex queries joining experiments, specimens, and results
4. Data analysis and visualization using Pandas integration
5. Import/export workflows for sharing research data
6. Quality control and validation procedures

Try the SQLite example on Jupyter: [![DesignSafe](https://raw.githubusercontent.com/geoelements/LearnMPM/main/DesignSafe-Badge.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/CommunityData/Use%20Case%20Products/SQLite/SQLiteExample.ipynb)