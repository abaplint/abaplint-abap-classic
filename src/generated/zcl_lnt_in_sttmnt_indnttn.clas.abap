* TS: src/rules/in_statement_indentation.ts:21:1 InStatementIndentation
CLASS zcl_lnt_in_sttmnt_indnttn DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_in_st_in_ts_in_st_in RETURNING VALUE(result) TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    METHODS s_c_i_s_r_in_st_in_ts_in_st_in IMPORTING i_conf TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    METHODS r_p_i_s_r_in_st_in_ts_in_st_in IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_in_sttmnt_indnttn IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_in_sttmnt_indnttn_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |in_statement_indentation|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |In-statement indentation|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks alignment within statements which span multiple lines|.
    t7 = t7 && |.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Lines following the first line should be indented once (2 sp|.
      t11 = t11 && |aces).\n\nFor block declaration statements, lines after the fi|.
      t11 = t11 && |rst should be indented an additional time (default: +2 space|.
      t11 = t11 && |s)\nto distinguish them better from code within the block.|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |IF 1 = 1\n  AND 2 = 2.\n  WRITE 'hello' &&\n  'world'.\nENDIF.|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    t14 = t15.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |IF 1 = 1\n    AND 2 = 2.\n  WRITE 'hello' &&\n    'world'.\nENDI|.
      t23 = t23 && |F.|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
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
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t20 i_extended_information = t8 i_tags = t26 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |tags|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Fix in-statement indentation|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_in_st_in_ts_in_st_in.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_in_st_in_ts_in_st_in.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_in_st_in_ts_in_st_in.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    DATA(t7) = me->reg.
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t7 ).
    t5 = t6.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t2.
    t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_class ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t10.
      DATA t11 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_class.
      DATA t13 TYPE REF TO zcl_lnt_class.
      DATA(t14) = t2.
      DATA t15 TYPE REF TO object.
      t15 = t14.
      t13 ?= t15.
      t12 = t13.
      DATA t16 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_abap_file.
      DATA t20 TYPE REF TO zcl_lnt_abap_file.
      DATA(t21) = t12.
      t20 = t21->get_main_abap_file( ).
      t19 = t20.
      DATA t22 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = t19.
      IF t24 IS INITIAL.
        t23 = abap_true.
      ENDIF.
      IF t23 = abap_true.
        DATA t25 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t25.
        t22 = t25.
      ELSE.
        DATA t26 TYPE REF TO zif_lnt_abap_file_information.
        DATA t27 TYPE REF TO zcl_lnt_abap_file.
        DATA t28 TYPE REF TO zcl_lnt_abap_file.
        DATA(t29) = t19.
        t28 = t29.
        t27 = t28.
        DATA t30 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t31) = t27.
        t30 = t31->info.
        t26 = t30.
        t22 = t26.
      ENDIF.
      t18 = t22.
      t17 = t18.
      DATA t32 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = t17.
      IF t34 IS INITIAL.
        t33 = abap_true.
      ENDIF.
      IF t33 = abap_true.
        DATA t35 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t35.
        t32 = t35.
      ELSE.
        DATA t36 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t37 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t38) = t17.
        t37 = t38.
        DATA t39 TYPE string.
        DATA t40 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t41) = t12.
        t40 = t41.
        DATA t42 TYPE string.
        DATA(t43) = t40.
        t42 = t43->name.
        t39 = t42.
        t36 = t37->get_class_definition_by_name( i_name = t39 ).
        t32 = t36.
      ENDIF.
      t16 = t32.
      t11 = t16.
      t10 = t11.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t46) = t10.
      t45 = t46.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      t47 = t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t45.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ENDIF.
      t44 = t49.
      IF t44 = abap_true.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t51.
        result = t51.
        RETURN.
      ELSE.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t55) = me->conf.
        t54 = t55->zlnt_view_read_sr_d976ff72e120( ).
        IF t54 IS BOUND.
          IF t54->has = abap_true.
            t53 = xsdbool( t54->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t52 = t53.
        IF t53 = abap_true.
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = t5.
          DATA t58 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t58.
          DATA(t59) = abap_true.
          IF t59 = abap_true.
            DATA t60 TYPE REF TO zcl_lnt_info_class_definition.
            DATA(t61) = t10.
            t60 = t61.
            t58 = t60.
          ELSE.
            DATA t62 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t62.
            t58 = t62.
          ENDIF.
          DATA t63 TYPE REF TO zcl_lnt_class.
          DATA(t64) = t2.
          DATA t65 TYPE REF TO object.
          t65 = t64.
          t63 ?= t65.
          t56 = t57->is_exception( i_def = t58 i_obj_ac26 = t63 ).
          t52 = t56.
        ENDIF.
        IF t52 = abap_true.
          DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t66.
          result = t66.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t68 TYPE REF TO zcl_lnt_abap_file.
    DATA(t69) = t1.
    t68 = t69.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t71) = t68.
    t70 = t71->statements.
    t67 = t70.
    DATA t72 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t72.
    DATA t73 TYPE REF TO object.
    CLEAR t73.
    DATA(t74) = VALUE i( ).
    DO.
      t67->load( ).
      IF t74 >= lines( t67->items ).
        EXIT.
      ENDIF.
      CLEAR t73.
      READ TABLE t67->items INDEX t74 + 1 INTO t73.
      t74 = t74 + 1.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      CLEAR t72.
      IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t75 ?= t73.
        DATA t76 TYPE REF TO object.
        t76 = t75->as_ref( ).
        t72 ?= t76.
      ELSE.
        t72 ?= t73.
      ENDIF.
      DATA(t77) = VALUE abap_bool( ).
      DATA t78 TYPE abap_bool.
      DATA t79 TYPE abap_bool.
      DATA t80 TYPE REF TO zif_lnt_statement.
      DATA(t81) = t72.
      t80 = t81->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_st_comment ).
      t78 = t79.
      IF t79 = abap_false.
        DATA t82 TYPE abap_bool.
        DATA t83 TYPE REF TO zif_lnt_statement.
        DATA(t84) = t72.
        t83 = t84->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_unknown ).
        t78 = t82.
      ENDIF.
      t77 = t78.
      IF t78 = abap_false.
        DATA t85 TYPE abap_bool.
        DATA t86 TYPE REF TO zif_lnt_statement.
        DATA(t87) = t72.
        t86 = t87->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t85 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_native_sql ).
        t77 = t85.
      ENDIF.
      IF t77 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t90) = t72.
      t89 = t90->get_tokens( ).
      t88 = t89.
      DATA t91 TYPE abap_bool.
      DATA t92 TYPE i.
      DATA(t93) = t88.
      t93->load( ).
      t92 = lines( t93->items ).
      DATA(t94) = 0.
      t91 = xsdbool( t92 = t94 ).
      IF t91 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t95) = VALUE f( ).
      DATA(t96) = VALUE f( ).
      DATA t97 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t97.
      DATA t98 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t98.
      DATA(t99) = t88.
      DATA t100 TYPE REF TO object.
      CLEAR t100.
      t99->load( ).
      CLEAR t100.
      READ TABLE t99->items INDEX 1 INTO t100.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      CLEAR t98.
      IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t101 ?= t100.
        DATA t102 TYPE REF TO object.
        t102 = t101->as_ref( ).
        t98 ?= t102.
      ELSE.
        t98 ?= t100.
      ENDIF.
      t97 = t98.
      DATA t103 TYPE f.
      DATA t104 TYPE REF TO zcl_lnt_position.
      DATA t105 TYPE REF TO zcl_lnt_position.
      DATA(t106) = t97.
      t105 = t106->start.
      t104 = t105.
      DATA t107 TYPE f.
      DATA(t108) = t104.
      t107 = t108->row.
      t103 = t107.
      t96 = t103.
      t95 = t96.
      DATA t109 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t109.
      DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t110.
      DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t111.
      DATA t112 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t112.
      DATA t113 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t113.
      DATA(t114) = t88.
      DATA t115 TYPE REF TO object.
      CLEAR t115.
      t114->load( ).
      CLEAR t115.
      READ TABLE t114->items INDEX 1 INTO t115.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      CLEAR t113.
      IF t115 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t116 ?= t115.
        DATA t117 TYPE REF TO object.
        t117 = t116->as_ref( ).
        t113 ?= t117.
      ELSE.
        t113 ?= t115.
      ENDIF.
      t112 = t113.
      DATA t118 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t119 TYPE REF TO zcl_lnt_position.
      DATA t120 TYPE REF TO zcl_lnt_position.
      DATA(t121) = t112.
      t120 = t121->start.
      t119 = t120.
      DATA t122 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t123) = t119.
      t122 = t123->col.
      t118 = t122.
      t111 = t118.
      DATA(t124) = CONV f( 2 ).
      DATA(t125) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t125->has = abap_true.
      t125->value = t124.
      t110 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t111 right = t125 op = `+` ).
      t109 = t110.
      DATA t126 TYPE REF TO zif_lnt_statement.
      DATA t127 TYPE REF TO zif_lnt_statement.
      DATA(t128) = t72.
      t127 = t128->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t126 = t127.
      DATA(t129) = VALUE abap_bool( ).
      DATA(t130) = VALUE abap_bool( ).
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = VALUE abap_bool( ).
      DATA(t133) = VALUE abap_bool( ).
      DATA(t134) = VALUE abap_bool( ).
      DATA(t135) = VALUE abap_bool( ).
      DATA(t136) = VALUE abap_bool( ).
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      DATA(t140) = VALUE abap_bool( ).
      DATA(t141) = VALUE abap_bool( ).
      DATA(t142) = VALUE abap_bool( ).
      DATA t143 TYPE abap_bool.
      DATA t144 TYPE abap_bool.
      DATA(t145) = t126.
      t144 = xsdbool( t145 IS BOUND AND t145 IS INSTANCE OF zcl_lnt_st_if ).
      t143 = t144.
      IF t144 = abap_false.
        DATA t146 TYPE abap_bool.
        DATA(t147) = t126.
        t146 = xsdbool( t147 IS BOUND AND t147 IS INSTANCE OF zcl_lnt_st_while ).
        t143 = t146.
      ENDIF.
      t142 = t143.
      IF t143 = abap_false.
        DATA t148 TYPE abap_bool.
        DATA(t149) = t126.
        t148 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_module ).
        t142 = t148.
      ENDIF.
      t141 = t142.
      IF t142 = abap_false.
        DATA t150 TYPE abap_bool.
        DATA(t151) = t126.
        t150 = xsdbool( t151 IS BOUND AND t151 IS INSTANCE OF zcl_lnt_st_select_loop ).
        t141 = t150.
      ENDIF.
      t140 = t141.
      IF t141 = abap_false.
        DATA t152 TYPE abap_bool.
        DATA(t153) = t126.
        t152 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_st_function_module ).
        t140 = t152.
      ENDIF.
      t139 = t140.
      IF t140 = abap_false.
        DATA t154 TYPE abap_bool.
        DATA(t155) = t126.
        t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_st_do ).
        t139 = t154.
      ENDIF.
      t138 = t139.
      IF t139 = abap_false.
        DATA t156 TYPE abap_bool.
        DATA(t157) = t126.
        t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_st_at ).
        t138 = t156.
      ENDIF.
      t137 = t138.
      IF t138 = abap_false.
        DATA t158 TYPE abap_bool.
        DATA(t159) = t126.
        t158 = xsdbool( t159 IS BOUND AND t159 IS INSTANCE OF zcl_lnt_st_catch ).
        t137 = t158.
      ENDIF.
      t136 = t137.
      IF t137 = abap_false.
        DATA t160 TYPE abap_bool.
        DATA(t161) = t126.
        t160 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_st_case ).
        t136 = t160.
      ENDIF.
      t135 = t136.
      IF t136 = abap_false.
        DATA t162 TYPE abap_bool.
        DATA(t163) = t126.
        t162 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_st_when ).
        t135 = t162.
      ENDIF.
      t134 = t135.
      IF t135 = abap_false.
        DATA t164 TYPE abap_bool.
        DATA(t165) = t126.
        t164 = xsdbool( t165 IS BOUND AND t165 IS INSTANCE OF zcl_lnt_st_cleanup ).
        t134 = t164.
      ENDIF.
      t133 = t134.
      IF t134 = abap_false.
        DATA t166 TYPE abap_bool.
        DATA(t167) = t126.
        t166 = xsdbool( t167 IS BOUND AND t167 IS INSTANCE OF zcl_lnt_st_loop ).
        t133 = t166.
      ENDIF.
      t132 = t133.
      IF t133 = abap_false.
        DATA t168 TYPE abap_bool.
        DATA(t169) = t126.
        t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_st_form ).
        t132 = t168.
      ENDIF.
      t131 = t132.
      IF t132 = abap_false.
        DATA t170 TYPE abap_bool.
        DATA(t171) = t126.
        t170 = xsdbool( t171 IS BOUND AND t171 IS INSTANCE OF zcl_lnt_st_else ).
        t131 = t170.
      ENDIF.
      t130 = t131.
      IF t131 = abap_false.
        DATA t172 TYPE abap_bool.
        DATA(t173) = t126.
        t172 = xsdbool( t173 IS BOUND AND t173 IS INSTANCE OF zcl_lnt_st_else_if ).
        t130 = t172.
      ENDIF.
      t129 = t130.
      IF t130 = abap_false.
        DATA t174 TYPE abap_bool.
        DATA(t175) = t126.
        t174 = xsdbool( t175 IS BOUND AND t175 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
        t129 = t174.
      ENDIF.
      IF t129 = abap_true.
        DATA t176 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t177) = t109.
        DATA t178 TYPE f.
        DATA(t179) = me->conf.
        t178 = t179->zlnt_view_read_sr_aaaa533f3d3f( ).
        DATA(t180) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t180->has = abap_true.
        t180->value = t178.
        t176 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t177 right = t180 op = `+` ).
        t109 = t176.
      ENDIF.
      DATA(t181) = t88.
      DATA t182 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t182.
      DATA t183 TYPE REF TO object.
      CLEAR t183.
      DATA(t184) = VALUE i( ).
      DO.
        t181->load( ).
        IF t184 >= lines( t181->items ).
          EXIT.
        ENDIF.
        CLEAR t183.
        READ TABLE t181->items INDEX t184 + 1 INTO t183.
        t184 = t184 + 1.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t185.
        CLEAR t182.
        IF t183 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t185 ?= t183.
          DATA t186 TYPE REF TO object.
          t186 = t185->as_ref( ).
          t182 ?= t186.
        ELSE.
          t182 ?= t183.
        ENDIF.
        DATA t187 TYPE abap_bool.
        DATA t188 TYPE f.
        DATA t189 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t190) = t182.
        t189 = t190.
        DATA t191 TYPE f.
        DATA t192 TYPE REF TO zcl_lnt_position.
        DATA t193 TYPE REF TO zcl_lnt_position.
        DATA(t194) = t189.
        t193 = t194->start.
        t192 = t193.
        DATA t195 TYPE f.
        DATA(t196) = t192.
        t195 = t196->row.
        t191 = t195.
        t188 = t191.
        DATA(t197) = t95.
        t187 = xsdbool( t188 = t197 ).
        IF t187 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t198 TYPE abap_bool.
        DATA t199 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t200 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t201) = t182.
        t200 = t201.
        DATA t202 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t203 TYPE REF TO zcl_lnt_position.
        DATA t204 TYPE REF TO zcl_lnt_position.
        DATA(t205) = t200.
        t204 = t205->start.
        t203 = t204.
        DATA t206 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t207) = t203.
        t206 = t207->col.
        t202 = t206.
        t199 = t202.
        DATA(t208) = t109.
        t198 = zlnt_runtime_numb_290eb04a9758=>compare( left = t199 right = t208 op = `<` ).
        IF t198 = abap_true.
          DATA t209 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t209.
          DATA t210 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t210.
          DATA(t211) = t1.
          DATA t212 TYPE REF TO zcl_lnt_position.
          DATA t213 TYPE f.
          DATA t214 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t215) = t182.
          t214 = t215.
          DATA t216 TYPE f.
          DATA t217 TYPE REF TO zcl_lnt_position.
          DATA t218 TYPE REF TO zcl_lnt_position.
          DATA(t219) = t214.
          t218 = t219->start.
          t217 = t218.
          DATA t220 TYPE f.
          DATA(t221) = t217.
          t220 = t221->row.
          t216 = t220.
          t213 = t216.
          DATA(t222) = CONV f( 1 ).
          DATA(t223) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t223->has = abap_true.
          t223->value = t222.
          t212 = NEW zcl_lnt_position( i_row = t213 i_col = t223 ).
          DATA t224 TYPE REF TO zcl_lnt_position.
          DATA t225 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t226) = t182.
          t225 = t226.
          DATA t227 TYPE REF TO zcl_lnt_position.
          DATA(t228) = t225.
          t227 = t228->start.
          t224 = t227.
          DATA(t229) = VALUE string( ).
          DATA t230 TYPE string.
          DATA(t231) = | |.
          t230 = t231.
          DATA(t232) = VALUE string( ).
          DATA(t233) = t230.
          DATA t234 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t235) = t109.
          DATA(t236) = CONV f( 1 ).
          DATA(t237) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t237->has = abap_true.
          t237->value = t236.
          t234 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t235 right = t237 op = `-` ).
          DATA(t238) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t234 ) ).
          DATA(t239) = strlen( t233 ).
          DATA(t240) = CONV f( trunc( t238 ) ).
          IF t240 < 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          CLEAR t232.
          IF t233 IS NOT INITIAL.
            IF t240 > 2147483647 OR t240 * strlen( t233 ) > 2147483647.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t232 = repeat( val = t233 occ = CONV i( t240 ) ).
          ENDIF.
          t229 = t232.
          t210 = zcl_lnt_edit_helper=>replace_range( i_file = t211 i_start = t212 i_end = t224 i_text = t229 ).
          t209 = t210.
          DATA t241 TYPE REF TO zcl_lnt_issue.
          CLEAR t241.
          DATA t242 TYPE REF TO zcl_lnt_issue.
          CLEAR t242.
          DATA(t243) = t1.
          DATA(t244) = t182.
          DATA(t245) = |Fix in-statement indentation|.
          DATA(t246) = VALUE string( ).
          DATA t247 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t247.
          DATA t248 TYPE string.
          DATA(t249) = |in_statement_indentation|.
          t248 = t249.
          DATA t250 TYPE string.
          DATA(t251) = |In-statement indentation|.
          t250 = t251.
          DATA t252 TYPE string.
          DATA(t253) = |Checks alignment within statements which span multiple lines|.
          t253 = t253 && |.|.
          t252 = t253.
          DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t254.
          DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t255.
          DATA(t256) = abap_true.
          IF t256 = abap_true.
            DATA(t257) = |Lines following the first line should be indented once (2 sp|.
            t257 = t257 && |aces).\n\nFor block declaration statements, lines after the fi|.
            t257 = t257 && |rst should be indented an additional time (default: +2 space|.
            t257 = t257 && |s)\nto distinguish them better from code within the block.|.
            DATA(t258) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t258->has = abap_true.
            t258->value = t257.
            t255 = t258.
          ELSE.
            DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t259.
            t255 = t259.
          ENDIF.
          t254 = t255.
          DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t260.
          DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t261.
          DATA(t262) = abap_true.
          IF t262 = abap_true.
            DATA(t263) = |IF 1 = 1\n  AND 2 = 2.\n  WRITE 'hello' &&\n  'world'.\nENDIF.|.
            DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t264->has = abap_true.
            t264->value = t263.
            t261 = t264.
          ELSE.
            DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t265.
            t261 = t265.
          ENDIF.
          t260 = t261.
          DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t266.
          DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t267.
          DATA(t268) = abap_true.
          IF t268 = abap_true.
            DATA(t269) = |IF 1 = 1\n    AND 2 = 2.\n  WRITE 'hello' &&\n    'world'.\nENDI|.
            t269 = t269 && |F.|.
            DATA(t270) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t270->has = abap_true.
            t270->value = t269.
            t267 = t270.
          ELSE.
            DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t271.
            t267 = t271.
          ENDIF.
          t266 = t267.
          DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t272.
          DATA t273 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t273.
          DATA(t274) = abap_true.
          IF t274 = abap_true.
            DATA t275 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t276 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t277 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t277.
            t276 = t277.
            DATA(t278) = t276.
            DATA(t279) = |Whitespace|.
            t278->load( ).
            APPEND t279 TO t278->items.
            t278->save( ).
            DATA(t280) = t276.
            DATA(t281) = |Quickfix|.
            t280->load( ).
            APPEND t281 TO t280->items.
            t280->save( ).
            DATA(t282) = t276.
            DATA(t283) = |SingleFile|.
            t282->load( ).
            APPEND t283 TO t282->items.
            t282->save( ).
            DATA(t284) = t276.
            t275 = t284.
            t273 = t275.
          ELSE.
            DATA t285 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t285.
            t273 = t285.
          ENDIF.
          t272 = t273.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t287.
          t286 = t287.
          DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t289.
          t288 = t289.
          t247 = NEW zcl_lnt_irule_metadata( i_key = t248 i_title = t250 i_short_description = t252 i_bad_example = t260 i_good_example = t266 i_extended_information = t254 i_tags = t272 i_pragma = t286 i_pseudo_comment = t288 ).
          CREATE OBJECT t247->zlnt_view_ownkeys_b0e8086400eb.
          t247->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t290.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t290 ).
          ENDIF.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t291.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t291 ).
          ENDIF.
          DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t292.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t292 ).
          ENDIF.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t293 ).
          ENDIF.
          DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t294.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t294 ).
          ENDIF.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t295.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t295 ).
          ENDIF.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t296 ).
          ENDIF.
          CREATE OBJECT t247->zlnt_json_ownkeys_70e5fd461788.
          t247->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t297) = |key|.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = t297 p1 = t298 ).
          ENDIF.
          DATA(t299) = |title|.
          DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t300.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = t299 p1 = t300 ).
          ENDIF.
          DATA(t301) = |shortDescription|.
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t302.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = t301 p1 = t302 ).
          ENDIF.
          DATA(t303) = |extendedInformation|.
          DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t304.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = t303 p1 = t304 ).
          ENDIF.
          DATA(t305) = |badExample|.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t306.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = t305 p1 = t306 ).
          ENDIF.
          DATA(t307) = |goodExample|.
          DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t308.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
          ENDIF.
          DATA(t309) = |tags|.
          DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t310.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = t309 p1 = t310 ).
          ENDIF.
          t246 = t247->key.
          DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t312) = me->conf.
          t311 = t312->zlnt_view_read_sr_15c06369f827( ).
          DATA t313 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t313.
          DATA(t314) = abap_true.
          IF t314 = abap_true.
            DATA(t315) = t209.
            t313 = t315.
          ELSE.
            DATA t316 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t316.
            t313 = t316.
          ENDIF.
          t242 = zcl_lnt_issue=>at_token( i_file = t243 i_token = t244 i_message_26cb = t245 i_key = t246 i_severity = t311 i_fix = t313 ).
          t241 = t242.
          DATA(t317) = t3.
          DATA(t318) = t241.
          t317->load( ).
          APPEND t318 TO t317->items.
          t317->save( ).
          EXIT.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t319) = t3.
    result = t319.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_in_sttmnt_indnttn_cnf( me->g_c_i_s_r_in_st_in_ts_in_st_in( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_in_sttmnt_indnttn_cnf( me->g_c_i_s_r_in_st_in_ts_in_st_in( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    CLEAR t1.
    CLEAR t1.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_in_sttmnt_indnttn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_in_st_in_ts_in_st_in( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_in_st_in_ts_in_st_in( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1542_de7d4e6d2a91.
  ENDMETHOD.
ENDCLASS.
