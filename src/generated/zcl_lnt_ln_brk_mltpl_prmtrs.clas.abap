* TS: src/rules/line_break_multiple_parameters.ts:16:1 LineBreakMultipleParameters
CLASS zcl_lnt_ln_brk_mltpl_prmtrs DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_l_b_m_p_t_l_br_ml_pr RETURNING VALUE(result) TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
    METHODS s_c_i_s_r_l_b_m_p_t_l_br_ml_pr IMPORTING i_conf TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ln_brk_mltpl_prmtrs IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_ln_brk_mltpl_prmtr_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#line-break-multiple-parameters|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = |method( parameter1 = value parameter2 = value ).|.
    t14 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |method( parameter1 = value\n        parameter2 = value ).|.
    t20 = t24.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t30.
    t30->load( ).
    APPEND |Whitespace| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |Styleguide| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |Quickfix| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |SingleFile| TO t30->items.
    t30->save( ).
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |line_break_multiple_parameters| i_title = |Line break multiple parameters| i_short_description = |Line break multiple parameters| i_bad_example = t14 i_good_example = t20 i_extended_information = t8 i_tags = t30 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t54 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_l_b_m_p_t_l_br_ml_pr.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_l_b_m_p_t_l_br_ml_pr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
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
      DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t20 = t15->find_all_expressions( i_type_9913 = t22 ).
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      DATA(t25) = VALUE i( ).
      DO.
        t20->load( ).
        IF t25 >= lines( t20->items ).
          EXIT.
        ENDIF.
        CLEAR t24.
        READ TABLE t20->items INDEX t25 + 1 INTO t24.
        t25 = t25 + 1.
        DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t26.
        CLEAR t23.
        IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t26 ?= t24.
          DATA t27 TYPE REF TO object.
          t27 = t26->as_ref( ).
          t23 ?= t27.
        ELSE.
          t23 ?= t24.
        ENDIF.
        DATA t29 TYPE REF TO zcl_lnt_position.
        t29 = t15->get_first_token( )->start.
        IF xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d242_5c40a9da79b4.
        t35 = t23->find_direct_expressions( i_type_9913 = t38 ).
        t35->load( ).
        IF xsdbool( lines( t35->items ) <= 1 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t44.
        DATA t46 TYPE REF TO object.
        CLEAR t46.
        t35->load( ).
        CLEAR t46.
        READ TABLE t35->items INDEX 1 INTO t46.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        CLEAR t44.
        IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t47 ?= t46.
          DATA t48 TYPE REF TO object.
          t48 = t47->as_ref( ).
          t44 ?= t48.
        ELSE.
          t44 ?= t46.
        ENDIF.
        t43 = t44.
        DATA t49 TYPE i.
        t49 = 1.
        DO.
          t35->load( ).
          IF xsdbool( t49 < lines( t35->items ) ) = abap_false.
            EXIT.
          ENDIF.
          DATA t55 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t55.
          DATA t56 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t56.
          DATA(t58) = t49.
          t58 = t58 + 1.
          DATA t59 TYPE REF TO object.
          CLEAR t59.
          t35->load( ).
          CLEAR t59.
          READ TABLE t35->items INDEX t58 INTO t59.
          DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t60.
          CLEAR t56.
          IF t59 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t60 ?= t59.
            DATA t61 TYPE REF TO object.
            t61 = t60->as_ref( ).
            t56 ?= t61.
          ELSE.
            t56 ?= t59.
          ENDIF.
          t55 = t56.
          DATA t62 TYPE abap_bool.
          DATA t63 TYPE abap_bool.
          DATA t64 TYPE f.
          t64 = me->conf->zlnt_view_read_sr_91c00614fba7( ).
          t63 = xsdbool( t64 IS NOT INITIAL ).
          t62 = t63.
          IF t63 = abap_true.
            DATA t67 TYPE f.
            t67 = t49.
            DATA t69 TYPE f.
            t69 = me->conf->zlnt_view_read_sr_91c00614fba7( ).
            t62 = xsdbool( t67 < t69 ).
          ENDIF.
          IF t62 = abap_true.
            t43 = t55.
            DATA(t74) = 1.
            t49 = t49 + t74.
            CONTINUE.
          ENDIF.
          DATA t75 TYPE REF TO zcl_lnt_abstract_token.
          t75 = t55->get_first_token( ).
          DATA t85 TYPE REF TO zcl_lnt_position.
          t85 = t43->get_first_token( )->start.
          IF xsdbool( t85->row = t75->start->row ) = abap_true.
            DATA t99 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t99.
            DATA t101 TYPE REF TO zcl_lnt_position.
            t101 = t75->start.
            DATA(t107) = |\n|.
            DATA(t108) = VALUE string( ).
            DATA t109 TYPE string.
            t109 = | |.
            DATA(t111) = VALUE string( ).
            DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t113.
            DATA t114 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t114.
            DATA t119 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t119.
            DATA t121 TYPE REF TO object.
            CLEAR t121.
            t35->load( ).
            CLEAR t121.
            READ TABLE t35->items INDEX 1 INTO t121.
            DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t122.
            CLEAR t119.
            IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t122 ?= t121.
              DATA t123 TYPE REF TO object.
              t123 = t122->as_ref( ).
              t119 ?= t123.
            ELSE.
              t119 ?= t121.
            ENDIF.
            DATA t124 TYPE REF TO zcl_lnt_position.
            t124 = t119->get_first_token( )->start.
            t114 = t124->col.
            DATA(t129) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t129->has = abap_true.
            t129->value = CONV f( 1 ).
            t113 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t114 right = t129 op = `-` ).
            DATA(t130) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t113 ) ).
            DATA(t131) = strlen( t109 ).
            DATA(t132) = CONV f( trunc( t130 ) ).
            IF t132 < 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            IF t109 IS NOT INITIAL.
              IF t132 > 2147483647 OR t132 * strlen( t109 ) > 2147483647.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t111 = repeat( val = t109 occ = CONV i( t132 ) ).
            ENDIF.
            t108 = t111.
            DATA(t133) = strlen( t107 ).
            t99 = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t101 i_text = |{ t107 }{ t108 }| ).
            DATA t135 TYPE REF TO zcl_lnt_issue.
            CLEAR t135.
            DATA t137 TYPE REF TO zcl_lnt_abstract_token.
            t137 = t55->get_first_token( ).
            DATA(t139) = VALUE string( ).
            DATA t140 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t147.
            DATA(t150) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t150 = t150 && |nABAP.md#line-break-multiple-parameters|.
            DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t151->has = abap_true.
            t151->value = t150.
            t147 = t151.
            DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t153.
            DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t157->has = abap_true.
            t157->value = |method( parameter1 = value parameter2 = value ).|.
            t153 = t157.
            DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t159.
            DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t163->has = abap_true.
            t163->value = |method( parameter1 = value\n        parameter2 = value ).|.
            t159 = t163.
            DATA t165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t165.
            DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t169.
            t169->load( ).
            APPEND |Whitespace| TO t169->items.
            t169->save( ).
            t169->load( ).
            APPEND |Styleguide| TO t169->items.
            t169->save( ).
            t169->load( ).
            APPEND |Quickfix| TO t169->items.
            t169->save( ).
            t169->load( ).
            APPEND |SingleFile| TO t169->items.
            t169->save( ).
            t165 = t169.
            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t181.
            DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t183.
            t140 = NEW zcl_lnt_irule_metadata( i_key = |line_break_multiple_parameters| i_title = |Line break multiple parameters| i_short_description = |Line break multiple parameters| i_bad_example = t153 i_good_example = t159 i_extended_information = t147 i_tags = t165 i_pragma = t181 i_pseudo_comment = t183 ).
            CREATE OBJECT t140->zlnt_view_ownkeys_b0e8086400eb.
            t140->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t185.
            t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t185 ).
            DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t186.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t186 ).
            ENDIF.
            DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t187.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t187 ).
            ENDIF.
            DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t188.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t188 ).
            ENDIF.
            DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t189.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t189 ).
            ENDIF.
            DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t190.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t190 ).
            ENDIF.
            DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t191.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t191 ).
            ENDIF.
            CREATE OBJECT t140->zlnt_json_ownkeys_70e5fd461788.
            t140->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t193.
            t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t193 ).
            DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t195.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t195 ).
            ENDIF.
            DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t197.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t197 ).
            ENDIF.
            DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t199.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t199 ).
            ENDIF.
            DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t201.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t201 ).
            ENDIF.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t203 ).
            ENDIF.
            DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t205.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t205 ).
            ENDIF.
            t139 = t140->title.
            DATA(t206) = VALUE string( ).
            DATA t207 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t214.
            DATA(t217) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t217 = t217 && |nABAP.md#line-break-multiple-parameters|.
            DATA(t218) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t218->has = abap_true.
            t218->value = t217.
            t214 = t218.
            DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t220.
            DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t224->has = abap_true.
            t224->value = |method( parameter1 = value parameter2 = value ).|.
            t220 = t224.
            DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t226.
            DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t230->has = abap_true.
            t230->value = |method( parameter1 = value\n        parameter2 = value ).|.
            t226 = t230.
            DATA t232 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t232.
            DATA t236 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t236.
            t236->load( ).
            APPEND |Whitespace| TO t236->items.
            t236->save( ).
            t236->load( ).
            APPEND |Styleguide| TO t236->items.
            t236->save( ).
            t236->load( ).
            APPEND |Quickfix| TO t236->items.
            t236->save( ).
            t236->load( ).
            APPEND |SingleFile| TO t236->items.
            t236->save( ).
            t232 = t236.
            DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t248.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t250.
            t207 = NEW zcl_lnt_irule_metadata( i_key = |line_break_multiple_parameters| i_title = |Line break multiple parameters| i_short_description = |Line break multiple parameters| i_bad_example = t220 i_good_example = t226 i_extended_information = t214 i_tags = t232 i_pragma = t248 i_pseudo_comment = t250 ).
            CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
            t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t252.
            t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t252 ).
            DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t253.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t253 ).
            ENDIF.
            DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t254.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t254 ).
            ENDIF.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t255 ).
            ENDIF.
            DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t256.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t256 ).
            ENDIF.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t257 ).
            ENDIF.
            DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t258.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t258 ).
            ENDIF.
            CREATE OBJECT t207->zlnt_json_ownkeys_70e5fd461788.
            t207->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t260.
            t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t260 ).
            DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t262.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t262 ).
            ENDIF.
            DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t264.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t264 ).
            ENDIF.
            DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t266.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t266 ).
            ENDIF.
            DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t268.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t268 ).
            ENDIF.
            DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t270.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t270 ).
            ENDIF.
            DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t272.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t272 ).
            ENDIF.
            t206 = t207->key.
            t135 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t137 i_message_26cb = t139 i_key = t206 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t99 ).
            t3->load( ).
            APPEND t135 TO t3->items.
            t3->save( ).
          ENDIF.
          t43 = t55.
          DATA(t282) = 1.
          t49 = t49 + t282.
        ENDDO.
      ENDDO.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_ln_brk_mltpl_prmtr_cnf( me->g_c_i_s_r_l_b_m_p_t_l_br_ml_pr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_ln_brk_mltpl_prmtr_cnf( me->g_c_i_s_r_l_b_m_p_t_l_br_ml_pr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
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
        t1 = NEW zcl_lnt_ln_brk_mltpl_prmtr_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_l_b_m_p_t_l_br_ml_pr( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1559_89941fa9188f.
  ENDMETHOD.
ENDCLASS.
