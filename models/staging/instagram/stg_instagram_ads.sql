with source as (
    select 1 as id, 1 as paid, 'user1@email.com' as user, 5.05 as time_spent
    union all
    select 2 as id, 1 as paid, 'user2@email.com' as user, 100.88 as time_spent
    union all
    select 3 as id, 0 as paid, 'user3@email.com' as user, 48.1 as time_spent
)

select *
from source