* TS: src/rules/check_ddic.ts:16:1 CheckDDIC
CLASS zcl_lnt_check_ddic DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_check_ddic_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS in_in_sr_rl_chc_ddc_ts_chc_ddc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_check_ddic.
    METHODS gt_cn_in_sr_rl_ch_dd_ts_ch_ddc RETURNING VALUE(result) TYPE REF TO zcl_lnt_check_ddic_conf.
    METHODS st_cn_in_sr_rl_ch_dd_ts_ch_ddc IMPORTING i_conf TYPE REF TO zcl_lnt_check_ddic_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_bf6e IMPORTING i_found TYPE REF TO zcl_lnt_abstract_type i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_check_ddic IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_check_ddic_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |check_ddic|.
    DATA t4 TYPE string.
    t4 = |Check DDIC|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks the types of DDIC objects can be resolved, the namesp|.
    t7 = t7 && |ace of the development/errors can be configured in "errorNam|.
    t7 = t7 && |espace" |.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |Syntax|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
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
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_chc_ddc_ts_chc_ddc.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ch_dd_ts_ch_ddc.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ch_dd_ts_ch_ddc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE abap_bool.
    t11 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_element ).
    t10 = t11.
    IF t11 = abap_false.
      DATA t13 TYPE abap_bool.
      t13 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_domain ).
      t10 = t13.
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      DATA t15 TYPE abap_bool.
      t15 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_table ).
      t9 = t15.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t17 TYPE abap_bool.
      t17 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_view ).
      t8 = t17.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t19 TYPE abap_bool.
      t19 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_athrztn_chck_fld ).
      t7 = t19.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t21 TYPE abap_bool.
      t21 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_lock_object ).
      t6 = t21.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t23 TYPE abap_bool.
      t23 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_mntnn_and_trnspr_objct ).
      t5 = t23.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t25 TYPE abap_bool.
      t25 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_table_type ).
      t4 = t25.
    ENDIF.
    IF t4 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      DATA t30 TYPE REF TO zif_lnt_union_42a36aec.
      t30 ?= t1.
      DATA(t32) = me->reg.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = t30->parse_type( i_reg_f149 = t32 i_data_element = t33 i_description = t34 ).
      t2 = t29.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t36.
      result = t36.
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zcl_lnt_abstract_type.
    t38 = t2.
    DATA t43 TYPE REF TO zif_lnt_object.
    DATA t44 TYPE REF TO zif_lnt_union_42a36aec.
    t44 ?= t1.
    t43 ?= t44.
    t37 = me->check_bf6e( i_found = t38 i_obj_1ed0 = t43 ).
    result = t37.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_found.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = VALUE abap_bool( ).
    t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
    IF t5 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_position.
      DATA(t9) = CONV f( 1 ).
      DATA(t10) = CONV f( 1 ).
      DATA(t11) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t11->has = abap_true.
      t11->value = t10.
      t8 = NEW zcl_lnt_position( i_row = t9 i_col = t11 ).
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE string( ).
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA(t16) = |Unknown/un-resolveable type in |.
      DATA(t17) = VALUE string( ).
      t17 = t2->get_name( ).
      DATA(t19) = strlen( t16 ).
      t15 = |{ t16 }{ t17 }|.
      DATA(t20) = |: |.
      DATA(t21) = strlen( t15 ).
      t14 = |{ t15 }{ t20 }|.
      DATA(t22) = VALUE string( ).
      DATA t24 TYPE REF TO zcl_lnt_unknown_type.
      t24 ?= t1.
      DATA(t26) = VALUE string( ).
      t26 = t24->error.
      t22 = t26.
      DATA(t28) = strlen( t14 ).
      t13 = |{ t14 }{ t22 }|.
      t12 = t13.
      DATA t30 TYPE REF TO zcl_lnt_issue.
      DATA t31 TYPE REF TO zif_lnt_file.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t32 = t2->get_files( ).
      DATA t34 TYPE REF TO object.
      t32->load( ).
      READ TABLE t32->items INDEX 1 INTO t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t34.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t31 ?= t36.
      ELSE.
        t31 ?= t34.
      ENDIF.
      DATA(t39) = VALUE string( ).
      DATA t40 TYPE REF TO zcl_lnt_irule_metadata.
      DATA(t41) = VALUE string( ).
      t41 = |check_ddic|.
      DATA(t43) = VALUE string( ).
      t43 = |Check DDIC|.
      DATA(t45) = VALUE string( ).
      DATA(t46) = |Checks the types of DDIC objects can be resolved, the namesp|.
      t46 = t46 && |ace of the development/errors can be configured in "errorNam|.
      t46 = t46 && |espace" |.
      t45 = t46.
      DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t52.
      t51 = t52.
      DATA(t54) = |Syntax|.
      t51->load( ).
      APPEND t54 TO t51->items.
      t51->save( ).
      t47 = t51.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t40 = NEW zcl_lnt_irule_metadata( i_key = t41 i_title = t43 i_short_description = t45 i_bad_example = t57 i_good_example = t59 i_extended_information = t61 i_tags = t47 i_pragma = t63 i_pseudo_comment = t65 ).
      CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
      t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t67 ).
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t68 ).
      ENDIF.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t69 ).
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t70 ).
      ENDIF.
      CREATE OBJECT t40->zlnt_json_ownkeys_70e5fd461788.
      t40->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t71) = |key|.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
      DATA(t73) = |title|.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
      ENDIF.
      DATA(t75) = |shortDescription|.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
      ENDIF.
      DATA(t77) = |tags|.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
      ENDIF.
      t39 = t40->key.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t79 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t81 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t30 = zcl_lnt_issue=>at_position( i_file = t31 i_start = t8 i_message_26cb = t12 i_key = t39 i_severity = t79 i_fix = t81 ).
      t3->load( ).
      APPEND t30 TO t3->items.
      t3->save( ).
    ELSE.
      DATA(t82) = VALUE abap_bool( ).
      t82 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t82 = abap_true.
        DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t86 TYPE REF TO zcl_lnt_structure_type.
        t86 ?= t1.
        DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t88 = t86->components.
        t84 = t88.
        DATA t90 TYPE REF TO zcl_lnt_istructure_component.
        DATA t91 TYPE REF TO object.
        DATA(t92) = VALUE i( ).
        DO.
          t84->load( ).
          IF t92 >= lines( t84->items ).
            EXIT.
          ENDIF.
          CLEAR t91.
          READ TABLE t84->items INDEX t92 + 1 INTO t91.
          t92 = t92 + 1.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          CLEAR t90.
          IF t91 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t93 ?= t91.
            CLEAR t90.
            IF t93 IS BOUND.
              IF t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                TRY.
                    t90 ?= t93->oval.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
              ENDIF.
              IF t90 IS NOT BOUND.
                IF t93->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t93->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t93->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t93->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                  DATA t94 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t94.
                  IF t93->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                  ENDIF.
                  TRY.
                      t94 ?= t93->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                  ENDTRY.
                  IF t94->structural( ) <> abap_true.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                  ENDIF.
                ENDIF.
                DATA(t95) = VALUE string( ).
                DATA t96 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t96.
                DATA t97 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t97.
                DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t98.
                t90 = NEW zcl_lnt_istructure_component( view_source = t93 i_name = t95 i_type_9913 = t96 i_as_include = t97 i_suffix = t98 ).
              ENDIF.
            ENDIF.
          ELSE.
            t90 ?= t91.
          ENDIF.
          DATA(t99) = VALUE i( ).
          DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t100.
          DATA t101 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t101.
          DATA t104 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t104.
          t104 = t90->zlnt_view_read_sr_455340cd1e80( ).
          DATA t106 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t106.
          t106 = t90->zlnt_view_read_sr_455340cd1e80( ).
          t101 = t106.
          t100 = me->check_bf6e( i_found = t101 i_obj_1ed0 = t2 ).
          DATA t110 TYPE REF TO zcl_lnt_issue.
          CLEAR t110.
          DATA t111 TYPE REF TO object.
          CLEAR t111.
          DATA(t112) = VALUE i( ).
          DO.
            t100->load( ).
            IF t112 >= lines( t100->items ).
              EXIT.
            ENDIF.
            CLEAR t111.
            READ TABLE t100->items INDEX t112 + 1 INTO t111.
            t112 = t112 + 1.
            DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t113.
            CLEAR t110.
            IF t111 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t113 ?= t111.
              DATA t114 TYPE REF TO object.
              CLEAR t114.
              t114 = t113->as_ref( ).
              t110 ?= t114.
            ELSE.
              t110 ?= t111.
            ENDIF.
            t3->load( ).
            APPEND t110 TO t3->items.
            t3->save( ).
          ENDDO.
          DATA(t117) = VALUE i( ).
          t3->load( ).
          t117 = lines( t3->items ).
          t99 = t117.
        ENDDO.
      ELSE.
        DATA(t119) = VALUE abap_bool( ).
        t119 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t119 = abap_true.
          DATA(t121) = VALUE i( ).
          DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t123 TYPE REF TO zcl_lnt_abstract_type.
          DATA t127 TYPE REF TO zcl_lnt_ty_table_type.
          t127 ?= t1.
          DATA t129 TYPE REF TO zcl_lnt_abstract_type.
          t129 = t127->row_type.
          t123 = t129.
          t122 = me->check_bf6e( i_found = t123 i_obj_1ed0 = t2 ).
          DATA t133 TYPE REF TO zcl_lnt_issue.
          DATA t134 TYPE REF TO object.
          DATA(t135) = VALUE i( ).
          DO.
            t122->load( ).
            IF t135 >= lines( t122->items ).
              EXIT.
            ENDIF.
            CLEAR t134.
            READ TABLE t122->items INDEX t135 + 1 INTO t134.
            t135 = t135 + 1.
            DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t136.
            CLEAR t133.
            IF t134 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t136 ?= t134.
              DATA t137 TYPE REF TO object.
              CLEAR t137.
              t137 = t136->as_ref( ).
              t133 ?= t137.
            ELSE.
              t133 ?= t134.
            ENDIF.
            t3->load( ).
            APPEND t133 TO t3->items.
            t3->save( ).
          ENDDO.
          DATA(t140) = VALUE i( ).
          t3->load( ).
          t140 = lines( t3->items ).
          t121 = t140.
        ENDIF.
      ENDIF.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_check_ddic.
    DATA(t3) = i_reg_f149.
    t2 = me->in_in_sr_rl_chc_ddc_ts_chc_ddc( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_check_ddic_conf( me->gt_cn_in_sr_rl_ch_dd_ts_ch_ddc( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_check_ddic_conf( me->gt_cn_in_sr_rl_ch_dd_ts_ch_ddc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_check_ddic_conf.
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
        t2 = NEW zcl_lnt_check_ddic_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ch_dd_ts_ch_ddc( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1438_8954b07693d5.
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
