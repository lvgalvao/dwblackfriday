-- CTE DA TABELA QUE EU QUERO
with google_analytics as (
    select *
    from {{ source('dwblackfriday', 'google_analytics_zapflow') }}
)


-- QUERY DA CTE QUE EU CRIEI

SELECT * FROM google_analytics
