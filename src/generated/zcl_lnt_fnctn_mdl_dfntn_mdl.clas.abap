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
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_fnctn_mdl_dfntn_mdl=>fnctn_mdl_prmtr_drctn_nmspc = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t3 = zcl_lnt_fnctn_mdl_dfntn_mdl=>fnctn_mdl_prmtr_drctn_nmspc.
    DATA(t4) = |importing|.
    DATA(t5) = |importing|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t7 = zcl_lnt_fnctn_mdl_dfntn_mdl=>fnctn_mdl_prmtr_drctn_nmspc.
    DATA(t8) = |exporting|.
    DATA(t9) = |exporting|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t11 = zcl_lnt_fnctn_mdl_dfntn_mdl=>fnctn_mdl_prmtr_drctn_nmspc.
    DATA(t12) = |changing|.
    DATA(t13) = |changing|.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t15.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t15 = zcl_lnt_fnctn_mdl_dfntn_mdl=>fnctn_mdl_prmtr_drctn_nmspc.
    DATA(t16) = |tables|.
    DATA(t17) = |tables|.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    DATA(t18) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_fnctn_mdl_dfntn_mdl=>function_module_type_namespace = t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t20.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t20 = zcl_lnt_fnctn_mdl_dfntn_mdl=>function_module_type_namespace.
    DATA(t21) = |regular|.
    DATA(t22) = |regular|.
    t19 = t20->set( p0 = t21 p1 = t22 ).
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t24.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t24 = zcl_lnt_fnctn_mdl_dfntn_mdl=>function_module_type_namespace.
    DATA(t25) = |remote|.
    DATA(t26) = |remoteEnabled|.
    t23 = t24->set( p0 = t25 p1 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t28.
    IF zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_d34828376408 = abap_false.
      zcl_lnt_fnctn_mdl_dfntn_mdl=>zlnt_builtin_init_f2cef3ac1911( ).
    ENDIF.
    t28 = zcl_lnt_fnctn_mdl_dfntn_mdl=>function_module_type_namespace.
    DATA(t29) = |update|.
    DATA(t30) = |update|.
    t27 = t28->set( p0 = t29 p1 = t30 ).
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
