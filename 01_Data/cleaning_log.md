# Data Cleaning Log — E-commerce Customer & Product Analytics

## 1. Dataset Overview

| Item | Value |
|---|---:|
| Rows | 34,500 |
| Columns | 20 |
| Date range | 2023-09-12 to 2025-09-11 |
| Unique orders | 34,500 |
| Unique customers | 7,903 |
| Unique products | 24,912 |

The cleaned dataset is used as the single analytical input for the Python EDA, Power BI dashboards and Business Analysis deliverables.

---

## 2. Data Quality Validation

### Missing values

All 20 columns contain **0 missing values** in the final cleaned dataset.

| Check | Result |
|---|---:|
| Total missing cells | 0 |
| Columns with missing values | 0 |

### Duplicate records

No duplicate rows were found in the final cleaned dataset.

| Check | Result |
|---|---:|
| Duplicate rows | 0 |

### Data types

The final file contains:

- Identifier fields: `order_id`, `customer_id`, `product_id`
- Categorical fields: `category`, `payment_method`, `region`, `returned`, `customer_gender`
- Numeric measures: price, discount, quantity, delivery time, revenue/amount, shipping cost, profit metric and validation measures
- `order_date` is stored in ISO date format (`YYYY-MM-DD`) and is converted to a datetime type in the EDA notebook.

---

## 3. Business Fields in the Cleaned Dataset

| Field | Purpose |
|---|---|
| `order_id` | Unique order identifier |
| `customer_id` | Customer identifier |
| `product_id` | Product identifier |
| `category` | Product category |
| `price` | Unit/product price |
| `discount` | Discount applied |
| `quantity` | Units purchased |
| `payment_method` | Payment channel |
| `order_date` | Order date |
| `delivery_time_days` | Delivery duration |
| `region` | Customer/order region |
| `returned` | Return indicator |
| `total_amount` | Recorded order amount/revenue |
| `shipping_cost` | Shipping cost |
| `profit_margin` | Profit-related metric supplied in the cleaned data |
| `customer_age` | Customer age |
| `customer_gender` | Customer gender |
| `calculated_amount` | Recalculated amount used for validation |
| `expected_amount` | Expected amount after discount |
| `amount_difference` | Difference between calculated and expected amount |

---

## 4. Validation Rules Applied to the Final Dataset

### Amount consistency

The dataset contains validation fields:

- `calculated_amount`
- `expected_amount`
- `amount_difference`

The final dataset has an absolute `amount_difference` of at most **0.005**, indicating that the amount calculations are effectively consistent within rounding precision.

### Business-range checks

The final data was checked for reasonable analytical ranges:

| Field | Minimum | Maximum |
|---|---:|---:|
| Price | 1.01 | 2930.47 |
| Discount | 0.00 | 0.30 |
| Quantity | 1 | 5 |
| Delivery time (days) | 3 | 13 |
| Customer age | 18 | 69 |

---

## 5. Categorical Standardization Checks

The final dataset contains:

- **7** product categories
- **6** payment methods
- **5** regions
- **2** return statuses
- **3** customer-gender values

These categorical values are consistent and suitable for grouping and dashboard analysis.

---

## 6. Final Cleaning Outcome

After cleaning and validation:

- **34,500 records** are available for analysis.
- No missing values remain.
- No duplicate rows remain.
- Required business identifiers are populated.
- Numeric measures are available for analysis.
- Date values are consistently formatted.
- Amount validation fields show negligible rounding differences.
- The dataset is ready for exploratory analysis, Power BI visualization and Business Analysis reporting.

> **Note:** This log documents the final cleaned dataset and the validations that can be verified directly from the delivered file. It intentionally does not claim a specific transformation (such as an exact imputation method) unless that transformation is observable in the final dataset or documented elsewhere in the project.
