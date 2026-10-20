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
    me->conf = NEW zcl_lnt_cyclmtc_cmplxty_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |cyclomatic_complexity| i_title = |Cyclomatic Complexity| i_short_description = |Cyclomatic complexity, only reported for methods| i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t12 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t33 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t35 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t37 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_cy_cm_ts_cy_cmp.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_cy_cm_ts_cy_cmp.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t4 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t4 = me->conf->zlnt_view_read_sr_8292704b4f8f( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t9) = VALUE abap_bool( ).
    IF t4 IS INITIAL.
      t9 = abap_true.
    ELSEIF t4->has = abap_false.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      me->conf->zlnt_view_write_s_82a67f33691e( p0 = NEW zcl_lnt_cyclmtc_cmplxty_cnf( )->zlnt_view_read_sr_8292704b4f8f( ) ).
    ENDIF.
  ENDMETHOD.

  METHOD in_in_sr_rl_cyc_cmp_ts_cyc_cmp.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD run.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = zcl_lnt_cyclmtc_cmplxty_stts=>run( i_obj_1ed0 = t1 ).
    DATA t8 TYPE REF TO zcl_lnt_icyclmtc_cmplxty_rslt.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t4->load( ).
      IF t10 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t4->items INDEX t10 + 1 INTO t9.
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
      DATA t15 TYPE f.
      t15 = t8->count.
      DATA t17 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t17 = me->conf->zlnt_view_read_sr_8292704b4f8f( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      IF t17 IS INITIAL.
        t22 = abap_true.
      ELSEIF t17->has = abap_false.
        t22 = abap_true.
      ENDIF.
      t21 = xsdbool( t22 = abap_false ).
      t20 = t21.
      IF t21 = abap_true.
        IF t17->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t20 = xsdbool( t15 > t17->value ).
      ENDIF.
      IF t20 = abap_true.
        DATA(t28) = VALUE string( ).
        DATA(t30) = VALUE string( ).
        DATA(t31) = VALUE string( ).
        DATA(t32) = |Max cyclomatic complexity reached, |.
        DATA(t33) = VALUE string( ).
        DATA t34 TYPE f.
        t34 = t8->count.
        IF t34 <> trunc( t34 ) OR t34 > range_safe_integer OR t34 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t36) = CONV int8( t34 ).
        t33 = |{ t36 }|.
        DATA(t37) = strlen( t32 ).
        t31 = |{ t32 }{ t33 }|.
        DATA(t39) = strlen( t31 ).
        t30 = |{ t31 }{ |, | }|.
        DATA t40 TYPE string.
        t40 = t8->name.
        DATA(t42) = strlen( t30 ).
        t28 = |{ t30 }{ t40 }|.
        DATA t44 TYPE REF TO zcl_lnt_issue.
        CLEAR t44.
        DATA t45 TYPE REF TO zif_lnt_file.
        t45 = t8->file.
        DATA t47 TYPE REF TO zcl_lnt_position.
        t47 = t8->pos.
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t58.
        DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t62.
        t62->load( ).
        APPEND |SingleFile| TO t62->items.
        t62->save( ).
        t58 = t62.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        t51 = NEW zcl_lnt_irule_metadata( i_key = |cyclomatic_complexity| i_title = |Cyclomatic Complexity| i_short_description = |Cyclomatic complexity, only reported for methods| i_bad_example = t68 i_good_example = t70 i_extended_information = t72 i_tags = t58 i_pragma = t74 i_pseudo_comment = t76 ).
        CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
        t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t78 ).
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
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t83 ).
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t85 ).
        ENDIF.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t87 ).
        ENDIF.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t89 ).
        ENDIF.
        t50 = t51->key.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t90 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t92 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t92.
        t44 = zcl_lnt_issue=>at_position( i_file = t45 i_start = t47 i_message_26cb = t28 i_key = t50 i_severity = t90 i_fix = t92 ).
        t2->load( ).
        APPEND t44 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_cyclmtc_cmplxty_cnf( me->gt_cn_in_sr_rl_cy_cm_ts_cy_cmp( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cyclmtc_cmplxty_cnf( me->gt_cn_in_sr_rl_cy_cm_ts_cy_cmp( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cyclmtc_cmplxty_cnf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_cyclmtc_cmplxty_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_cy_cm_ts_cy_cmp( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_cyc_cmp_ts_cyc_cmp( i_reg_d009 = t3 ).

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
