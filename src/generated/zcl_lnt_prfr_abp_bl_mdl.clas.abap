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
    DATA(t2) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t4) = t1.
    DATA(t5) = |XFELD|.
    t3 = t4->add( p0 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t7) = t1.
    DATA(t8) = |SAP_BOOL|.
    t6 = t7->add( p0 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t10) = t1.
    DATA(t11) = |BOOLE_D|.
    t9 = t10->add( p0 = t11 ).
    DATA t12 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t13) = t1.
    DATA(t14) = |FLAG|.
    t12 = t13->add( p0 = t14 ).
    IF zcl_lnt_prfr_abp_bl_mdl=>zlnt_builtin_init_c96b25bbd049 = abap_false.
      zcl_lnt_prfr_abp_bl_mdl=>zlnt_builtin_init_3838d3e910b3( ).
    ENDIF.
    DATA(t15) = t1.
    zcl_lnt_prfr_abp_bl_mdl=>forbidden_types = t15.
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
