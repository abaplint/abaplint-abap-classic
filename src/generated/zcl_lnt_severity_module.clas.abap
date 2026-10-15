* TS: src/severity.ts.module module
CLASS zcl_lnt_severity_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA severity_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_20227f255c22 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_4dbbf2fa0f24.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_severity_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_4dbbf2fa0f24.
    IF zlnt_builtin_init_20227f255c22 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_20227f255c22 = abap_true.
    IF zcl_lnt_severity_module=>zlnt_builtin_init_20227f255c22 = abap_false.
      zcl_lnt_severity_module=>zlnt_builtin_init_4dbbf2fa0f24( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_severity_module=>severity_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_severity_module=>zlnt_builtin_init_20227f255c22 = abap_false.
      zcl_lnt_severity_module=>zlnt_builtin_init_4dbbf2fa0f24( ).
    ENDIF.
    t3 = zcl_lnt_severity_module=>severity_namespace.
    DATA(t4) = |Error|.
    DATA(t5) = |Error|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    IF zcl_lnt_severity_module=>zlnt_builtin_init_20227f255c22 = abap_false.
      zcl_lnt_severity_module=>zlnt_builtin_init_4dbbf2fa0f24( ).
    ENDIF.
    t7 = zcl_lnt_severity_module=>severity_namespace.
    DATA(t8) = |Warning|.
    DATA(t9) = |Warning|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
    IF zcl_lnt_severity_module=>zlnt_builtin_init_20227f255c22 = abap_false.
      zcl_lnt_severity_module=>zlnt_builtin_init_4dbbf2fa0f24( ).
    ENDIF.
    t11 = zcl_lnt_severity_module=>severity_namespace.
    DATA(t12) = |Info|.
    DATA(t13) = |Info|.
    t10 = t11->set( p0 = t12 p1 = t13 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1981_a5524f4fb6d7.
  ENDMETHOD.
ENDCLASS.
