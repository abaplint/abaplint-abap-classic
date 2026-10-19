* TS: src/rules/sql_value_conversion.ts:14:1 SQLValueConversion
CLASS zcl_lnt_sql_value_conversion DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_sql_vl_cnvrsn_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_sq_vl_cn_ts_sq_vl_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_sql_vl_cnvrsn_cnf.
    METHODS s_c_i_s_r_sq_vl_cn_ts_sq_vl_cn IMPORTING i_conf TYPE REF TO zcl_lnt_sql_vl_cnvrsn_cnf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_value_conversion IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_sql_vl_cnvrsn_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |sql_value_conversion|.
    DATA t4 TYPE string.
    t4 = |Implicit SQL Value Conversion|.
    DATA t6 TYPE string.
    t6 = |Ensure types match when selecting from database|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\n* Integer to CHAR conversion\n* Integer to NUMC conversion\n*|.
    t11 = t11 && | NUMC to Integer conversion\n* CHAR to Integer conversion\n* S|.
    t11 = t11 && |ource field longer than database field, CHAR -> CHAR\n* Sourc|.
    t11 = t11 && |e field longer than database field, NUMC -> NUMC|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t17.
    t14 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t19 i_good_example = t21 i_extended_information = t8 i_tags = t14 i_pragma = t23 i_pseudo_comment = t25 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t27 ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |extendedInformation|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |tags|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_sq_vl_cn_ts_sq_vl_cn.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_sq_vl_cn_ts_sq_vl_cn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD initialize.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ).
    t3 = xsdbool( t4 = abap_false ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t6 TYPE abap_bool.
      t6 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ).
      t2 = t6.
    ENDIF.
    IF t2 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t8.
      result = t8.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t12 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t13 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t14 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t15) = me->reg.
    DATA t16 TYPE REF TO zcl_lnt_abap_object.
    DATA t18 TYPE REF TO object.
    t18 = t1.
    t16 ?= t18.
    t14 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t15 i_object_19cd = t16 ).
    t13 = t14->run( ).
    t12 = t13->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t11 = t12->get_top( ).
    t10 = me->traverse( i_node = t11 ).
    result = t10.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_iscope_data.
    t5 = t1->get_data( ).
    t4 = t5->sql_conversion.
    DATA t7 TYPE REF TO zcl_lnt_shape_9a575e77.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE REF TO zif_lnt_file.
      DATA t13 TYPE REF TO zif_lnt_file.
      DATA(t14) = me->reg.
      DATA t15 TYPE string.
      DATA t16 TYPE REF TO zcl_lnt_iscope_identifier.
      t16 = t1->get_identifier( ).
      t15 = t16->filename.
      t13 = t14->get_file_by_name( i_filename = t15 ).
      t12 = t13.
      DATA(t18) = VALUE abap_bool( ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      t18 = xsdbool( t12 IS INITIAL ).
      IF t18 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t26 TYPE REF TO zcl_lnt_issue.
      CLEAR t26.
      DATA t27 TYPE REF TO zif_lnt_file.
      t27 = t12.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      t29 = t7->token.
      DATA t31 TYPE string.
      t31 = t7->message_25cb.
      DATA(t33) = VALUE string( ).
      DATA t34 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t34.
      DATA t35 TYPE string.
      t35 = |sql_value_conversion|.
      DATA t37 TYPE string.
      t37 = |Implicit SQL Value Conversion|.
      DATA t39 TYPE string.
      t39 = |Ensure types match when selecting from database|.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA(t44) = |\n* Integer to CHAR conversion\n* Integer to NUMC conversion\n*|.
      t44 = t44 && | NUMC to Integer conversion\n* CHAR to Integer conversion\n* S|.
      t44 = t44 && |ource field longer than database field, CHAR -> CHAR\n* Sourc|.
      t44 = t44 && |e field longer than database field, NUMC -> NUMC|.
      DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t45->has = abap_true.
      t45->value = t44.
      t41 = t45.
      DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t47.
      DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t50.
      t47 = t50.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      t34 = NEW zcl_lnt_irule_metadata( i_key = t35 i_title = t37 i_short_description = t39 i_bad_example = t52 i_good_example = t54 i_extended_information = t41 i_tags = t47 i_pragma = t56 i_pseudo_comment = t58 ).
      CREATE OBJECT t34->zlnt_view_ownkeys_b0e8086400eb.
      t34->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t60 ).
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t61 ).
      ENDIF.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t62 ).
      ENDIF.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t63 ).
      ENDIF.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t64 ).
      ENDIF.
      CREATE OBJECT t34->zlnt_json_ownkeys_70e5fd461788.
      t34->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t65) = |key|.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
      DATA(t67) = |title|.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
      ENDIF.
      DATA(t69) = |shortDescription|.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
      ENDIF.
      DATA(t71) = |extendedInformation|.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
      ENDIF.
      DATA(t73) = |tags|.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
      ENDIF.
      t33 = t34->key.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t76) = CAST zcl_lnt_sql_vl_cnvrsn_cnf( me->g_c_i_s_r_sq_vl_cn_ts_sq_vl_cn( ) ).
      t75 = t76->zlnt_view_read_sr_15c06369f827( ).
      DATA t77 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t77.
      t26 = zcl_lnt_issue=>at_token( i_file = t27 i_token = t29 i_message_26cb = t31 i_key = t33 i_severity = t75 i_fix = t77 ).
      t2->load( ).
      APPEND t26 TO t2->items.
      t2->save( ).
    ENDDO.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t78 = t1->get_children( ).
    DATA t80 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t81 TYPE REF TO object.
    DATA(t82) = VALUE i( ).
    DO.
      t78->load( ).
      IF t82 >= lines( t78->items ).
        EXIT.
      ENDIF.
      CLEAR t81.
      READ TABLE t78->items INDEX t82 + 1 INTO t81.
      t82 = t82 + 1.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      CLEAR t80.
      IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t83 ?= t81.
        DATA t84 TYPE REF TO object.
        t84 = t83->as_ref( ).
        t80 ?= t84.
      ELSE.
        t80 ?= t81.
      ENDIF.
      DATA(t85) = VALUE i( ).
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t86 = me->traverse( i_node = t80 ).
      DATA t88 TYPE REF TO zcl_lnt_issue.
      CLEAR t88.
      DATA t89 TYPE REF TO object.
      CLEAR t89.
      DATA(t90) = VALUE i( ).
      DO.
        t86->load( ).
        IF t90 >= lines( t86->items ).
          EXIT.
        ENDIF.
        CLEAR t89.
        READ TABLE t86->items INDEX t90 + 1 INTO t89.
        t90 = t90 + 1.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        CLEAR t88.
        IF t89 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t91 ?= t89.
          DATA t92 TYPE REF TO object.
          t92 = t91->as_ref( ).
          t88 ?= t92.
        ELSE.
          t88 ?= t89.
        ENDIF.
        t2->load( ).
        APPEND t88 TO t2->items.
        t2->save( ).
      ENDDO.
      DATA t95 TYPE i.
      t2->load( ).
      t95 = lines( t2->items ).
      t85 = t95.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_sql_vl_cnvrsn_cnf( me->g_c_i_s_r_sq_vl_cn_ts_sq_vl_cn( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_sql_vl_cnvrsn_cnf( me->g_c_i_s_r_sq_vl_cn_ts_sq_vl_cn( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_sql_vl_cnvrsn_cnf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
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
        t2 = NEW zcl_lnt_sql_vl_cnvrsn_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_sq_vl_cn_ts_sq_vl_cn( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1712_e00d364f7f6f.
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
