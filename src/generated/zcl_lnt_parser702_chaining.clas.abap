* TS: src/rules/parser_702_chaining.ts:14:1 Parser702Chaining
CLASS zcl_lnt_parser702_chaining DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_in_sr_rl_pr_70_ch_ts_pr_ch RETURNING VALUE(result) TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
    METHODS s_c_in_sr_rl_pr_70_ch_ts_pr_ch IMPORTING i_conf TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
    METHODS r_p_in_sr_rl_pr_70_ch_ts_pr_ch IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS ensr_src_hs_n_prcdrl_kywrds IMPORTING i_source_75cf TYPE REF TO zcl_lnt_expression_node i_file TYPE REF TO zcl_lnt_abap_file i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS push_issue IMPORTING i_message_26cb TYPE string i_file TYPE REF TO zcl_lnt_abap_file i_node TYPE REF TO zcl_lnt_expression_node i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parser702_chaining IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_prsr702_chnng_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |ABAP on 702 does not allow for method chaining with IMPORTIN|.
    t7 = t7 && |G/EXPORTING/CHANGING keywords,\nthis rule finds these and rep|.
    t7 = t7 && |orts errors.\nOnly active on target version 702 and below.|.
    t6 = t7.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Syntax| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |parser_702_chaining| i_title = |Parser Error, bad chaining on 702| i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t12 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t35 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t37 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t39 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_in_sr_rl_pr_70_ch_ts_pr_ch.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_in_sr_rl_pr_70_ch_ts_pr_ch.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_in_sr_rl_pr_70_ch_ts_pr_ch.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    t6 = me->reg->get_config( )->get_release( ).
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t9 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v702| ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t16 TYPE REF TO object.
      t16 = t6.
      TRY.
          t13 ?= t16.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t15 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15 IS BOUND.
          t13 = t15->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t9 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t18 TYPE REF TO object.
      t18 = t9.
      TRY.
          t14 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t17 ?= t9.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS BOUND.
          t14 = t17->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t9.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t13 IS BOUND.
      t5 = t13->strict_equals( t14 ).
    ELSE.
      t5 = xsdbool( t14 IS NOT BOUND ).
    ENDIF.
    t5 = xsdbool( t5 = abap_false ).
    t4 = t5.
    IF t5 = abap_true.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zcl_lnt_abap_release.
      t20 = me->reg->get_config( )->get_release( ).
      DATA t23 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t23 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v700| ).
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t20 IS BOUND.
        DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t30 TYPE REF TO object.
        t30 = t20.
        TRY.
            t27 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS NOT BOUND.
          TRY.
              t29 ?= t20.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t29 IS BOUND.
            t27 = t29->source( ).
          ENDIF.
          IF t27 IS NOT BOUND.
            CREATE OBJECT t27.
            t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t27->oval = t20.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t23 IS BOUND.
        DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t32 TYPE REF TO object.
        t32 = t23.
        TRY.
            t28 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS NOT BOUND.
          TRY.
              t31 ?= t23.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t31 IS BOUND.
            t28 = t31->source( ).
          ENDIF.
          IF t28 IS NOT BOUND.
            CREATE OBJECT t28.
            t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t28->oval = t23.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t27 IS BOUND.
        t19 = t27->strict_equals( t28 ).
      ELSE.
        t19 = xsdbool( t28 IS NOT BOUND ).
      ENDIF.
      t19 = xsdbool( t19 = abap_false ).
      t4 = t19.
    ENDIF.
    IF t4 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zcl_lnt_structure_node.
    t34 = t1->structure.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t34 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t49 TYPE REF TO zcl_lnt_structure_node.
    t49 = t34.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d122_32972f7bb68e.
    t48 = t49->find_all_expressions( i_type_9913 = t51 ).
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    DATA t53 TYPE REF TO object.
    DATA(t54) = VALUE i( ).
    DO.
      t48->load( ).
      IF t54 >= lines( t48->items ).
        EXIT.
      ENDIF.
      CLEAR t53.
      READ TABLE t48->items INDEX t54 + 1 INTO t53.
      t54 = t54 + 1.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      CLEAR t52.
      IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t55 ?= t53.
        DATA t56 TYPE REF TO object.
        t56 = t55->as_ref( ).
        t52 ?= t56.
      ELSE.
        t52 ?= t53.
      ENDIF.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t57.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d221_0c54ed92df99.
      t57 = t52->find_direct_expressions( i_type_9913 = t60 ).
      t57->load( ).
      IF xsdbool( lines( t57->items ) < 2 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t66.
      DATA t67 TYPE REF TO object.
      CLEAR t67.
      DATA(t68) = VALUE i( ).
      DO.
        t57->load( ).
        IF t68 >= lines( t57->items ).
          EXIT.
        ENDIF.
        CLEAR t67.
        READ TABLE t57->items INDEX t68 + 1 INTO t67.
        t68 = t68 + 1.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        CLEAR t66.
        IF t67 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t69 ?= t67.
          DATA t70 TYPE REF TO object.
          t70 = t69->as_ref( ).
          t66 ?= t70.
        ELSE.
          t66 ?= t67.
        ENDIF.
        DATA t71 TYPE REF TO zcl_lnt_expression_node.
        DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
        t71 = t66->find_direct_expression( i_type_9913 = t74 ).
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        CLEAR t78.
        IF xsdbool( t71 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        DATA t84 TYPE REF TO zcl_lnt_expression_node.
        t84 = t71.
        DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
        t82 = t84->find_direct_expression( i_type_9913 = t86 ).
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        CLEAR t90.
        IF xsdbool( t82 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = VALUE abap_bool( ).
        DATA(t96) = VALUE abap_bool( ).
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        t97 = t82->find_direct_token_by_text( i_text = |IMPORTING| ).
        t96 = xsdbool( t97 IS BOUND ).
        t95 = t96.
        IF t96 = abap_false.
          DATA t102 TYPE REF TO zcl_lnt_abstract_token.
          t102 = t82->find_direct_token_by_text( i_text = |CHANGING| ).
          t95 = xsdbool( t102 IS BOUND ).
        ENDIF.
        t94 = t95.
        IF t95 = abap_false.
          DATA t107 TYPE REF TO zcl_lnt_abstract_token.
          t107 = t82->find_direct_token_by_text( i_text = |EXCEPTIONS| ).
          t94 = xsdbool( t107 IS BOUND ).
        ENDIF.
        IF t94 = abap_true.
          DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t120 = t2.
          DATA t123 TYPE REF TO zcl_lnt_issue.
          CLEAR t123.
          DATA t125 TYPE REF TO zcl_lnt_position.
          CLEAR t125.
          t125 = t82->get_first_token( )->start.
          DATA(t132) = VALUE string( ).
          DATA t133 TYPE REF TO zcl_lnt_irule_metadata.
          DATA(t138) = VALUE string( ).
          DATA(t139) = |ABAP on 702 does not allow for method chaining with IMPORTIN|.
          t139 = t139 && |G/EXPORTING/CHANGING keywords,\nthis rule finds these and rep|.
          t139 = t139 && |orts errors.\nOnly active on target version 702 and below.|.
          t138 = t139.
          DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t140.
          DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t144.
          t144->load( ).
          APPEND |Syntax| TO t144->items.
          t144->save( ).
          t144->load( ).
          APPEND |SingleFile| TO t144->items.
          t144->save( ).
          t140 = t144.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          CLEAR t152.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          CLEAR t154.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          CLEAR t156.
          DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t158.
          CLEAR t158.
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t160.
          CLEAR t160.
          t133 = NEW zcl_lnt_irule_metadata( i_key = |parser_702_chaining| i_title = |Parser Error, bad chaining on 702| i_short_description = t138 i_bad_example = t152 i_good_example = t154 i_extended_information = t156 i_tags = t140 i_pragma = t158 i_pseudo_comment = t160 ).
          CREATE OBJECT t133->zlnt_view_ownkeys_b0e8086400eb.
          t133->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t162.
          t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t162 ).
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t163 ).
          ENDIF.
          DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t164.
          IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t164 ).
          ENDIF.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t165 ).
          ENDIF.
          CREATE OBJECT t133->zlnt_json_ownkeys_70e5fd461788.
          t133->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t167 ).
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t169 ).
          ENDIF.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t171 ).
          ENDIF.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t173 ).
          ENDIF.
          t132 = t133->key.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          t174 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t176 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t176.
          t123 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t125 i_message_26cb = |This kind of method chaining not possible in 702| i_key = t132 i_severity = t174 i_fix = t176 ).
          t120->load( ).
          APPEND t123 TO t120->items.
          t120->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t179 = t1->statements.
    DATA t184 TYPE REF TO zcl_lnt_statement_node.
    DATA t185 TYPE REF TO object.
    DATA(t186) = VALUE i( ).
    DO.
      t179->load( ).
      IF t186 >= lines( t179->items ).
        EXIT.
      ENDIF.
      CLEAR t185.
      READ TABLE t179->items INDEX t186 + 1 INTO t185.
      t186 = t186 + 1.
      DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t187.
      CLEAR t184.
      IF t185 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t187 ?= t185.
        DATA t188 TYPE REF TO object.
        t188 = t187->as_ref( ).
        t184 ?= t188.
      ELSE.
        t184 ?= t185.
      ENDIF.
      DATA t191 TYPE REF TO zif_lnt_statement.
      t191 = t184->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( xsdbool( t191 IS BOUND AND t191 IS INSTANCE OF zcl_lnt_st_move ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t193 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t193.
      DATA(t196) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t193 = t184->find_direct_expression( i_type_9913 = t196 ).
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      CLEAR t200.
      IF xsdbool( t193 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      me->ensr_src_hs_n_prcdrl_kywrds( i_source_75cf = t193 i_file = t1 i_issues = t2 ).
    ENDDO.
    DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t209 TYPE REF TO zcl_lnt_structure_node.
    t209 = t34.
    DATA(t211) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    t208 = t209->find_all_expressions( i_type_9913 = t211 ).
    DATA t212 TYPE REF TO zcl_lnt_expression_node.
    DATA t213 TYPE REF TO object.
    DATA(t214) = VALUE i( ).
    DO.
      t208->load( ).
      IF t214 >= lines( t208->items ).
        EXIT.
      ENDIF.
      CLEAR t213.
      READ TABLE t208->items INDEX t214 + 1 INTO t213.
      t214 = t214 + 1.
      DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t215.
      CLEAR t212.
      IF t213 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t215 ?= t213.
        DATA t216 TYPE REF TO object.
        t216 = t215->as_ref( ).
        t212 ?= t216.
      ELSE.
        t212 ?= t213.
      ENDIF.
      DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t217.
      DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d242_5c40a9da79b4.
      t217 = t212->find_all_expressions( i_type_9913 = t219 ).
      DATA t220 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t220.
      DATA t221 TYPE REF TO object.
      CLEAR t221.
      DATA(t222) = VALUE i( ).
      DO.
        t217->load( ).
        IF t222 >= lines( t217->items ).
          EXIT.
        ENDIF.
        CLEAR t221.
        READ TABLE t217->items INDEX t222 + 1 INTO t221.
        t222 = t222 + 1.
        DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t223.
        CLEAR t220.
        IF t221 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t223 ?= t221.
          DATA t224 TYPE REF TO object.
          t224 = t223->as_ref( ).
          t220 ?= t224.
        ELSE.
          t220 ?= t221.
        ENDIF.
        DATA t225 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t225.
        DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t225 = t220->find_direct_expression( i_type_9913 = t228 ).
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        CLEAR t232.
        IF xsdbool( t225 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        me->ensr_src_hs_n_prcdrl_kywrds( i_source_75cf = t225 i_file = t1 i_issues = t2 ).
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD ensr_src_hs_n_prcdrl_kywrds.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_file.
    DATA(t3) = i_issues.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t6.
    t6->load( ).
    APPEND |EXPORTING| TO t6->items.
    t6->save( ).
    t6->load( ).
    APPEND |IMPORTING| TO t6->items.
    t6->save( ).
    t6->load( ).
    APPEND |CHANGING| TO t6->items.
    t6->save( ).
    t6->load( ).
    APPEND |EXCEPTIONS| TO t6->items.
    t6->save( ).
    t4 = t6.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    t17 = t1->find_all_expressions( i_type_9913 = t19 ).
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA t21 TYPE REF TO object.
    DATA(t22) = VALUE i( ).
    DO.
      t17->load( ).
      IF t22 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t17->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t20 ?= t24.
      ELSE.
        t20 ?= t21.
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t27 = t4.
      DATA t29 TYPE i.
      t27->load( ).
      t29 = lines( t27->items ).
      DATA t32 TYPE i.
      t32 = 0.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DO.
        IF xsdbool( t32 < t29 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t39 TYPE string.
        t39 = t27->get( p0 = t32 )->value.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        t45 = t20->find_direct_token_by_text( i_text = t39 ).
        IF xsdbool( t45 IS BOUND ) = abap_true.
          DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t51->has = abap_true.
          t51->value = t39.
          t34 = t51.
          EXIT.
        ENDIF.
        DATA(t55) = 1.
        t32 = t32 + t55.
      ENDDO.
      t25 = t34.
      DATA(t57) = VALUE abap_bool( ).
      IF t25 IS BOUND.
        IF t25->has = abap_true.
          t57 = xsdbool( strlen( t25->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t57 = abap_true.
        DATA t60 TYPE string.
        DATA t61 TYPE string.
        DATA(t62) = |Unexpected word |.
        DATA t63 TYPE string.
        t63 = t25->value.
        DATA(t65) = strlen( t62 ).
        t61 = |{ t62 }{ t63 }|.
        DATA(t67) = strlen( t61 ).
        t60 = |{ t61 }{ | in functional method call| }|.
        DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t74 = t3.
        DATA t77 TYPE REF TO zcl_lnt_issue.
        CLEAR t77.
        DATA t79 TYPE REF TO zcl_lnt_position.
        t79 = t20->get_first_token( )->start.
        DATA(t86) = VALUE string( ).
        DATA t87 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t92 TYPE string.
        DATA(t93) = |ABAP on 702 does not allow for method chaining with IMPORTIN|.
        t93 = t93 && |G/EXPORTING/CHANGING keywords,\nthis rule finds these and rep|.
        t93 = t93 && |orts errors.\nOnly active on target version 702 and below.|.
        t92 = t93.
        DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t94.
        DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t98.
        t98->load( ).
        APPEND |Syntax| TO t98->items.
        t98->save( ).
        t98->load( ).
        APPEND |SingleFile| TO t98->items.
        t98->save( ).
        t94 = t98.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t110.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
        t87 = NEW zcl_lnt_irule_metadata( i_key = |parser_702_chaining| i_title = |Parser Error, bad chaining on 702| i_short_description = t92 i_bad_example = t106 i_good_example = t108 i_extended_information = t110 i_tags = t94 i_pragma = t112 i_pseudo_comment = t114 ).
        CREATE OBJECT t87->zlnt_view_ownkeys_b0e8086400eb.
        t87->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t116 ).
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t117 ).
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t119 ).
        ENDIF.
        CREATE OBJECT t87->zlnt_json_ownkeys_70e5fd461788.
        t87->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t121 ).
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t123 ).
        ENDIF.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t125 ).
        ENDIF.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t127 ).
        ENDIF.
        t86 = t87->key.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t128 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t130 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t130.
        t77 = zcl_lnt_issue=>at_position( i_file = t2 i_start = t79 i_message_26cb = t60 i_key = t86 i_severity = t128 i_fix = t130 ).
        t74->load( ).
        APPEND t77 TO t74->items.
        t74->save( ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD push_issue.
    DATA(t1) = i_message_26cb.
    DATA(t4) = i_issues.
    DATA t6 TYPE REF TO zcl_lnt_issue.
    DATA(t7) = i_file.
    DATA t8 TYPE REF TO zcl_lnt_position.
    t8 = i_node->get_first_token( )->start.
    DATA(t15) = VALUE string( ).
    DATA t16 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t21 TYPE string.
    DATA(t22) = |ABAP on 702 does not allow for method chaining with IMPORTIN|.
    t22 = t22 && |G/EXPORTING/CHANGING keywords,\nthis rule finds these and rep|.
    t22 = t22 && |orts errors.\nOnly active on target version 702 and below.|.
    t21 = t22.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t27.
    t27->load( ).
    APPEND |Syntax| TO t27->items.
    t27->save( ).
    t27->load( ).
    APPEND |SingleFile| TO t27->items.
    t27->save( ).
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t16 = NEW zcl_lnt_irule_metadata( i_key = |parser_702_chaining| i_title = |Parser Error, bad chaining on 702| i_short_description = t21 i_bad_example = t35 i_good_example = t37 i_extended_information = t39 i_tags = t27 i_pragma = t41 i_pseudo_comment = t43 ).
    CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
    t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
    t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t56 ).
    ENDIF.
    t15 = t16->key.
    DATA t59 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t6 = zcl_lnt_issue=>at_position( i_file = t7 i_start = t8 i_message_26cb = t1 i_key = t15 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t59 ).
    t4->load( ).
    APPEND t6 TO t4->items.
    t4->save( ).
  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prsr702_chnng_cnf( me->g_c_in_sr_rl_pr_70_ch_ts_pr_ch( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prsr702_chnng_cnf( me->g_c_in_sr_rl_pr_70_ch_ts_pr_ch( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
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
        t1 = NEW zcl_lnt_prsr702_chnng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_in_sr_rl_pr_70_ch_ts_pr_ch( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_in_sr_rl_pr_70_ch_ts_pr_ch( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1641_3230ed7ae965.
  ENDMETHOD.
ENDCLASS.
