select
    count(*) as total_views,
    count(distinct user) as total_users,
    sum(time_spent) as total_time_spent,
    avg(time_spent) as avg_time_spent
from {{ ref('stg_facebook_ads') }}