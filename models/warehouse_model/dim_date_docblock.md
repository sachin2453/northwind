{% docs dim_date_docs %}

One of the following values:

| columns      | type    |
|--------------|---------|
| id           | derived |
| full_date    | original|
| year         | derived |
| year_week    | derived | 
| year_day     | derived |
| fiscal_year  | derived |
| fiscal_qtr   | derived | 
| month        | derived | 
| month_name   | derived | 
| week_day     | derived |
| day_name     | derived |

{% enddocs %}

{% docs order_status %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| placed         | Order placed, not yet shipped                    |
| shipped        | Order has been shipped, not yet been delivered   |
| completed      | Order has been received by customers             |
| return pending | Customer indicated they want to return this item |
| returned       | Item has been returned                           |

{% enddocs %}