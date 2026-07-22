# Data Analysis Expressions (DAX) Key Performance Indicator TheLook

## Sales Analysis Dashboard TheLook
| Key Performance Indicator (KPI) | Data Analysis Expressions (DAX)                                                   |
|---------------------------------|-----------------------------------------------------------------------------------| 
| Total Revenue                   | sum('thelook fact_sales'[revenue])                                                |
| Total Orders                    | DISTINCTCOUNT('thelook fact_sales'[order_id])                                     |
| Average Order value             | sum('thelook fact_sales'[revenue]) / DISTINCTCOUNT('thelook fact_sales'[order_id])|
| Total Profit                    | sum('thelook fact_sales'[profit])                                                 |
