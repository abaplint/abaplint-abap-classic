* TS: src/rules/functional_writing.ts:20:1 FunctionalWriting
CLASS zcl_lnt_functional_writing DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_fn_wr_ts_fn_wrt RETURNING VALUE(result) TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
    METHODS st_cn_in_sr_rl_fn_wr_ts_fn_wrt IMPORTING i_conf TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS crt_iss_fr_sttmnt_nd IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_stat_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS build_fix_string IMPORTING i_stat_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE string.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_functional_writing IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_fnctnl_wrtng_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |functional_writing|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Use functional writing|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detects usage of call method when functional style calls can|.
    t7 = t7 && | be used.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#prefer-functional-to-procedural-calls\nhttps://docs.|.
      t11 = t11 && |abapopenchecks.org/checks/07/|.
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
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Quickfix|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |SingleFile|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      t17 = t26.
      t15 = t17.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t15 = t27.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |CALL METHOD zcl_class=>method( ).\nCALL METHOD cl_abap_typede|.
      t31 = t31 && |scr=>describe_by_name\n  EXPORTING\n    p_name         = 'NAME|.
      t31 = t31 && |'\n  RECEIVING\n    p_descr_ref    = lr_typedescr\n  EXCEPTIONS|.
      t31 = t31 && |\n    type_not_found = 1\n    OTHERS         = 2.|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA(t37) = |zcl_class=>method( ).\ncl_abap_typedescr=>describe_by_name(\n |.
      t37 = t37 && | EXPORTING\n    p_name         = 'NAME'\n  RECEIVING\n    p_des|.
      t37 = t37 && |cr_ref    = lr_typedescr\n  EXCEPTIONS\n    type_not_found = 1|.
      t37 = t37 && |\n    OTHERS         = 2 ).|.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t37.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t35 = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
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
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Use functional writing style for method calls|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_fn_wr_ts_fn_wrt.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_fn_wr_ts_fn_wrt.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA(t6) = abap_false.
    t5 = t6.
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE string.
    DATA(t9) = t2.
    t8 = t9->get_type( ).
    DATA(t10) = |INTF|.
    t7 = xsdbool( t8 = t10 ).
    IF t7 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t13 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t13.
    t12 = t13.
    DATA t14 TYPE abap_bool.
    DATA(t15) = t2.
    t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_class ).
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_class.
      DATA t18 TYPE REF TO zcl_lnt_class.
      DATA(t19) = t2.
      t18 ?= t19.
      t17 = t18.
      DATA t20 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t20.
      DATA t21 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t21.
      DATA t22 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t22.
      DATA t23 TYPE REF TO zcl_lnt_abap_file.
      DATA t24 TYPE REF TO zcl_lnt_abap_file.
      DATA(t25) = t17.
      t24 = t25->get_main_abap_file( ).
      t23 = t24.
      DATA t26 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t26.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = t23.
      IF t28 IS INITIAL.
        t27 = abap_true.
      ENDIF.
      IF t27 = abap_true.
        DATA t29 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t29.
        t26 = t29.
      ELSE.
        DATA t30 TYPE REF TO zif_lnt_abap_file_information.
        DATA t31 TYPE REF TO zcl_lnt_abap_file.
        DATA t32 TYPE REF TO zcl_lnt_abap_file.
        DATA(t33) = t23.
        t32 = t33.
        t31 = t32.
        DATA t34 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t35) = t31.
        t34 = t35->info.
        t30 = t34.
        t26 = t30.
      ENDIF.
      t22 = t26.
      t21 = t22.
      DATA t36 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t21.
      IF t38 IS INITIAL.
        t37 = abap_true.
      ENDIF.
      IF t37 = abap_true.
        DATA t39 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t39.
        t36 = t39.
      ELSE.
        DATA t40 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t41 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t42) = t21.
        t41 = t42.
        DATA t43 TYPE string.
        DATA t44 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t45) = t17.
        t44 = t45.
        DATA t46 TYPE string.
        DATA(t47) = t44.
        t46 = t47->name.
        t43 = t46.
        t40 = t41->get_class_definition_by_name( i_name = t43 ).
        t36 = t40.
      ENDIF.
      t20 = t36.
      t16 = t20.
      t12 = t16.
    ENDIF.
    DATA t48 TYPE REF TO zcl_lnt_ddic.
    DATA t49 TYPE REF TO zcl_lnt_ddic.
    DATA(t50) = me->reg.
    t49 = NEW zcl_lnt_ddic( i_reg_f149 = t50 ).
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zcl_lnt_abap_file.
    DATA(t53) = t1.
    t52 = t53.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t55) = t52.
    t54 = t55->statements.
    t51 = t54.
    DATA t56 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t56.
    DATA t57 TYPE REF TO object.
    CLEAR t57.
    DATA(t58) = VALUE i( ).
    DO.
      t51->load( ).
      IF t58 >= lines( t51->items ).
        EXIT.
      ENDIF.
      CLEAR t57.
      READ TABLE t51->items INDEX t58 + 1 INTO t57.
      t58 = t58 + 1.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      CLEAR t56.
      IF t57 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t59 ?= t57.
        DATA t60 TYPE REF TO object.
        t60 = t59->as_ref( ).
        t56 ?= t60.
      ELSE.
        t56 ?= t57.
      ENDIF.
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE abap_bool.
      DATA t64 TYPE abap_bool.
      DATA t65 TYPE REF TO zif_lnt_statement.
      DATA(t66) = t56.
      t65 = t66->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
      t63 = t64.
      IF t64 = abap_true.
        DATA t67 TYPE abap_bool.
        DATA(t68) = t12.
        t67 = xsdbool( t68 IS BOUND ).
        t63 = t67.
      ENDIF.
      t62 = t63.
      IF t63 = abap_true.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = t48.
        DATA t71 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t71.
        DATA(t72) = abap_true.
        IF t72 = abap_true.
          DATA t73 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t74) = t12.
          t73 = t74.
          t71 = t73.
        ELSE.
          DATA t75 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t75.
          t71 = t75.
        ENDIF.
        DATA(t76) = t2.
        t69 = t70->is_exception( i_def = t71 i_obj_ac26 = t76 ).
        t62 = t69.
      ENDIF.
      t61 = t62.
      IF t62 = abap_true.
        DATA t77 TYPE abap_bool.
        DATA(t78) = me->conf.
        t77 = t78->zlnt_view_read_sr_73796bbbf173( ).
        t61 = t77.
      ENDIF.
      IF t61 = abap_true.
        DATA(t79) = abap_true.
        t5 = t79.
      ELSE.
        DATA t80 TYPE abap_bool.
        DATA t81 TYPE REF TO zif_lnt_statement.
        DATA(t82) = t56.
        t81 = t82->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_end_class ).
        IF t80 = abap_true.
          DATA(t83) = abap_false.
          t5 = t83.
        ELSE.
          DATA t84 TYPE abap_bool.
          DATA t85 TYPE abap_bool.
          DATA(t86) = t5.
          DATA(t87) = abap_false.
          t85 = xsdbool( t86 = t87 ).
          t84 = t85.
          IF t85 = abap_true.
            DATA t88 TYPE abap_bool.
            DATA t89 TYPE REF TO zif_lnt_statement.
            DATA(t90) = t56.
            t89 = t90->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_st_call ).
            t84 = t88.
          ENDIF.
          IF t84 = abap_true.
            DATA(t91) = VALUE abap_bool( ).
            DATA t92 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t92.
            DATA t93 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t93.
            DATA t94 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t94.
            DATA t95 TYPE REF TO zif_lnt_node.
            CLEAR t95.
            DATA t96 TYPE REF TO zcl_lnt_abstract_node.
            DATA(t97) = t56.
            t96 = t97.
            DATA t98 TYPE REF TO zif_lnt_node.
            CLEAR t98.
            DATA(t99) = abap_true.
            IF t99 = abap_true.
              DATA t100 TYPE REF TO zif_lnt_node.
              CLEAR t100.
              DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t102) = t96.
              t101 = t102->children.
              DATA t103 TYPE REF TO object.
              CLEAR t103.
              t101->load( ).
              CLEAR t103.
              READ TABLE t101->items INDEX 1 INTO t103.
              DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t104.
              CLEAR t100.
              IF t103 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t104 ?= t103.
                DATA t105 TYPE REF TO object.
                t105 = t104->as_ref( ).
                t100 ?= t105.
              ELSE.
                t100 ?= t103.
              ENDIF.
              t98 = t100.
            ELSE.
              DATA t106 TYPE REF TO zif_lnt_node.
              CLEAR t106.
              t98 = t106.
            ENDIF.
            t95 = t98.
            t94 ?= t95.
            t93 = t94.
            DATA t107 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t107.
            DATA(t108) = VALUE abap_bool( ).
            DATA(t109) = t93.
            IF t109 IS INITIAL.
              t108 = abap_true.
            ENDIF.
            IF t108 = abap_true.
              DATA t110 TYPE REF TO zif_lnt_union_daf022d4.
              CLEAR t110.
              t107 = t110.
            ELSE.
              DATA t111 TYPE REF TO zif_lnt_union_daf022d4.
              DATA t112 TYPE REF TO object.
              DATA t113 TYPE REF TO zif_lnt_union_4cf1d054.
              DATA(t114) = t93.
              t113 = t114.
              t112 = t113->get_db65( ).
              DATA t115 TYPE REF TO object.
              t115 = t112.
              t111 ?= t115.
              t107 = t111.
            ENDIF.
            t92 = t107.
            t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_st_method_call_chain ).
            IF t91 = abap_true.
              CONTINUE.
            ENDIF.
            DATA t116 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t116.
            DATA t117 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t117.
            DATA t118 TYPE REF TO zcl_lnt_expression_node.
            DATA t119 TYPE REF TO zcl_lnt_expression_node.
            DATA(t120) = t56.
            DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d237_6d1df3154820.
            t119 = t120->find_direct_expression( i_type_9913 = t121 ).
            t118 = t119.
            DATA t122 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t122.
            DATA(t123) = VALUE abap_bool( ).
            DATA(t124) = t118.
            IF t124 IS INITIAL.
              t123 = abap_true.
            ENDIF.
            IF t123 = abap_true.
              DATA t125 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t125.
              t122 = t125.
            ELSE.
              DATA t126 TYPE REF TO zcl_lnt_expression_node.
              DATA t127 TYPE REF TO zcl_lnt_expression_node.
              DATA(t128) = t118.
              t127 = t128.
              DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
              t126 = t127->find_direct_expression( i_type_9913 = t129 ).
              t122 = t126.
            ENDIF.
            t117 = t122.
            t116 = t117.
            DATA(t130) = VALUE abap_bool( ).
            DATA t131 TYPE REF TO zcl_lnt_expression_node.
            DATA(t132) = t116.
            t131 = t132.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t134.
            t133 = t134.
            DATA(t135) = VALUE abap_bool( ).
            DATA(t136) = VALUE abap_bool( ).
            DATA(t137) = t131.
            IF t137 IS INITIAL.
              t136 = abap_true.
            ENDIF.
            t135 = xsdbool( t136 = abap_false ).
            t130 = t135.
            IF t130 = abap_true.
              CONTINUE.
            ENDIF.
            DATA(t138) = t3.
            DATA t139 TYPE REF TO zcl_lnt_issue.
            CLEAR t139.
            DATA t140 TYPE REF TO zcl_lnt_abap_file.
            DATA(t141) = t1.
            t140 = t141.
            DATA t142 TYPE REF TO zcl_lnt_statement_node.
            DATA(t143) = t56.
            t142 = t143.
            DATA t144 TYPE REF TO zcl_lnt_issue.
            CLEAR t144.
            DATA t145 TYPE string.
            DATA t146 TYPE string.
            DATA(t147) = t142.
            t146 = me->build_fix_string( i_stat_node = t147 ).
            t145 = t146.
            DATA t148 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t149 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA(t150) = t140.
            DATA t151 TYPE REF TO zcl_lnt_position.
            DATA t152 TYPE REF TO zcl_lnt_statement_node.
            DATA(t153) = t142.
            t152 = t153.
            DATA t154 TYPE REF TO zcl_lnt_position.
            DATA t155 TYPE REF TO zcl_lnt_abstract_token.
            DATA t156 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t157) = t152.
            t156 = t157->get_first_token( ).
            t155 = t156.
            DATA t158 TYPE REF TO zcl_lnt_position.
            DATA(t159) = t155.
            t158 = t159->start.
            t154 = t158.
            t151 = t154.
            DATA t160 TYPE REF TO zcl_lnt_position.
            DATA t161 TYPE REF TO zcl_lnt_statement_node.
            DATA(t162) = t142.
            t161 = t162.
            DATA t163 TYPE REF TO zcl_lnt_position.
            DATA t164 TYPE REF TO zcl_lnt_abstract_token.
            DATA t165 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t166) = t161.
            t165 = t166->get_last_token( ).
            t164 = t165.
            DATA t167 TYPE REF TO zcl_lnt_position.
            DATA t168 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t169) = t164.
            t168 = t169.
            DATA t170 TYPE REF TO zcl_lnt_position.
            DATA t171 TYPE f.
            DATA t172 TYPE REF TO zcl_lnt_position.
            DATA t173 TYPE REF TO zcl_lnt_position.
            DATA(t174) = t168.
            t173 = t174->start.
            t172 = t173.
            DATA t175 TYPE f.
            DATA(t176) = t172.
            t175 = t176->row.
            t171 = t175.
            DATA t177 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t178 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t179 TYPE REF TO zcl_lnt_position.
            DATA t180 TYPE REF TO zcl_lnt_position.
            DATA(t181) = t168.
            t180 = t181->start.
            t179 = t180.
            DATA t182 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t183) = t179.
            t182 = t183->col.
            t178 = t182.
            DATA t184 TYPE f.
            DATA t185 TYPE i.
            DATA t186 TYPE string.
            DATA(t187) = t168.
            t186 = t187->str.
            DATA(t188) = strlen( t186 ).
            t185 = t188.
            t184 = t185.
            DATA(t189) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t189->has = abap_true.
            t189->value = t184.
            t177 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t178 right = t189 op = `+` ).
            t170 = NEW zcl_lnt_position( i_row = t171 i_col = t177 ).
            t167 = t170.
            t163 = t167.
            t160 = t163.
            DATA(t190) = t145.
            t149 = zcl_lnt_edit_helper=>replace_range( i_file = t150 i_start = t151 i_end = t160 i_text = t190 ).
            t148 = t149.
            DATA t191 TYPE REF TO zcl_lnt_issue.
            CLEAR t191.
            DATA(t192) = t140.
            DATA(t193) = t142.
            DATA(t194) = |Use functional writing style for method calls|.
            DATA(t195) = VALUE string( ).
            DATA t196 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t196.
            DATA t197 TYPE string.
            DATA(t198) = |functional_writing|.
            t197 = t198.
            DATA t199 TYPE string.
            DATA(t200) = |Use functional writing|.
            t199 = t200.
            DATA t201 TYPE string.
            DATA(t202) = |Detects usage of call method when functional style calls can|.
            t202 = t202 && | be used.|.
            t201 = t202.
            DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t203.
            DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t204.
            DATA(t205) = abap_true.
            IF t205 = abap_true.
              DATA(t206) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
              t206 = t206 && |nABAP.md#prefer-functional-to-procedural-calls\nhttps://docs.|.
              t206 = t206 && |abapopenchecks.org/checks/07/|.
              DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t207->has = abap_true.
              t207->value = t206.
              t204 = t207.
            ELSE.
              DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t208.
              t204 = t208.
            ENDIF.
            t203 = t204.
            DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t209.
            DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t210.
            DATA(t211) = abap_true.
            IF t211 = abap_true.
              DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t214.
              t213 = t214.
              DATA(t215) = t213.
              DATA(t216) = |Styleguide|.
              t215->load( ).
              APPEND t216 TO t215->items.
              t215->save( ).
              DATA(t217) = t213.
              DATA(t218) = |Quickfix|.
              t217->load( ).
              APPEND t218 TO t217->items.
              t217->save( ).
              DATA(t219) = t213.
              DATA(t220) = |SingleFile|.
              t219->load( ).
              APPEND t220 TO t219->items.
              t219->save( ).
              DATA(t221) = t213.
              t212 = t221.
              t210 = t212.
            ELSE.
              DATA t222 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t222.
              t210 = t222.
            ENDIF.
            t209 = t210.
            DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t223.
            DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t224.
            DATA(t225) = abap_true.
            IF t225 = abap_true.
              DATA(t226) = |CALL METHOD zcl_class=>method( ).\nCALL METHOD cl_abap_typede|.
              t226 = t226 && |scr=>describe_by_name\n  EXPORTING\n    p_name         = 'NAME|.
              t226 = t226 && |'\n  RECEIVING\n    p_descr_ref    = lr_typedescr\n  EXCEPTIONS|.
              t226 = t226 && |\n    type_not_found = 1\n    OTHERS         = 2.|.
              DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t227->has = abap_true.
              t227->value = t226.
              t224 = t227.
            ELSE.
              DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t228.
              t224 = t228.
            ENDIF.
            t223 = t224.
            DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t229.
            DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t230.
            DATA(t231) = abap_true.
            IF t231 = abap_true.
              DATA(t232) = |zcl_class=>method( ).\ncl_abap_typedescr=>describe_by_name(\n |.
              t232 = t232 && | EXPORTING\n    p_name         = 'NAME'\n  RECEIVING\n    p_des|.
              t232 = t232 && |cr_ref    = lr_typedescr\n  EXCEPTIONS\n    type_not_found = 1|.
              t232 = t232 && |\n    OTHERS         = 2 ).|.
              DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t233->has = abap_true.
              t233->value = t232.
              t230 = t233.
            ELSE.
              DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t234.
              t230 = t234.
            ENDIF.
            t229 = t230.
            DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t236.
            t235 = t236.
            DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            t237 = t238.
            t196 = NEW zcl_lnt_irule_metadata( i_key = t197 i_title = t199 i_short_description = t201 i_bad_example = t223 i_good_example = t229 i_extended_information = t203 i_tags = t209 i_pragma = t235 i_pseudo_comment = t237 ).
            CREATE OBJECT t196->zlnt_view_ownkeys_b0e8086400eb.
            t196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t239.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t239 ).
            ENDIF.
            DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t240.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t240 ).
            ENDIF.
            DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t241.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t241 ).
            ENDIF.
            DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t242.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t242 ).
            ENDIF.
            DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t243.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t243 ).
            ENDIF.
            DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t244.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t244 ).
            ENDIF.
            DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t245.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t245 ).
            ENDIF.
            CREATE OBJECT t196->zlnt_json_ownkeys_70e5fd461788.
            t196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t246) = |key|.
            DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t247.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t246 p1 = t247 ).
            ENDIF.
            DATA(t248) = |title|.
            DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t249.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t248 p1 = t249 ).
            ENDIF.
            DATA(t250) = |shortDescription|.
            DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t251.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t250 p1 = t251 ).
            ENDIF.
            DATA(t252) = |extendedInformation|.
            DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t253.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
            ENDIF.
            DATA(t254) = |tags|.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
            ENDIF.
            DATA(t256) = |badExample|.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
            ENDIF.
            DATA(t258) = |goodExample|.
            DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t259.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
            ENDIF.
            t195 = t196->key.
            DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t261) = me->conf.
            t260 = t261->zlnt_view_read_sr_15c06369f827( ).
            DATA t262 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t262.
            DATA(t263) = abap_true.
            IF t263 = abap_true.
              DATA(t264) = t148.
              t262 = t264.
            ELSE.
              DATA t265 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t265.
              t262 = t265.
            ENDIF.
            DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t266.
            t191 = zcl_lnt_issue=>at_statement( i_file = t192 i_statement = t193 i_message_26cb = t194 i_key = t195 i_severity = t260 i_fix = t262 i_alternative_fixes = t266 ).
            t144 = t191.
            t139 = t144.
            t138->load( ).
            APPEND t139 TO t138->items.
            t138->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t267) = t3.
    result = t267.

  ENDMETHOD.

  METHOD crt_iss_fr_sttmnt_nd.
    DATA(t1) = i_file.
    DATA(t2) = i_stat_node.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = t2.
    t4 = me->build_fix_string( i_stat_node = t5 ).
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t7 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t8) = t1.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    DATA(t11) = t2.
    t10 = t11.
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t15) = t10.
    t14 = t15->get_first_token( ).
    t13 = t14.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA(t17) = t13.
    t16 = t17->start.
    t12 = t16.
    t9 = t12.
    DATA t18 TYPE REF TO zcl_lnt_position.
    DATA t19 TYPE REF TO zcl_lnt_statement_node.
    DATA(t20) = t2.
    t19 = t20.
    DATA t21 TYPE REF TO zcl_lnt_position.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t24) = t19.
    t23 = t24->get_last_token( ).
    t22 = t23.
    DATA t25 TYPE REF TO zcl_lnt_position.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t27) = t22.
    t26 = t27.
    DATA t28 TYPE REF TO zcl_lnt_position.
    DATA t29 TYPE f.
    DATA t30 TYPE REF TO zcl_lnt_position.
    DATA t31 TYPE REF TO zcl_lnt_position.
    DATA(t32) = t26.
    t31 = t32->start.
    t30 = t31.
    DATA t33 TYPE f.
    DATA(t34) = t30.
    t33 = t34->row.
    t29 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t37 TYPE REF TO zcl_lnt_position.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA(t39) = t26.
    t38 = t39->start.
    t37 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t41) = t37.
    t40 = t41->col.
    t36 = t40.
    DATA t42 TYPE f.
    DATA t43 TYPE i.
    DATA t44 TYPE string.
    DATA(t45) = t26.
    t44 = t45->str.
    DATA(t46) = strlen( t44 ).
    t43 = t46.
    t42 = t43.
    DATA(t47) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t47->has = abap_true.
    t47->value = t42.
    t35 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t36 right = t47 op = `+` ).
    t28 = NEW zcl_lnt_position( i_row = t29 i_col = t35 ).
    t25 = t28.
    t21 = t25.
    t18 = t21.
    DATA(t48) = t3.
    t7 = zcl_lnt_edit_helper=>replace_range( i_file = t8 i_start = t9 i_end = t18 i_text = t48 ).
    t6 = t7.
    DATA t49 TYPE REF TO zcl_lnt_issue.
    CLEAR t49.
    DATA(t50) = t1.
    DATA(t51) = t2.
    DATA(t52) = |Use functional writing style for method calls|.
    DATA(t53) = VALUE string( ).
    DATA t54 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t54.
    DATA t55 TYPE string.
    DATA(t56) = |functional_writing|.
    t55 = t56.
    DATA t57 TYPE string.
    DATA(t58) = |Use functional writing|.
    t57 = t58.
    DATA t59 TYPE string.
    DATA(t60) = |Detects usage of call method when functional style calls can|.
    t60 = t60 && | be used.|.
    t59 = t60.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t62.
    DATA(t63) = abap_true.
    IF t63 = abap_true.
      DATA(t64) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t64 = t64 && |nABAP.md#prefer-functional-to-procedural-calls\nhttps://docs.|.
      t64 = t64 && |abapopenchecks.org/checks/07/|.
      DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t65->has = abap_true.
      t65->value = t64.
      t62 = t65.
    ELSE.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      t62 = t66.
    ENDIF.
    t61 = t62.
    DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t68.
    DATA(t69) = abap_true.
    IF t69 = abap_true.
      DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t72.
      t71 = t72.
      DATA(t73) = t71.
      DATA(t74) = |Styleguide|.
      t73->load( ).
      APPEND t74 TO t73->items.
      t73->save( ).
      DATA(t75) = t71.
      DATA(t76) = |Quickfix|.
      t75->load( ).
      APPEND t76 TO t75->items.
      t75->save( ).
      DATA(t77) = t71.
      DATA(t78) = |SingleFile|.
      t77->load( ).
      APPEND t78 TO t77->items.
      t77->save( ).
      DATA(t79) = t71.
      t70 = t79.
      t68 = t70.
    ELSE.
      DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t80.
      t68 = t80.
    ENDIF.
    t67 = t68.
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t82.
    DATA(t83) = abap_true.
    IF t83 = abap_true.
      DATA(t84) = |CALL METHOD zcl_class=>method( ).\nCALL METHOD cl_abap_typede|.
      t84 = t84 && |scr=>describe_by_name\n  EXPORTING\n    p_name         = 'NAME|.
      t84 = t84 && |'\n  RECEIVING\n    p_descr_ref    = lr_typedescr\n  EXCEPTIONS|.
      t84 = t84 && |\n    type_not_found = 1\n    OTHERS         = 2.|.
      DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t85->has = abap_true.
      t85->value = t84.
      t82 = t85.
    ELSE.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      t82 = t86.
    ENDIF.
    t81 = t82.
    DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t88.
    DATA(t89) = abap_true.
    IF t89 = abap_true.
      DATA(t90) = |zcl_class=>method( ).\ncl_abap_typedescr=>describe_by_name(\n |.
      t90 = t90 && | EXPORTING\n    p_name         = 'NAME'\n  RECEIVING\n    p_des|.
      t90 = t90 && |cr_ref    = lr_typedescr\n  EXCEPTIONS\n    type_not_found = 1|.
      t90 = t90 && |\n    OTHERS         = 2 ).|.
      DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t91->has = abap_true.
      t91->value = t90.
      t88 = t91.
    ELSE.
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      t88 = t92.
    ENDIF.
    t87 = t88.
    DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t94.
    t93 = t94.
    DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t96.
    t95 = t96.
    t54 = NEW zcl_lnt_irule_metadata( i_key = t55 i_title = t57 i_short_description = t59 i_bad_example = t81 i_good_example = t87 i_extended_information = t61 i_tags = t67 i_pragma = t93 i_pseudo_comment = t95 ).
    CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
    t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t97 ).
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t98 ).
    ENDIF.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t99 ).
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t100 ).
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t101 ).
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t102 ).
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t103 ).
    ENDIF.
    CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
    t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t104) = |key|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
    ENDIF.
    DATA(t106) = |title|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
    ENDIF.
    DATA(t108) = |shortDescription|.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
    ENDIF.
    DATA(t110) = |extendedInformation|.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
    ENDIF.
    DATA(t112) = |tags|.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
    ENDIF.
    DATA(t114) = |badExample|.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
    ENDIF.
    DATA(t116) = |goodExample|.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
    ENDIF.
    t53 = t54->key.
    DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t119) = me->conf.
    t118 = t119->zlnt_view_read_sr_15c06369f827( ).
    DATA t120 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t120.
    DATA(t121) = abap_true.
    IF t121 = abap_true.
      DATA(t122) = t6.
      t120 = t122.
    ELSE.
      DATA t123 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t123.
      t120 = t123.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t124.
    t49 = zcl_lnt_issue=>at_statement( i_file = t50 i_statement = t51 i_message_26cb = t52 i_key = t53 i_severity = t118 i_fix = t120 i_alternative_fixes = t124 ).
    result = t49.

  ENDMETHOD.

  METHOD build_fix_string.
    DATA(t1) = i_stat_node.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d237_6d1df3154820.
    t3 = t4->find_direct_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t2.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t8.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t10 = t13.
    ELSE.
      DATA t14 TYPE string.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = t8.
      t15 = t16.
      t14 = t15->concat_tokens( ).
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t14.
      t10 = t17.
    ENDIF.
    t7 = t10.
    t6 = t7.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = t1.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d223_6da5f452a761.
    t19 = t20->find_direct_expression( i_type_9913 = t21 ).
    t18 = t19.
    DATA t22 TYPE string.
    DATA(t23) = ||.
    t22 = t23.
    DATA t24 TYPE abap_bool.
    DATA(t25) = t18.
    t24 = xsdbool( t25 IS BOUND ).
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t29) = t18.
      t28 = t29.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
      t27 = t28->find_direct_expression( i_type_9913 = t30 ).
      t26 = t27.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE abap_bool.
      DATA(t33) = t26.
      t32 = xsdbool( t33 IS BOUND ).
      t31 = t32.
      IF t32 = abap_true.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE string.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        DATA(t39) = t26.
        t38 = t39.
        t37 = t38->get_first_token( ).
        t36 = t37.
        DATA t40 TYPE string.
        DATA(t41) = t36.
        t40 = t41->str.
        t35 = t40.
        DATA(t42) = |(|.
        t34 = xsdbool( t35 = t42 ).
        t31 = t34.
      ENDIF.
      IF t31 = abap_true.
        DATA t43 TYPE string.
        DATA t44 TYPE string.
        DATA(t45) = ||.
        DATA t46 TYPE string.
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        DATA(t48) = t18.
        t47 = t48.
        t46 = t47->concat_tokens( ).
        DATA(t49) = strlen( t45 ).
        t44 = |{ t45 }{ t46 }|.
        DATA(t50) = |.|.
        DATA(t51) = strlen( t44 ).
        t43 = |{ t44 }{ t50 }|.
        t22 = t43.
      ELSE.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        DATA(t53) = abap_true.
        IF t53 = abap_true.
          DATA(t54) = VALUE string( ).
          DATA(t55) = VALUE string( ).
          DATA(t56) = ||.
          DATA(t57) = VALUE string( ).
          DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t59) = t6.
          t58 = t59.
          DATA(t60) = VALUE string( ).
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = t58.
          IF t62 IS INITIAL.
            t61 = abap_true.
          ELSEIF t62->has = abap_false.
            t61 = abap_true.
          ENDIF.
          IF t61 = abap_true.
            DATA(t63) = |undefined|.
            t60 = t63.
          ELSE.
            DATA t64 TYPE string.
            DATA(t65) = t58.
            t64 = t65->value.
            t60 = t64.
          ENDIF.
          t57 = t60.
          DATA(t66) = strlen( t56 ).
          t55 = |{ t56 }{ t57 }|.
          DATA(t67) = |( |.
          DATA(t68) = strlen( t55 ).
          t54 = |{ t55 }{ t67 }|.
          DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t69->has = abap_true.
          t69->value = t54.
          t52 = t69.
        ELSE.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t70.
          t52 = t70.
        ENDIF.
        t6 = t52.
        DATA t71 TYPE string.
        DATA t72 TYPE string.
        DATA(t73) = ||.
        DATA t74 TYPE string.
        DATA t75 TYPE REF TO zcl_lnt_expression_node.
        DATA(t76) = t18.
        t75 = t76.
        t74 = t75->concat_tokens( ).
        DATA(t77) = strlen( t73 ).
        t72 = |{ t73 }{ t74 }|.
        DATA(t78) = | ).|.
        DATA(t79) = strlen( t72 ).
        t71 = |{ t72 }{ t78 }|.
        t22 = t71.
      ENDIF.
    ELSE.
      DATA(t80) = |( ).|.
      t22 = t80.
    ENDIF.
    DATA(t81) = VALUE string( ).
    DATA(t82) = VALUE string( ).
    DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t84) = t6.
    t83 = t84.
    DATA(t85) = VALUE string( ).
    DATA(t86) = VALUE abap_bool( ).
    DATA(t87) = t83.
    IF t87 IS INITIAL.
      t86 = abap_true.
    ELSEIF t87->has = abap_false.
      t86 = abap_true.
    ENDIF.
    IF t86 = abap_true.
      DATA(t88) = |undefined|.
      t85 = t88.
    ELSE.
      DATA t89 TYPE string.
      DATA(t90) = t83.
      t89 = t90->value.
      t85 = t89.
    ENDIF.
    t82 = t85.
    DATA(t91) = t22.
    DATA(t92) = strlen( t82 ).
    t81 = |{ t82 }{ t91 }|.
    result = t81.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_fnctnl_wrtng_cnf( me->gt_cn_in_sr_rl_fn_wr_ts_fn_wrt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_fnctnl_wrtng_cnf( me->gt_cn_in_sr_rl_fn_wr_ts_fn_wrt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
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
        t1 = NEW zcl_lnt_fnctnl_wrtng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_fn_wr_ts_fn_wrt( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1520_e19dd372dc88.
  ENDMETHOD.
ENDCLASS.
