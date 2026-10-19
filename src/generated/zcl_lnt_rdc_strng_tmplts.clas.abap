* TS: src/rules/reduce_string_templates.ts:12:1 ReduceStringTemplates
CLASS zcl_lnt_rdc_strng_tmplts DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_rdc_strng_tmplts_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_rd_st_tm_ts_rd_st_tm RETURNING VALUE(result) TYPE REF TO zcl_lnt_rdc_strng_tmplts_cnf.
    METHODS s_c_i_s_r_rd_st_tm_ts_rd_st_tm IMPORTING i_conf TYPE REF TO zcl_lnt_rdc_strng_tmplts_cnf.
    METHODS r_p_i_s_r_rd_st_tm_ts_rd_st_tm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_ac26 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rdc_strng_tmplts IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_rdc_strng_tmplts_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = |WRITE \|\{ \|sdf\| \}\|.\nWRITE \|\{ 'sdf' \}\|.|.
    t18 = t22.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |WRITE \|sdf\|.|.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |reduce_string_templates| i_title = |Reduce string templates| i_short_description = |Checks for string templates| i_bad_example = t18 i_good_example = t28 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t43 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t45 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_rd_st_tm_ts_rd_st_tm.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_rd_st_tm_ts_rd_st_tm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_rd_st_tm_ts_rd_st_tm.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_ac26.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    t5 = t1->structure.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t5.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d278_cacef970a917.
    t19 = t20->find_all_expressions( i_type_9913 = t22 ).
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA t24 TYPE REF TO object.
    DATA(t25) = VALUE i( ).
    DO.
      t19->load( ).
      IF t25 >= lines( t19->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t19->items INDEX t25 + 1 INTO t24.
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
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d346_869087cbf76f.
      t28 = t23->find_all_expressions( i_type_9913 = t30 ).
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t31.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      DATA(t33) = VALUE i( ).
      DO.
        t28->load( ).
        IF t33 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t32.
        READ TABLE t28->items INDEX t33 + 1 INTO t32.
        t33 = t33 + 1.
        DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t34.
        CLEAR t31.
        IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t34 ?= t32.
          DATA t35 TYPE REF TO object.
          t35 = t34->as_ref( ).
          t31 ?= t35.
        ELSE.
          t31 ?= t32.
        ENDIF.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t36 = t31->find_direct_expressions( i_type_9913 = t38 ).
        DATA t39 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t39.
        DATA t40 TYPE REF TO object.
        CLEAR t40.
        DATA(t41) = VALUE i( ).
        DO.
          t36->load( ).
          IF t41 >= lines( t36->items ).
            EXIT.
          ENDIF.
          CLEAR t40.
          READ TABLE t36->items INDEX t41 + 1 INTO t40.
          t41 = t41 + 1.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t42.
          CLEAR t39.
          IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t42 ?= t40.
            DATA t43 TYPE REF TO object.
            t43 = t42->as_ref( ).
            t39 ?= t43.
          ELSE.
            t39 ?= t40.
          ENDIF.
          DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d278_cacef970a917.
          t44 = t39->find_direct_expressions( i_type_9913 = t46 ).
          DATA t47 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t47.
          DATA t48 TYPE REF TO object.
          CLEAR t48.
          DATA(t49) = VALUE i( ).
          DO.
            t44->load( ).
            IF t49 >= lines( t44->items ).
              EXIT.
            ENDIF.
            CLEAR t48.
            READ TABLE t44->items INDEX t49 + 1 INTO t48.
            t49 = t49 + 1.
            DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t50.
            CLEAR t47.
            IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t50 ?= t48.
              DATA t51 TYPE REF TO object.
              t51 = t50->as_ref( ).
              t47 ?= t51.
            ELSE.
              t47 ?= t48.
            ENDIF.
            DATA t53 TYPE REF TO zcl_lnt_issue.
            CLEAR t53.
            DATA t55 TYPE REF TO zcl_lnt_abstract_token.
            t55 = t47->get_first_token( ).
            DATA(t58) = VALUE string( ).
            DATA t59 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t59.
            DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t66.
            DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t70.
            t70->load( ).
            APPEND |SingleFile| TO t70->items.
            t70->save( ).
            t66 = t70.
            DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t76.
            DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t80->has = abap_true.
            t80->value = |WRITE \|\{ \|sdf\| \}\|.\nWRITE \|\{ 'sdf' \}\|.|.
            t76 = t80.
            DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t82.
            DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t86->has = abap_true.
            t86->value = |WRITE \|sdf\|.|.
            t82 = t86.
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t88.
            DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t90.
            DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t92.
            t59 = NEW zcl_lnt_irule_metadata( i_key = |reduce_string_templates| i_title = |Reduce string templates| i_short_description = |Checks for string templates| i_bad_example = t76 i_good_example = t82 i_extended_information = t88 i_tags = t66 i_pragma = t90 i_pseudo_comment = t92 ).
            CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
            t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t94.
            t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t94 ).
            DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t95.
            IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t95 ).
            ENDIF.
            DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t96.
            IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t96 ).
            ENDIF.
            DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t97.
            IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t97 ).
            ENDIF.
            DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t98.
            IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t98 ).
            ENDIF.
            DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t99.
            IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t99 ).
            ENDIF.
            CREATE OBJECT t59->zlnt_json_ownkeys_70e5fd461788.
            t59->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t101.
            t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t101 ).
            DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t103.
            IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t103 ).
            ENDIF.
            DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t105.
            IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t105 ).
            ENDIF.
            DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t107.
            IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t107 ).
            ENDIF.
            DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t109.
            IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t109 ).
            ENDIF.
            DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t111.
            IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t111 ).
            ENDIF.
            t58 = t59->key.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t112 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t114.
            t53 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t55 i_message_26cb = |Nested string templates, reduce| i_key = t58 i_severity = t112 i_fix = t114 ).
            t3->load( ).
            APPEND t53 TO t3->items.
            t3->save( ).
          ENDDO.
          DATA t116 TYPE REF TO zcl_lnt_expression_node.
          DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d347_94341124f92e.
          t116 = t31->find_direct_expression( i_type_9913 = t118 ).
          IF xsdbool( t116 IS BOUND ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
          t119 = t39->find_direct_expressions( i_type_9913 = t121 ).
          DATA t122 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t122.
          DATA t123 TYPE REF TO object.
          CLEAR t123.
          DATA(t124) = VALUE i( ).
          DO.
            t119->load( ).
            IF t124 >= lines( t119->items ).
              EXIT.
            ENDIF.
            CLEAR t123.
            READ TABLE t119->items INDEX t124 + 1 INTO t123.
            t124 = t124 + 1.
            DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t125.
            CLEAR t122.
            IF t123 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t125 ?= t123.
              DATA t126 TYPE REF TO object.
              t126 = t125->as_ref( ).
              t122 ?= t126.
            ELSE.
              t122 ?= t123.
            ENDIF.
            DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f.
            t127 = t122->find_direct_expressions( i_type_9913 = t129 ).
            DATA t130 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t130.
            DATA t131 TYPE REF TO object.
            CLEAR t131.
            DATA(t132) = VALUE i( ).
            DO.
              t127->load( ).
              IF t132 >= lines( t127->items ).
                EXIT.
              ENDIF.
              CLEAR t131.
              READ TABLE t127->items INDEX t132 + 1 INTO t131.
              t132 = t132 + 1.
              DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t133.
              CLEAR t130.
              IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t133 ?= t131.
                DATA t134 TYPE REF TO object.
                t134 = t133->as_ref( ).
                t130 ?= t134.
              ELSE.
                t130 ?= t131.
              ENDIF.
              DATA t136 TYPE REF TO zcl_lnt_issue.
              CLEAR t136.
              DATA t138 TYPE REF TO zcl_lnt_abstract_token.
              t138 = t130->get_first_token( ).
              DATA(t141) = VALUE string( ).
              DATA t142 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t142.
              DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t149.
              DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t153.
              t153->load( ).
              APPEND |SingleFile| TO t153->items.
              t153->save( ).
              t149 = t153.
              DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t159.
              DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t163->has = abap_true.
              t163->value = |WRITE \|\{ \|sdf\| \}\|.\nWRITE \|\{ 'sdf' \}\|.|.
              t159 = t163.
              DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t165.
              DATA(t169) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t169->has = abap_true.
              t169->value = |WRITE \|sdf\|.|.
              t165 = t169.
              DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t171.
              DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t173.
              DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t175.
              t142 = NEW zcl_lnt_irule_metadata( i_key = |reduce_string_templates| i_title = |Reduce string templates| i_short_description = |Checks for string templates| i_bad_example = t159 i_good_example = t165 i_extended_information = t171 i_tags = t149 i_pragma = t173 i_pseudo_comment = t175 ).
              CREATE OBJECT t142->zlnt_view_ownkeys_b0e8086400eb.
              t142->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t177.
              t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t177 ).
              DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t178.
              IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t178 ).
              ENDIF.
              DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t179.
              IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t179 ).
              ENDIF.
              DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t180.
              IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t180 ).
              ENDIF.
              DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t181.
              IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t181 ).
              ENDIF.
              DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t182.
              IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t182 ).
              ENDIF.
              CREATE OBJECT t142->zlnt_json_ownkeys_70e5fd461788.
              t142->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t184.
              t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t184 ).
              DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t186.
              IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t186 ).
              ENDIF.
              DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t188.
              IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t188 ).
              ENDIF.
              DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t190.
              IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t190 ).
              ENDIF.
              DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t192.
              IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t192 ).
              ENDIF.
              DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t194.
              IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t194 ).
              ENDIF.
              t141 = t142->key.
              DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t195 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t197 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t197.
              t136 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t138 i_message_26cb = |Constant string in text template, reduce| i_key = t141 i_severity = t195 i_fix = t197 ).
              t3->load( ).
              APPEND t136 TO t3->items.
              t3->save( ).
            ENDDO.
          ENDDO.
        ENDDO.
      ENDDO.
    ENDDO.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t199 TYPE REF TO zcl_lnt_structure_node.
    t199 = t5.
    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t198 = t199->find_all_expressions( i_type_9913 = t201 ).
    DATA t202 TYPE REF TO zcl_lnt_expression_node.
    DATA t203 TYPE REF TO object.
    DATA(t204) = VALUE i( ).
    DO.
      t198->load( ).
      IF t204 >= lines( t198->items ).
        EXIT.
      ENDIF.
      CLEAR t203.
      READ TABLE t198->items INDEX t204 + 1 INTO t203.
      t204 = t204 + 1.
      DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t205.
      CLEAR t202.
      IF t203 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t205 ?= t203.
        DATA t206 TYPE REF TO object.
        t206 = t205->as_ref( ).
        t202 ?= t206.
      ELSE.
        t202 ?= t203.
      ENDIF.
      DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t210 TYPE REF TO zcl_lnt_abstract_node.
      t210 = t202.
      t209 = t210->children.
      t208 ?= t209.
      t207 = t208.
      t207->load( ).
      IF xsdbool( lines( t207->items ) <> 3 ) = abap_true.
        CONTINUE.
      ELSE.
        DATA t220 TYPE REF TO object.
        CLEAR t220.
        DATA t221 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t221.
        DATA t223 TYPE REF TO object.
        CLEAR t223.
        t207->load( ).
        CLEAR t223.
        READ TABLE t207->items INDEX 1 INTO t223.
        DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t224.
        CLEAR t221.
        IF t223 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t224 ?= t223.
          DATA t225 TYPE REF TO object.
          t225 = t224->as_ref( ).
          t221 ?= t225.
        ELSE.
          t221 ?= t223.
        ENDIF.
        t220 = t221->get_db65( ).
        IF xsdbool( xsdbool( t220 IS BOUND AND t220 IS INSTANCE OF zcl_lnt_st_string_template ) = abap_false ) = abap_true.
          CONTINUE.
        ELSE.
          DATA(t227) = VALUE string( ).
          DATA t230 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t230.
          DATA t232 TYPE REF TO object.
          CLEAR t232.
          t207->load( ).
          CLEAR t232.
          READ TABLE t207->items INDEX 2 INTO t232.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          CLEAR t230.
          IF t232 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t233 ?= t232.
            DATA t234 TYPE REF TO object.
            t234 = t233->as_ref( ).
            t230 ?= t234.
          ELSE.
            t230 ?= t232.
          ENDIF.
          t227 = t230->get_first_token( )->str.
          IF xsdbool( t227 <> |&&| ) = abap_true.
            CONTINUE.
          ELSE.
            DATA t240 TYPE REF TO object.
            CLEAR t240.
            DATA t241 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t241.
            DATA t243 TYPE REF TO object.
            CLEAR t243.
            t207->load( ).
            CLEAR t243.
            READ TABLE t207->items INDEX 3 INTO t243.
            DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t244.
            CLEAR t241.
            IF t243 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t244 ?= t243.
              DATA t245 TYPE REF TO object.
              t245 = t244->as_ref( ).
              t241 ?= t245.
            ELSE.
              t241 ?= t243.
            ENDIF.
            t240 = t241->get_db65( ).
            IF xsdbool( xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_st_source ) = abap_false ) = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t246.
      DATA t248 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t248.
      DATA t250 TYPE REF TO object.
      CLEAR t250.
      t207->load( ).
      CLEAR t250.
      READ TABLE t207->items INDEX 3 INTO t250.
      DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t251.
      CLEAR t248.
      IF t250 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t251 ?= t250.
        DATA t252 TYPE REF TO object.
        t252 = t251->as_ref( ).
        t248 ?= t252.
      ELSE.
        t248 ?= t250.
      ENDIF.
      t246 = t248->get_children( ).
      t246->load( ).
      IF xsdbool( lines( t246->items ) <> 1 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t261 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t261.
      DATA t263 TYPE REF TO object.
      CLEAR t263.
      t207->load( ).
      CLEAR t263.
      READ TABLE t207->items INDEX 1 INTO t263.
      DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t264.
      CLEAR t261.
      IF t263 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t264 ?= t263.
        DATA t265 TYPE REF TO object.
        t265 = t264->as_ref( ).
        t261 ?= t265.
      ELSE.
        t261 ?= t263.
      ENDIF.
      DATA t266 TYPE REF TO zcl_lnt_position.
      t266 = t261->get_first_token( )->start.
      DATA t270 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t270.
      DATA t272 TYPE REF TO zif_lnt_node.
      CLEAR t272.
      DATA t274 TYPE REF TO object.
      CLEAR t274.
      t246->load( ).
      CLEAR t274.
      READ TABLE t246->items INDEX 1 INTO t274.
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t275.
      CLEAR t272.
      IF t274 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t275 ?= t274.
        DATA t276 TYPE REF TO object.
        t276 = t275->as_ref( ).
        t272 ?= t276.
      ELSE.
        t272 ?= t274.
      ENDIF.
      t270 = t272->get_last_token( ).
      DATA t277 TYPE REF TO zcl_lnt_position.
      DATA t278 TYPE f.
      t278 = t270->start->row.
      DATA t285 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t285 = t270->start->col.
      DATA t291 TYPE f.
      t291 = strlen( t270->str ).
      DATA(t296) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t296->has = abap_true.
      t296->value = t291.
      t277 = NEW zcl_lnt_position( i_row = t278 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t285 right = t296 op = `+` ) ).
      IF xsdbool( t266->row = t277->row ) = abap_true.
        DATA t311 TYPE REF TO zcl_lnt_issue.
        CLEAR t311.
        DATA t313 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t313.
        DATA t314 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t314.
        DATA t316 TYPE REF TO object.
        CLEAR t316.
        t207->load( ).
        CLEAR t316.
        READ TABLE t207->items INDEX 2 INTO t316.
        DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t317.
        CLEAR t314.
        IF t316 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t317 ?= t316.
          DATA t318 TYPE REF TO object.
          t318 = t317->as_ref( ).
          t314 ?= t318.
        ELSE.
          t314 ?= t316.
        ENDIF.
        t313 = t314->get_first_token( ).
        DATA(t320) = VALUE string( ).
        DATA t321 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t321.
        DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t328.
        DATA t332 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t332.
        t332->load( ).
        APPEND |SingleFile| TO t332->items.
        t332->save( ).
        t328 = t332.
        DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t338.
        DATA(t342) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t342->has = abap_true.
        t342->value = |WRITE \|\{ \|sdf\| \}\|.\nWRITE \|\{ 'sdf' \}\|.|.
        t338 = t342.
        DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t344.
        DATA(t348) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t348->has = abap_true.
        t348->value = |WRITE \|sdf\|.|.
        t344 = t348.
        DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t350.
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t352.
        DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t354.
        t321 = NEW zcl_lnt_irule_metadata( i_key = |reduce_string_templates| i_title = |Reduce string templates| i_short_description = |Checks for string templates| i_bad_example = t338 i_good_example = t344 i_extended_information = t350 i_tags = t328 i_pragma = t352 i_pseudo_comment = t354 ).
        CREATE OBJECT t321->zlnt_view_ownkeys_b0e8086400eb.
        t321->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t356 ).
        DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t357.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t357 ).
        ENDIF.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t358.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t358 ).
        ENDIF.
        DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t359.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t359 ).
        ENDIF.
        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t360.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t360 ).
        ENDIF.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t361.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t361 ).
        ENDIF.
        CREATE OBJECT t321->zlnt_json_ownkeys_70e5fd461788.
        t321->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t363.
        t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t363 ).
        DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t365.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t365 ).
        ENDIF.
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t367.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t367 ).
        ENDIF.
        DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t369.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t369 ).
        ENDIF.
        DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t371.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t371 ).
        ENDIF.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t373 ).
        ENDIF.
        t320 = t321->key.
        DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t374 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t376 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t376.
        t311 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t313 i_message_26cb = |Reduce template, remove "&&"| i_key = t320 i_severity = t374 i_fix = t376 ).
        t3->load( ).
        APPEND t311 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_rdc_strng_tmplts_cnf( me->g_c_i_s_r_rd_st_tm_ts_rd_st_tm( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_rdc_strng_tmplts_cnf( me->g_c_i_s_r_rd_st_tm_ts_rd_st_tm( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_rdc_strng_tmplts_cnf.
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
        t1 = NEW zcl_lnt_rdc_strng_tmplts_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_rd_st_tm_ts_rd_st_tm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_rd_st_tm_ts_rd_st_tm( i_file = i_file i_obj_ac26 = i_obj_1ed0 ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1676_67a821328553.
  ENDMETHOD.
ENDCLASS.
