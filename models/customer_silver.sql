select
    c_custkey,
    c_name,
    c_nationkey,
    c_acctbal
from {{ source('tpch', 'customer_bronze') }}
where c_custkey is not null
and c_nationkey != 21