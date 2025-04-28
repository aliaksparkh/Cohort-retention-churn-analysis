SELECT
  -- Truncate the subscription start date to the beginning of the week to define the cohort
  DATE_TRUNC(subscription_start, WEEK) AS cohort_start_week,

  -- Count of users who started the subscription in week 0
  COUNT(user_pseudo_id) AS WEEK_0,

  -- Number of users still subscribed after 1-6 week
  COUNT(user_pseudo_id) - COUNTIF(subscription_end <= DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 1 WEEK)) AS WEEK_1,
  COUNT(user_pseudo_id) - COUNTIF(subscription_end <= DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 2 WEEK)) AS WEEK_2,
  COUNT(user_pseudo_id) - COUNTIF(subscription_end <= DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 3 WEEK)) AS WEEK_3,
  COUNT(user_pseudo_id) - COUNTIF(subscription_end <= DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 4 WEEK)) AS WEEK_4,
  COUNT(user_pseudo_id) - COUNTIF(subscription_end <= DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 5 WEEK)) AS WEEK_5,
  COUNT(user_pseudo_id) - COUNTIF(subscription_end <= DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 6 WEEK)) AS WEEK_6

FROM
  `turing_data_analytics.subscriptions` 

GROUP BY
  cohort_start_week
