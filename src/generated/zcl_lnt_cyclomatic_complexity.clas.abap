* TS: src/rules/cyclomatic_complexity.ts:12:1 CyclomaticComplexity
CLASS zcl_lnt_cyclomatic_complexity DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cyclmtc_cmplxty_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_cy_cm_ts_cy_cmp RETURNING VALUE(result) TYPE REF TO zcl_lnt_cyclmtc_cmplxty_cnf.
    METHODS st_cn_in_sr_rl_cy_cm_ts_cy_cmp IMPORTING i_conf TYPE REF TO zcl_lnt_cyclmtc_cmplxty_cnf.
    METHODS in_in_sr_rl_cyc_cmp_ts_cyc_cmp IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_cyclomatic_complexity.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cyclomatic_complexity IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cyclmtc_cmplxty_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |cyclomatic_complexity|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Cyclomatic Complexity|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Cyclomatic complexity, only reported for methods|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |SingleFile|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      t11 = t16.
      t9 = t11.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t17.
      t9 = t17.
    ENDIF.
    t8 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_cy_cm_ts_cy_cmp.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_cy_cm_ts_cy_cmp.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t5 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_8292704b4f8f( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t4.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ELSEIF t10->has = abap_false.
      t9 = abap_true.
    ENDIF.
    t3 = t9.
    IF t3 = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t13) = NEW zcl_lnt_cyclmtc_cmplxty_cnf( ).
      t12 = t13->zlnt_view_read_sr_8292704b4f8f( ).
      t11->zlnt_view_write_s_82a67f33691e( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD in_in_sr_rl_cyc_cmp_ts_cyc_cmp.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD run.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = zcl_lnt_cyclmtc_cmplxty_stts=>run( i_obj_1ed0 = t6 ).
    t4 = t5.
    DATA(t7) = t4.
    DATA t8 TYPE REF TO zcl_lnt_icyclmtc_cmplxty_rslt.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t7->load( ).
      IF t10 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t7->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE f.
      DATA t15 TYPE f.
      DATA(t16) = t8.
      t15 = t16->count.
      t14 = t15.
      DATA t17 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t18 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t19) = me->conf.
      t18 = t19->zlnt_view_read_sr_8292704b4f8f( ).
      t17 = t18.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = t17.
      IF t23 IS INITIAL.
        t22 = abap_true.
      ELSEIF t23->has = abap_false.
        t22 = abap_true.
      ENDIF.
      t21 = xsdbool( t22 = abap_false ).
      t20 = t21.
      IF t21 = abap_true.
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = t14.
        DATA(t26) = VALUE f( ).
        DATA(t27) = t17.
        IF t27->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t26 = t27->value.
        t24 = xsdbool( t25 > t26 ).
        t20 = t24.
      ENDIF.
      t13 = t20.
      IF t13 = abap_true.
        DATA(t28) = VALUE string( ).
        DATA(t29) = VALUE string( ).
        DATA(t30) = VALUE string( ).
        DATA(t31) = VALUE string( ).
        DATA(t32) = |Max cyclomatic complexity reached, |.
        DATA(t33) = VALUE string( ).
        DATA t34 TYPE f.
        DATA(t35) = t8.
        t34 = t35->count.
        IF t34 <> trunc( t34 ) OR t34 > range_safe_integer OR t34 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t36) = CONV int8( t34 ).
        t33 = |{ t36 }|.
        DATA(t37) = strlen( t32 ).
        t31 = |{ t32 }{ t33 }|.
        DATA(t38) = |, |.
        DATA(t39) = strlen( t31 ).
        t30 = |{ t31 }{ t38 }|.
        DATA t40 TYPE string.
        DATA(t41) = t8.
        t40 = t41->name.
        DATA(t42) = strlen( t30 ).
        t29 = |{ t30 }{ t40 }|.
        t28 = t29.
        DATA t43 TYPE REF TO zcl_lnt_issue.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_issue.
        CLEAR t44.
        DATA t45 TYPE REF TO zif_lnt_file.
        DATA(t46) = t8.
        t45 = t46->file.
        DATA t47 TYPE REF TO zcl_lnt_position.
        DATA(t48) = t8.
        t47 = t48->pos.
        DATA(t49) = t28.
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t51.
        DATA t52 TYPE string.
        DATA(t53) = |cyclomatic_complexity|.
        t52 = t53.
        DATA t54 TYPE string.
        DATA(t55) = |Cyclomatic Complexity|.
        t54 = t55.
        DATA t56 TYPE string.
        DATA(t57) = |Cyclomatic complexity, only reported for methods|.
        t56 = t57.
        DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t58.
        DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t63.
          t62 = t63.
          DATA(t64) = t62.
          DATA(t65) = |SingleFile|.
          t64->load( ).
          APPEND t65 TO t64->items.
          t64->save( ).
          DATA(t66) = t62.
          t61 = t66.
          t59 = t61.
        ELSE.
          DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t67.
          t59 = t67.
        ENDIF.
        t58 = t59.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        t68 = t69.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        t70 = t71.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        t72 = t73.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        t74 = t75.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        t76 = t77.
        t51 = NEW zcl_lnt_irule_metadata( i_key = t52 i_title = t54 i_short_description = t56 i_bad_example = t68 i_good_example = t70 i_extended_information = t72 i_tags = t58 i_pragma = t74 i_pseudo_comment = t76 ).
        CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
        t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t78 ).
        ENDIF.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t79 ).
        ENDIF.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t80 ).
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t81 ).
        ENDIF.
        CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
        t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t82) = |key|.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
        ENDIF.
        DATA(t84) = |title|.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
        ENDIF.
        DATA(t86) = |shortDescription|.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
        ENDIF.
        DATA(t88) = |tags|.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
        ENDIF.
        t50 = t51->key.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t91) = me->conf.
        t90 = t91->zlnt_view_read_sr_15c06369f827( ).
        DATA t92 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t92.
        t44 = zcl_lnt_issue=>at_position( i_file = t45 i_start = t47 i_message_26cb = t49 i_key = t50 i_severity = t90 i_fix = t92 ).
        t43 = t44.
        DATA(t93) = t2.
        DATA(t94) = t43.
        t93->load( ).
        APPEND t94 TO t93->items.
        t93->save( ).
      ENDIF.
    ENDDO.
    DATA(t95) = t2.
    result = t95.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cyclmtc_cmplxty_cnf( me->gt_cn_in_sr_rl_cy_cm_ts_cy_cmp( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cyclmtc_cmplxty_cnf( me->gt_cn_in_sr_rl_cy_cm_ts_cy_cmp( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cyclmtc_cmplxty_cnf.
    CLEAR t2.
    DATA(t3) = t1.
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t4.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_cyclmtc_cmplxty_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_cy_cm_ts_cy_cmp( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_cyclomatic_complexity.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_cyc_cmp_ts_cyc_cmp( i_reg_d009 = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1471_4779fd9146e1.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
