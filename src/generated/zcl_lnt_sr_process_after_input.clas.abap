* TS: src/abap/3_structures/structures/process_after_input.ts:10:1 ProcessAfterInput
CLASS zcl_lnt_sr_process_after_input DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_process_after_input IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d560_1073f613c8c9.
    t5 = zcl_lnt_sr_combi_module=>sta( i_s = t6 ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA(t9) = t7.
    DATA t10 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d495_455bba123ac8.
    t10 = zcl_lnt_sr_combi_module=>sta( i_s = t11 ).
    t9->load( ).
    APPEND t10 TO t9->items.
    t9->save( ).
    DATA(t12) = t7.
    DATA t13 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d397_9e9329c3ef62.
    t13 = zcl_lnt_sr_combi_module=>sta( i_s = t14 ).
    t12->load( ).
    APPEND t13 TO t12->items.
    t12->save( ).
    DATA(t15) = t7.
    DATA t16 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d714_49cf6811a616.
    t16 = zcl_lnt_sr_combi_module=>sub( i_s = t17 ).
    t15->load( ).
    APPEND t16 TO t15->items.
    t15->save( ).
    DATA(t18) = t7.
    DATA t19 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d733_9d53cd1f40a8.
    t19 = zcl_lnt_sr_combi_module=>sub( i_s = t20 ).
    t18->load( ).
    APPEND t19 TO t18->items.
    t18->save( ).
    DATA(t21) = t7.
    DATA t22 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d743_6e9adab31a90.
    t22 = zcl_lnt_sr_combi_module=>sub( i_s = t23 ).
    t21->load( ).
    APPEND t22 TO t21->items.
    t21->save( ).
    DATA(t24) = t7.
    DATA t25 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d741_a4c2609517be.
    t25 = zcl_lnt_sr_combi_module=>sub( i_s = t26 ).
    t24->load( ).
    APPEND t25 TO t24->items.
    t24->save( ).
    DATA t27 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t28) = t4.
    DATA(t29) = t7.
    t27 = zcl_lnt_sr_combi_module=>alt( i_first = t28 i_rest = t29 ).
    t3 = t27.
    t2 = zcl_lnt_sr_combi_module=>star( i_s = t3 ).
    t1 = t2.
    DATA t30 TYPE REF TO zif_lnt_structure_runnable.
    DATA t31 TYPE REF TO zif_lnt_structure_runnable.
    DATA t32 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d577_96008512c3b0.
    t32 = zcl_lnt_sr_combi_module=>sta( i_s = t33 ).
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t35.
    t34 = t35.
    DATA(t36) = t34.
    DATA(t37) = t1.
    t36->load( ).
    APPEND t37 TO t36->items.
    t36->save( ).
    DATA t38 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t39) = t31.
    DATA(t40) = t34.
    t38 = zcl_lnt_sr_combi_module=>seq( i_first = t39 i_rest = t40 ).
    t30 = t38.
    result = t30.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d729_b022852130b8.
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
