* TS: src/rules/exporting.ts:14:1 Exporting
CLASS zcl_lnt_exporting DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_exporting_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS run_parsed REDEFINITION.
    METHODS gt_cnf_ins_src_rls_exp_ts_expr RETURNING VALUE(result) TYPE REF TO zcl_lnt_exporting_conf.
    METHODS st_cnf_ins_src_rls_exp_ts_expr IMPORTING i_conf TYPE REF TO zcl_lnt_exporting_conf.
    METHODS check_bf6e IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_exporting IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_exporting_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |call_method( EXPORTING foo = bar ).|.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = |call_method( foo = bar ).|.
    t14 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t23 = t23 && |nABAP.md#omit-the-optional-keyword-exporting\nhttps://docs.ab|.
    t23 = t23 && |apopenchecks.org/checks/30/|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    t20 = t24.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t30.
    t30->load( ).
    APPEND |Styleguide| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |Quickfix| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |SingleFile| TO t30->items.
    t30->save( ).
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |exporting| i_title = |EXPORTING can be omitted| i_short_description = |Detects EXPORTING statements which can be omitted.| i_bad_example = t8 i_good_example = t14 i_extended_information = t20 i_tags = t30 i_pragma = t40 i_pseudo_comment = t42 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
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
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |The EXPORTING keyword can be omitted|.

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    IF xsdbool( t2->get_type( ) = |INTF| ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = t1->statements.
    DATA t15 TYPE REF TO zcl_lnt_statement_node.
    DATA t16 TYPE REF TO object.
    DATA(t17) = VALUE i( ).
    DO.
      t10->load( ).
      IF t17 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t10->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t24.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d223_6da5f452a761.
      t24->load( ).
      APPEND t27 TO t24->items.
      t24->save( ).
      DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d221_0c54ed92df99.
      t24->load( ).
      APPEND t29 TO t24->items.
      t24->save( ).
      t23 = t24.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t31.
      t20 = t15->find_all_expressions_multi( i_type_9913 = t23 i_recursive = t31 ).
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      DATA(t35) = VALUE i( ).
      DO.
        t20->load( ).
        IF t35 >= lines( t20->items ).
          EXIT.
        ENDIF.
        CLEAR t34.
        READ TABLE t20->items INDEX t35 + 1 INTO t34.
        t35 = t35 + 1.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        CLEAR t33.
        IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t36 ?= t34.
          DATA t37 TYPE REF TO object.
          t37 = t36->as_ref( ).
          t33 ?= t37.
        ELSE.
          t33 ?= t34.
        ENDIF.
        DATA t39 TYPE REF TO zif_lnt_statement_runnable.
        t39 = t33->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        IF xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_st_method_call_body ) = abap_true.
          DATA t42 TYPE string.
          t42 = t33->get_first_token( )->str.
          IF xsdbool( t42 <> |(| ) = abap_true.
            CONTINUE.
          ENDIF.
          t3 = t3->concat( p0 = me->check_bf6e( i_node = t33 i_file = t1 ) ).
        ELSE.
          DATA t55 TYPE REF TO zif_lnt_statement_runnable.
          t55 = t33->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          IF xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_method_call ) = abap_true.
            t3 = t3->concat( p0 = me->check_bf6e( i_node = t33 i_file = t1 ) ).
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD gt_cnf_ins_src_rls_exp_ts_expr.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cnf_ins_src_rls_exp_ts_expr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    t3 = i_node->find_first_expression( i_type_9913 = t6 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t16 TYPE string.
    DATA t17 TYPE string.
    t17 = t3->get_first_token( )->str.
    DATA(t24) = strlen( t17 ).
    t16 = t17.
    IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t16 TO UPPER CASE.
    ELSE.
      t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
    ENDIF.
    IF xsdbool( t16 <> |EXPORTING| ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t27 = t3->get_direct_tokens( ).
    DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t33.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    DATA t37 TYPE REF TO object.
    DATA(t38) = VALUE i( ).
    DO.
      t27->load( ).
      IF t38 >= lines( t27->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t27->items INDEX t38 + 1 INTO t37.
      t38 = t38 + 1.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t36.
      IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t37.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t36 ?= t40.
      ELSE.
        t36 ?= t37.
      ENDIF.
      DATA t42 TYPE string.
      DATA t43 TYPE string.
      t43 = t36->str.
      DATA(t48) = strlen( t43 ).
      t42 = t43.
      IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t42 TO UPPER CASE.
      ELSE.
        t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
      ENDIF.
      t33->load( ).
      APPEND t42 TO t33->items.
      t33->save( ).
    ENDDO.
    t31 = t33.
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = VALUE abap_bool( ).
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t55 = t31->get( p0 = 0 ).
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t61->has = abap_true.
    t61->value = |EXPORTING|.
    t58 = t61.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = VALUE abap_bool( ).
    IF t55 IS BOUND.
      t63 = t55->has.
    ENDIF.
    IF t58 IS BOUND.
      t64 = t58->has.
    ENDIF.
    IF t63 = t64.
      IF t63 = abap_false.
        t54 = abap_true.
      ELSEIF t55->value = t58->value.
        t54 = abap_true.
      ENDIF.
    ENDIF.
    t53 = t54.
    IF t54 = abap_true.
      t53 = xsdbool( t31->includes( p0 = |IMPORTING| ) = abap_false ).
    ENDIF.
    t52 = t53.
    IF t53 = abap_true.
      t52 = xsdbool( t31->includes( p0 = |RECEIVING| ) = abap_false ).
    ENDIF.
    t51 = t52.
    IF t52 = abap_true.
      t51 = xsdbool( t31->includes( p0 = |EXCEPTIONS| ) = abap_false ).
    ENDIF.
    t50 = t51.
    IF t51 = abap_true.
      t50 = xsdbool( t31->includes( p0 = |CHANGING| ) = abap_false ).
    ENDIF.
    IF t50 = abap_true.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t87 = t3->get_all_tokens( ).
      DATA t90 TYPE REF TO object.
      t87->load( ).
      READ TABLE t87->items INDEX 2 INTO t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t91 ?= t90.
        DATA t92 TYPE REF TO object.
        t92 = t91->as_ref( ).
        t86 ?= t92.
      ELSE.
        t86 ?= t90.
      ENDIF.
      DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t96 TYPE REF TO zcl_lnt_position.
      DATA t98 TYPE REF TO zcl_lnt_abstract_token.
      DATA t100 TYPE REF TO object.
      t27->load( ).
      READ TABLE t27->items INDEX 1 INTO t100.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t101 ?= t100.
        DATA t102 TYPE REF TO object.
        t102 = t101->as_ref( ).
        t98 ?= t102.
      ELSE.
        t98 ?= t100.
      ENDIF.
      t96 = t98->start.
      DATA t108 TYPE REF TO zcl_lnt_position.
      t108 = t86->start.
      t94 = zcl_lnt_edit_helper=>delete_range( i_file = t2 i_start = t96 i_end = t108 ).
      DATA t111 TYPE REF TO zcl_lnt_issue.
      DATA t113 TYPE REF TO zcl_lnt_abstract_token.
      DATA t115 TYPE REF TO object.
      t27->load( ).
      READ TABLE t27->items INDEX 1 INTO t115.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t115 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t116 ?= t115.
        DATA t117 TYPE REF TO object.
        t117 = t116->as_ref( ).
        t113 ?= t117.
      ELSE.
        t113 ?= t115.
      ENDIF.
      DATA(t119) = VALUE string( ).
      DATA t120 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t131->has = abap_true.
      t131->value = |call_method( EXPORTING foo = bar ).|.
      t127 = t131.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t137->has = abap_true.
      t137->value = |call_method( foo = bar ).|.
      t133 = t137.
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t142) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t142 = t142 && |nABAP.md#omit-the-optional-keyword-exporting\nhttps://docs.ab|.
      t142 = t142 && |apopenchecks.org/checks/30/|.
      DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t143->has = abap_true.
      t143->value = t142.
      t139 = t143.
      DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t149.
      t149->load( ).
      APPEND |Styleguide| TO t149->items.
      t149->save( ).
      t149->load( ).
      APPEND |Quickfix| TO t149->items.
      t149->save( ).
      t149->load( ).
      APPEND |SingleFile| TO t149->items.
      t149->save( ).
      DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t120 = NEW zcl_lnt_irule_metadata( i_key = |exporting| i_title = |EXPORTING can be omitted| i_short_description = |Detects EXPORTING statements which can be omitted.| i_bad_example = t127 i_good_example = t133 i_extended_information = t139 i_tags = t149 i_pragma = t159 i_pseudo_comment = t161 ).
      CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
      t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t163 ).
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t164 ).
      ENDIF.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t165 ).
      ENDIF.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t166 ).
      ENDIF.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t167 ).
      ENDIF.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t168 ).
      ENDIF.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t169 ).
      ENDIF.
      CREATE OBJECT t120->zlnt_json_ownkeys_70e5fd461788.
      t120->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t171 ).
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t173 ).
      ENDIF.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t175 ).
      ENDIF.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t177 ).
      ENDIF.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t179 ).
      ENDIF.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t181 ).
      ENDIF.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t183 ).
      ENDIF.
      t119 = t120->key.
      t111 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t113 i_message_26cb = |The EXPORTING keyword can be omitted| i_key = t119 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t94 ).
      DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t191.
      t191->load( ).
      APPEND t111 TO t191->items.
      t191->save( ).
      result = t191.
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_exporting_conf( me->gt_cnf_ins_src_rls_exp_ts_expr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_exporting_conf( me->gt_cnf_ins_src_rls_exp_ts_expr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_exporting_conf.
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
        t1 = NEW zcl_lnt_exporting_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cnf_ins_src_rls_exp_ts_expr( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1502_14dfa986900e.
  ENDMETHOD.
ENDCLASS.
