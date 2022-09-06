SELECT *
    FROM {{ref ('fct_reviews')}} f
    inner join {{ref ('dim_listings_cleansed')}} l
    on f.listing_id = l.listing_id
WHERE
l.created_at >= f.review_date