select
    {{ truncate_string(upper_case('C_ADDRESS')) }} as first_name_uppercase_truncated,
    {{ rounded('C_ACCTBAL', 0) }} as c_acctbal_rounded
from {{ source('raw_source', 'customer') }}
