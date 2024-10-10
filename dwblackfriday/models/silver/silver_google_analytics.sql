WITH google_analytics_2 AS (
    SELECT *
    FROM {{ ref('bronze_google_analytics') }}
)

SELECT
    CAST("date" AS DATE) AS "date",
    CAST("city" AS VARCHAR) AS "city",
    CAST("country" AS VARCHAR) AS "country",
    CAST("deviceCategory" AS VARCHAR) AS "device_category",
    CAST("sessionSource" AS VARCHAR) AS "session_source",
    CAST("sessionMedium" AS VARCHAR) AS "session_medium",
    CAST("totalUsers" AS INTEGER) AS "total_users",
    CAST("newUsers" AS INTEGER) AS "new_users",
    CAST("activeUsers" AS INTEGER) AS "active_users",
    CAST("sessions" AS INTEGER) AS "sessions",
    CAST("engagedSessions" AS INTEGER) AS "engaged_sessions",
    CAST("averageSessionDuration" AS FLOAT) AS "average_session_duration",
    CAST("screenPageViews" AS INTEGER) AS "screen_page_views"
    
FROM google_analytics_2
