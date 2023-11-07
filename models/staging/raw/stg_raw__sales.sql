with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        oders_id,
        pdts_id AS products_id,
        revenue,
        quantity

    from source

)

select * from renamed
