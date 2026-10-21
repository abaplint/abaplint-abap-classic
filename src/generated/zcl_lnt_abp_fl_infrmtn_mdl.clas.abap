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
    zcl_lnt_abp_fl_infrmtn_mdl=>ns = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    zcl_lnt_abp_fl_infrmtn_mdl=>attribute_level_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t3 = zcl_lnt_abp_fl_infrmtn_mdl=>attribute_level_namespace->set( p0 = |Instance| p1 = |instance| ).
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t7 = zcl_lnt_abp_fl_infrmtn_mdl=>attribute_level_namespace->set( p0 = |Static| p1 = |static| ).
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t11 = zcl_lnt_abp_fl_infrmtn_mdl=>attribute_level_namespace->set( p0 = |Constant| p1 = |constant| ).
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    zcl_lnt_abp_fl_infrmtn_mdl=>duration_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t16 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t16 = zcl_lnt_abp_fl_infrmtn_mdl=>duration_namespace->set( p0 = |short| p1 = |SHORT| ).
    DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t20 = zcl_lnt_abp_fl_infrmtn_mdl=>duration_namespace->set( p0 = |medium| p1 = |MEDIUM| ).
    DATA t24 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t24 = zcl_lnt_abp_fl_infrmtn_mdl=>duration_namespace->set( p0 = |long| p1 = |LONG| ).
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    zcl_lnt_abp_fl_infrmtn_mdl=>mthd_prmtr_drctn_nmspc = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t29 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t29 = zcl_lnt_abp_fl_infrmtn_mdl=>mthd_prmtr_drctn_nmspc->set( p0 = |Importing| p1 = |importing| ).
    DATA t33 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t33 = zcl_lnt_abp_fl_infrmtn_mdl=>mthd_prmtr_drctn_nmspc->set( p0 = |Exporting| p1 = |exporting| ).
    DATA t37 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t37 = zcl_lnt_abp_fl_infrmtn_mdl=>mthd_prmtr_drctn_nmspc->set( p0 = |Changing| p1 = |changing| ).
    DATA t41 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t41 = zcl_lnt_abp_fl_infrmtn_mdl=>mthd_prmtr_drctn_nmspc->set( p0 = |Returning| p1 = |returning| ).
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    zcl_lnt_abp_fl_infrmtn_mdl=>risk_level_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t46 = zcl_lnt_abp_fl_infrmtn_mdl=>risk_level_namespace->set( p0 = |harmless| p1 = |HARMLESS| ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t50 = zcl_lnt_abp_fl_infrmtn_mdl=>risk_level_namespace->set( p0 = |critical| p1 = |CRITICAL| ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_037d679ae8c5 = abap_false.
      zcl_lnt_abp_fl_infrmtn_mdl=>zlnt_builtin_init_e1c2fd2be04f( ).
    ENDIF.
    t54 = zcl_lnt_abp_fl_infrmtn_mdl=>risk_level_namespace->set( p0 = |dangerous| p1 = |DANGEROUS| ).
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
