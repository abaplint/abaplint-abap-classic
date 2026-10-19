* TS: src/rules/function_module_recommendations.ts.module module
CLASS zcl_lnt_fnctn_mdl_rcmmndtn_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS resolve_release IMPORTING i_from TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_release.
    CLASS-DATA zlnt_builtin_init_2ff71e38d1e6 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_bbc75f437615.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fnctn_mdl_rcmmndtn_mdl IMPLEMENTATION.
  METHOD resolve_release.
    DATA(t1) = i_from.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4 = zcl_lnt_version_module=>release_b8cd->get( p0 = t1 ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t4 IS INITIAL ) = abap_false ) = abap_true.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      result = zcl_lnt_version_module=>release_b8cd->get( p0 = t1 ).
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    TRY.
        result = zcl_lnt_version_module=>version_to_abap_release( i_v = t1 ).
        RETURN.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t15.
        DATA(t21) = t15->payload.
        CLEAR result.
        RETURN.
    ENDTRY.
  ENDMETHOD.

  METHOD zlnt_builtin_init_bbc75f437615.
    IF zlnt_builtin_init_2ff71e38d1e6 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_2ff71e38d1e6 = abap_true.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1933_12c4c7596615.
  ENDMETHOD.
ENDCLASS.
