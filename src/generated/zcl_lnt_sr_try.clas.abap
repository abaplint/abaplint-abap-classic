* TS: src/abap/3_structures/structures/try.ts:9:1 Try
CLASS zcl_lnt_sr_try DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_try IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d687_99e32c3ed690 ).
    t5 = zcl_lnt_sr_combi_module=>sub( i_s = t6 ).
    t4 = zcl_lnt_sr_combi_module=>opt( i_o = t5 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    DATA t10 TYPE REF TO zif_lnt_structure_runnable.
    DATA t11 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d695_885fecd3d62d ).
    t11 = zcl_lnt_sr_combi_module=>sub( i_s = t12 ).
    t10 = zcl_lnt_sr_combi_module=>star( i_s = t11 ).
    APPEND t10 TO t9->items.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    DATA t14 TYPE REF TO zif_lnt_structure_runnable.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d705_d5c8a90641bd ).
    t15 = zcl_lnt_sr_combi_module=>sub( i_s = t16 ).
    t14 = zcl_lnt_sr_combi_module=>opt( i_o = t15 ).
    APPEND t14 TO t13->items.
    DATA t17 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t18) = CAST zif_lnt_structure_runnable( t3 ).
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    t17 = zcl_lnt_sr_combi_module=>seq( i_first = t18 i_rest = t19 ).
    t2 = t17.
    t1 = t2.
    DATA t20 TYPE REF TO zif_lnt_structure_runnable.
    DATA t21 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d644_abb5598808bc ).
    t21 = zcl_lnt_sr_combi_module=>sta( i_s = t22 ).
    DATA(t23) = CAST zif_lnt_structure_runnable( t1 ).
    DATA t24 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d465_2f41a2b68d74 ).
    t24 = zcl_lnt_sr_combi_module=>sta( i_s = t25 ).
    t20 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t21 i_body = t23 i_end = t24 ).
    result = t20.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d722_b01ebc20127f.
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
