with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        concat(products_id,"_",orders_id),
        date_date,
        orders_id,
        pdt_id as products_id,
        revenue,
        quantity

    from source

)

select * from renamed
