SELECT * 
FROM {{ ref('dim_listings_cleansed') }}
WHERE minimum_nights < 1
limit 10