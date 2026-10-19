* TS: src/rules/uncaught_exception.ts:25:1 UncaughtException
CLASS zcl_lnt_uncaught_exception DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_uncght_excptn_cnf.
    DATA global_exceptions TYPE REF TO zlnt_runtime_map__70f58d75267f.
    DATA local_exceptions TYPE REF TO zlnt_runtime_map__70f58d75267f.
    DATA issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA sinked TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA syntax TYPE REF TO zcl_lnt_isyntax_result.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_un_ex_ts_un_exc RETURNING VALUE(result) TYPE REF TO zcl_lnt_uncght_excptn_cnf.
    METHODS in_in_sr_rl_unc_exc_ts_unc_exc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_uncaught_exception.
    METHODS st_cn_in_sr_rl_un_ex_ts_un_exc IMPORTING i_conf TYPE REF TO zcl_lnt_uncght_excptn_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS traverse IMPORTING i_n_0c97 TYPE REF TO zif_lnt_union_8249fcb1 i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS check_bf6e IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_n_0c97 TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS check_for_method_calls IMPORTING i_n_0c97 TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS find_constructor IMPORTING i_def TYPE REF TO zif_lnt_class_definition i_scope TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_method_definition.
    METHODS add_from_try_structure IMPORTING i_s TYPE REF TO zcl_lnt_structure_node.
    METHODS set_sinked_from_method IMPORTING i_s TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS is_sinked IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_global_exceptions.
    METHODS find_local_exceptions IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS initialize REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_uncaught_exception IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_uncght_excptn_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    me->issues = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `issues`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Does not report any issues if the code contains syntax error|.
    t11 = t11 && |s|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Syntax| TO t18->items.
    t18->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |uncaught_exception| i_title = |Uncaught Exception| i_short_description = |Checks for uncaught static exception| i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t18 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t38 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t40 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_un_ex_ts_un_exc.
    result = me->conf.

  ENDMETHOD.

  METHOD in_in_sr_rl_unc_exc_ts_unc_exc.
    DATA(t2) = i_reg_f149.
    DATA(t3) = CAST zif_lnt_rule( me->initialize( i_reg_f149 = t2 ) ).
    result ?= t3.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_ex_ts_un_exc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    IF xsdbool( t2->get_type( ) = |INTF| ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE abap_bool.
    t9 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_program ).
    t8 = t9.
    IF t9 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_ob_program.
      DATA t14 TYPE REF TO zcl_lnt_ob_program.
      t14 ?= t2.
      t13 = t14.
      t13->parse_xml( ).
      t8 = xsdbool( t13->parsed_xml->is_include = abap_true ).
    ENDIF.
    IF t8 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    t24 = t1->structure.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t24 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    me->find_local_exceptions( i_obj_1ed0 = t2 ).
    DATA(t41) = me->reg.
    me->syntax = NEW zcl_lnt_syntax_logic( i_reg_f149 = t41 i_object_19cd = t2 )->run( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `syntax`.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t45 = me->syntax->zlnt_view_read_sr_bd188c319c03( ).
    t45->load( ).
    IF xsdbool( lines( t45->items ) > 0 ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    me->issues = t49.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `issues`.
    CLEAR me->sinked.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t53 TYPE REF TO zcl_lnt_abstract_node.
    t53 = t24.
    t52 = t53->children.
    t51 ?= t52.
    DATA t58 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t59 TYPE REF TO object.
    DATA(t60) = VALUE i( ).
    DO.
      t51->load( ).
      IF t60 >= lines( t51->items ).
        EXIT.
      ENDIF.
      CLEAR t59.
      READ TABLE t51->items INDEX t60 + 1 INTO t59.
      t60 = t60 + 1.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      CLEAR t58.
      IF t59 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t61 ?= t59.
        DATA t62 TYPE REF TO object.
        t62 = t61->as_ref( ).
        t58 ?= t62.
      ELSE.
        t58 ?= t59.
      ENDIF.
      me->traverse( i_n_0c97 = t58 i_file = t1 ).
    ENDDO.
    result = me->issues.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_n_0c97.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zif_lnt_union_dc0fb493.
    DATA t4 TYPE REF TO zif_lnt_union_dc0fb493.
    DATA t7 TYPE REF TO object.
    t7 = t1->get_db65( ).
    t4 ?= t7.
    t3 = t4.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE abap_bool.
    t9 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_sr_class_definition ).
    t8 = t9.
    IF t9 = abap_false.
      t8 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_sr_interface ).
    ENDIF.
    IF t8 = abap_true.
      RETURN.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_node ) = abap_true.
      IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_sr_try ) = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        IF xsdbool( me->sinked IS BOUND ) = abap_true.
          t18 = me->sinked->slice0( ).
        ELSE.
          CLEAR t18.
        ENDIF.
        DATA t28 TYPE REF TO zcl_lnt_structure_node.
        DATA t30 TYPE REF TO object.
        t30 = t1.
        t28 ?= t30.
        me->add_from_try_structure( i_s = t28 ).
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zcl_lnt_structure_node.
        DATA t36 TYPE REF TO zcl_lnt_structure_node.
        DATA t38 TYPE REF TO object.
        t38 = t1.
        t36 ?= t38.
        DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
        t34 = t36->find_direct_structure( i_type_9913 = t39 ).
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        IF xsdbool( t34 IS INITIAL ) = abap_true.
        ELSE.
          DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t46 TYPE REF TO zcl_lnt_abstract_node.
          t46 = t34.
          t45 = t46->children.
          t44 ?= t45.
          t40 = t44.
        ENDIF.
        t32 = t40.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        IF xsdbool( t32 IS BOUND ) = abap_true.
          t51 = t32.
        ELSE.
          CREATE OBJECT t51.
        ENDIF.
        t31 = t51.
        DATA t57 TYPE REF TO zif_lnt_union_8249fcb1.
        DATA t58 TYPE REF TO object.
        DATA(t59) = VALUE i( ).
        DO.
          t31->load( ).
          IF t59 >= lines( t31->items ).
            EXIT.
          ENDIF.
          CLEAR t58.
          READ TABLE t31->items INDEX t59 + 1 INTO t58.
          t59 = t59 + 1.
          DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t60.
          CLEAR t57.
          IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t60 ?= t58.
            DATA t61 TYPE REF TO object.
            t61 = t60->as_ref( ).
            t57 ?= t61.
          ELSE.
            t57 ?= t58.
          ENDIF.
          me->traverse( i_n_0c97 = t57 i_file = t2 ).
        ENDDO.
        me->sinked = t18.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
        DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t66 TYPE REF TO zcl_lnt_structure_node.
        DATA t68 TYPE REF TO object.
        t68 = t1.
        t66 ?= t68.
        DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d712_8689fb760a6c.
        t65 = t66->find_direct_structures( i_type_9913 = t69 ).
        DATA t70 TYPE REF TO zcl_lnt_structure_node.
        DATA t71 TYPE REF TO object.
        DATA(t72) = VALUE i( ).
        DO.
          t65->load( ).
          IF t72 >= lines( t65->items ).
            EXIT.
          ENDIF.
          CLEAR t71.
          READ TABLE t65->items INDEX t72 + 1 INTO t71.
          t72 = t72 + 1.
          DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t73.
          CLEAR t70.
          IF t71 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t73 ?= t71.
            DATA t74 TYPE REF TO object.
            t74 = t73->as_ref( ).
            t70 ?= t74.
          ELSE.
            t70 ?= t71.
          ENDIF.
          DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t77 TYPE REF TO zcl_lnt_abstract_node.
          t77 = t70.
          t76 = t77->children.
          t75 ?= t76.
          DATA t81 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t81.
          DATA t82 TYPE REF TO object.
          CLEAR t82.
          DATA(t83) = VALUE i( ).
          DO.
            t75->load( ).
            IF t83 >= lines( t75->items ).
              EXIT.
            ENDIF.
            CLEAR t82.
            READ TABLE t75->items INDEX t83 + 1 INTO t82.
            t83 = t83 + 1.
            DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t84.
            CLEAR t81.
            IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t84 ?= t82.
              DATA t85 TYPE REF TO object.
              t85 = t84->as_ref( ).
              t81 ?= t85.
            ELSE.
              t81 ?= t82.
            ENDIF.
            me->traverse( i_n_0c97 = t81 i_file = t2 ).
          ENDDO.
        ENDDO.
        DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t91 TYPE REF TO zcl_lnt_structure_node.
        DATA t93 TYPE REF TO zcl_lnt_structure_node.
        DATA t95 TYPE REF TO object.
        t95 = t1.
        t93 ?= t95.
        DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d722_b01ebc20127f.
        t91 = t93->find_direct_structure( i_type_9913 = t96 ).
        DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        IF xsdbool( t91 IS INITIAL ) = abap_true.
        ELSE.
          DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t103 TYPE REF TO zcl_lnt_abstract_node.
          t103 = t91.
          t102 = t103->children.
          t101 ?= t102.
          t97 = t101.
        ENDIF.
        t89 = t97.
        DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        IF xsdbool( t89 IS BOUND ) = abap_true.
          t108 = t89.
        ELSE.
          CREATE OBJECT t108.
        ENDIF.
        t88 = t108.
        DATA t114 TYPE REF TO zif_lnt_union_8249fcb1.
        DATA t115 TYPE REF TO object.
        DATA(t116) = VALUE i( ).
        DO.
          t88->load( ).
          IF t116 >= lines( t88->items ).
            EXIT.
          ENDIF.
          CLEAR t115.
          READ TABLE t88->items INDEX t116 + 1 INTO t115.
          t116 = t116 + 1.
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          CLEAR t114.
          IF t115 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t117 ?= t115.
            DATA t118 TYPE REF TO object.
            t118 = t117->as_ref( ).
            t114 ?= t118.
          ELSE.
            t114 ?= t115.
          ENDIF.
          me->traverse( i_n_0c97 = t114 i_file = t2 ).
        ENDDO.
      ELSE.
        DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t123 TYPE REF TO zcl_lnt_abstract_node.
        DATA t124 TYPE REF TO zcl_lnt_structure_node.
        DATA t126 TYPE REF TO object.
        t126 = t1.
        t124 ?= t126.
        t123 = t124.
        t122 = t123->children.
        t121 ?= t122.
        DATA t129 TYPE REF TO zif_lnt_union_8249fcb1.
        DATA t130 TYPE REF TO object.
        DATA(t131) = VALUE i( ).
        DO.
          t121->load( ).
          IF t131 >= lines( t121->items ).
            EXIT.
          ENDIF.
          CLEAR t130.
          READ TABLE t121->items INDEX t131 + 1 INTO t130.
          t131 = t131 + 1.
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          CLEAR t129.
          IF t130 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t132 ?= t130.
            DATA t133 TYPE REF TO object.
            t133 = t132->as_ref( ).
            t129 ?= t133.
          ELSE.
            t129 ?= t130.
          ENDIF.
          me->traverse( i_n_0c97 = t129 i_file = t2 ).
        ENDDO.
      ENDIF.
    ELSE.
      IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ) = abap_true.
          DATA t140 TYPE REF TO zcl_lnt_statement_node.
          DATA t142 TYPE REF TO object.
          t142 = t1.
          t140 ?= t142.
          me->set_sinked_from_method( i_s = t140 i_file = t2 ).
        ELSE.
          IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_end_method ) = abap_true.
            CLEAR me->sinked.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
          ELSE.
            IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_st_form ) = abap_true.
              DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t151.
              me->sinked = t151.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
              DATA t155 TYPE REF TO zcl_lnt_statement_node.
              DATA t157 TYPE REF TO object.
              t157 = t1.
              t155 ?= t157.
              DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d190_8da19a9c3edb.
              DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t162 TYPE REF TO zcl_lnt_expression_node.
              t162 = t155->find_direct_expression( i_type_9913 = t158 ).
              DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              IF xsdbool( t162 IS INITIAL ) = abap_true.
              ELSE.
                DATA t169 TYPE REF TO zcl_lnt_expression_node.
                t169 = t162.
                DATA(t171) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
                t164 = t169->find_all_expressions( i_type_9913 = t171 ).
              ENDIF.
              t160 = t164.
              DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              IF xsdbool( t160 IS BOUND ) = abap_true.
                t172 = t160.
              ELSE.
                CREATE OBJECT t172.
              ENDIF.
              t159 = t172.
              DATA t178 TYPE REF TO zcl_lnt_expression_node.
              DATA t179 TYPE REF TO object.
              DATA(t180) = VALUE i( ).
              DO.
                t159->load( ).
                IF t180 >= lines( t159->items ).
                  EXIT.
                ENDIF.
                CLEAR t179.
                READ TABLE t159->items INDEX t180 + 1 INTO t179.
                t180 = t180 + 1.
                DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t181.
                CLEAR t178.
                IF t179 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t181 ?= t179.
                  DATA t182 TYPE REF TO object.
                  t182 = t181->as_ref( ).
                  t178 ?= t182.
                ELSE.
                  t178 ?= t179.
                ENDIF.
                DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                t183 = me->sinked.
                DATA t185 TYPE string.
                DATA t186 TYPE string.
                t186 = t178->concat_tokens( ).
                DATA(t188) = strlen( t186 ).
                t185 = t186.
                IF t185 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t185 TO UPPER CASE.
                ELSE.
                  t185 = zlnt_runtime_uppe_91169605024d=>full( t185 ).
                ENDIF.
                t183->load( ).
                APPEND t185 TO t183->items.
                t183->save( ).
              ENDDO.
            ELSE.
              IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_end_form ) = abap_true.
                CLEAR me->sinked.
                DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
              ELSE.
                IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_st_raise ) = abap_true.
                  DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t196) = VALUE string( ).
                  DATA t197 TYPE string.
                  DATA t198 TYPE string.
                  DATA t199 TYPE REF TO zcl_lnt_statement_node.
                  DATA t201 TYPE REF TO object.
                  t201 = t1.
                  t199 ?= t201.
                  t198 = t199->concat_tokens( ).
                  DATA(t202) = strlen( t198 ).
                  t197 = t198.
                  IF t197 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t197 TO UPPER CASE.
                  ELSE.
                    t197 = zlnt_runtime_uppe_91169605024d=>full( t197 ).
                  ENDIF.
                  t196 = t197.
                  DATA(t203) = VALUE abap_bool( ).
                  DATA(t205) = |RAISE EXCEPTION TYPE |.
                  DATA(t206) = strlen( t196 ).
                  DATA t207 TYPE i.
                  DATA(t208) = VALUE i( ).
                  DATA(t209) = VALUE string( ).
                  t207 = strlen( t205 ).
                  IF t207 = 0.
                    t203 = abap_true.
                  ELSEIF t207 <= t206.
                    t208 = 0.
                    t209 = t196+t208(t207).
                    IF t209 = t205.
                      t203 = abap_true.
                    ENDIF.
                  ENDIF.
                  IF t203 = abap_true.
                    DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t213 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t215 TYPE REF TO zcl_lnt_expression_node.
                    DATA t217 TYPE REF TO zcl_lnt_statement_node.
                    DATA t219 TYPE REF TO object.
                    t219 = t1.
                    t217 ?= t219.
                    DATA(t220) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
                    t215 = t217->find_first_expression( i_type_9913 = t220 ).
                    DATA t221 TYPE REF TO zcl_lnt_abstract_token.
                    IF xsdbool( t215 IS INITIAL ) = abap_true.
                    ELSE.
                      t221 = t215->get_first_token( ).
                    ENDIF.
                    t213 = t221.
                    DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    IF xsdbool( t213 IS INITIAL ) = abap_true.
                    ELSE.
                      DATA t236 TYPE string.
                      t236 = t213->str.
                      DATA(t238) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t238->has = abap_true.
                      t238->value = t236.
                      t228 = t238.
                    ENDIF.
                    t211 = t228.
                    DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t240) = VALUE abap_bool( ).
                    IF t211 IS INITIAL.
                      t240 = abap_true.
                    ELSEIF t211->has = abap_false.
                      t240 = abap_true.
                    ENDIF.
                    IF t240 = abap_true.
                    ELSE.
                      DATA t243 TYPE string.
                      DATA t244 TYPE string.
                      t244 = t211->value.
                      DATA(t246) = strlen( t244 ).
                      t243 = t244.
                      IF t243 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                        TRANSLATE t243 TO UPPER CASE.
                      ELSE.
                        t243 = zlnt_runtime_uppe_91169605024d=>full( t243 ).
                      ENDIF.
                      DATA(t247) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t247->has = abap_true.
                      t247->value = t243.
                      t239 = t247.
                    ENDIF.
                    t194 = t239.
                  ELSE.
                    DATA(t248) = VALUE abap_bool( ).
                    DATA(t250) = |RAISE EXCEPTION NEW |.
                    DATA(t251) = strlen( t196 ).
                    DATA t252 TYPE i.
                    DATA(t253) = VALUE i( ).
                    DATA(t254) = VALUE string( ).
                    t252 = strlen( t250 ).
                    IF t252 = 0.
                      t248 = abap_true.
                    ELSEIF t252 <= t251.
                      t253 = 0.
                      t254 = t196+t253(t252).
                      IF t254 = t250.
                        t248 = abap_true.
                      ENDIF.
                    ENDIF.
                    IF t248 = abap_true.
                      DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t258 TYPE REF TO zcl_lnt_abstract_token.
                      DATA t260 TYPE REF TO zcl_lnt_expression_node.
                      DATA t262 TYPE REF TO zcl_lnt_expression_node.
                      DATA t264 TYPE REF TO zcl_lnt_statement_node.
                      DATA t266 TYPE REF TO object.
                      t266 = t1.
                      t264 ?= t266.
                      DATA(t267) = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
                      t262 = t264->find_first_expression( i_type_9913 = t267 ).
                      DATA t268 TYPE REF TO zcl_lnt_expression_node.
                      IF xsdbool( t262 IS INITIAL ) = abap_true.
                      ELSE.
                        DATA t273 TYPE REF TO zcl_lnt_expression_node.
                        t273 = t262.
                        DATA(t275) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
                        t268 = t273->find_first_expression( i_type_9913 = t275 ).
                      ENDIF.
                      t260 = t268.
                      DATA t276 TYPE REF TO zcl_lnt_abstract_token.
                      IF xsdbool( t260 IS INITIAL ) = abap_true.
                      ELSE.
                        t276 = t260->get_first_token( ).
                      ENDIF.
                      t258 = t276.
                      DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      IF xsdbool( t258 IS INITIAL ) = abap_true.
                      ELSE.
                        DATA t291 TYPE string.
                        t291 = t258->str.
                        DATA(t293) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t293->has = abap_true.
                        t293->value = t291.
                        t283 = t293.
                      ENDIF.
                      t256 = t283.
                      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t295) = VALUE abap_bool( ).
                      IF t256 IS INITIAL.
                        t295 = abap_true.
                      ELSEIF t256->has = abap_false.
                        t295 = abap_true.
                      ENDIF.
                      IF t295 = abap_true.
                      ELSE.
                        DATA t298 TYPE string.
                        DATA t299 TYPE string.
                        t299 = t256->value.
                        DATA(t301) = strlen( t299 ).
                        t298 = t299.
                        IF t298 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                          TRANSLATE t298 TO UPPER CASE.
                        ELSE.
                          t298 = zlnt_runtime_uppe_91169605024d=>full( t298 ).
                        ENDIF.
                        DATA(t302) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t302->has = abap_true.
                        t302->value = t298.
                        t294 = t302.
                      ENDIF.
                      t194 = t294.
                    ENDIF.
                  ENDIF.
                  DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t303 = t194.
                  DATA t306 TYPE REF TO zcl_lnt_statement_node.
                  DATA t308 TYPE REF TO object.
                  t308 = t1.
                  t306 ?= t308.
                  DATA t312 TYPE abap_bool.
                  t312 = me->is_sinked( i_name = t303 ).
                  IF xsdbool( t312 = abap_false ) = abap_true.
                    DATA t316 TYPE REF TO zcl_lnt_issue.
                    DATA(t319) = VALUE string( ).
                    DATA(t320) = |Uncaught exception |.
                    DATA(t321) = VALUE string( ).
                    DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t322 = t303.
                    DATA(t324) = VALUE string( ).
                    DATA(t325) = VALUE abap_bool( ).
                    IF t322 IS INITIAL.
                      t325 = abap_true.
                    ELSEIF t322->has = abap_false.
                      t325 = abap_true.
                    ENDIF.
                    IF t325 = abap_true.
                      t324 = |undefined|.
                    ELSE.
                      t324 = t322->value.
                    ENDIF.
                    t321 = t324.
                    DATA(t330) = strlen( t320 ).
                    t319 = |{ t320 }{ t321 }|.
                    DATA(t331) = VALUE string( ).
                    DATA t332 TYPE REF TO zcl_lnt_irule_metadata.
                    DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t342) = |Does not report any issues if the code contains syntax error|.
                    t342 = t342 && |s|.
                    DATA(t343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t343->has = abap_true.
                    t343->value = t342.
                    t339 = t343.
                    DATA t349 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CREATE OBJECT t349.
                    t349->load( ).
                    APPEND |Syntax| TO t349->items.
                    t349->save( ).
                    DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t332 = NEW zcl_lnt_irule_metadata( i_key = |uncaught_exception| i_title = |Uncaught Exception| i_short_description = |Checks for uncaught static exception| i_bad_example = t355 i_good_example = t357 i_extended_information = t339 i_tags = t349 i_pragma = t359 i_pseudo_comment = t361 ).
                    CREATE OBJECT t332->zlnt_view_ownkeys_b0e8086400eb.
                    t332->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t363 ).
                    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t364 ).
                    ENDIF.
                    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t365 ).
                    ENDIF.
                    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t366 ).
                    ENDIF.
                    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t367 ).
                    ENDIF.
                    CREATE OBJECT t332->zlnt_json_ownkeys_70e5fd461788.
                    t332->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t369 ).
                    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t371 ).
                    ENDIF.
                    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t373 ).
                    ENDIF.
                    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t375 ).
                    ENDIF.
                    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t377 ).
                    ENDIF.
                    t331 = t332->key.
                    DATA t380 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    t316 = zcl_lnt_issue=>at_statement( i_file = t2 i_statement = t306 i_message_26cb = t319 i_key = t331 i_severity = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) )->zlnt_view_read_sr_15c06369f827( ) i_fix = t380 i_alternative_fixes = t381 ).
                    DATA(t382) = me->issues.
                    t382->load( ).
                    APPEND t316 TO t382->items.
                    t382->save( ).
                  ENDIF.
                ELSE.
                  IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_st_perform ) = abap_true.
                  ELSE.
                    DATA t386 TYPE REF TO zcl_lnt_statement_node.
                    DATA t388 TYPE REF TO object.
                    t388 = t1.
                    t386 ?= t388.
                    me->check_for_method_calls( i_n_0c97 = t386 i_file = t2 ).
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_name.
    DATA(t2) = i_n_0c97.
    DATA(t3) = i_file.
    DATA t5 TYPE abap_bool.
    t5 = me->is_sinked( i_name = t1 ).
    IF xsdbool( t5 = abap_false ) = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_issue.
      DATA(t12) = VALUE string( ).
      DATA(t13) = |Uncaught exception |.
      DATA(t14) = VALUE string( ).
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t15 = t1.
      DATA(t17) = VALUE string( ).
      DATA(t18) = VALUE abap_bool( ).
      IF t15 IS INITIAL.
        t18 = abap_true.
      ELSEIF t15->has = abap_false.
        t18 = abap_true.
      ENDIF.
      IF t18 = abap_true.
        t17 = |undefined|.
      ELSE.
        t17 = t15->value.
      ENDIF.
      t14 = t17.
      DATA(t23) = strlen( t13 ).
      t12 = |{ t13 }{ t14 }|.
      DATA(t24) = VALUE string( ).
      DATA t25 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t35) = |Does not report any issues if the code contains syntax error|.
      t35 = t35 && |s|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t32 = t36.
      DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t42.
      t42->load( ).
      APPEND |Syntax| TO t42->items.
      t42->save( ).
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t25 = NEW zcl_lnt_irule_metadata( i_key = |uncaught_exception| i_title = |Uncaught Exception| i_short_description = |Checks for uncaught static exception| i_bad_example = t48 i_good_example = t50 i_extended_information = t32 i_tags = t42 i_pragma = t52 i_pseudo_comment = t54 ).
      CREATE OBJECT t25->zlnt_view_ownkeys_b0e8086400eb.
      t25->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t56 ).
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t57 ).
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t58 ).
      ENDIF.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t59 ).
      ENDIF.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t60 ).
      ENDIF.
      CREATE OBJECT t25->zlnt_json_ownkeys_70e5fd461788.
      t25->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t62 ).
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t64 ).
      ENDIF.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t66 ).
      ENDIF.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t68 ).
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t70 ).
      ENDIF.
      t24 = t25->key.
      DATA t73 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t9 = zcl_lnt_issue=>at_statement( i_file = t3 i_statement = t2 i_message_26cb = t12 i_key = t24 i_severity = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) )->zlnt_view_read_sr_15c06369f827( ) i_fix = t73 i_alternative_fixes = t74 ).
      DATA(t75) = me->issues.
      t75->load( ).
      APPEND t9 TO t75->items.
      t75->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD check_for_method_calls.
    DATA(t1) = i_n_0c97.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zcl_lnt_position.
    t3 = t1->get_first_token( )->start.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    t12 = t1->get_last_token( ).
    DATA t16 TYPE f.
    t16 = t12->start->row.
    DATA t23 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t23 = t12->start->col.
    DATA t29 TYPE f.
    t29 = strlen( t12->str ).
    DATA(t34) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t34->has = abap_true.
    t34->value = t29.
    t10 = NEW zcl_lnt_position( i_row = t16 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t23 right = t34 op = `+` ) ).
    DATA t35 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t37 TYPE REF TO zif_lnt_spaghetti_scope.
    t37 = me->syntax->zlnt_view_read_sr_b6b1d9e0c93e( ).
    DATA t39 TYPE REF TO zcl_lnt_position.
    t39 = t3.
    DATA t46 TYPE REF TO zcl_lnt_abstract_file.
    t46 = t2.
    DATA t48 TYPE string.
    t48 = t46->filename.
    DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t50->has = abap_true.
    t50->value = t48.
    t35 = t37->lookup_position( i_p = t39 i_filename = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zcl_lnt_iscope_data.
    DATA t57 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t57 = t35.
    DATA t59 TYPE REF TO zcl_lnt_iscope_data.
    IF xsdbool( t57 IS INITIAL ) = abap_true.
    ELSE.
      t59 = t57->get_data( ).
    ENDIF.
    t55 = t59.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t55 IS INITIAL ) = abap_true.
    ELSE.
      t66 = t55->references.
    ENDIF.
    t53 = t66.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t53 IS BOUND ) = abap_true.
      t73 = t53.
    ELSE.
      CREATE OBJECT t73.
    ENDIF.
    t52 = t73.
    DATA t79 TYPE REF TO zcl_lnt_ireference.
    DATA t80 TYPE REF TO object.
    DATA(t81) = VALUE i( ).
    DO.
      t52->load( ).
      IF t81 >= lines( t52->items ).
        EXIT.
      ENDIF.
      CLEAR t80.
      READ TABLE t52->items INDEX t81 + 1 INTO t80.
      t81 = t81 + 1.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      CLEAR t79.
      IF t80 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t82 ?= t80.
        DATA t83 TYPE REF TO object.
        t83 = t82->as_ref( ).
        t79 ?= t83.
      ELSE.
        t79 ?= t80.
      ENDIF.
      DATA(t84) = VALUE abap_bool( ).
      DATA(t85) = VALUE abap_bool( ).
      DATA t86 TYPE abap_bool.
      DATA t87 TYPE abap_bool.
      t87 = xsdbool( t79->reference_type = |Method| ).
      t86 = t87.
      IF t87 = abap_true.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        t98 = t79->position_7b94->token.
        t86 = t98->start->is_after( i_p = t3 ).
      ENDIF.
      t85 = t86.
      IF t86 = abap_true.
        DATA t104 TYPE REF TO zcl_lnt_position.
        DATA t110 TYPE REF TO zcl_lnt_abstract_token.
        t110 = t79->position_7b94->token.
        DATA t114 TYPE f.
        t114 = t110->start->row.
        DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t121 = t110->start->col.
        DATA t127 TYPE f.
        t127 = strlen( t110->str ).
        DATA(t132) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t132->has = abap_true.
        t132->value = t127.
        t104 = NEW zcl_lnt_position( i_row = t114 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t121 right = t132 op = `+` ) ).
        DATA t133 TYPE REF TO zcl_lnt_position.
        t133 = t10.
        DATA t135 TYPE abap_bool.
        DATA t136 TYPE abap_bool.
        t136 = xsdbool( t104->row < t133->row ).
        t135 = t136.
        IF t136 = abap_false.
          DATA t141 TYPE abap_bool.
          DATA t142 TYPE abap_bool.
          t142 = xsdbool( t104->row = t133->row ).
          t141 = t142.
          IF t142 = abap_true.
            DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t148 = t104->col.
            DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t150 = t133->col.
            t141 = zlnt_runtime_numb_290eb04a9758=>compare( left = t148 right = t150 op = `<` ).
          ENDIF.
          t135 = t141.
        ENDIF.
        t85 = t135.
      ENDIF.
      t84 = t85.
      IF t85 = abap_true.
        DATA t153 TYPE REF TO zcl_lnt_fi_identifier.
        t153 = t79->resolved.
        t84 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_method_definition ).
      ENDIF.
      IF t84 = abap_true.
        DATA t155 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t157 TYPE REF TO zcl_lnt_method_definition.
        DATA t158 TYPE REF TO zcl_lnt_fi_identifier.
        t158 = t79->resolved.
        t157 ?= t158.
        t155 = t157->raising.
        DATA(t162) = VALUE string( ).
        t155->dense( ).
        DATA(t163) = VALUE i( ).
        DO.
          t155->load( ).
          IF t163 >= lines( t155->items ).
            EXIT.
          ENDIF.
          CLEAR t162.
          READ TABLE t155->items INDEX t163 + 1 INTO t162.
          IF t155->has( t163 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t163 = t163 + 1.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t164.
          DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t168->has = abap_true.
          t168->value = t162.
          t164 = t168.
          DATA t175 TYPE abap_bool.
          t175 = me->is_sinked( i_name = t164 ).
          IF xsdbool( t175 = abap_false ) = abap_true.
            DATA t179 TYPE REF TO zcl_lnt_issue.
            CLEAR t179.
            DATA(t182) = VALUE string( ).
            DATA(t183) = |Uncaught exception |.
            DATA(t184) = VALUE string( ).
            DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t185 = t164.
            DATA(t187) = VALUE string( ).
            DATA(t188) = VALUE abap_bool( ).
            IF t185 IS INITIAL.
              t188 = abap_true.
            ELSEIF t185->has = abap_false.
              t188 = abap_true.
            ENDIF.
            IF t188 = abap_true.
              t187 = |undefined|.
            ELSE.
              t187 = t185->value.
            ENDIF.
            t184 = t187.
            DATA(t193) = strlen( t183 ).
            t182 = |{ t183 }{ t184 }|.
            DATA(t194) = VALUE string( ).
            DATA t195 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t195.
            DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t202.
            DATA(t205) = |Does not report any issues if the code contains syntax error|.
            t205 = t205 && |s|.
            DATA(t206) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t206->has = abap_true.
            t206->value = t205.
            t202 = t206.
            DATA t208 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t208.
            DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t212.
            t212->load( ).
            APPEND |Syntax| TO t212->items.
            t212->save( ).
            t208 = t212.
            DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t218.
            DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t220.
            DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t222.
            DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t224.
            t195 = NEW zcl_lnt_irule_metadata( i_key = |uncaught_exception| i_title = |Uncaught Exception| i_short_description = |Checks for uncaught static exception| i_bad_example = t218 i_good_example = t220 i_extended_information = t202 i_tags = t208 i_pragma = t222 i_pseudo_comment = t224 ).
            CREATE OBJECT t195->zlnt_view_ownkeys_b0e8086400eb.
            t195->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t226.
            t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t226 ).
            DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t227.
            IF t195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t227 ).
            ENDIF.
            DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t228.
            IF t195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t228 ).
            ENDIF.
            DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t229.
            IF t195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t229 ).
            ENDIF.
            DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t230.
            IF t195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t230 ).
            ENDIF.
            CREATE OBJECT t195->zlnt_json_ownkeys_70e5fd461788.
            t195->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t232.
            t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t232 ).
            DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t234.
            IF t195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t234 ).
            ENDIF.
            DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t236.
            IF t195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t236 ).
            ENDIF.
            DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t238.
            IF t195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t238 ).
            ENDIF.
            DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t240.
            IF t195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t240 ).
            ENDIF.
            t194 = t195->key.
            DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t241 = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) )->zlnt_view_read_sr_15c06369f827( ).
            DATA t243 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t243.
            DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t244.
            t179 = zcl_lnt_issue=>at_statement( i_file = t2 i_statement = t1 i_message_26cb = t182 i_key = t194 i_severity = t241 i_fix = t243 i_alternative_fixes = t244 ).
            DATA(t245) = me->issues.
            t245->load( ).
            APPEND t179 TO t245->items.
            t245->save( ).
          ENDIF.
        ENDDO.
      ELSE.
        DATA(t247) = VALUE abap_bool( ).
        DATA(t248) = VALUE abap_bool( ).
        DATA t249 TYPE abap_bool.
        DATA t250 TYPE abap_bool.
        t250 = xsdbool( t79->reference_type = |Constructor Reference| ).
        t249 = t250.
        IF t250 = abap_true.
          DATA t261 TYPE REF TO zcl_lnt_abstract_token.
          t261 = t79->position_7b94->token.
          t249 = t261->start->is_after( i_p = t3 ).
        ENDIF.
        t248 = t249.
        IF t249 = abap_true.
          DATA t267 TYPE REF TO zcl_lnt_position.
          DATA t273 TYPE REF TO zcl_lnt_abstract_token.
          t273 = t79->position_7b94->token.
          DATA t277 TYPE f.
          t277 = t273->start->row.
          DATA t284 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t284 = t273->start->col.
          DATA t290 TYPE f.
          t290 = strlen( t273->str ).
          DATA(t295) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t295->has = abap_true.
          t295->value = t290.
          t267 = NEW zcl_lnt_position( i_row = t277 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t284 right = t295 op = `+` ) ).
          DATA t296 TYPE REF TO zcl_lnt_position.
          t296 = t10.
          DATA t298 TYPE abap_bool.
          DATA t299 TYPE abap_bool.
          t299 = xsdbool( t267->row < t296->row ).
          t298 = t299.
          IF t299 = abap_false.
            DATA t304 TYPE abap_bool.
            DATA t305 TYPE abap_bool.
            t305 = xsdbool( t267->row = t296->row ).
            t304 = t305.
            IF t305 = abap_true.
              DATA t311 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t311 = t267->col.
              DATA t313 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t313 = t296->col.
              t304 = zlnt_runtime_numb_290eb04a9758=>compare( left = t311 right = t313 op = `<` ).
            ENDIF.
            t298 = t304.
          ENDIF.
          t248 = t298.
        ENDIF.
        t247 = t248.
        IF t248 = abap_true.
          DATA t316 TYPE REF TO zcl_lnt_fi_identifier.
          t316 = t79->resolved.
          t247 = xsdbool( t316 IS BOUND AND t316 IS INSTANCE OF zcl_lnt_ty_class_definition ).
        ENDIF.
        IF t247 = abap_true.
          DATA t319 TYPE REF TO zcl_lnt_method_definition.
          DATA t320 TYPE REF TO zcl_lnt_ty_class_definition.
          DATA t321 TYPE REF TO zcl_lnt_fi_identifier.
          t321 = t79->resolved.
          t320 ?= t321.
          t319 = me->find_constructor( i_def = t320 i_scope = t35 ).
          DATA t324 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t324.
          DATA t325 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t325.
          DATA t327 TYPE REF TO zcl_lnt_method_definition.
          t327 = t319.
          DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t329.
          IF xsdbool( t327 IS INITIAL ) = abap_true.
            CLEAR t329.
          ELSE.
            t329 = t327->raising.
          ENDIF.
          t325 = t329.
          DATA t339 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t339.
          IF xsdbool( t325 IS BOUND ) = abap_true.
            t339 = t325.
          ELSE.
            CREATE OBJECT t339.
          ENDIF.
          t324 = t339.
          DATA(t345) = VALUE string( ).
          t324->dense( ).
          DATA(t346) = VALUE i( ).
          DO.
            t324->load( ).
            IF t346 >= lines( t324->items ).
              EXIT.
            ENDIF.
            CLEAR t345.
            READ TABLE t324->items INDEX t346 + 1 INTO t345.
            IF t324->has( t346 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t346 = t346 + 1.
            DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t347.
            DATA(t351) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t351->has = abap_true.
            t351->value = t345.
            t347 = t351.
            DATA t358 TYPE abap_bool.
            t358 = me->is_sinked( i_name = t347 ).
            IF xsdbool( t358 = abap_false ) = abap_true.
              DATA t362 TYPE REF TO zcl_lnt_issue.
              CLEAR t362.
              DATA(t365) = VALUE string( ).
              DATA(t366) = |Uncaught exception |.
              DATA(t367) = VALUE string( ).
              DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t368 = t347.
              DATA(t370) = VALUE string( ).
              DATA(t371) = VALUE abap_bool( ).
              IF t368 IS INITIAL.
                t371 = abap_true.
              ELSEIF t368->has = abap_false.
                t371 = abap_true.
              ENDIF.
              IF t371 = abap_true.
                t370 = |undefined|.
              ELSE.
                t370 = t368->value.
              ENDIF.
              t367 = t370.
              DATA(t376) = strlen( t366 ).
              t365 = |{ t366 }{ t367 }|.
              DATA(t377) = VALUE string( ).
              DATA t378 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t378.
              DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t385.
              DATA(t388) = |Does not report any issues if the code contains syntax error|.
              t388 = t388 && |s|.
              DATA(t389) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t389->has = abap_true.
              t389->value = t388.
              t385 = t389.
              DATA t391 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t391.
              DATA t395 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t395.
              t395->load( ).
              APPEND |Syntax| TO t395->items.
              t395->save( ).
              t391 = t395.
              DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t401.
              DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t403.
              DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t405.
              DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t407.
              t378 = NEW zcl_lnt_irule_metadata( i_key = |uncaught_exception| i_title = |Uncaught Exception| i_short_description = |Checks for uncaught static exception| i_bad_example = t401 i_good_example = t403 i_extended_information = t385 i_tags = t391 i_pragma = t405 i_pseudo_comment = t407 ).
              CREATE OBJECT t378->zlnt_view_ownkeys_b0e8086400eb.
              t378->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t409.
              t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t409 ).
              DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t410.
              IF t378->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t410 ).
              ENDIF.
              DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t411.
              IF t378->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t411 ).
              ENDIF.
              DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t412.
              IF t378->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t412 ).
              ENDIF.
              DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t413.
              IF t378->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t413 ).
              ENDIF.
              CREATE OBJECT t378->zlnt_json_ownkeys_70e5fd461788.
              t378->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t415.
              t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t415 ).
              DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t417.
              IF t378->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t417 ).
              ENDIF.
              DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t419.
              IF t378->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t419 ).
              ENDIF.
              DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t421.
              IF t378->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t421 ).
              ENDIF.
              DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t423.
              IF t378->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t423 ).
              ENDIF.
              t377 = t378->key.
              DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t424 = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) )->zlnt_view_read_sr_15c06369f827( ).
              DATA t426 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t426.
              DATA t427 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t427.
              t362 = zcl_lnt_issue=>at_statement( i_file = t2 i_statement = t1 i_message_26cb = t365 i_key = t377 i_severity = t424 i_fix = t426 i_alternative_fixes = t427 ).
              DATA(t428) = me->issues.
              t428->load( ).
              APPEND t362 TO t428->items.
              t428->save( ).
            ENDIF.
          ENDDO.
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD find_constructor.
    DATA(t1) = i_def.
    DATA(t2) = i_scope.
    DATA t3 TYPE REF TO zif_lnt_generator_0f59ca3c.
    t3 = t1->get_method_definitions( )->get_all( )->iterate( ).
    DO.
      DATA t9 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t9.
      t9 = t3->next( ).
      IF t9->done = abap_true.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_method_definition.
      CLEAR t14.
      t14 = t9->value.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      t20 = abap_false.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          DATA(t23) = VALUE abap_bool( ).
          DATA(t24) = VALUE abap_bool( ).
          t24 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_method_definition ).
          t23 = t24.
          IF t24 = abap_true.
            DATA(t27) = VALUE string( ).
            DATA(t28) = VALUE string( ).
            DATA t29 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t29.
            DATA t30 TYPE REF TO zcl_lnt_method_definition.
            CLEAR t30.
            DATA t32 TYPE REF TO object.
            CLEAR t32.
            t32 = t14.
            t30 ?= t32.
            t29 = t30.
            DATA(t34) = VALUE string( ).
            t34 = t29->token->str.
            DATA(t42) = VALUE string( ).
            DATA(t43) = t34.
            DATA(t44) = 0.
            DATA(t45) = 1.
            DATA(t46) = strlen( t43 ).
            IF t44 < 0.
              t44 = t44 + t46.
              IF t44 < 0.
                t44 = 0.
              ENDIF.
            ENDIF.
            IF t44 > t46 OR t45 <= 0.
            ELSE.
              IF t45 > t46 - t44.
                t45 = t46 - t44.
              ENDIF.
              t42 = t43+t44(t45).
            ENDIF.
            IF xsdbool( t42 = |!| ) = abap_true.
              DATA(t49) = VALUE string( ).
              t49 = t34.
              DATA(t51) = VALUE string( ).
              DATA(t53) = 1.
              DATA(t54) = VALUE i( ).
              t54 = strlen( t49 ).
              DATA(t57) = strlen( t49 ).
              IF t53 < 0.
                t53 = t53 + t57.
                IF t53 < 0.
                  t53 = 0.
                ENDIF.
              ENDIF.
              IF t53 > t57 OR t54 <= 0.
              ELSE.
                IF t54 > t57 - t53.
                  t54 = t57 - t53.
                ENDIF.
                t51 = t49+t53(t54).
              ENDIF.
              t34 = t51.
            ENDIF.
            t28 = t34.
            DATA(t59) = strlen( t28 ).
            t27 = t28.
            IF t27 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t27 TO UPPER CASE.
            ELSE.
              t27 = zlnt_runtime_uppe_91169605024d=>full( t27 ).
            ENDIF.
            t23 = xsdbool( t27 = |CONSTRUCTOR| ).
          ENDIF.
          t19 = t23.
          t20 = abap_true.
        CATCH cx_root INTO t22.
          IF xsdbool( t20 = abap_false ) = abap_true.
            t3->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      IF xsdbool( t20 = abap_false ) = abap_true.
        t3->close( ).
      ENDIF.
      IF t19 = abap_true.
        DATA t71 TYPE REF TO zcl_lnt_method_definition.
        CLEAR t71.
        DATA(t72) = VALUE abap_bool( ).
        t72 = abap_false.
        DATA t74 TYPE REF TO cx_root.
        CLEAR t74.
        TRY.
            DATA t77 TYPE REF TO zcl_lnt_method_definition.
            CLEAR t77.
            DATA t79 TYPE REF TO object.
            CLEAR t79.
            t79 = t14.
            t77 ?= t79.
            t71 = t77.
            t72 = abap_true.
          CATCH cx_root INTO t74.
            IF xsdbool( t72 = abap_false ) = abap_true.
              t3->close( ).
            ENDIF.
            RAISE EXCEPTION t74.
        ENDTRY.
        IF xsdbool( t72 = abap_false ) = abap_true.
          t3->close( ).
        ENDIF.
        t3->close( ).
        result = t71.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t91 = t1->get_super_class( ).
    DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t95 = t91.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t99) = VALUE abap_bool( ).
    IF t95 IS INITIAL.
      t99 = abap_true.
    ELSEIF t95->has = abap_false.
      t99 = abap_true.
    ENDIF.
    IF t99 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t102 TYPE REF TO zif_lnt_class_definition.
    DATA t104 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t104 = t2.
    DATA t106 TYPE REF TO zif_lnt_class_definition.
    IF xsdbool( t104 IS INITIAL ) = abap_true.
    ELSE.
      DATA t111 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t111 = t104.
      DATA(t113) = VALUE string( ).
      t113 = t91->value.
      t106 = t111->find_class_definition( i_name = t113 ).
    ENDIF.
    t102 = t106.
    DATA t115 TYPE REF TO zcl_lnt_method_definition.
    IF xsdbool( t102 IS BOUND ) = abap_true.
      t115 = me->find_constructor( i_def = t102 i_scope = t2 ).
    ELSE.
      CLEAR t115.
    ENDIF.
    result = t115.

  ENDMETHOD.

  METHOD add_from_try_structure.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->sinked IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d712_8689fb760a6c.
    t9 = i_s->find_direct_structures( i_type_9913 = t11 ).
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t9->load( ).
      IF t14 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t9->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA t17 TYPE REF TO zcl_lnt_statement_node.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d402_a27e9c5370ec.
      t17 = t12->find_direct_statement( i_type_9913 = t20 ).
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      IF xsdbool( t17 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_statement_node.
      t29 = t17.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t28 = t29->find_direct_expressions( i_type_9913 = t31 ).
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      DATA(t34) = VALUE i( ).
      DO.
        t28->load( ).
        IF t34 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t33.
        READ TABLE t28->items INDEX t34 + 1 INTO t33.
        t34 = t34 + 1.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        CLEAR t32.
        IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t35 ?= t33.
          DATA t36 TYPE REF TO object.
          t36 = t35->as_ref( ).
          t32 ?= t36.
        ELSE.
          t32 ?= t33.
        ENDIF.
        DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t37 = me->sinked.
        DATA t39 TYPE string.
        t39 = t32->concat_tokens( ).
        t37->load( ).
        APPEND t39 TO t37->items.
        t37->save( ).
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD set_sinked_from_method.
    DATA(t1) = i_s.
    DATA(t2) = i_file.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t5.
    me->sinked = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
    DATA t9 TYPE REF TO zif_lnt_spaghetti_scope.
    t9 = me->syntax->zlnt_view_read_sr_b6b1d9e0c93e( ).
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    t14 = t1->get_last_token( ).
    DATA t18 TYPE f.
    t18 = t14->start->row.
    DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t25 = t14->start->col.
    DATA t31 TYPE f.
    t31 = strlen( t14->str ).
    DATA(t36) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t36->has = abap_true.
    t36->value = t31.
    t11 = NEW zcl_lnt_position( i_row = t18 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t25 right = t36 op = `+` ) ).
    DATA t41 TYPE REF TO zcl_lnt_abstract_file.
    t41 = t2.
    DATA t43 TYPE string.
    t43 = t41->filename.
    DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t45->has = abap_true.
    t45->value = t43.
    DATA t47 TYPE REF TO zcl_lnt_method_definition.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zcl_lnt_iscope_data.
    DATA t54 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t54 = t9->lookup_position( i_p = t11 i_filename = t45 ).
    DATA t56 TYPE REF TO zcl_lnt_iscope_data.
    IF xsdbool( t54 IS INITIAL ) = abap_true.
    ELSE.
      t56 = t54->get_data( ).
    ENDIF.
    t52 = t56.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t52 IS INITIAL ) = abap_true.
    ELSE.
      t63 = t52->references.
    ENDIF.
    t50 = t63.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t50 IS BOUND ) = abap_true.
      t70 = t50.
    ELSE.
      CREATE OBJECT t70.
    ENDIF.
    t49 = t70.
    DATA t76 TYPE REF TO zcl_lnt_ireference.
    DATA t77 TYPE REF TO object.
    DATA(t78) = VALUE i( ).
    DO.
      t49->load( ).
      IF t78 >= lines( t49->items ).
        EXIT.
      ENDIF.
      CLEAR t77.
      READ TABLE t49->items INDEX t78 + 1 INTO t77.
      t78 = t78 + 1.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      CLEAR t76.
      IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t79 ?= t77.
        DATA t80 TYPE REF TO object.
        t80 = t79->as_ref( ).
        t76 ?= t80.
      ELSE.
        t76 ?= t77.
      ENDIF.
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE abap_bool.
      t82 = xsdbool( t76->reference_type = |Method Implementation| ).
      t81 = t82.
      IF t82 = abap_true.
        DATA t87 TYPE REF TO zcl_lnt_fi_identifier.
        t87 = t76->resolved.
        t81 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_method_definition ).
      ENDIF.
      IF t81 = abap_true.
        DATA t91 TYPE REF TO zcl_lnt_method_definition.
        DATA t92 TYPE REF TO zcl_lnt_fi_identifier.
        t92 = t76->resolved.
        t91 ?= t92.
        t47 = t91.
        EXIT.
      ENDIF.
    ENDDO.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t47 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t103 = t47->raising.
    DATA t110 TYPE i.
    t103->load( ).
    t110 = lines( t103->items ).
    DATA t113 TYPE i.
    t113 = 0.
    DO.
      IF xsdbool( t113 < t110 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t119 TYPE string.
      t119 = t103->get( p0 = t113 )->value.
      DATA t123 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t123.
      DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t124 = me->sinked.
      DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t126.
      IF xsdbool( t124 IS INITIAL ) = abap_true.
        CLEAR t126.
      ELSE.
        DATA t130 TYPE f.
        DATA t131 TYPE i.
        DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t132 = t124.
        t132->load( ).
        APPEND t119 TO t132->items.
        t131 = lines( t132->items ).
        t132->save( ).
        t130 = t131.
        DATA(t135) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t135->has = abap_true.
        t135->value = t130.
        t126 = t135.
      ENDIF.
      t123 = t126.
      DATA(t138) = 1.
      t113 = t113 + t138.
    ENDDO.
  ENDMETHOD.

  METHOD is_sinked.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( me->sinked IS INITIAL ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t11 = t1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t15) = VALUE abap_bool( ).
      IF t11 IS INITIAL.
        t15 = abap_true.
      ELSEIF t11->has = abap_false.
        t15 = abap_true.
      ENDIF.
      t2 = t15.
    ENDIF.
    IF t2 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t20) = me->global_exceptions.
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    t22 = t1->value.
    DATA(t24) = strlen( t22 ).
    t21 = t22.
    IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t21 TO UPPER CASE.
    ELSE.
      t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
    ENDIF.
    DATA(t25) = CAST zlnt_runtime_opti_7fb1553a12de( t20->get( p0 = t21 ) ).
    IF t25 IS BOUND.
      t19 = t25->value.
    ENDIF.
    t18 = t19.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |CX_DYNAMIC_CHECK|.
    t29 = t32.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    IF t18 IS BOUND.
      t34 = t18->has.
    ENDIF.
    IF t29 IS BOUND.
      t35 = t29->has.
    ENDIF.
    IF t34 = t35.
      IF t34 = abap_false.
        t27 = abap_true.
      ELSEIF t18->value = t29->value.
        t27 = abap_true.
      ENDIF.
    ENDIF.
    t26 = t27.
    IF t27 = abap_true.
      DATA t37 TYPE abap_bool.
      t37 = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) )->zlnt_view_read_sr_54312afc1b0a( ).
      t26 = xsdbool( t37 <> abap_true ).
    ENDIF.
    IF t26 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = VALUE abap_bool( ).
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t47->has = abap_true.
    t47->value = |CX_NO_CHECK|.
    t44 = t47.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = VALUE abap_bool( ).
    IF t18 IS BOUND.
      t49 = t18->has.
    ENDIF.
    IF t44 IS BOUND.
      t50 = t44->has.
    ENDIF.
    IF t49 = t50.
      IF t49 = abap_false.
        t42 = abap_true.
      ELSEIF t18->value = t44->value.
        t42 = abap_true.
      ENDIF.
    ENDIF.
    t41 = t42.
    IF t42 = abap_true.
      DATA t52 TYPE abap_bool.
      t52 = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) )->zlnt_view_read_sr_d2c23be943f9( ).
      t41 = xsdbool( t52 <> abap_true ).
    ENDIF.
    IF t41 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t58) = me->local_exceptions.
    DATA t59 TYPE string.
    DATA t60 TYPE string.
    t60 = t1->value.
    DATA(t62) = strlen( t60 ).
    t59 = t60.
    IF t59 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t59 TO UPPER CASE.
    ELSE.
      t59 = zlnt_runtime_uppe_91169605024d=>full( t59 ).
    ENDIF.
    DATA(t63) = CAST zlnt_runtime_opti_7fb1553a12de( t58->get( p0 = t59 ) ).
    IF t63 IS BOUND.
      t57 = t63->value.
    ENDIF.
    t56 = t57.
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = VALUE abap_bool( ).
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t70->has = abap_true.
    t70->value = |CX_DYNAMIC_CHECK|.
    t67 = t70.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = VALUE abap_bool( ).
    IF t56 IS BOUND.
      t72 = t56->has.
    ENDIF.
    IF t67 IS BOUND.
      t73 = t67->has.
    ENDIF.
    IF t72 = t73.
      IF t72 = abap_false.
        t65 = abap_true.
      ELSEIF t56->value = t67->value.
        t65 = abap_true.
      ENDIF.
    ENDIF.
    t64 = t65.
    IF t65 = abap_true.
      DATA t75 TYPE abap_bool.
      t75 = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) )->zlnt_view_read_sr_54312afc1b0a( ).
      t64 = xsdbool( t75 <> abap_true ).
    ENDIF.
    IF t64 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t79) = VALUE abap_bool( ).
    DATA(t80) = VALUE abap_bool( ).
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t85->has = abap_true.
    t85->value = |CX_NO_CHECK|.
    t82 = t85.
    DATA(t87) = VALUE abap_bool( ).
    DATA(t88) = VALUE abap_bool( ).
    IF t56 IS BOUND.
      t87 = t56->has.
    ENDIF.
    IF t82 IS BOUND.
      t88 = t82->has.
    ENDIF.
    IF t87 = t88.
      IF t87 = abap_false.
        t80 = abap_true.
      ELSEIF t56->value = t82->value.
        t80 = abap_true.
      ENDIF.
    ENDIF.
    t79 = t80.
    IF t80 = abap_true.
      DATA t90 TYPE abap_bool.
      t90 = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) )->zlnt_view_read_sr_d2c23be943f9( ).
      t79 = xsdbool( t90 <> abap_true ).
    ENDIF.
    IF t79 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t94) = VALUE abap_bool( ).
    DATA(t95) = VALUE abap_bool( ).
    DATA(t96) = VALUE abap_bool( ).
    DATA t97 TYPE abap_bool.
    t97 = abap_false.
    DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t99 = me->sinked.
    DATA(t101) = VALUE string( ).
    t99->dense( ).
    DATA(t102) = VALUE i( ).
    DO.
      t99->load( ).
      IF t102 >= lines( t99->items ).
        EXIT.
      ENDIF.
      CLEAR t101.
      READ TABLE t99->items INDEX t102 + 1 INTO t101.
      IF t99->has( t102 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t102 = t102 + 1.
      DATA t104 TYPE string.
      DATA(t106) = strlen( t101 ).
      t104 = t101.
      IF t104 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t104 TO UPPER CASE.
      ELSE.
        t104 = zlnt_runtime_uppe_91169605024d=>full( t104 ).
      ENDIF.
      DATA t107 TYPE string.
      DATA t108 TYPE string.
      t108 = t1->value.
      DATA(t110) = strlen( t108 ).
      t107 = t108.
      IF t107 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t107 TO UPPER CASE.
      ELSE.
        t107 = zlnt_runtime_uppe_91169605024d=>full( t107 ).
      ENDIF.
      IF xsdbool( t104 = t107 ) = abap_true.
        t97 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    t96 = t97.
    t95 = t96.
    IF t96 = abap_false.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = VALUE abap_bool( ).
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t115 = t18.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t120) = VALUE abap_bool( ).
      IF t115 IS INITIAL.
        t120 = abap_true.
      ELSEIF t115->has = abap_false.
        t120 = abap_true.
      ENDIF.
      t114 = xsdbool( t120 = abap_false ).
      t113 = t114.
      IF t114 = abap_true.
        DATA(t123) = VALUE abap_bool( ).
        DATA t126 TYPE string.
        t126 = t18->value.
        DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t128->has = abap_true.
        t128->value = t126.
        t123 = me->is_sinked( i_name = t128 ).
        t113 = xsdbool( t123 = abap_true ).
      ENDIF.
      t95 = t113.
    ENDIF.
    t94 = t95.
    IF t95 = abap_false.
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = VALUE abap_bool( ).
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t133 = t56.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t138) = VALUE abap_bool( ).
      IF t133 IS INITIAL.
        t138 = abap_true.
      ELSEIF t133->has = abap_false.
        t138 = abap_true.
      ENDIF.
      t132 = xsdbool( t138 = abap_false ).
      t131 = t132.
      IF t132 = abap_true.
        DATA(t141) = VALUE abap_bool( ).
        DATA t144 TYPE string.
        t144 = t56->value.
        DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t146->has = abap_true.
        t146->value = t144.
        t141 = me->is_sinked( i_name = t146 ).
        t131 = xsdbool( t141 = abap_true ).
      ENDIF.
      t94 = t131.
    ENDIF.
    result = t94.

  ENDMETHOD.

  METHOD find_global_exceptions.
    me->global_exceptions = NEW zlnt_runtime_map__70f58d75267f( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalExceptions`.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    DATA(t7) = me->reg.
    t5 = NEW zcl_lnt_ddic( i_reg_f149 = t7 ).
    DATA t8 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t8 = me->reg->get_objects( )->iterate( ).
    DO.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t13.
      t13 = t8->next( ).
      IF t13->done = abap_true.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      t18 = t13->value.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      t24 = abap_false.
      DATA t26 TYPE REF TO cx_root.
      CLEAR t26.
      TRY.
          t23 = xsdbool( xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_class ) = abap_false ).
          t24 = abap_true.
        CATCH cx_root INTO t26.
          IF xsdbool( t24 = abap_false ) = abap_true.
            t8->close( ).
          ENDIF.
          RAISE EXCEPTION t26.
      ENDTRY.
      IF xsdbool( t24 = abap_false ) = abap_true.
        t8->close( ).
      ENDIF.
      IF t23 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t38.
      DATA t40 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      t41 = abap_false.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          DATA t45 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t45.
          DATA t47 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t47.
          DATA t49 TYPE REF TO zcl_lnt_class.
          CLEAR t49.
          DATA t51 TYPE REF TO object.
          CLEAR t51.
          t51 = t18.
          t49 ?= t51.
          t47 = t49->get_main_abap_file( ).
          DATA t52 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t52.
          IF xsdbool( t47 IS INITIAL ) = abap_true.
            CLEAR t52.
          ELSE.
            t52 = t47->info.
          ENDIF.
          t45 = t52.
          DATA t62 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t62.
          IF xsdbool( t45 IS INITIAL ) = abap_true.
            CLEAR t62.
          ELSE.
            DATA t67 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t67.
            t67 = t45.
            DATA(t69) = VALUE string( ).
            DATA t70 TYPE REF TO zcl_lnt_abstract_object.
            CLEAR t70.
            DATA t71 TYPE REF TO zcl_lnt_class.
            CLEAR t71.
            DATA t73 TYPE REF TO object.
            CLEAR t73.
            t73 = t18.
            t71 ?= t73.
            t70 = t71.
            t69 = t70->name.
            t62 = t67->get_class_definition_by_name( i_name = t69 ).
          ENDIF.
          t40 = t62.
          t41 = abap_true.
        CATCH cx_root INTO t43.
          IF xsdbool( t41 = abap_false ) = abap_true.
            t8->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      IF xsdbool( t41 = abap_false ) = abap_true.
        t8->close( ).
      ENDIF.
      t38 = t40.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      t86 = abap_false.
      DATA t88 TYPE REF TO cx_root.
      CLEAR t88.
      TRY.
          DATA(t89) = VALUE abap_bool( ).
          DATA(t90) = VALUE abap_bool( ).
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          CLEAR t93.
          t90 = xsdbool( t38 IS INITIAL ).
          t89 = t90.
          IF t90 = abap_false.
            DATA t100 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t100.
            t100 = t38.
            DATA t105 TYPE REF TO zcl_lnt_class.
            CLEAR t105.
            DATA t107 TYPE REF TO object.
            CLEAR t107.
            t107 = t18.
            t105 ?= t107.
            t89 = xsdbool( t5->is_exception( i_def = t100 i_obj_ac26 = t105 ) = abap_false ).
          ENDIF.
          t85 = t89.
          t86 = abap_true.
        CATCH cx_root INTO t88.
          IF xsdbool( t86 = abap_false ) = abap_true.
            t8->close( ).
          ENDIF.
          RAISE EXCEPTION t88.
      ENDTRY.
      IF xsdbool( t86 = abap_false ) = abap_true.
        t8->close( ).
      ENDIF.
      IF t85 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t117 TYPE REF TO zlnt_runtime_map__70f58d75267f.
      CLEAR t117.
      DATA t118 TYPE REF TO zlnt_runtime_map__70f58d75267f.
      CLEAR t118.
      DATA(t119) = VALUE abap_bool( ).
      t119 = abap_false.
      DATA t121 TYPE REF TO cx_root.
      CLEAR t121.
      TRY.
          DATA(t123) = me->global_exceptions.
          DATA(t124) = VALUE string( ).
          DATA(t125) = VALUE string( ).
          DATA t126 TYPE REF TO zcl_lnt_abstract_object.
          CLEAR t126.
          DATA t127 TYPE REF TO zcl_lnt_class.
          CLEAR t127.
          DATA t129 TYPE REF TO object.
          CLEAR t129.
          t129 = t18.
          t127 ?= t129.
          t126 = t127.
          t125 = t126->name.
          DATA(t132) = strlen( t125 ).
          t124 = t125.
          IF t124 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t124 TO UPPER CASE.
          ELSE.
            t124 = zlnt_runtime_uppe_91169605024d=>full( t124 ).
          ENDIF.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          t134 = t38->super_class_name.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA(t139) = VALUE abap_bool( ).
          IF t134 IS INITIAL.
            t139 = abap_true.
          ELSEIF t134->has = abap_false.
            t139 = abap_true.
          ENDIF.
          IF t139 = abap_true.
            CLEAR t138.
          ELSE.
            DATA(t142) = VALUE string( ).
            DATA(t143) = VALUE string( ).
            t143 = t134->value.
            DATA(t145) = strlen( t143 ).
            t142 = t143.
            IF t142 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t142 TO UPPER CASE.
            ELSE.
              t142 = zlnt_runtime_uppe_91169605024d=>full( t142 ).
            ENDIF.
            DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t146->has = abap_true.
            t146->value = t142.
            t138 = t146.
          ENDIF.
          t118 = t123->set( p0 = t124 p1 = t138 ).
          t119 = abap_true.
        CATCH cx_root INTO t121.
          IF xsdbool( t119 = abap_false ) = abap_true.
            t8->close( ).
          ENDIF.
          RAISE EXCEPTION t121.
      ENDTRY.
      IF xsdbool( t119 = abap_false ) = abap_true.
        t8->close( ).
      ENDIF.
      t117 = t118.
    ENDDO.
  ENDMETHOD.

  METHOD find_local_exceptions.
    DATA(t1) = i_obj_1ed0.
    me->local_exceptions = NEW zlnt_runtime_map__70f58d75267f( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `localExceptions`.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t1->parsed.
    DATA t11 TYPE REF TO zcl_lnt_abap_file.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t6->load( ).
      IF t13 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t6->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t16 = t11->info->list_class_definitions( ).
      DATA t22 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t22.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      DATA(t24) = VALUE i( ).
      DO.
        t16->load( ).
        IF t24 >= lines( t16->items ).
          EXIT.
        ENDIF.
        CLEAR t23.
        READ TABLE t16->items INDEX t24 + 1 INTO t23.
        t24 = t24 + 1.
        DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t25.
        CLEAR t22.
        IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t25 ?= t23.
          DATA t26 TYPE REF TO object.
          t26 = t25->as_ref( ).
          t22 ?= t26.
        ELSE.
          t22 ?= t23.
        ENDIF.
        DATA(t27) = VALUE abap_bool( ).
        DATA(t28) = VALUE abap_bool( ).
        DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t29 = t22->is_local.
        DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t31.
        DATA(t34) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t34->has = abap_true.
        t34->value = abap_true.
        t31 = t34.
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = VALUE abap_bool( ).
        IF t29 IS BOUND.
          t36 = t29->has.
        ENDIF.
        IF t31 IS BOUND.
          t37 = t31->has.
        ENDIF.
        IF t36 = t37.
          IF t36 = abap_false.
            t28 = abap_true.
          ELSEIF t29->value = t31->value.
            t28 = abap_true.
          ENDIF.
        ENDIF.
        t27 = t28.
        IF t28 = abap_true.
          DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t39 = t22->super_class_name.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t42.
          DATA(t45) = VALUE abap_bool( ).
          IF t39 IS INITIAL.
            t45 = abap_true.
          ELSEIF t39->has = abap_false.
            t45 = abap_true.
          ENDIF.
          t27 = xsdbool( t45 = abap_false ).
        ENDIF.
        IF t27 = abap_true.
          DATA t47 TYPE REF TO zlnt_runtime_map__70f58d75267f.
          CLEAR t47.
          DATA(t48) = me->local_exceptions.
          DATA t49 TYPE string.
          DATA t50 TYPE string.
          t50 = t22->name.
          DATA(t52) = strlen( t50 ).
          t49 = t50.
          IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t49 TO UPPER CASE.
          ELSE.
            t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
          ENDIF.
          DATA t55 TYPE string.
          DATA t56 TYPE string.
          t56 = t22->super_class_name->value.
          DATA(t59) = strlen( t56 ).
          t55 = t56.
          IF t55 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t55 TO UPPER CASE.
          ELSE.
            t55 = zlnt_runtime_uppe_91169605024d=>full( t55 ).
          ENDIF.
          DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t60->has = abap_true.
          t60->value = t55.
          t47 = t48->set( p0 = t49 p1 = t60 ).
        ENDIF.
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).

  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_uncaught_exception.
    DATA t3 TYPE REF TO zcl_lnt_abap_rule.
    DATA(t4) = i_reg_f149.
    DATA(t5) = CAST zif_lnt_rule( super->initialize( i_reg_f149 = t4 ) ).
    t3 ?= t5.
    t2 ?= t3.
    me->find_global_exceptions( ).
    result = me.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_uncght_excptn_cnf.
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
        t1 = NEW zcl_lnt_uncght_excptn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_ex_ts_un_exc( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1738_a4ede2e8d353.
  ENDMETHOD.
ENDCLASS.
