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
    zcl_lnt_severity_module=>severity_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_severity_module=>zlnt_builtin_init_20227f255c22 = abap_false.
      zcl_lnt_severity_module=>zlnt_builtin_init_4dbbf2fa0f24( ).
    ENDIF.
    t2 = zcl_lnt_severity_module=>severity_namespace->set( p0 = |Error| p1 = |Error| ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_severity_module=>zlnt_builtin_init_20227f255c22 = abap_false.
      zcl_lnt_severity_module=>zlnt_builtin_init_4dbbf2fa0f24( ).
    ENDIF.
    t6 = zcl_lnt_severity_module=>severity_namespace->set( p0 = |Warning| p1 = |Warning| ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_severity_module=>zlnt_builtin_init_20227f255c22 = abap_false.
      zcl_lnt_severity_module=>zlnt_builtin_init_4dbbf2fa0f24( ).
    ENDIF.
    t10 = zcl_lnt_severity_module=>severity_namespace->set( p0 = |Info| p1 = |Info| ).
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
