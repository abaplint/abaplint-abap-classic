CLASS zlnt_runtime_desc_b425d82119de DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA zlnt_member_d0_5ecc9e9989d6ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d1_2d6b79a5b052ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d2_33f63f78ed485d TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d3_93b114c6beac5f TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d4_13543b5ca4726d TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d5_fe178efb571dcf TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-METHODS class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_desc_b425d82119de IMPLEMENTATION.
  METHOD class_constructor.
    DATA t_empty TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t_empty.
    DATA init_parent0 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d0_5ecc9e9989d6ba EXPORTING name = `FailCombinatorError` emitted = `zcx_lnt_fail_combinator_error` parent = init_parent0 static_names = t_empty.
    DATA init_parent1 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d1_2d6b79a5b052ba EXPORTING name = `FailStarError` emitted = `zcx_lnt_fail_star_error` parent = init_parent1 static_names = t_empty.
    DATA init_parent2 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d2_33f63f78ed485d EXPORTING name = `AssertError` emitted = `zcx_lnt_assert_error` parent = init_parent2 static_names = t_empty.
    DATA init_parent3 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d3_93b114c6beac5f EXPORTING name = `SkipToNextFile` emitted = `zcx_lnt_skip_to_next_file` parent = init_parent3 static_names = t_empty.
    DATA init_parent4 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d4_13543b5ca4726d EXPORTING name = `Error` emitted = `zcl_lnt_builtin_e8b3bd7e` parent = init_parent4 static_names = t_empty.
    DATA init_parent5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d5_fe178efb571dcf EXPORTING name = `SyntaxError` emitted = `zcx_lnt_builtin_4c6a1223` parent = init_parent5 static_names = t_empty.
    zlnt_member_d0_5ecc9e9989d6ba->parent = zlnt_runtime_desc_b425d82119de=>zlnt_member_d4_13543b5ca4726d.
    zlnt_member_d1_2d6b79a5b052ba->parent = zlnt_runtime_desc_b425d82119de=>zlnt_member_d4_13543b5ca4726d.
    zlnt_member_d2_33f63f78ed485d->parent = zlnt_runtime_desc_b425d82119de=>zlnt_member_d4_13543b5ca4726d.
    zlnt_member_d3_93b114c6beac5f->parent = zlnt_runtime_desc_b425d82119de=>zlnt_member_d4_13543b5ca4726d.
    zlnt_member_d5_fe178efb571dcf->parent = zlnt_runtime_desc_b425d82119de=>zlnt_member_d4_13543b5ca4726d.
  ENDMETHOD.
ENDCLASS.
