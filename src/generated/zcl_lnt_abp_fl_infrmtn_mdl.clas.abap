* TS: src/abap/4_file_information/_abap_file_information.ts.module module
CLASS zcl_lnt_abp_fl_infrmtn_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA attribute_level_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA duration_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA mthd_prmtr_drctn_nmspc TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA risk_level_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_037d679ae8c5 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_e1c2fd2be04f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abp_fl_infrmtn_mdl IMPLEMENTATION.
  METHOD zlnt_builtin_init_e1c2fd2be04f.
    IF zlnt_builtin_init_037d679ae8c5 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_037d679ae8c5 = abap_true.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    zcl_lnt_abp_fl_infrmtn_mdl=>ns = t1.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    DATA(t2) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_abp_fl_infrmtn_mdl=>attribute_level_namespace = t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t4.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t4 = zcl_lnt_abp_fl_infrmtn_mdl=>attribute_level_namespace.
    DATA(t5) = |Instance|.
    DATA(t6) = |instance|.
    t3 = t4->set( p0 = t5 p1 = t6 ).
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t8.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t8 = zcl_lnt_abp_fl_infrmtn_mdl=>attribute_level_namespace.
    DATA(t9) = |Static|.
    DATA(t10) = |static|.
    t7 = t8->set( p0 = t9 p1 = t10 ).
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t12.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t12 = zcl_lnt_abp_fl_infrmtn_mdl=>attribute_level_namespace.
    DATA(t13) = |Constant|.
    DATA(t14) = |constant|.
    t11 = t12->set( p0 = t13 p1 = t14 ).
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    DATA(t15) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_abp_fl_infrmtn_mdl=>duration_namespace = t15.
    DATA t16 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t17.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t17 = zcl_lnt_abp_fl_infrmtn_mdl=>duration_namespace.
    DATA(t18) = |short|.
    DATA(t19) = |SHORT|.
    t16 = t17->set( p0 = t18 p1 = t19 ).
    DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t21.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t21 = zcl_lnt_abp_fl_infrmtn_mdl=>duration_namespace.
    DATA(t22) = |medium|.
    DATA(t23) = |MEDIUM|.
    t20 = t21->set( p0 = t22 p1 = t23 ).
    DATA t24 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t25.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t25 = zcl_lnt_abp_fl_infrmtn_mdl=>duration_namespace.
    DATA(t26) = |long|.
    DATA(t27) = |LONG|.
    t24 = t25->set( p0 = t26 p1 = t27 ).
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    DATA(t28) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_abp_fl_infrmtn_mdl=>mthd_prmtr_drctn_nmspc = t28.
    DATA t29 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t30.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t30 = zcl_lnt_abp_fl_infrmtn_mdl=>mthd_prmtr_drctn_nmspc.
    DATA(t31) = |Importing|.
    DATA(t32) = |importing|.
    t29 = t30->set( p0 = t31 p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t34.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t34 = zcl_lnt_abp_fl_infrmtn_mdl=>mthd_prmtr_drctn_nmspc.
    DATA(t35) = |Exporting|.
    DATA(t36) = |exporting|.
    t33 = t34->set( p0 = t35 p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t38.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t38 = zcl_lnt_abp_fl_infrmtn_mdl=>mthd_prmtr_drctn_nmspc.
    DATA(t39) = |Changing|.
    DATA(t40) = |changing|.
    t37 = t38->set( p0 = t39 p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t42.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t42 = zcl_lnt_abp_fl_infrmtn_mdl=>mthd_prmtr_drctn_nmspc.
    DATA(t43) = |Returning|.
    DATA(t44) = |returning|.
    t41 = t42->set( p0 = t43 p1 = t44 ).
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    DATA(t45) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_abp_fl_infrmtn_mdl=>risk_level_namespace = t45.
    DATA t46 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t47.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t47 = zcl_lnt_abp_fl_infrmtn_mdl=>risk_level_namespace.
    DATA(t48) = |harmless|.
    DATA(t49) = |HARMLESS|.
    t46 = t47->set( p0 = t48 p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t51.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t51 = zcl_lnt_abp_fl_infrmtn_mdl=>risk_level_namespace.
    DATA(t52) = |critical|.
    DATA(t53) = |CRITICAL|.
    t50 = t51->set( p0 = t52 p1 = t53 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t55.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t55 = zcl_lnt_abp_fl_infrmtn_mdl=>risk_level_namespace.
    DATA(t56) = |dangerous|.
    DATA(t57) = |DANGEROUS|.
    t54 = t55->set( p0 = t56 p1 = t57 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1802_8d8da8d16689.
  ENDMETHOD.
ENDCLASS.
