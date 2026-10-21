* TS: src/abap/types/function_module_definition.ts.module module
CLASS zcl_lnt_fnctn_mdl_dfntn_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA fnctn_mdl_prmtr_drctn_nmspc TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA function_module_type_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_d34828376408 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_f2cef3ac1911.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fnctn_mdl_dfntn_mdl IMPLEMENTATION.
  METHOD zlnt_builtin_init_f2cef3ac1911.
    IF zlnt_builtin_init_d34828376408 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_d34828376408 = abap_true.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    zcl_lnt_fnctn_mdl_dfntn_mdl=>fnctn_mdl_prmtr_drctn_nmspc = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t2 = zcl_lnt_fnctn_mdl_dfntn_mdl=>fnctn_mdl_prmtr_drctn_nmspc->set( p0 = |importing| p1 = |importing| ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t6 = zcl_lnt_fnctn_mdl_dfntn_mdl=>fnctn_mdl_prmtr_drctn_nmspc->set( p0 = |exporting| p1 = |exporting| ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t10 = zcl_lnt_fnctn_mdl_dfntn_mdl=>fnctn_mdl_prmtr_drctn_nmspc->set( p0 = |changing| p1 = |changing| ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t14 = zcl_lnt_fnctn_mdl_dfntn_mdl=>fnctn_mdl_prmtr_drctn_nmspc->set( p0 = |tables| p1 = |tables| ).
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    zcl_lnt_fnctn_mdl_dfntn_mdl=>function_module_type_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t19 = zcl_lnt_fnctn_mdl_dfntn_mdl=>function_module_type_namespace->set( p0 = |regular| p1 = |regular| ).
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t23 = zcl_lnt_fnctn_mdl_dfntn_mdl=>function_module_type_namespace->set( p0 = |remote| p1 = |remoteEnabled| ).
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t27 = zcl_lnt_fnctn_mdl_dfntn_mdl=>function_module_type_namespace->set( p0 = |update| p1 = |update| ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1967_56aeb9a30927.
  ENDMETHOD.
ENDCLASS.
