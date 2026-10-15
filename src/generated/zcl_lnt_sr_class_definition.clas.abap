* TS: src/abap/3_structures/structures/class_definition.ts:9:1 ClassDefinition
CLASS zcl_lnt_sr_class_definition DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sr_class_definition IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d620_cd4713e20a55.
    t5 = zcl_lnt_sr_combi_module=>sta( i_s = t6 ).
    t4 = zcl_lnt_sr_combi_module=>opt( i_o = t5 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA(t9) = t7.
    DATA t10 TYPE REF TO zif_lnt_structure_runnable.
    DATA t11 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d672_80ccb3caa5ab.
    t11 = zcl_lnt_sr_combi_module=>sta( i_s = t12 ).
    t10 = zcl_lnt_sr_combi_module=>star( i_s = t11 ).
    t9->load( ).
    APPEND t10 TO t9->items.
    t9->save( ).
    DATA(t13) = t7.
    DATA t14 TYPE REF TO zif_lnt_structure_runnable.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d716_74fc3af0c6d3.
    t15 = zcl_lnt_sr_combi_module=>sub( i_s = t16 ).
    t14 = zcl_lnt_sr_combi_module=>opt( i_o = t15 ).
    t13->load( ).
    APPEND t14 TO t13->items.
    t13->save( ).
    DATA(t17) = t7.
    DATA t18 TYPE REF TO zif_lnt_structure_runnable.
    DATA t19 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
    t19 = zcl_lnt_sr_combi_module=>sub( i_s = t20 ).
    t18 = zcl_lnt_sr_combi_module=>opt( i_o = t19 ).
    t17->load( ).
    APPEND t18 TO t17->items.
    t17->save( ).
    DATA(t21) = t7.
    DATA t22 TYPE REF TO zif_lnt_structure_runnable.
    DATA t23 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
    t23 = zcl_lnt_sr_combi_module=>sub( i_s = t24 ).
    t22 = zcl_lnt_sr_combi_module=>opt( i_o = t23 ).
    t21->load( ).
    APPEND t22 TO t21->items.
    t21->save( ).
    DATA(t25) = t7.
    DATA t26 TYPE REF TO zif_lnt_structure_runnable.
    DATA t27 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d620_cd4713e20a55.
    t27 = zcl_lnt_sr_combi_module=>sta( i_s = t28 ).
    t26 = zcl_lnt_sr_combi_module=>opt( i_o = t27 ).
    t25->load( ).
    APPEND t26 TO t25->items.
    t25->save( ).
    DATA t29 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t30) = t3.
    DATA(t31) = t7.
    t29 = zcl_lnt_sr_combi_module=>seq( i_first = t30 i_rest = t31 ).
    t2 = t29.
    t1 = t2.
    DATA t32 TYPE REF TO zif_lnt_structure_runnable.
    DATA t33 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d411_59ccb35321de.
    t33 = zcl_lnt_sr_combi_module=>sta( i_s = t34 ).
    DATA(t35) = t1.
    DATA t36 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d468_9c9153155b4d.
    t36 = zcl_lnt_sr_combi_module=>sta( i_s = t37 ).
    t32 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t33 i_body = t35 i_end = t36 ).
    result = t32.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
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
