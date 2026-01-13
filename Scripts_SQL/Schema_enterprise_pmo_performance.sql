-- =====================================================
-- Create Database
-- =====================================================
CREATE DATABASE IF NOT EXISTS enterprise_pmo_performance_analytics;
USE enterprise_pmo_performance_analytics;

-- =====================================================
-- Fact Table 1: Fact_Project_Performance
-- =====================================================
CREATE TABLE IF NOT EXISTS Fact_Project_Performance (
    Perf_ID VARCHAR(10) PRIMARY KEY,
    Project_ID VARCHAR(10) NOT NULL,
    Reporting_Date_ID INT NOT NULL,
    Risk_Key VARCHAR(10),
    PV DECIMAL(12,2),
    EV DECIMAL(12,2),
    AC DECIMAL(12,2),
    Percent_Complete DECIMAL(5,2),
    Planned_Duration_Days INT,
    Actual_Duration_Days INT
);

-- =====================================================
-- Fact Table 2: Fact_Resource_Assignment
-- =====================================================
CREATE TABLE IF NOT EXISTS Fact_Resource_Assignment (
    Resource_Assign_ID VARCHAR(10) PRIMARY KEY,
    Team_ID VARCHAR(10) NOT NULL,
    Project_ID VARCHAR(10) NOT NULL,
    Reporting_Date_ID INT NOT NULL,
    Assigned_Role VARCHAR(100),
    Planned_Hours INT,
    Actual_Hours INT,
    Utilization_Percent DECIMAL(5,2),
    Hourly_Billable_Cost_USD DECIMAL(10,2),
    Resource_Cost_USD DECIMAL(12,2),
    Assignment_Status VARCHAR(20)
);

-- =====================================================
-- Fact Table 3: Fact_Stakeholder
-- =====================================================
CREATE TABLE IF NOT EXISTS Fact_Stakeholder (
    FPS_ID VARCHAR(10) PRIMARY KEY,
    Project_ID VARCHAR(10) NOT NULL,
    Stakeholder_ID VARCHAR(10) NOT NULL,
    Reporting_Date_ID INT NOT NULL,
    Approval_Status VARCHAR(20),
    Feedback_Score INT,
    Escalation_Flag VARCHAR(5),
    Stakeholder_Delay_Days INT
);