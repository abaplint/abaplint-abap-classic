* TS: src/abap/3_structures/structures/class_implementation.ts:7:1 ClassImplementation
CLASS zcl_lnt_sr_clss_implmnttn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_clss_implmnttn IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d703_a50af928c17c ).
    t5 = zcl_lnt_sr_combi_module=>sub( i_s = t6 ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    DATA t10 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d512_11174d785e8e ).
    t10 = zcl_lnt_sr_combi_module=>sta( i_s = t11 ).
    APPEND t10 TO t9->items.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    DATA t13 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424 ).
    t13 = zcl_lnt_sr_combi_module=>sub( i_s = t14 ).
    APPEND t13 TO t12->items.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = CAST zif_lnt_structure_runnable( t4 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    t15 = zcl_lnt_sr_combi_module=>alt( i_first = t16 i_rest = t17 ).
    t3 = t15.
    t2 = zcl_lnt_sr_combi_module=>star( i_s = t3 ).
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_structure_runnable.
    DATA t19 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d396_f66c9403a435 ).
    t19 = zcl_lnt_sr_combi_module=>sta( i_s = t20 ).
    DATA(t21) = CAST zif_lnt_structure_runnable( t1 ).
    DATA t22 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t23) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d451_3d24988c9cf2 ).
    t22 = zcl_lnt_sr_combi_module=>sta( i_s = t23 ).
    t18 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t19 i_body = t21 i_end = t22 ).
    result = t18.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d685_91b502e796fa.
  ENDMETHOD.

  METHOD zif_lnt_structure~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_structure~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
