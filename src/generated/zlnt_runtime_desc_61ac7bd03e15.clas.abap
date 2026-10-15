CLASS zlnt_runtime_desc_61ac7bd03e15 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA zlnt_member_d0_5ecc9e9989d6ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d1_2d6b79a5b052ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d2_33f63f78ed485d TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-METHODS class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_desc_61ac7bd03e15 IMPLEMENTATION.
  METHOD class_constructor.
    DATA t_empty TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t_empty.
    DATA init_parent0 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d0_5ecc9e9989d6ba EXPORTING name = `114785` emitted = `zcl_lnt_closure_0944c662` parent = init_parent0 static_names = t_empty.
    DATA init_parent1 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d1_2d6b79a5b052ba EXPORTING name = `0` emitted = `zcl_lnt_closure_3534f325` parent = init_parent1 static_names = t_empty.
    DATA init_parent2 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d2_33f63f78ed485d EXPORTING name = `1` emitted = `zcl_lnt_closure_ba6c457f` parent = init_parent2 static_names = t_empty.
  ENDMETHOD.
ENDCLASS.
