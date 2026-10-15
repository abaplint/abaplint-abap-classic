* TS: src/artifacts_rules.ts:4:1 ArtifactsRules
CLASS zcl_lnt_artifacts_rules DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS get_rules RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      DATA t10 TYPE REF TO object.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
      CLEAR t13.
      IF zcl_lnt_rl_index_module=>zlnt_builtin_init_fcdfa3d496b4 = abap_false.
        zcl_lnt_rl_index_module=>zlnt_builtin_init_fe02a4d442de( ).
      ENDIF.
      t13 = zcl_lnt_rl_index_module=>ns.
      DATA(t14) = t7.
      t12 = t13->get( p0 = t14 ).
      t11 = t12.
      DATA t15 TYPE REF TO object.
      CLEAR t15.
      t15 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t11 ).
      t10 ?= t15.
      t9 = t10.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      t17 = t9.
      DATA t18 TYPE REF TO zif_lnt_rule.
      CLEAR t18.
      t16 = abap_false.
      IF t17 IS BOUND.
        TRY.
            t18 ?= t17.
            t16 = abap_true.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t16 = abap_true.
        DATA(t19) = t1.
        DATA t20 TYPE REF TO zif_lnt_rule.
        CLEAR t20.
        DATA t21 TYPE REF TO object.
        CLEAR t21.
        t21 = t9.
        t20 ?= t21.
        t19->load( ).
        APPEND t20 TO t19->items.
        t19->save( ).
      ENDIF.
    ENDDO.
    DATA(t22) = t1.
    result = t22.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1068_c1f83dd7e96f.
  ENDMETHOD.
ENDCLASS.
