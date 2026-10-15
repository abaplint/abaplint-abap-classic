CLASS zlnt_runtime_desc_36b1ea121596 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA zlnt_member_d0_5ecc9e9989d6ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-DATA zlnt_member_d1_2d6b79a5b052ba TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLASS-METHODS class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_desc_36b1ea121596 IMPLEMENTATION.
  METHOD class_constructor.
    DATA t_empty TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t_empty.
    DATA init_parent0 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d0_5ecc9e9989d6ba EXPORTING name = `f11cebc7a93e448b896c4350d1f1c12f6f4ccfd090ef27c2d93e0bba45139c1c` emitted = `zcl_lnt_union_0fb2de53` parent = init_parent0 static_names = t_empty.
    DATA init_parent1 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CREATE OBJECT zlnt_member_d1_2d6b79a5b052ba EXPORTING name = `071b4fc5874aceced1d79dcfe8b76c703fac8a64e967f1d6558fac26b92bac0d` emitted = `zcl_lnt_union_6c8220bd` parent = init_parent1 static_names = t_empty.
  ENDMETHOD.
ENDCLASS.
