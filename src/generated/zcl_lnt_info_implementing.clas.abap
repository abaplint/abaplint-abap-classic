* TS: src/abap/4_file_information/_abap_file_information.ts:80:1 InfoImplementing
CLASS zcl_lnt_info_implementing DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA partial TYPE abap_bool.
    DATA all_abstract TYPE abap_bool.
    DATA abstract_methods TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA final_methods TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_name TYPE string i_partial TYPE abap_bool i_all_abstract TYPE abap_bool i_abstract_methods TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_final_methods TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_info_implementing IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_partial.
    DATA(t3) = i_all_abstract.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_abstract_methods ).
    DATA(t5) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_final_methods ).
    DATA(t6) = t1.
    me->name = t6.
    DATA(t7) = t2.
    me->partial = t7.
    DATA(t8) = t3.
    me->all_abstract = t8.
    DATA(t9) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
    me->abstract_methods = t9.
    DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( t5 ).
    me->final_methods = t10.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d739_c2cc9ae0214e.
  ENDMETHOD.
ENDCLASS.
