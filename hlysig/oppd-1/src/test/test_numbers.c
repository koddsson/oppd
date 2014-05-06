#include <stdlib.h>
#include <check.h>
#include "../numbers.h"

START_TEST (test_dividableBy)
{
    ck_assert_int_eq(dividableBy(10, 2), 1);    
    ck_assert_int_eq(dividableBy(10, 3), 0);    
}
END_TEST


Suite * numbers_suite (void)
{
  Suite *s = suite_create ("Numbers");
  TCase *tc_core = tcase_create ("Core");
  tcase_add_test (tc_core, test_dividableBy);
  suite_add_tcase (s, tc_core);
  return s;
}
