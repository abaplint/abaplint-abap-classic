* TS: src/abap/artifacts.ts:49:1 ArtifactsABAP
CLASS zcl_lnt_artifacts_abap DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS get_structures RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS get_expressions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS get_statements RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS get_keywords RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_artifacts_abap IMPLEMENTATION.
  METHOD get_structures.
    DATA t1 TYPE REF TO zlnt_exception_st_fa837731be5a.
    DATA(t2) = |excluded abaplint introspection: getStructures|.
    t1 = NEW #( ).
    t1->payload = t2.
    CLEAR t1->source_value.
    CREATE OBJECT t1->source_value.
    t1->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1->source_value->sval = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_expressions.
    DATA t1 TYPE REF TO zlnt_exception_st_fa837731be5a.
    DATA(t2) = |excluded abaplint introspection: getExpressions|.
    t1 = NEW #( ).
    t1->payload = t2.
    CLEAR t1->source_value.
    CREATE OBJECT t1->source_value.
    t1->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1->source_value->sval = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_statements.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t4.
    IF zcl_lnt_st_statem_index_module=>zlnt_builtin_init_e3b892b911e2 = abap_false.
      zcl_lnt_st_statem_index_module=>zlnt_builtin_init_b3124ba2f205( ).
    ENDIF.
    t4 = zcl_lnt_st_statem_index_module=>ns.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t6.
    IF zcl_lnt_st_statem_index_module=>zlnt_builtin_init_e3b892b911e2 = abap_false.
      zcl_lnt_st_statem_index_module=>zlnt_builtin_init_b3124ba2f205( ).
    ENDIF.
    t6 = zcl_lnt_st_statem_index_module=>ns.
    t5 = t6->keys( ).
    DATA(t7) = VALUE string( ).
    t5->dense( ).
    DATA(t8) = VALUE i( ).
    DO.
      t5->load( ).
      IF t8 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t5->items INDEX t8 + 1 INTO t7.
      IF t5->has( t8 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t8 = t8 + 1.
      DATA(t9) = VALUE abap_bool( ).
      DATA t10 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA t11 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA(t12) = t3.
      DATA(t13) = t7.
      t11 = t12->get( p0 = t13 ).
      t10 = t11.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE string( ).
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t10.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ENDIF.
      IF t16 = abap_true.
        DATA(t18) = |undefined|.
        t15 = t18.
      ELSE.
        DATA t19 TYPE string.
        DATA t20 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA(t21) = t10.
        t20 = t21.
        DATA(t22) = |function|.
        t19 = t22.
        t15 = t19.
      ENDIF.
      DATA(t23) = |function|.
      t14 = xsdbool( t15 = t23 ).
      t9 = t14.
      IF t9 = abap_true.
        DATA(t24) = t1.
        DATA t25 TYPE REF TO zif_lnt_statement.
        DATA t26 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t27 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA(t28) = t3.
        DATA(t29) = t7.
        t27 = t28->get( p0 = t29 ).
        t26 = t27.
        DATA t30 TYPE REF TO object.
        t30 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t26 ).
        t25 ?= t30.
        t24->load( ).
        APPEND t25 TO t24->items.
        t24->save( ).
      ENDIF.
    ENDDO.
    DATA(t31) = t1.
    result = t31.

  ENDMETHOD.

  METHOD get_keywords.
    DATA t1 TYPE REF TO zlnt_exception_st_fa837731be5a.
    DATA(t2) = |excluded abaplint introspection: getKeywords|.
    t1 = NEW #( ).
    t1->payload = t2.
    CLEAR t1->source_value.
    CREATE OBJECT t1->source_value.
    t1->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1->source_value->sval = t2.
    RAISE EXCEPTION t1.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1004_2628f135d6ca.
  ENDMETHOD.
ENDCLASS.
