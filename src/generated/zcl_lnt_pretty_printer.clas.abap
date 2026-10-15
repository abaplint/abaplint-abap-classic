* TS: src/pretty_printer/pretty_printer.ts:10:1 PrettyPrinter
CLASS zcl_lnt_pretty_printer DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA result_9728 TYPE string.
    DATA file TYPE REF TO zcl_lnt_abap_file.
    DATA options TYPE REF TO zcl_lnt_iindentation_options.
    DATA config TYPE REF TO zif_lnt_configuration.
    METHODS constructor IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_config TYPE REF TO zif_lnt_configuration.
    METHODS run RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_pretty_printer IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_file.
    DATA(t2) = i_config.
    DATA(t3) = VALUE string( ).
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t4.
    DATA(t5) = t1.
    t4 = t5.
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE REF TO zif_lnt_file.
    CLEAR t7.
    DATA(t8) = t4.
    t7 = t8->file.
    t6 = t7->get_raw( ).
    t3 = t6.
    me->result_9728 = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `result`.
    DATA(t9) = t1.
    me->file = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `file`.
    DATA(t10) = t2.
    me->config = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `config`.
    DATA t11 TYPE REF TO zcl_lnt_indentation_conf.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_indentation_conf.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = t2.
    DATA(t15) = VALUE string( ).
    DATA t16 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_indentation.
    CLEAR t17.
    DATA(t18) = NEW zcl_lnt_indentation( ).
    t17 = t18.
    DATA t19 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t19.
    DATA(t20) = VALUE string( ).
    DATA(t21) = |indentation|.
    t20 = t21.
    DATA(t22) = VALUE string( ).
    DATA(t23) = |Indentation|.
    t22 = t23.
    DATA(t24) = VALUE string( ).
    DATA(t25) = |Checks indentation|.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t31.
      CREATE OBJECT t31.
      t30 = t31.
      DATA(t32) = t30.
      DATA(t33) = |Whitespace|.
      t32->load( ).
      APPEND t33 TO t32->items.
      t32->save( ).
      DATA(t34) = t30.
      DATA(t35) = |Quickfix|.
      t34->load( ).
      APPEND t35 TO t34->items.
      t34->save( ).
      DATA(t36) = t30.
      DATA(t37) = |SingleFile|.
      t36->load( ).
      APPEND t37 TO t36->items.
      t36->save( ).
      DATA(t38) = t30.
      t29 = t38.
      t27 = t29.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t39.
      t27 = t39.
    ENDIF.
    t26 = t27.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA(t42) = abap_true.
    IF t42 = abap_true.
      DATA(t43) = |CLASS lcl DEFINITION.\nPRIVATE SECTION.\nMETHODS constructor.\n|.
      t43 = t43 && |ENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\nMETHOD constructor.\nEND|.
      t43 = t43 && |METHOD.\nENDCLASS.|.
      DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t44->has = abap_true.
      t44->value = t43.
      t41 = t44.
    ELSE.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      t41 = t45.
    ENDIF.
    t40 = t41.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    DATA(t48) = abap_true.
    IF t48 = abap_true.
      DATA(t49) = |CLASS lcl DEFINITION.\n  PRIVATE SECTION.\n    METHODS constru|.
      t49 = t49 && |ctor.\nENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\n  METHOD construc|.
      t49 = t49 && |tor.\n  ENDMETHOD.\nENDCLASS.|.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t49.
      t47 = t50.
    ELSE.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      t47 = t51.
    ENDIF.
    t46 = t47.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t53.
    t52 = t53.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t55.
    t54 = t55.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t57.
    t56 = t57.
    t19 = NEW zcl_lnt_irule_metadata( i_key = t20 i_title = t22 i_short_description = t24 i_bad_example = t40 i_good_example = t46 i_extended_information = t52 i_tags = t26 i_pragma = t54 i_pseudo_comment = t56 ).
    CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
    t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t58 ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t59 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t60 ).
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t61 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t62 ).
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t63 ).
    ENDIF.
    CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
    t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t64) = |key|.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t64 p1 = t65 ).
    ENDIF.
    DATA(t66) = |title|.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
    ENDIF.
    DATA(t68) = |shortDescription|.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t68 p1 = t69 ).
    ENDIF.
    DATA(t70) = |tags|.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
    ENDIF.
    DATA(t72) = |badExample|.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
    ENDIF.
    DATA(t74) = |goodExample|.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
    ENDIF.
    t16 = t19.
    t15 = t16->key.
    t13 = t14->read_by_rule( i_rule = t15 ).
    CLEAR t12.
    IF t13 IS BOUND.
      IF t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t12 ?= t13->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t12 IS NOT BOUND.
        IF t13->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t13->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t13->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t13->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t76.
          IF t13->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t76 ?= t13->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t76->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t12 = NEW zcl_lnt_indentation_conf( view_source = t13 ).
      ENDIF.
    ENDIF.
    t11 = t12.
    DATA t77 TYPE REF TO zcl_lnt_iindentation_options.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t79.
    DATA t80 TYPE REF TO zcl_lnt_indentation_conf.
    CLEAR t80.
    DATA(t81) = t11.
    t80 = t81.
    DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t82.
    DATA(t83) = VALUE abap_bool( ).
    DATA(t84) = t80.
    IF t84 IS INITIAL.
      t83 = abap_true.
    ENDIF.
    IF t83 = abap_true.
      DATA t85 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t85.
      t82 = t85.
    ELSE.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = t80.
      t86 = t87->zlnt_view_read_sr_5c35b8f00615( ).
      DATA(t88) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t88->has = abap_true.
      t88->value = t86.
      t82 = t88.
    ENDIF.
    t79 = t82.
    t78 = t79.
    DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_indentation_conf.
    CLEAR t91.
    DATA(t92) = t11.
    t91 = t92.
    DATA t93 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t93.
    DATA(t94) = VALUE abap_bool( ).
    DATA(t95) = t91.
    IF t95 IS INITIAL.
      t94 = abap_true.
    ENDIF.
    IF t94 = abap_true.
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t96.
      t93 = t96.
    ELSE.
      DATA(t97) = VALUE abap_bool( ).
      DATA(t98) = t91.
      t97 = t98->zlnt_view_read_sr_e38337070bb8( ).
      DATA(t99) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t99->has = abap_true.
      t99->value = t97.
      t93 = t99.
    ENDIF.
    t90 = t93.
    t89 = t90.
    DATA t100 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t101.
    t100 = t101.
    t77 = NEW zcl_lnt_iindentation_options( i_align_try_catch = t78 i_slctn_scrn_blck_indnttn = t100 i_global_class_skip_first = t89 ).
    CREATE OBJECT t77->zlnt_view_ownkeys_b0e8086400eb.
    t77->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `alignTryCatch` p1 = t102 ).
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalClassSkipFirst` p1 = t103 ).
    ENDIF.
    CREATE OBJECT t77->zlnt_json_ownkeys_70e5fd461788.
    t77->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t104) = |alignTryCatch|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
    ENDIF.
    DATA(t106) = |globalClassSkipFirst|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
    ENDIF.
    me->options = t77.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `options`.
  ENDMETHOD.

  METHOD run.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->file.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t3.
    t5 = t6->statements.
    t2 = t5.
    t1 = t2.
    DATA(t7) = t1.
    DATA t8 TYPE REF TO zcl_lnt_statement_node.
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
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE REF TO zif_lnt_statement.
      DATA(t19) = t8.
      t18 = t19->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_unknown ).
      t16 = t17.
      IF t17 = abap_false.
        DATA t20 TYPE abap_bool.
        DATA t21 TYPE REF TO zif_lnt_statement.
        DATA(t22) = t8.
        t21 = t22->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_macro_content ).
        t16 = t20.
      ENDIF.
      t15 = t16.
      IF t16 = abap_false.
        DATA t23 TYPE abap_bool.
        DATA t24 TYPE REF TO zif_lnt_statement.
        DATA(t25) = t8.
        t24 = t25->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_macro_call ).
        t15 = t23.
      ENDIF.
      t14 = t15.
      IF t15 = abap_false.
        DATA t26 TYPE abap_bool.
        DATA t27 TYPE REF TO zcl_lnt_position.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t30) = t8.
        t29 = t30->get_first_token( ).
        t28 = t29.
        DATA t31 TYPE REF TO zcl_lnt_position.
        DATA(t32) = t28.
        t31 = t32->start.
        t27 = t31.
        t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_virtual_position ).
        t14 = t26.
      ENDIF.
      t13 = t14.
      IF t14 = abap_false.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE REF TO zif_lnt_statement.
        DATA(t35) = t8.
        t34 = t35->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_st_comment ).
        t13 = t33.
      ENDIF.
      IF t13 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t36 TYPE REF TO zcl_lnt_fix_case.
      DATA t37 TYPE REF TO zcl_lnt_fix_case.
      DATA(t38) = CONV string( me->result_9728 ).
      DATA(t39) = me->config.
      t37 = NEW zcl_lnt_fix_case( i_file_contents = t38 i_config = t39 ).
      t36 = t37.
      DATA t40 TYPE string.
      DATA(t41) = t36.
      DATA(t42) = t8.
      t40 = t41->execute( i_statement = t42 ).
      me->result_9728 = t40.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `result`.
    ENDDO.
    DATA t43 TYPE REF TO zcl_lnt_indent.
    CLEAR t43.
    DATA t44 TYPE REF TO zcl_lnt_indent.
    CLEAR t44.
    DATA t45 TYPE REF TO zcl_lnt_iindentation_options.
    CLEAR t45.
    DATA(t46) = abap_true.
    IF t46 = abap_true.
      DATA(t47) = me->options.
      t45 = t47.
    ELSE.
      DATA t48 TYPE REF TO zcl_lnt_iindentation_options.
      CLEAR t48.
      t45 = t48.
    ENDIF.
    t44 = NEW zcl_lnt_indent( i_options = t45 ).
    t43 = t44.
    DATA t49 TYPE string.
    DATA(t50) = t43.
    DATA(t51) = me->file.
    DATA(t52) = CONV string( me->result_9728 ).
    t49 = t50->execute( i_original = t51 i_modified = t52 ).
    me->result_9728 = t49.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `result`.
    DATA(t53) = CONV string( me->result_9728 ).
    result = t53.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1376_9d55e8666060.
  ENDMETHOD.
ENDCLASS.
