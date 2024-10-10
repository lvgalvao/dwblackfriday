-- CTE DA TABELA QUE EU QUERO
with typeform as (
    select *
    from {{ source('dwblackfriday', 'typeform_response') }}
)


-- QUERY DA CTE QUE EU CRIEI

SELECT * FROM typeform
