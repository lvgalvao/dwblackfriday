WITH CTE_Stakeholder AS (
    -- Visitas ao site
    SELECT 'visitas_site' AS Etapa, COUNT(*) AS Views
    FROM {{ ref('silver_google_analytics') }}
    
    UNION ALL
    
    -- Etapas do funil
    SELECT "Etapa", CAST("Views" AS INTEGER) AS Views
    FROM {{ ref('etapas_views_variacoes') }}
    
    UNION ALL
    
    -- Formulários finalizados (assumindo que existe uma tabela silver_typeform_response)
    SELECT 'forms_finalizado' AS Etapa, COUNT(*) AS Views
    FROM {{ ref('silver_typeform') }}
    
    UNION ALL
    
    -- Vendas
    SELECT 'vendas' AS Etapa, COUNT(*) AS Views
    FROM {{ ref('vendas') }}
)

SELECT 
    Etapa,
    Views,
    ROW_NUMBER() OVER (ORDER BY Views DESC) AS Ranking
FROM CTE_Stakeholder
ORDER BY Views DESC