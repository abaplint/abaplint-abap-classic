* TS: src/rules/keyword_case.ts:110:1 KeywordCase
CLASS zcl_lnt_keyword_case DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_keyword_case_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_ky_cs_ts_kyw_cs RETURNING VALUE(result) TYPE REF TO zcl_lnt_keyword_case_conf.
    METHODS st_cn_in_sr_rl_ky_cs_ts_kyw_cs IMPORTING i_conf TYPE REF TO zcl_lnt_keyword_case_conf.
    METHODS rn_pr_in_sr_rl_ky_cs_ts_kyw_cs IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS traverse IMPORTING i_s TYPE REF TO zif_lnt_union_bb14dc41 i_parent TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS violates_rule IMPORTING i_keyword TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_keyword_case IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_keyword_case_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that keywords have the same case. Non-keywords must b|.
    t7 = t7 && |e lower case.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#use-your-teams-abap-formatter-settings|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |write 'hello world'.|.
    t28 = t32.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |WRITE 'hello world'.|.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |keyword_case| i_title = |Keyword case| i_short_description = t6 i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t52 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ky_cs_ts_kyw_cs.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ky_cs_ts_kyw_cs.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->conf IS INITIAL ) = abap_true.
      me->conf = NEW zcl_lnt_keyword_case_conf( ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t12 = me->conf->zlnt_view_read_sr_98fc2d44a45f( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = VALUE abap_bool( ).
    IF t12 IS INITIAL.
      t17 = abap_true.
    ELSEIF t12->has = abap_false.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
      me->conf = NEW zcl_lnt_keyword_case_conf( ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t21 = me->conf->zlnt_view_read_sr_10e8de9b4f9f( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = VALUE abap_bool( ).
    IF t21 IS INITIAL.
      t26 = abap_true.
    ELSEIF t21->has = abap_false.
      t26 = abap_true.
    ENDIF.
    IF t26 = abap_true.
      me->conf->zlnt_view_write_s_98f31361663b( p0 = NEW zcl_lnt_keyword_case_conf( )->zlnt_view_read_sr_10e8de9b4f9f( ) ).
    ENDIF.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ky_cs_ts_kyw_cs.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    DATA(t7) = me->reg.
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t7 ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t12 = me->conf->zlnt_view_read_sr_10e8de9b4f9f( ).
    IF t12 IS BOUND.
      IF t12->has = abap_true.
        t11 = xsdbool( t12->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t10 = t11.
    IF t11 = abap_true.
      t10 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
    ENDIF.
    IF t10 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t18 TYPE REF TO zcl_lnt_class.
      DATA t19 TYPE REF TO zcl_lnt_class.
      DATA t21 TYPE REF TO object.
      t21 = t2.
      t19 ?= t21.
      t18 = t19.
      DATA t23 TYPE REF TO zif_lnt_abap_file_information.
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      t25 = t18->get_main_abap_file( ).
      DATA t28 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t25 IS INITIAL ) = abap_true.
      ELSE.
        t28 = t25->info.
      ENDIF.
      t23 = t28.
      DATA t38 TYPE REF TO zcl_lnt_info_class_definition.
      IF xsdbool( t23 IS INITIAL ) = abap_true.
      ELSE.
        DATA t43 TYPE REF TO zif_lnt_abap_file_information.
        t43 = t23.
        DATA t45 TYPE string.
        DATA t46 TYPE REF TO zcl_lnt_abstract_object.
        t46 = t18.
        t45 = t46->name.
        t38 = t43->get_class_definition_by_name( i_name = t45 ).
      ENDIF.
      t16 = t38.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = VALUE abap_bool( ).
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t51 = xsdbool( t16 IS INITIAL ).
      t50 = t51.
      IF t51 = abap_false.
        DATA t60 TYPE REF TO zcl_lnt_info_class_definition.
        t60 = t16.
        DATA t65 TYPE REF TO zcl_lnt_class.
        DATA t67 TYPE REF TO object.
        t67 = t2.
        t65 ?= t67.
        t50 = t6->is_exception( i_def = t60 i_obj_ac26 = t65 ).
      ENDIF.
      IF t50 = abap_true.
        CREATE OBJECT result.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t69 = CAST zcl_lnt_keyword_case_conf( me->gt_cn_in_sr_rl_ky_cs_ts_kyw_cs( ) )->zlnt_view_read_sr_a5f5d8291c71( ).
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = VALUE abap_bool( ).
    DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t74 = t69.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t78) = VALUE abap_bool( ).
    IF t74 IS INITIAL.
      t78 = abap_true.
    ELSEIF t74->has = abap_false.
      t78 = abap_true.
    ENDIF.
    t73 = t78.
    t72 = t73.
    IF t73 = abap_false.
      DATA(t82) = t69.
      IF t82->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t72 = xsdbool( t82->value < CONV f( 1 ) ).
    ENDIF.
    IF t72 = abap_true.
      DATA(t87) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t87->has = abap_true.
      t87->value = CONV f( 10 ).
      t69 = t87.
    ENDIF.
    DATA t89 TYPE REF TO zcl_lnt_rl_skip.
    t89 = NEW zcl_lnt_rl_skip( i_conf = CAST zcl_lnt_keyword_case_conf( me->gt_cn_in_sr_rl_ky_cs_ts_kyw_cs( ) ) ).
    DATA t92 TYPE REF TO zcl_lnt_abstract_token.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t94 = t1->statements.
    DATA t99 TYPE REF TO zcl_lnt_statement_node.
    DATA t100 TYPE REF TO object.
    DATA(t101) = VALUE i( ).
    DO.
      t94->load( ).
      IF t101 >= lines( t94->items ).
        EXIT.
      ENDIF.
      CLEAR t100.
      READ TABLE t94->items INDEX t101 + 1 INTO t100.
      t101 = t101 + 1.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      CLEAR t99.
      IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t102 ?= t100.
        DATA t103 TYPE REF TO object.
        t103 = t102->as_ref( ).
        t99 ?= t103.
      ELSE.
        t99 ?= t100.
      ENDIF.
      IF xsdbool( t89->skip_statement( i_statement = t99 ) = abap_true ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t109 = me->traverse( i_s = t99 i_parent = t99->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ) ).
      DATA(t116) = t109.
      t116->load( ).
      IF xsdbool( lines( t116->items ) > 0 ) = abap_true.
        DATA t118 TYPE abap_bool.
        DATA t119 TYPE abap_bool.
        t119 = xsdbool( t92 IS BOUND ).
        t118 = t119.
        IF t119 = abap_true.
          DATA t122 TYPE REF TO zcl_lnt_position.
          CLEAR t122.
          DATA t125 TYPE REF TO zcl_lnt_token_and_keyword.
          CLEAR t125.
          DATA(t126) = t109.
          DATA t127 TYPE REF TO object.
          CLEAR t127.
          t126->load( ).
          CLEAR t127.
          READ TABLE t126->items INDEX 1 INTO t127.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          CLEAR t125.
          IF t127 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t128 ?= t127.
            DATA t129 TYPE REF TO object.
            t129 = t128->as_ref( ).
            t125 ?= t129.
          ELSE.
            t125 ?= t127.
          ENDIF.
          t122 = t125->token->start.
          DATA t132 TYPE REF TO zcl_lnt_position.
          t132 = t92->start.
          t118 = t122->equals( i_p = t132 ).
        ENDIF.
        IF t118 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t143 TYPE REF TO zcl_lnt_abstract_token.
        t143 = t99->colon.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        IF xsdbool( xsdbool( t143 IS INITIAL ) = abap_false ) = abap_true.
          DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t151.
          DATA t154 TYPE REF TO zcl_lnt_token_and_keyword.
          CLEAR t154.
          DATA(t155) = t109.
          DATA t156 TYPE REF TO object.
          CLEAR t156.
          t155->load( ).
          CLEAR t156.
          READ TABLE t155->items INDEX 1 INTO t156.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          CLEAR t154.
          IF t156 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t157 ?= t156.
            DATA t158 TYPE REF TO object.
            t158 = t157->as_ref( ).
            t154 ?= t158.
          ELSE.
            t154 ?= t156.
          ENDIF.
          t151->load( ).
          APPEND t154 TO t151->items.
          t151->save( ).
          t109 = t151.
        ENDIF.
        DATA t161 TYPE REF TO zcl_lnt_issue.
        t161 = me->build( i_tokens = t109 i_file = t1 ).
        t3->load( ).
        APPEND t161 TO t3->items.
        t3->save( ).
        t3->load( ).
        IF xsdbool( lines( t3->items ) > 100 ) = abap_true.
          EXIT.
        ENDIF.
        DATA t173 TYPE REF TO zcl_lnt_token_and_keyword.
        CLEAR t173.
        DATA t175 TYPE REF TO object.
        CLEAR t175.
        t109->load( ).
        CLEAR t175.
        READ TABLE t109->items INDEX 1 INTO t175.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        CLEAR t173.
        IF t175 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t176 ?= t175.
          DATA t177 TYPE REF TO object.
          t177 = t176->as_ref( ).
          t173 ?= t177.
        ELSE.
          t173 ?= t175.
        ENDIF.
        t92 = t173->token.
      ENDIF.
      DATA t180 TYPE f.
      t3->load( ).
      t180 = lines( t3->items ).
      IF t69->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      IF xsdbool( t180 >= t69->value ) = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD build.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_tokens.
    DATA(t2) = i_file.
    DATA t4 TYPE REF TO zcl_lnt_token_and_keyword.
    DATA t6 TYPE REF TO object.
    t1->load( ).
    READ TABLE t1->items INDEX 1 INTO t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t7 ?= t6.
      DATA t8 TYPE REF TO object.
      t8 = t7->as_ref( ).
      t4 ?= t8.
    ELSE.
      t4 ?= t6.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t11 TYPE REF TO zcl_lnt_token_and_keyword.
    DATA t13 TYPE REF TO object.
    t1->load( ).
    READ TABLE t1->items INDEX 1 INTO t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t14 ?= t13.
      DATA t15 TYPE REF TO object.
      t15 = t14->as_ref( ).
      t11 ?= t15.
    ELSE.
      t11 ?= t13.
    ENDIF.
    t9 = t11->token.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA t18 TYPE REF TO zcl_lnt_token_and_keyword.
    DATA t20 TYPE i.
    DATA t21 TYPE i.
    t1->load( ).
    t21 = lines( t1->items ).
    DATA(t23) = 1.
    t20 = t21 - t23.
    t20 = t20 + 1.
    DATA t24 TYPE REF TO object.
    t1->load( ).
    READ TABLE t1->items INDEX t20 INTO t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t25 ?= t24.
      DATA t26 TYPE REF TO object.
      t26 = t25->as_ref( ).
      t18 ?= t26.
    ELSE.
      t18 ?= t24.
    ENDIF.
    t17 = t18->token.
    DATA t27 TYPE string.
    t27 = t9->str.
    DATA t33 TYPE string.
    t33 = ||.
    IF xsdbool( t4->keyword = abap_true ) = abap_true.
      DATA(t40) = VALUE string( ).
      DATA(t41) = VALUE string( ).
      DATA(t42) = VALUE string( ).
      DATA(t43) = |Keyword should be |.
      DATA(t44) = VALUE string( ).
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t45 = me->conf->zlnt_view_read_sr_98fc2d44a45f( ).
      DATA(t48) = VALUE string( ).
      DATA(t49) = VALUE abap_bool( ).
      IF t45 IS INITIAL.
        t49 = abap_true.
      ELSEIF t45->has = abap_false.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        t48 = |undefined|.
      ELSE.
        t48 = t45->value.
      ENDIF.
      t44 = t48.
      DATA(t54) = strlen( t43 ).
      t42 = |{ t43 }{ t44 }|.
      DATA(t56) = strlen( t42 ).
      t41 = |{ t42 }{ | case: "| }|.
      DATA(t58) = strlen( t41 ).
      t40 = |{ t41 }{ t27 }|.
      DATA(t60) = strlen( t40 ).
      t33 = |{ t40 }{ |"| }|.
    ELSE.
      DATA t62 TYPE string.
      DATA(t63) = |Identifiers should be lower case: "|.
      DATA(t65) = strlen( t63 ).
      t62 = |{ t63 }{ t27 }|.
      DATA(t67) = strlen( t62 ).
      t33 = |{ t62 }{ |"| }|.
    ENDIF.
    DATA t68 TYPE REF TO zcl_lnt_edit_draft.
    t68 = NEW zcl_lnt_edit_draft( i_file = t2 ).
    DATA t72 TYPE REF TO zcl_lnt_token_and_keyword.
    DATA t73 TYPE REF TO object.
    DATA(t74) = VALUE i( ).
    DO.
      t1->load( ).
      IF t74 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t73.
      READ TABLE t1->items INDEX t74 + 1 INTO t73.
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
      DATA t77 TYPE string.
      t77 = t72->token->str.
      DATA t84 TYPE REF TO zcl_lnt_position.
      t84 = t72->token->start.
      IF xsdbool( t72->keyword = abap_true ) = abap_true.
        DATA(t95) = VALUE abap_bool( ).
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t96 = me->conf->zlnt_view_read_sr_98fc2d44a45f( ).
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t101->has = abap_true.
        t101->value = |lower|.
        t98 = t101.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE abap_bool( ).
        IF t96 IS BOUND.
          t103 = t96->has.
        ENDIF.
        IF t98 IS BOUND.
          t104 = t98->has.
        ENDIF.
        IF t103 = t104.
          IF t103 = abap_false.
            t95 = abap_true.
          ELSEIF t96->value = t98->value.
            t95 = abap_true.
          ENDIF.
        ENDIF.
        IF t95 = abap_true.
          DATA t105 TYPE REF TO zcl_lnt_edit_draft.
          t105 = t68.
          DATA t107 TYPE REF TO zcl_lnt_position.
          t107 = t84.
          DATA t109 TYPE string.
          DATA t110 TYPE string.
          DATA(t112) = strlen( t77 ).
          t110 = t77.
          TRANSLATE t110 TO LOWER CASE.
          t109 = t110.
          DATA(t113) = VALUE abap_bool( ).
          DATA(t114) = VALUE abap_bool( ).
          DATA t116 TYPE REF TO zcl_lnt_position.
          t116 = t105->start.
          DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t118.
          t114 = xsdbool( t116 IS INITIAL ).
          t113 = t114.
          IF t114 = abap_false.
            DATA t123 TYPE REF TO zcl_lnt_position.
            t123 = t107.
            DATA t125 TYPE REF TO zcl_lnt_position.
            t125 = t105->start.
            DATA t129 TYPE abap_bool.
            DATA t130 TYPE abap_bool.
            t130 = xsdbool( t123->row < t125->row ).
            t129 = t130.
            IF t130 = abap_false.
              DATA t135 TYPE abap_bool.
              DATA t136 TYPE abap_bool.
              t136 = xsdbool( t123->row = t125->row ).
              t135 = t136.
              IF t136 = abap_true.
                DATA t142 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t142 = t123->col.
                DATA t144 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t144 = t125->col.
                t135 = zlnt_runtime_numb_290eb04a9758=>compare( left = t142 right = t144 op = `<` ).
              ENDIF.
              t129 = t135.
            ENDIF.
            t113 = t129.
          ENDIF.
          IF t113 = abap_true.
            t105->start = t107.
            DELETE t105->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
          ENDIF.
          DATA t151 TYPE REF TO zcl_lnt_position.
          DATA t153 TYPE f.
          t153 = t107->row.
          DATA t159 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t159 = t107->col.
          DATA t164 TYPE f.
          t164 = strlen( t109 ).
          DATA(t168) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t168->has = abap_true.
          t168->value = t164.
          t151 = NEW zcl_lnt_position( i_row = t153 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t159 right = t168 op = `+` ) ).
          DATA(t169) = VALUE abap_bool( ).
          DATA(t170) = VALUE abap_bool( ).
          DATA t172 TYPE REF TO zcl_lnt_position.
          t172 = t105->end.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          t170 = xsdbool( t172 IS INITIAL ).
          t169 = t170.
          IF t170 = abap_false.
            DATA t180 TYPE REF TO zcl_lnt_position.
            t180 = t105->end.
            t169 = t151->is_after( i_p = t180 ).
          ENDIF.
          IF t169 = abap_true.
            t105->end = t151.
            DELETE t105->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
          ENDIF.
          DATA(t188) = VALUE string( ).
          DATA(t189) = VALUE string( ).
          DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t190 = t105->rows.
          DATA(t192) = VALUE i( ).
          DATA t193 TYPE f.
          DATA t194 TYPE f.
          t194 = t107->row.
          DATA(t199) = CONV f( 1 ).
          t193 = t194 - t199.
          IF t193 > range_i32_upper.
            t192 = range_i32_upper.
          ELSEIF t193 < range_i32_lower.
            t192 = range_i32_lower.
          ELSE.
            t192 = trunc( t193 ).
          ENDIF.
          t192 = t192 + 1.
          IF t190->has( t192 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t190->load( ).
          READ TABLE t190->items INDEX t192 INTO t189.
          t188 = t189.
          DATA t200 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t200 = t105->rows.
          DATA(t202) = VALUE i( ).
          DATA t203 TYPE f.
          DATA t204 TYPE f.
          t204 = t107->row.
          DATA(t209) = CONV f( 1 ).
          t203 = t204 - t209.
          IF t203 > range_i32_upper.
            t202 = range_i32_upper.
          ELSEIF t203 < range_i32_lower.
            t202 = range_i32_lower.
          ELSE.
            t202 = trunc( t203 ).
          ENDIF.
          DATA(t211) = VALUE string( ).
          DATA(t212) = VALUE string( ).
          DATA(t214) = 0.
          DATA t215 TYPE i.
          DATA t217 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t217 = t107->col.
          DATA(t223) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t223->has = abap_true.
          t223->value = CONV f( 1 ).
          t215 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t217 right = t223 op = `-` ) ).
          DATA(t224) = strlen( t188 ).
          IF t214 < 0.
            t214 = t214 + t224.
            IF t214 < 0.
              t214 = 0.
            ENDIF.
          ENDIF.
          IF t214 > t224 OR t215 <= 0.
          ELSE.
            IF t215 > t224 - t214.
              t215 = t224 - t214.
            ENDIF.
            t212 = t188+t214(t215).
          ENDIF.
          DATA(t226) = strlen( t212 ).
          t211 = |{ t212 }{ t109 }|.
          DATA(t227) = VALUE string( ).
          DATA t228 TYPE string.
          t228 = t188.
          DATA(t230) = VALUE string( ).
          DATA t232 TYPE i.
          DATA t234 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t235 = t107->col.
          DATA t240 TYPE f.
          t240 = strlen( t109 ).
          DATA(t244) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t244->has = abap_true.
          t244->value = t240.
          t234 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t235 right = t244 op = `+` ).
          DATA(t246) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t246->has = abap_true.
          t246->value = CONV f( 1 ).
          t232 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t234 right = t246 op = `-` ) ).
          DATA t247 TYPE i.
          t247 = strlen( t228 ).
          DATA(t250) = strlen( t228 ).
          IF t232 < 0.
            t232 = t232 + t250.
            IF t232 < 0.
              t232 = 0.
            ENDIF.
          ENDIF.
          IF t232 > t250 OR t247 <= 0.
          ELSE.
            IF t247 > t250 - t232.
              t247 = t250 - t232.
            ENDIF.
            t230 = t228+t232(t247).
          ENDIF.
          t227 = t230.
          DATA(t251) = strlen( t211 ).
          t200->put( p0 = t202 p1 = |{ t211 }{ t227 }| ).
        ELSE.
          DATA t252 TYPE REF TO zcl_lnt_edit_draft.
          t252 = t68.
          DATA t254 TYPE REF TO zcl_lnt_position.
          t254 = t84.
          DATA(t256) = VALUE string( ).
          DATA t257 TYPE string.
          DATA(t259) = strlen( t77 ).
          t257 = t77.
          IF t257 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t257 TO UPPER CASE.
          ELSE.
            t257 = zlnt_runtime_uppe_91169605024d=>full( t257 ).
          ENDIF.
          t256 = t257.
          DATA(t260) = VALUE abap_bool( ).
          DATA(t261) = VALUE abap_bool( ).
          DATA t263 TYPE REF TO zcl_lnt_position.
          t263 = t252->start.
          DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t265.
          t261 = xsdbool( t263 IS INITIAL ).
          t260 = t261.
          IF t261 = abap_false.
            DATA t270 TYPE REF TO zcl_lnt_position.
            t270 = t254.
            DATA t272 TYPE REF TO zcl_lnt_position.
            t272 = t252->start.
            DATA t276 TYPE abap_bool.
            DATA t277 TYPE abap_bool.
            t277 = xsdbool( t270->row < t272->row ).
            t276 = t277.
            IF t277 = abap_false.
              DATA t282 TYPE abap_bool.
              DATA t283 TYPE abap_bool.
              t283 = xsdbool( t270->row = t272->row ).
              t282 = t283.
              IF t283 = abap_true.
                DATA t289 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t289 = t270->col.
                DATA t291 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t291 = t272->col.
                t282 = zlnt_runtime_numb_290eb04a9758=>compare( left = t289 right = t291 op = `<` ).
              ENDIF.
              t276 = t282.
            ENDIF.
            t260 = t276.
          ENDIF.
          IF t260 = abap_true.
            t252->start = t254.
            DELETE t252->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
          ENDIF.
          DATA t298 TYPE REF TO zcl_lnt_position.
          DATA t300 TYPE f.
          t300 = t254->row.
          DATA t306 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t306 = t254->col.
          DATA t311 TYPE f.
          t311 = strlen( t256 ).
          DATA(t315) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t315->has = abap_true.
          t315->value = t311.
          t298 = NEW zcl_lnt_position( i_row = t300 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t306 right = t315 op = `+` ) ).
          DATA(t316) = VALUE abap_bool( ).
          DATA(t317) = VALUE abap_bool( ).
          DATA t319 TYPE REF TO zcl_lnt_position.
          t319 = t252->end.
          DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t321.
          t317 = xsdbool( t319 IS INITIAL ).
          t316 = t317.
          IF t317 = abap_false.
            DATA t327 TYPE REF TO zcl_lnt_position.
            t327 = t252->end.
            t316 = t298->is_after( i_p = t327 ).
          ENDIF.
          IF t316 = abap_true.
            t252->end = t298.
            DELETE t252->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
          ENDIF.
          DATA(t335) = VALUE string( ).
          DATA(t336) = VALUE string( ).
          DATA t337 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t337 = t252->rows.
          DATA(t339) = VALUE i( ).
          DATA t340 TYPE f.
          DATA t341 TYPE f.
          t341 = t254->row.
          DATA(t346) = CONV f( 1 ).
          t340 = t341 - t346.
          IF t340 > range_i32_upper.
            t339 = range_i32_upper.
          ELSEIF t340 < range_i32_lower.
            t339 = range_i32_lower.
          ELSE.
            t339 = trunc( t340 ).
          ENDIF.
          t339 = t339 + 1.
          IF t337->has( t339 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t337->load( ).
          READ TABLE t337->items INDEX t339 INTO t336.
          t335 = t336.
          DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t347 = t252->rows.
          DATA(t349) = VALUE i( ).
          DATA t350 TYPE f.
          DATA t351 TYPE f.
          t351 = t254->row.
          DATA(t356) = CONV f( 1 ).
          t350 = t351 - t356.
          IF t350 > range_i32_upper.
            t349 = range_i32_upper.
          ELSEIF t350 < range_i32_lower.
            t349 = range_i32_lower.
          ELSE.
            t349 = trunc( t350 ).
          ENDIF.
          DATA(t358) = VALUE string( ).
          DATA(t359) = VALUE string( ).
          DATA(t361) = 0.
          DATA t362 TYPE i.
          DATA t364 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t364 = t254->col.
          DATA(t370) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t370->has = abap_true.
          t370->value = CONV f( 1 ).
          t362 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t364 right = t370 op = `-` ) ).
          DATA(t371) = strlen( t335 ).
          IF t361 < 0.
            t361 = t361 + t371.
            IF t361 < 0.
              t361 = 0.
            ENDIF.
          ENDIF.
          IF t361 > t371 OR t362 <= 0.
          ELSE.
            IF t362 > t371 - t361.
              t362 = t371 - t361.
            ENDIF.
            t359 = t335+t361(t362).
          ENDIF.
          DATA(t373) = strlen( t359 ).
          t358 = |{ t359 }{ t256 }|.
          DATA(t374) = VALUE string( ).
          DATA t375 TYPE string.
          t375 = t335.
          DATA(t377) = VALUE string( ).
          DATA t379 TYPE i.
          DATA t381 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t382 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t382 = t254->col.
          DATA t387 TYPE f.
          t387 = strlen( t256 ).
          DATA(t391) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t391->has = abap_true.
          t391->value = t387.
          t381 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t382 right = t391 op = `+` ).
          DATA(t393) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t393->has = abap_true.
          t393->value = CONV f( 1 ).
          t379 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t381 right = t393 op = `-` ) ).
          DATA t394 TYPE i.
          t394 = strlen( t375 ).
          DATA(t397) = strlen( t375 ).
          IF t379 < 0.
            t379 = t379 + t397.
            IF t379 < 0.
              t379 = 0.
            ENDIF.
          ENDIF.
          IF t379 > t397 OR t394 <= 0.
          ELSE.
            IF t394 > t397 - t379.
              t394 = t397 - t379.
            ENDIF.
            t377 = t375+t379(t394).
          ENDIF.
          t374 = t377.
          DATA(t398) = strlen( t358 ).
          t347->put( p0 = t349 p1 = |{ t358 }{ t374 }| ).
        ENDIF.
      ELSE.
        DATA t399 TYPE REF TO zcl_lnt_edit_draft.
        t399 = t68.
        DATA t401 TYPE REF TO zcl_lnt_position.
        t401 = t84.
        DATA t403 TYPE string.
        DATA t404 TYPE string.
        DATA(t406) = strlen( t77 ).
        t404 = t77.
        TRANSLATE t404 TO LOWER CASE.
        t403 = t404.
        DATA(t407) = VALUE abap_bool( ).
        DATA(t408) = VALUE abap_bool( ).
        DATA t410 TYPE REF TO zcl_lnt_position.
        t410 = t399->start.
        DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t412.
        t408 = xsdbool( t410 IS INITIAL ).
        t407 = t408.
        IF t408 = abap_false.
          DATA t417 TYPE REF TO zcl_lnt_position.
          t417 = t401.
          DATA t419 TYPE REF TO zcl_lnt_position.
          t419 = t399->start.
          DATA t423 TYPE abap_bool.
          DATA t424 TYPE abap_bool.
          t424 = xsdbool( t417->row < t419->row ).
          t423 = t424.
          IF t424 = abap_false.
            DATA t429 TYPE abap_bool.
            DATA t430 TYPE abap_bool.
            t430 = xsdbool( t417->row = t419->row ).
            t429 = t430.
            IF t430 = abap_true.
              DATA t436 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t436 = t417->col.
              DATA t438 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t438 = t419->col.
              t429 = zlnt_runtime_numb_290eb04a9758=>compare( left = t436 right = t438 op = `<` ).
            ENDIF.
            t423 = t429.
          ENDIF.
          t407 = t423.
        ENDIF.
        IF t407 = abap_true.
          t399->start = t401.
          DELETE t399->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
        ENDIF.
        DATA t445 TYPE REF TO zcl_lnt_position.
        DATA t447 TYPE f.
        t447 = t401->row.
        DATA t453 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t453 = t401->col.
        DATA t458 TYPE f.
        t458 = strlen( t403 ).
        DATA(t462) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t462->has = abap_true.
        t462->value = t458.
        t445 = NEW zcl_lnt_position( i_row = t447 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t453 right = t462 op = `+` ) ).
        DATA(t463) = VALUE abap_bool( ).
        DATA(t464) = VALUE abap_bool( ).
        DATA t466 TYPE REF TO zcl_lnt_position.
        t466 = t399->end.
        DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t468.
        t464 = xsdbool( t466 IS INITIAL ).
        t463 = t464.
        IF t464 = abap_false.
          DATA t474 TYPE REF TO zcl_lnt_position.
          t474 = t399->end.
          t463 = t445->is_after( i_p = t474 ).
        ENDIF.
        IF t463 = abap_true.
          t399->end = t445.
          DELETE t399->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
        ENDIF.
        DATA(t482) = VALUE string( ).
        DATA(t483) = VALUE string( ).
        DATA t484 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t484 = t399->rows.
        DATA(t486) = VALUE i( ).
        DATA t487 TYPE f.
        DATA t488 TYPE f.
        t488 = t401->row.
        DATA(t493) = CONV f( 1 ).
        t487 = t488 - t493.
        IF t487 > range_i32_upper.
          t486 = range_i32_upper.
        ELSEIF t487 < range_i32_lower.
          t486 = range_i32_lower.
        ELSE.
          t486 = trunc( t487 ).
        ENDIF.
        t486 = t486 + 1.
        IF t484->has( t486 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t484->load( ).
        READ TABLE t484->items INDEX t486 INTO t483.
        t482 = t483.
        DATA t494 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t494 = t399->rows.
        DATA(t496) = VALUE i( ).
        DATA t497 TYPE f.
        DATA t498 TYPE f.
        t498 = t401->row.
        DATA(t503) = CONV f( 1 ).
        t497 = t498 - t503.
        IF t497 > range_i32_upper.
          t496 = range_i32_upper.
        ELSEIF t497 < range_i32_lower.
          t496 = range_i32_lower.
        ELSE.
          t496 = trunc( t497 ).
        ENDIF.
        DATA(t505) = VALUE string( ).
        DATA(t506) = VALUE string( ).
        DATA(t508) = 0.
        DATA t509 TYPE i.
        DATA t511 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t511 = t401->col.
        DATA(t517) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t517->has = abap_true.
        t517->value = CONV f( 1 ).
        t509 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t511 right = t517 op = `-` ) ).
        DATA(t518) = strlen( t482 ).
        IF t508 < 0.
          t508 = t508 + t518.
          IF t508 < 0.
            t508 = 0.
          ENDIF.
        ENDIF.
        IF t508 > t518 OR t509 <= 0.
        ELSE.
          IF t509 > t518 - t508.
            t509 = t518 - t508.
          ENDIF.
          t506 = t482+t508(t509).
        ENDIF.
        DATA(t520) = strlen( t506 ).
        t505 = |{ t506 }{ t403 }|.
        DATA(t521) = VALUE string( ).
        DATA t522 TYPE string.
        t522 = t482.
        DATA(t524) = VALUE string( ).
        DATA t526 TYPE i.
        DATA t528 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t529 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t529 = t401->col.
        DATA t534 TYPE f.
        t534 = strlen( t403 ).
        DATA(t538) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t538->has = abap_true.
        t538->value = t534.
        t528 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t529 right = t538 op = `+` ).
        DATA(t540) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t540->has = abap_true.
        t540->value = CONV f( 1 ).
        t526 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t528 right = t540 op = `-` ) ).
        DATA t541 TYPE i.
        t541 = strlen( t522 ).
        DATA(t544) = strlen( t522 ).
        IF t526 < 0.
          t526 = t526 + t544.
          IF t526 < 0.
            t526 = 0.
          ENDIF.
        ENDIF.
        IF t526 > t544 OR t541 <= 0.
        ELSE.
          IF t541 > t544 - t526.
            t541 = t544 - t526.
          ENDIF.
          t524 = t522+t526(t541).
        ENDIF.
        t521 = t524.
        DATA(t545) = strlen( t505 ).
        t494->put( p0 = t496 p1 = |{ t505 }{ t521 }| ).
      ENDIF.
    ENDDO.
    DATA t547 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t547 = t68->to_edit( ).
    DATA t551 TYPE REF TO zcl_lnt_position.
    t551 = t9->start.
    DATA t556 TYPE REF TO zcl_lnt_position.
    DATA t557 TYPE REF TO zcl_lnt_abstract_token.
    t557 = t17.
    DATA t560 TYPE f.
    t560 = t557->start->row.
    DATA t567 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t567 = t557->start->col.
    DATA t573 TYPE f.
    t573 = strlen( t557->str ).
    DATA(t578) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t578->has = abap_true.
    t578->value = t573.
    t556 = NEW zcl_lnt_position( i_row = t560 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t567 right = t578 op = `+` ) ).
    DATA(t580) = VALUE string( ).
    DATA t581 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t586 TYPE string.
    DATA(t587) = |Checks that keywords have the same case. Non-keywords must b|.
    t587 = t587 && |e lower case.|.
    t586 = t587.
    DATA t588 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t591) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t591 = t591 && |nABAP.md#use-your-teams-abap-formatter-settings|.
    DATA(t592) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t592->has = abap_true.
    t592->value = t591.
    t588 = t592.
    DATA t594 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t598 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t598.
    t598->load( ).
    APPEND |Styleguide| TO t598->items.
    t598->save( ).
    t598->load( ).
    APPEND |SingleFile| TO t598->items.
    t598->save( ).
    t598->load( ).
    APPEND |Quickfix| TO t598->items.
    t598->save( ).
    t594 = t598.
    DATA t608 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t612) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t612->has = abap_true.
    t612->value = |write 'hello world'.|.
    t608 = t612.
    DATA(t618) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t618->has = abap_true.
    t618->value = |WRITE 'hello world'.|.
    DATA t620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t622 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t581 = NEW zcl_lnt_irule_metadata( i_key = |keyword_case| i_title = |Keyword case| i_short_description = t586 i_bad_example = t608 i_good_example = t618 i_extended_information = t588 i_tags = t594 i_pragma = t620 i_pseudo_comment = t622 ).
    CREATE OBJECT t581->zlnt_view_ownkeys_b0e8086400eb.
    t581->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t624 ).
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t625 ).
    ENDIF.
    DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t626 ).
    ENDIF.
    DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t627 ).
    ENDIF.
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t628 ).
    ENDIF.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t629 ).
    ENDIF.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t630 ).
    ENDIF.
    CREATE OBJECT t581->zlnt_json_ownkeys_70e5fd461788.
    t581->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t632 ).
    DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t634 ).
    ENDIF.
    DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t636 ).
    ENDIF.
    DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t638 ).
    ENDIF.
    DATA t640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t640 ).
    ENDIF.
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t642 ).
    ENDIF.
    DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t644 ).
    ENDIF.
    t580 = t581->key.
    DATA t651 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    result = zcl_lnt_issue=>at_range( i_file = t2 i_start = t551 i_end = t556 i_message_26cb = t33 i_key = t580 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t547 i_alternative_fixes = t651 ).

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_s.
    DATA(t2) = i_parent.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t1->get_children( ).
    t6 ?= t7.
    t5 = t6.
    DATA(t9) = VALUE i( ).
    t9 = 0.
    DO.
      t5->load( ).
      IF xsdbool( t9 < lines( t5->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t16.
      DATA(t18) = t9.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      t5->load( ).
      CLEAR t19.
      READ TABLE t5->items INDEX t18 INTO t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t16.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t19.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t16 ?= t21.
      ELSE.
        t16 ?= t19.
      ENDIF.
      t15 = t16.
      IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_token_node_regex ) = abap_true.
        DATA t25 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t25.
        DATA(t27) = VALUE i( ).
        DATA(t29) = 1.
        t27 = t9 + t29.
        t27 = t27 + 1.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        t5->load( ).
        CLEAR t30.
        READ TABLE t5->items INDEX t27 INTO t30.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        CLEAR t25.
        IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t31 ?= t30.
          DATA t32 TYPE REF TO object.
          t32 = t31->as_ref( ).
          t25 ?= t32.
        ELSE.
          t25 ?= t30.
        ENDIF.
        DATA(t33) = VALUE abap_bool( ).
        DATA(t34) = VALUE abap_bool( ).
        DATA t35 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t35 = me->conf->zlnt_view_read_sr_274b357e7ae8( ).
        IF t35 IS BOUND.
          IF t35->has = abap_true.
            t34 = xsdbool( t35->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t33 = t34.
        IF t34 = abap_true.
          t33 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
        ENDIF.
        IF t33 = abap_true.
          DATA(t41) = 1.
          t9 = t9 + t41.
          CONTINUE.
        ENDIF.
        DATA(t42) = VALUE string( ).
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t45.
        DATA t46 TYPE REF TO object.
        DATA t47 TYPE REF TO zcl_lnt_token_node_regex.
        CLEAR t47.
        DATA t49 TYPE REF TO object.
        t49 = t15.
        t47 ?= t49.
        t46 = t47->get_db65( ).
        t45 ?= t46.
        t42 = t45->str.
        DATA(t52) = VALUE string( ).
        DATA(t53) = VALUE string( ).
        DATA(t55) = strlen( t42 ).
        t53 = t42.
        IF t53 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t53 TO UPPER CASE.
        ELSE.
          t53 = zlnt_runtime_uppe_91169605024d=>full( t53 ).
        ENDIF.
        t52 = t53.
        DATA(t56) = VALUE abap_bool( ).
        DATA(t57) = VALUE abap_bool( ).
        t57 = xsdbool( t52 = |OTHERS| ).
        t56 = t57.
        IF t57 = abap_false.
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE abap_bool( ).
          t61 = xsdbool( t52 = |TEXT| ).
          t60 = t61.
          IF t61 = abap_true.
            DATA(t64) = VALUE abap_bool( ).
            DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t65.
            DATA t66 TYPE REF TO zif_lnt_union_4cf1d054.
            t66 = t25.
            DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t68.
            IF xsdbool( t66 IS INITIAL ) = abap_true.
              CLEAR t68.
            ELSE.
              DATA(t72) = VALUE string( ).
              t72 = t66->concat_tokens( ).
              DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t74->has = abap_true.
              t74->value = t72.
              t68 = t74.
            ENDIF.
            t65 = t68.
            DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t78->has = abap_true.
            t78->value = |-|.
            t75 = t78.
            DATA(t80) = VALUE abap_bool( ).
            DATA(t81) = VALUE abap_bool( ).
            IF t65 IS BOUND.
              t80 = t65->has.
            ENDIF.
            IF t75 IS BOUND.
              t81 = t75->has.
            ENDIF.
            IF t80 = t81.
              IF t80 = abap_false.
                t64 = abap_true.
              ELSEIF t65->value = t75->value.
                t64 = abap_true.
              ENDIF.
            ENDIF.
            t60 = t64.
          ENDIF.
          t56 = t60.
        ENDIF.
        IF t56 = abap_true.
          DATA(t84) = 1.
          t9 = t9 + t84.
          CONTINUE.
        ENDIF.
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = VALUE abap_bool( ).
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = VALUE abap_bool( ).
        t88 = me->conf->zlnt_view_read_sr_767dc70211a6( ).
        t87 = xsdbool( t88 = abap_true ).
        t86 = t87.
        IF t87 = abap_true.
          t86 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_function_module ).
        ENDIF.
        t85 = t86.
        IF t86 = abap_true.
          t85 = xsdbool( t52 <> |FUNCTION| ).
        ENDIF.
        IF t85 = abap_true.
          DATA(t98) = 1.
          t9 = t9 + t98.
          CONTINUE.
        ENDIF.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = VALUE abap_bool( ).
        t100 = xsdbool( t52 = |SCREEN| ).
        t99 = t100.
        IF t100 = abap_true.
          DATA(t103) = VALUE abap_bool( ).
          DATA(t104) = VALUE abap_bool( ).
          DATA(t105) = VALUE abap_bool( ).
          t105 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_modify_database ).
          t104 = t105.
          IF t105 = abap_false.
            t104 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_modify_internal ).
          ENDIF.
          t103 = t104.
          IF t104 = abap_false.
            t103 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_loop ).
          ENDIF.
          t99 = t103.
        ENDIF.
        IF t99 = abap_true.
          DATA(t113) = 1.
          t9 = t9 + t113.
          CONTINUE.
        ENDIF.
        DATA(t114) = VALUE abap_bool( ).
        DATA(t115) = VALUE abap_bool( ).
        DATA(t117) = VALUE string( ).
        DATA(t119) = strlen( t42 ).
        t117 = t42.
        TRANSLATE t117 TO LOWER CASE.
        t115 = xsdbool( t42 <> t117 ).
        t114 = t115.
        IF t115 = abap_true.
          DATA t121 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t121.
          DATA t122 TYPE REF TO object.
          DATA t123 TYPE REF TO zcl_lnt_token_node_regex.
          CLEAR t123.
          DATA t125 TYPE REF TO object.
          t125 = t15.
          t123 ?= t125.
          t122 = t123->get_db65( ).
          t121 ?= t122.
          t114 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_lx_identifier ).
        ENDIF.
        IF t114 = abap_true.
          DATA(t126) = t3.
          DATA t127 TYPE REF TO zcl_lnt_token_and_keyword.
          DATA t129 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t129.
          DATA t130 TYPE REF TO object.
          DATA t131 TYPE REF TO zcl_lnt_token_node_regex.
          CLEAR t131.
          DATA t133 TYPE REF TO object.
          t133 = t15.
          t131 ?= t133.
          t130 = t131->get_db65( ).
          t129 ?= t130.
          t127 = NEW zcl_lnt_token_and_keyword( i_token = t129 i_keyword = abap_false ).
          CREATE OBJECT t127->zlnt_view_ownkeys_b0e8086400eb.
          t127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t136 ).
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t137 ).
          ENDIF.
          CREATE OBJECT t127->zlnt_json_ownkeys_70e5fd461788.
          t127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t139 ).
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyword| p1 = t141 ).
          ENDIF.
          t126->load( ).
          APPEND t127 TO t126->items.
          t126->save( ).
        ENDIF.
      ELSE.
        IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
          DATA(t144) = VALUE string( ).
          DATA t148 TYPE REF TO zcl_lnt_token_node.
          CLEAR t148.
          DATA t150 TYPE REF TO object.
          t150 = t15.
          t148 ?= t150.
          t144 = t148->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->str.
          DATA(t153) = VALUE abap_bool( ).
          DATA(t154) = VALUE abap_bool( ).
          t154 = me->violates_rule( i_keyword = t144 ).
          t153 = t154.
          IF t154 = abap_true.
            DATA t157 TYPE REF TO zcl_lnt_abstract_token.
            DATA t158 TYPE REF TO zcl_lnt_token_node.
            CLEAR t158.
            DATA t160 TYPE REF TO object.
            t160 = t15.
            t158 ?= t160.
            t157 = t158->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
            t153 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_lx_identifier ).
          ENDIF.
          IF t153 = abap_true.
            DATA(t161) = t3.
            DATA t162 TYPE REF TO zcl_lnt_token_and_keyword.
            DATA t165 TYPE REF TO zcl_lnt_token_node.
            CLEAR t165.
            DATA t167 TYPE REF TO object.
            t167 = t15.
            t165 ?= t167.
            t162 = NEW zcl_lnt_token_and_keyword( i_token = t165->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ) i_keyword = abap_true ).
            CREATE OBJECT t162->zlnt_view_ownkeys_b0e8086400eb.
            t162->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t170.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t170 ).
            DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t171.
            IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t171 ).
            ENDIF.
            CREATE OBJECT t162->zlnt_json_ownkeys_70e5fd461788.
            t162->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t173.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t173 ).
            DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t175.
            IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyword| p1 = t175 ).
            ENDIF.
            t161->load( ).
            APPEND t162 TO t161->items.
            t161->save( ).
          ENDIF.
        ELSE.
          IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_expression_node ) = abap_true.
            DATA t181 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t181.
            DATA t183 TYPE REF TO object.
            t183 = t15.
            t181 ?= t183.
            t3 = t3->concat( p0 = me->traverse( i_s = t181 i_parent = t2 ) ).
          ELSE.
            DATA t185 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
            DATA t186 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
            DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t190->has = abap_true.
            t190->value = |keyword_case, traverseStatement, unexpected node type|.
            t186 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t190 ).
            t185 = NEW #( ).
            t185->payload = t186.
            CLEAR t185->source_value.
            DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t192.
            DATA t193 TYPE REF TO object.
            CLEAR t192.
            t193 = t186.
            TRY.
                t185->source_value ?= t193.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t185->source_value IS NOT BOUND.
              TRY.
                  t192 ?= t186.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t192 IS BOUND.
                t185->source_value = t192->source( ).
              ENDIF.
              IF t185->source_value IS NOT BOUND.
                CREATE OBJECT t185->source_value.
                t185->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t185->source_value->oval = t186.
              ENDIF.
            ENDIF.
            RAISE EXCEPTION t185.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t196) = 1.
      t9 = t9 + t196.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD violates_rule.
    DATA(t1) = i_keyword.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t4 = me->conf->zlnt_view_read_sr_20e2964f7001( ).
    t3 = xsdbool( t4 IS BOUND ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t8.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t10 = me->conf->zlnt_view_read_sr_20e2964f7001( ).
      DATA(t13) = VALUE string( ).
      t10->dense( ).
      DATA(t14) = VALUE i( ).
      DO.
        t10->load( ).
        IF t14 >= lines( t10->items ).
          EXIT.
        ENDIF.
        CLEAR t13.
        READ TABLE t10->items INDEX t14 + 1 INTO t13.
        IF t10->has( t14 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t14 = t14 + 1.
        DATA t16 TYPE string.
        DATA(t18) = strlen( t13 ).
        t16 = t13.
        IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t16 TO UPPER CASE.
        ELSE.
          t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
        ENDIF.
        t8->load( ).
        APPEND t16 TO t8->items.
        t8->save( ).
      ENDDO.
      t7 = t8.
      DATA t20 TYPE string.
      DATA(t22) = strlen( t1 ).
      t20 = t1.
      IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t20 TO UPPER CASE.
      ELSE.
        t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
      ENDIF.
      t2 = t7->includes( p0 = t20 ).
    ENDIF.
    IF t2 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t25 = me->conf->zlnt_view_read_sr_98fc2d44a45f( ).
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |lower|.
    t27 = t30.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    IF t25 IS BOUND.
      t32 = t25->has.
    ENDIF.
    IF t27 IS BOUND.
      t33 = t27->has.
    ENDIF.
    IF t32 = t33.
      IF t32 = abap_false.
        t24 = abap_true.
      ELSEIF t25->value = t27->value.
        t24 = abap_true.
      ENDIF.
    ENDIF.
    IF t24 = abap_true.
      DATA t36 TYPE string.
      DATA(t38) = strlen( t1 ).
      t36 = t1.
      TRANSLATE t36 TO LOWER CASE.
      result = xsdbool( t1 <> t36 ).
      RETURN.
    ENDIF.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t40 = me->conf->zlnt_view_read_sr_98fc2d44a45f( ).
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t45->has = abap_true.
    t45->value = |upper|.
    t42 = t45.
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = VALUE abap_bool( ).
    IF t40 IS BOUND.
      t47 = t40->has.
    ENDIF.
    IF t42 IS BOUND.
      t48 = t42->has.
    ENDIF.
    IF t47 = t48.
      IF t47 = abap_false.
        t39 = abap_true.
      ELSEIF t40->value = t42->value.
        t39 = abap_true.
      ENDIF.
    ENDIF.
    IF t39 = abap_true.
      DATA t51 TYPE string.
      DATA(t53) = strlen( t1 ).
      t51 = t1.
      IF t51 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t51 TO UPPER CASE.
      ELSE.
        t51 = zlnt_runtime_uppe_91169605024d=>full( t51 ).
      ENDIF.
      result = xsdbool( t1 <> t51 ).
      RETURN.
    ENDIF.

    result = abap_false.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_keyword_case_conf( me->gt_cn_in_sr_rl_ky_cs_ts_kyw_cs( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_keyword_case_conf( me->gt_cn_in_sr_rl_ky_cs_ts_kyw_cs( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_keyword_case_conf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND i_conf->tag <>
        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
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
        t1 = NEW zcl_lnt_keyword_case_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ky_cs_ts_kyw_cs( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ky_cs_ts_kyw_cs( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1557_93a2fd328614.
  ENDMETHOD.
ENDCLASS.
