
{{ dbt_unittest.assert_false(1 != 1) }}
{{ dbt_unittest.assert_is_none(none) }}
{{ dbt_unittest.assert_is_not_none(100) }}
{{ dbt_unittest.assert_equals(1, 1) }}
{{ dbt_unittest.assert_not_equals("foo", "bar") }}
{{ dbt_unittest.assert_in(1, [1, 2, 3]) }}
{{ dbt_unittest.assert_not_in(4, [1, 2, 3]) }}
{{ dbt_unittest.assert_list_equals([1, 2, 3], [1,2,3]) }}
{{ dbt_unittest.assert_dict_equals({"k": 1}, {"k": 1}) }}

