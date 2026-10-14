* TS: src/artifacts_rules.ts:4:1 ArtifactsRules
CLASS zcl_lnt_artifacts_rules DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS get_rules RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_artifacts_rules IMPLEMENTATION.
  METHOD get_rules.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t4.
    IF zcl_lnt_rl_index_module=>zlnt_builtin_init_fcdfa3d496b4 = abap_false.
      zcl_lnt_rl_index_module=>zlnt_builtin_init_fe02a4d442de( ).
    ENDIF.
    t4 = zcl_lnt_rl_index_module=>ns.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t6.
    IF zcl_lnt_rl_index_module=>zlnt_builtin_init_fcdfa3d496b4 = abap_false.
      zcl_lnt_rl_index_module=>zlnt_builtin_init_fe02a4d442de( ).
    ENDIF.
    t6 = zcl_lnt_rl_index_module=>ns.
    t5 = t6->keys( ).
    DATA(t7) = VALUE string( ).
    LOOP AT t5->items INTO t7.
      DATA t8 TYPE REF TO object.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
      CLEAR t12.
      IF zcl_lnt_rl_index_module=>zlnt_builtin_init_fcdfa3d496b4 = abap_false.
        zcl_lnt_rl_index_module=>zlnt_builtin_init_fe02a4d442de( ).
      ENDIF.
      t12 = zcl_lnt_rl_index_module=>ns.
      DATA(t13) = t7.
      t11 = t12->get( p0 = t13 ).
      t10 = t11.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      t14 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t10 ).
      t9 ?= t14.
      t8 = t9.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      t16 = t8.
      DATA t17 TYPE REF TO zif_lnt_rule.
      CLEAR t17.
      t15 = abap_false.
      IF t16 IS BOUND.
        TRY.
            t17 ?= t16.
            t15 = abap_true.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t15 = abap_true.
        DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA t19 TYPE REF TO zif_lnt_rule.
        CLEAR t19.
        DATA t20 TYPE REF TO object.
        CLEAR t20.
        t20 = t8.
        t19 ?= t20.
        APPEND t19 TO t18->items.
      ENDIF.
    ENDLOOP.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    result = t21.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1046_e157d6ca3a89.
  ENDMETHOD.
ENDCLASS.
