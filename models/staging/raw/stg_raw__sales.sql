with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        concat(pdt_id,"-",orders_id) as primary_key,
        date_date,
        orders_id,
        pdt_id as products_id,
        revenue,
        quantity

    from source

)

select * from renamed
