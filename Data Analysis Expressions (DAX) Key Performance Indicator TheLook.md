# Data Analysis Expressions (DAX) Key Performance Indicator TheLook

## 📈 Sales Analysis Dashboard TheLook
| Key Performance Indicator (KPI) | Data Analysis Expressions (DAX)                                                   |
|---------------------------------|-----------------------------------------------------------------------------------| 
| Total Revenue                   | sum('thelook fact_sales'[revenue])                                                |
| Total Orders                    | DISTINCTCOUNT('thelook fact_sales'[order_id])                                     |
| Average Order value             | sum('thelook fact_sales'[revenue]) / DISTINCTCOUNT('thelook fact_sales'[order_id])|
| Total Profit                    | sum('thelook fact_sales'[profit])                                                 |

## 👥 Customer Analysis Dashboard TheLook
| Key Performance Indicator (KPI) | Data Analysis Expressions (DAX)                                                                                      |
|---------------------------------|----------------------------------------------------------------------------------------------------------------------| 
| Total Customer                  | DISTINCTCOUNT('thelook fact_sales'[user_id])                                                                         |
| Average Customer Spending       | DIVIDE('thelook fact_sales'[Total_Revenue],'thelook fact_sales'[Total Customer])                                     |
| Repeat Customer                 | COUNTROWS(FILTER(VALUES('thelook fact_sales'[user_id]),CALCULATE(DISTINCTCOUNT('thelook fact_sales'[order_id])) > 1))|


## 📦 Product Analysis Dashboard TheLook
| Key Performance Indicator (KPI) | Data Analysis Expressions (DAX)                   |
|---------------------------------|---------------------------------------------------| 
| Total Product                   | DISTINCTCOUNT('thelook fact_sales'[product_id])   |
| Total Brand                     | DISTINCTCOUNT('thelook fact_sales'[brand])        |
| Total Category                  | DISTINCTCOUNT('thelook fact_sales'[category])     |

## 🚚 Shipping Analysis Dashboard TheLook
| Key Performance Indicator (KPI) | Data Analysis Expressions (DAX)                                                             |
|---------------------------------|---------------------------------------------------------------------------------------------| 
| Average Shipping Day            | AVERAGE('thelook fact_sales'[shipping_days])                                                |
| Return Rate                     | DIVIDE(SUM('thelook fact_sales'[is_return]),COUNTROWS('thelook fact_sales'))                |
| Returned Order                  | CALCULATE(DISTINCTCOUNT('thelook fact_sales'[order_id]),'thelook fact_sales'[is_return] = 1)|
