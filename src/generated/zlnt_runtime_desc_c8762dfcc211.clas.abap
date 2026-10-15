CLASS zlnt_runtime_desc_c8762dfcc211 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA zlnt_member_d0_5ecc9e9989d6ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d1_2d6b79a5b052ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d2_33f63f78ed485d TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d3_93b114c6beac5f TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d4_13543b5ca4726d TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d5_fe178efb571dcf TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d6_5c37d88667ed48 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d7_82881b26b0f5bb TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-METHODS class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_desc_c8762dfcc211 IMPLEMENTATION.
  METHOD class_constructor.
    DATA t_empty TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t_empty.
    DATA init_parent0 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d0_5ecc9e9989d6ba EXPORTING name = `a9c7c54c4f9d561d` emitted = `zcl_lnt_generator_17955b8b` parent = init_parent0 static_names = t_empty.
    DATA init_parent1 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d1_2d6b79a5b052ba EXPORTING name = `ef3a4c3dcce5b59b` emitted = `zcl_lnt_generator_09f740e3` parent = init_parent1 static_names = t_empty.
    DATA init_parent2 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d2_33f63f78ed485d EXPORTING name = `6918c9d4d991754e` emitted = `zcl_lnt_generator_0f216880` parent = init_parent2 static_names = t_empty.
    DATA init_parent3 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d3_93b114c6beac5f EXPORTING name = `129751` emitted = `zcl_lnt_generator_98c19d71` parent = init_parent3 static_names = t_empty.
    DATA init_parent4 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d4_13543b5ca4726d EXPORTING name = `177058` emitted = `zcl_lnt_generator_a921479b` parent = init_parent4 static_names = t_empty.
    DATA init_parent5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d5_fe178efb571dcf EXPORTING name = `177091` emitted = `zcl_lnt_generator_b69d4f9f` parent = init_parent5 static_names = t_empty.
    DATA init_parent6 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d6_5c37d88667ed48 EXPORTING name = `177111` emitted = `zcl_lnt_generator_a3e30675` parent = init_parent6 static_names = t_empty.
    DATA init_parent7 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d7_82881b26b0f5bb EXPORTING name = `a9c7c54c4f9d561d` emitted = `zcl_lnt_generator_7e7dc2c1` parent = init_parent7 static_names = t_empty.
  ENDMETHOD.
ENDCLASS.
