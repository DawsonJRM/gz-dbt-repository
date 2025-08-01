with
source as (
    select * from {{ source('raw', 'product') }}
),
renamed as (
    select
        products_id,
        CAST(purchse_price AS FLOAT64) AS purchased_price
    from source
)

select * from renamed
