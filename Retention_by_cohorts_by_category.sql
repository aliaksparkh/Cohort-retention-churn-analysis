WITH week_0 AS (
  SELECT DISTINCT
    user_pseudo_id AS user,
    category,
    country,
    subscription_start AS start_date,
    DATETIME_TRUNC(subscription_start, WEEK) AS start_week,
    subscription_end AS end_date,
    DATETIME_TRUNC(subscription_end, WEEK) AS end_week
  FROM `turing_data_analytics.subscriptions`
),

max_dates AS (
  SELECT
    MAX(start_week) AS max_start_week
  FROM week_0
)

SELECT
  w.start_week AS cohort,
  w.category,
  
  COUNT(w.user) AS week_0, -- users starting in cohort
  COUNT(IF(DATE_DIFF(w.end_week, w.start_week, WEEK) > 0 OR w.end_week IS NULL, w.user, NULL)) AS week_1,
  COUNT(IF((DATE_DIFF(w.end_week, w.start_week, WEEK) > 1 OR w.end_week IS NULL) 
           AND w.start_week < m.max_start_week, w.user, NULL)) AS week_2,
  COUNT(IF((DATE_DIFF(w.end_week, w.start_week, WEEK) > 2 OR w.end_week IS NULL) 
           AND w.start_week < DATETIME_SUB(m.max_start_week, INTERVAL 1 WEEK), w.user, NULL)) AS week_3,
  COUNT(IF((DATE_DIFF(w.end_week, w.start_week, WEEK) > 3 OR w.end_week IS NULL) 
           AND w.start_week < DATETIME_SUB(m.max_start_week, INTERVAL 2 WEEK), w.user, NULL)) AS week_4,
  COUNT(IF((DATE_DIFF(w.end_week, w.start_week, WEEK) > 4 OR w.end_week IS NULL) 
           AND w.start_week < DATETIME_SUB(m.max_start_week, INTERVAL 3 WEEK), w.user, NULL)) AS week_5,
  COUNT(IF((DATE_DIFF(w.end_week, w.start_week, WEEK) > 5 OR w.end_week IS NULL) 
           AND w.start_week < DATETIME_SUB(m.max_start_week, INTERVAL 4 WEEK), w.user, NULL)) AS week_6

FROM week_0 w
CROSS JOIN max_dates m
GROUP BY cohort, category
ORDER BY cohort, category;
