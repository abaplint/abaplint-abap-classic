CLASS zlnt_runtime_desc_a63becc74831 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA zlnt_member_d0_5ecc9e9989d6ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d1_2d6b79a5b052ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-METHODS class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_desc_a63becc74831 IMPLEMENTATION.
  METHOD class_constructor.
    DATA t_empty TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t_empty.
    DATA init_parent0 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d0_5ecc9e9989d6ba EXPORTING name = `MarkedStringWithLanguage` emitted = `zcl_lnt_mrkd_strng_wth_lngg` parent = init_parent0 static_names = t_empty.
    DATA t_s1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t_s1.
    APPEND `ns` TO t_s1->items.
    DATA init_parent1 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d1_2d6b79a5b052ba EXPORTING name = `module` emitted = `zcl_lnt_main_d_module` parent = init_parent1 static_names = t_s1.
  ENDMETHOD.
ENDCLASS.
