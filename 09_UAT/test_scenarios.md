# Test Scenarios

## 1. Document Overview

### 1.1 Purpose

This document defines the test scenarios for the E-Commerce Customer & Product Analytics solution.

The objective is to validate that the analytics solution satisfies the defined business requirements, functional requirements, user stories, and acceptance criteria.

Testing will focus on data accuracy, KPI calculations, dashboard functionality, filtering, analytical outputs, and business usability.

---

## 2. Testing Scope

Testing covers:

- Data validation
- Revenue analysis
- Profitability analysis
- Product analysis
- Customer analysis
- Regional analysis
- Discount analysis
- Return analysis
- KPI validation
- Dashboard filters
- Business insights
- Management action tracking

---

## 3. Test Scenario Format

Each test scenario contains:

- Test Scenario ID
- Requirement ID
- User Story
- Test Scenario
- Preconditions
- Test Steps
- Expected Result
- Actual Result
- Status
- Priority
- Comments

---

# 4. Data Validation Test Scenarios

## TS-001 – Validate Required Fields

**Requirement:** FR-01  
**User Story:** US-01

**Test Scenario:**  
Verify that all required fields are available in the analytical dataset.

**Preconditions:**

- Dataset is loaded.
- Data model is available.

**Test Steps:**

1. Open the dataset.
2. Review the required columns.
3. Verify that required fields are populated.
4. Compare fields against the defined data requirements.

**Expected Result:**

All required fields are available and usable for analysis.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

## TS-002 – Validate Duplicate Records

**Requirement:** FR-01

**Test Scenario:**  
Verify that unintended duplicate transaction records do not exist.

**Preconditions:**

- Cleaned dataset is available.

**Test Steps:**

1. Identify the transaction/order identifier.
2. Check for duplicate records.
3. Investigate any duplicate transactions.
4. Confirm whether duplicates are valid or erroneous.

**Expected Result:**

No unintended duplicate records remain in the analytical dataset.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

## TS-003 – Validate Missing Values

**Requirement:** FR-01

**Test Scenario:**  
Verify that missing values are handled according to the defined data preparation rules.

**Test Steps:**

1. Profile the dataset.
2. Identify columns containing missing values.
3. Review the applied treatment.
4. Confirm that required analytical fields are usable.

**Expected Result:**

Missing values are either appropriately handled or explicitly documented.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

# 5. Revenue Analysis Test Scenarios

## TS-004 – Validate Overall Revenue

**Requirement:** FR-01  
**User Story:** US-01

**Test Scenario:**  
Verify that total revenue displayed in the dashboard matches the underlying dataset.

**Preconditions:**

- Dashboard is loaded.
- Dataset is refreshed.

**Test Steps:**

1. Calculate total revenue from the dataset.
2. Open the revenue dashboard.
3. Compare the calculated value with the dashboard KPI.
4. Apply available filters.
5. Recalculate revenue for the selected period.

**Expected Result:**

Dashboard revenue matches the validated source calculation.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

## TS-005 – Validate Revenue Trend

**Requirement:** FR-01

**Test Scenario:**  
Verify that revenue trends are displayed correctly over time.

**Test Steps:**

1. Select the required analysis period.
2. Review the revenue trend visualization.
3. Compare monthly/period revenue against the source data.
4. Verify that filtering changes the trend correctly.

**Expected Result:**

Revenue trends accurately represent the underlying data.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

## TS-006 – Validate Revenue by Category

**Requirement:** FR-03

**Test Scenario:**  
Verify that revenue is correctly grouped by product category.

**Test Steps:**

1. Open the category revenue visualization.
2. Select a category.
3. Compare displayed revenue with the source data.
4. Repeat for multiple categories.

**Expected Result:**

Revenue values are correctly aggregated for each category.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** Medium

**Comments:** -

---

# 6. Profitability Test Scenarios

## TS-007 – Validate Profit Calculation

**Requirement:** FR-02

**Test Scenario:**  
Verify that profit is calculated correctly.

**Test Steps:**

1. Identify revenue and cost values.
2. Calculate expected profit.
3. Compare the result with the dashboard calculation.
4. Validate multiple records/categories.

**Expected Result:**

Profit values are calculated consistently with the defined business logic.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

## TS-008 – Validate Profit Margin

**Requirement:** FR-02

**Test Scenario:**  
Verify that profit margin is calculated correctly.

**Test Steps:**

1. Identify revenue and profit.
2. Calculate expected profit margin.
3. Compare against the dashboard.
4. Validate across different categories/products.

**Expected Result:**

Profit margin calculations are accurate and consistent.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

## TS-009 – Validate Profitability Matrix

**Requirement:** FR-02

**Test Scenario:**  
Verify that products are correctly positioned in the profitability matrix.

**Test Steps:**

1. Open the profitability matrix.
2. Review revenue and profit values.
3. Identify high-revenue/high-profit products.
4. Identify high-revenue/low-profit products.
5. Compare classifications with underlying data.

**Expected Result:**

Products are correctly positioned according to their revenue and profitability.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

# 7. Customer Analysis Test Scenarios

## TS-010 – Validate Customer Revenue

**Requirement:** FR-04

**Test Scenario:**  
Verify that customer-level revenue is accurately calculated.

**Test Steps:**

1. Select a customer.
2. Review displayed revenue.
3. Compare with source transactions.
4. Repeat for multiple customers.

**Expected Result:**

Customer revenue matches the underlying transaction data.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** Medium

**Comments:** -

---

## TS-011 – Validate Revenue by Age Group

**Requirement:** FR-04

**Test Scenario:**  
Verify that customers are correctly assigned to age groups.

**Test Steps:**

1. Review customer age values.
2. Verify age-group classification.
3. Compare revenue across age groups.
4. Validate sample customers manually.

**Expected Result:**

Customers are assigned to the correct age groups and revenue is aggregated correctly.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** Medium

**Comments:** -

---

# 8. Product Analysis Test Scenarios

## TS-012 – Validate Product Performance

**Requirement:** FR-03

**Test Scenario:**  
Verify that product performance metrics are accurately calculated.

**Test Steps:**

1. Select a product.
2. Review revenue, profit and quantity metrics.
3. Compare against source transactions.
4. Validate multiple products.

**Expected Result:**

Product-level metrics accurately represent the underlying data.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

## TS-013 – Validate Top and Bottom Products

**Requirement:** FR-03

**Test Scenario:**  
Verify that top and bottom performing products are correctly identified.

**Test Steps:**

1. Sort products by the selected KPI.
2. Identify top-performing products.
3. Identify bottom-performing products.
4. Compare results with dashboard rankings.

**Expected Result:**

Product rankings match the validated KPI calculations.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** Medium

**Comments:** -

---

# 9. Regional Analysis Test Scenarios

## TS-014 – Validate Regional Revenue

**Requirement:** FR-06

**Test Scenario:**  
Verify revenue aggregation by region.

**Test Steps:**

1. Open regional analysis.
2. Select a region.
3. Compare displayed revenue with source data.
4. Repeat for multiple regions.

**Expected Result:**

Regional revenue values are accurate.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** Medium

**Comments:** -

---

# 10. Discount Analysis Test Scenarios

## TS-015 – Validate Discount Impact

**Requirement:** FR-07

**Test Scenario:**  
Verify that discounts can be analyzed against revenue and profitability.

**Test Steps:**

1. Select products with different discount levels.
2. Compare revenue.
3. Compare profit.
4. Analyze changes in profitability.

**Expected Result:**

Discount-related metrics accurately reflect the underlying data.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** Medium

**Comments:** -

---

# 11. Return Analysis Test Scenarios

## TS-016 – Validate Return Metrics

**Requirement:** FR-05

**Test Scenario:**  
Verify that return-related metrics are calculated correctly.

**Test Steps:**

1. Open return analysis.
2. Review return count/rate.
3. Compare against source records.
4. Analyze returns by product/category.

**Expected Result:**

Return metrics accurately represent the underlying dataset.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

# 12. Dashboard Filter Test Scenarios

## TS-017 – Validate Date Filter

**Requirement:** FR-01

**Test Scenario:**  
Verify that date filtering affects dashboard metrics correctly.

**Test Steps:**

1. Select a specific date or period.
2. Review revenue KPI.
3. Review profit KPI.
4. Review charts and tables.
5. Compare against the filtered source data.

**Expected Result:**

All relevant visuals update consistently based on the selected date range.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

## TS-018 – Validate Cross-Filtering

**Requirement:** FR-08

**Test Scenario:**  
Verify that selecting a visual element correctly filters related visuals.

**Test Steps:**

1. Select a category.
2. Observe related visuals.
3. Select a region.
4. Observe the resulting changes.
5. Clear the selection.

**Expected Result:**

Related visuals respond correctly to selections and filters.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

# 13. Management Insights Test Scenarios

## TS-019 – Validate Management Action Plan

**Requirement:** FR-10

**Test Scenario:**  
Verify that identified business issues are linked to actionable recommendations.

**Test Steps:**

1. Identify a major performance gap.
2. Review the corresponding recommendation.
3. Verify that an action is defined.
4. Verify ownership and priority.
5. Confirm that expected business impact is documented.

**Expected Result:**

Each major identified issue has a clearly documented and traceable management action where applicable.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

## TS-020 – Validate Root-Cause Analysis

**Requirement:** FR-09

**Test Scenario:**  
Verify that significant performance gaps can be investigated using available analytical dimensions.

**Test Steps:**

1. Identify a KPI underperformance.
2. Drill into relevant dimensions.
3. Compare products, customers, regions or categories.
4. Document the potential contributing factors.
5. Validate findings against available data.

**Expected Result:**

Users can investigate performance gaps using relevant analytical dimensions.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** High

**Comments:** -

---

# 14. Usability Test Scenarios

## TS-021 – Dashboard Readability

**Requirement:** FR-08

**Test Scenario:**  
Verify that dashboard visuals are understandable and clearly labelled.

**Test Steps:**

1. Review dashboard titles.
2. Review KPI labels.
3. Review chart labels.
4. Check for overlapping visuals.
5. Check whether important insights are easy to identify.

**Expected Result:**

Dashboard content is clearly labelled, readable and understandable to business users.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** Medium

**Comments:** -

---

## TS-022 – Dashboard Navigation

**Requirement:** FR-08

**Test Scenario:**  
Verify that users can navigate between analytical dashboard pages.

**Test Steps:**

1. Open the dashboard.
2. Navigate between pages.
3. Verify navigation controls.
4. Return to the main dashboard.

**Expected Result:**

Users can navigate between dashboard pages without errors.

**Actual Result:** To be recorded during testing.

**Status:** Not Tested

**Priority:** Medium

**Comments:** -

---

# 15. Test Summary

| Test Category | Number of Scenarios |
|---|---:|
| Data Validation | 3 |
| Revenue Analysis | 3 |
| Profitability | 3 |
| Customer Analysis | 2 |
| Product Analysis | 2 |
| Regional Analysis | 1 |
| Discount Analysis | 1 |
| Return Analysis | 1 |
| Dashboard Filters | 2 |
| Management Insights | 2 |
| Usability | 2 |
| **Total** | **22** |

---

# 16. Defect Classification

| Priority | Description |
|---|---|
| Critical | Prevents the solution from being used or causes major data integrity issues |
| High | Significant business functionality or KPI accuracy issue |
| Medium | Functionality works incorrectly but does not prevent core analysis |
| Low | Minor visual, usability or documentation issue |

---

# 17. Test Status Definitions

| Status | Meaning |
|---|---|
| Not Tested | Testing has not yet been performed |
| Pass | Expected result achieved |
| Fail | Expected result not achieved |
| Blocked | Testing cannot continue because of a dependency |
| Retest Required | Defect has been fixed and requires validation |

---

# 18. Final Validation

The solution will be considered ready for final delivery when:

- All critical test scenarios pass
- KPI calculations are validated
- Dashboard filters work correctly
- Data quality issues are resolved or documented
- Acceptance criteria are satisfied
- No unresolved critical defects remain
- Business stakeholders have reviewed the solution
- Final documentation is complete