* TS: src/abap/nodes/index.ts.module module
CLASS zcl_lnt_nd_index_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA zlnt_builtin_init_e112e0586acf TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_82aca7d2eec4.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_nd_index_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_82aca7d2eec4.
    IF zlnt_builtin_init_e112e0586acf = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_e112e0586acf = abap_true.
    IF zcl_lnt_nd_index_module=>zlnt_builtin_init_e112e0586acf = abap_false.
      zcl_lnt_nd_index_module=>zlnt_builtin_init_82aca7d2eec4( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    zcl_lnt_nd_index_module=>ns = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t3.
    IF zcl_lnt_nd_index_module=>zlnt_builtin_init_e112e0586acf = abap_false.
      zcl_lnt_nd_index_module=>zlnt_builtin_init_82aca7d2eec4( ).
    ENDIF.
    t3 = zcl_lnt_nd_index_module=>ns.
    DATA(t4) = |ExpressionNode|.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1007_3086b49acaf2.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t7.
    IF zcl_lnt_nd_index_module=>zlnt_builtin_init_e112e0586acf = abap_false.
      zcl_lnt_nd_index_module=>zlnt_builtin_init_82aca7d2eec4( ).
    ENDIF.
    t7 = zcl_lnt_nd_index_module=>ns.
    DATA(t8) = |StatementNode|.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1008_5e4f79d1ad51.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t11.
    IF zcl_lnt_nd_index_module=>zlnt_builtin_init_e112e0586acf = abap_false.
      zcl_lnt_nd_index_module=>zlnt_builtin_init_82aca7d2eec4( ).
    ENDIF.
    t11 = zcl_lnt_nd_index_module=>ns.
    DATA(t12) = |StructureNode|.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1009_5c49db3a1727.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t15.
    IF zcl_lnt_nd_index_module=>zlnt_builtin_init_e112e0586acf = abap_false.
      zcl_lnt_nd_index_module=>zlnt_builtin_init_82aca7d2eec4( ).
    ENDIF.
    t15 = zcl_lnt_nd_index_module=>ns.
    DATA(t16) = |TokenNode|.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1010_e2855e6725fd.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t19.
    IF zcl_lnt_nd_index_module=>zlnt_builtin_init_e112e0586acf = abap_false.
      zcl_lnt_nd_index_module=>zlnt_builtin_init_82aca7d2eec4( ).
    ENDIF.
    t19 = zcl_lnt_nd_index_module=>ns.
    DATA(t20) = |TokenNodeRegex|.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1011_68eeca660bc3.
    t18 = t19->set( p0 = t20 p1 = t21 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1803_4832848f7fad.
  ENDMETHOD.
ENDCLASS.
