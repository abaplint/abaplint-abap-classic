* TS: src/abap/artifacts.ts:49:1 ArtifactsABAP
CLASS zcl_lnt_artifacts_abap DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS get_structures RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS get_expressions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS get_statements RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS get_keywords RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_artifacts_abap IMPLEMENTATION.
  METHOD get_structures.
    DATA t1 TYPE REF TO zlnt_exception_st_fa837731be5a.
    DATA(t2) = |excluded abaplint introspection: getStructures|.
    t1 = NEW #( ).
    t1->payload = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_expressions.
    DATA t1 TYPE REF TO zlnt_exception_st_fa837731be5a.
    DATA(t2) = |excluded abaplint introspection: getExpressions|.
    t1 = NEW #( ).
    t1->payload = t2.
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
    LOOP AT t5->items INTO t7.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA t10 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA(t11) = t3.
      DATA(t12) = t7.
      t10 = t11->get( p0 = t12 ).
      IF t10 IS INITIAL.
        t9 = abap_true.
      ENDIF.
      t8 = xsdbool( t9 = abap_false ).
      IF t8 = abap_true.
        DATA(t13) = t1.
        DATA t14 TYPE REF TO zif_lnt_statement.
        DATA t15 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t16 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA(t17) = t3.
        DATA(t18) = t7.
        t16 = t17->get( p0 = t18 ).
        t15 = t16.
        DATA t19 TYPE REF TO object.
        t19 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t15 ).
        t14 ?= t19.
        APPEND t14 TO t13->items.
      ENDIF.
    ENDLOOP.
    DATA(t20) = t1.
    result = t20.

  ENDMETHOD.

  METHOD get_keywords.
    DATA t1 TYPE REF TO zlnt_exception_st_fa837731be5a.
    DATA(t2) = |excluded abaplint introspection: getKeywords|.
    t1 = NEW #( ).
    t1->payload = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d982_9745d7d8d429.
  ENDMETHOD.
ENDCLASS.
