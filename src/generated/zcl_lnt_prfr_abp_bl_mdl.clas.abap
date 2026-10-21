* TS: src/rules/prefer_abap_bool.ts.module module
CLASS zcl_lnt_prfr_abp_bl_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA forbidden_types TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLASS-DATA zlnt_builtin_init_c96b25bbd049 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_3838d3e910b3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfr_abp_bl_mdl IMPLEMENTATION.
  METHOD zlnt_builtin_init_3838d3e910b3.
    IF zlnt_builtin_init_c96b25bbd049 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_c96b25bbd049 = abap_true.
    DATA t1 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t1 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t3 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t3 = t1->add( p0 = |XFELD| ).
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t6 = t1->add( p0 = |SAP_BOOL| ).
    DATA t9 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t9 = t1->add( p0 = |BOOLE_D| ).
    DATA t12 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t12 = t1->add( p0 = |FLAG| ).
    IF zcl_lnt_prfr_abp_bl_mdl=>zlnt_builtin_init_c96b25bbd049 = abap_false.
      zcl_lnt_prfr_abp_bl_mdl=>zlnt_builtin_init_3838d3e910b3( ).
    ENDIF.
    zcl_lnt_prfr_abp_bl_mdl=>forbidden_types = t1.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1957_53ca7d1eeb7d.
  ENDMETHOD.
ENDCLASS.
