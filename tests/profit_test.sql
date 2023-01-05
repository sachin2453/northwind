select
        product_id,
        product_code,
        product_name
 from {{ ref('dim_product') }}
 where (list_price - standard_cost)*100 / list_price < 100