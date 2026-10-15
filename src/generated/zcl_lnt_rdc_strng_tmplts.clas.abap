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
    DATA(t1) = NEW zcl_lnt_rdc_strng_tmplts_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |reduce_string_templates|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Reduce string templates|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for string templates|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |SingleFile|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      t11 = t16.
      t9 = t11.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t17.
      t9 = t17.
    ENDIF.
    t8 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |WRITE \|\{ \|sdf\| \}\|.\nWRITE \|\{ 'sdf' \}\|.|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t21.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t19 = t23.
    ENDIF.
    t18 = t19.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |WRITE \|sdf\|.|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t24 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |key|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = |title|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |shortDescription|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |tags|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |badExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |goodExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_rd_st_tm_ts_rd_st_tm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_rd_st_tm_ts_rd_st_tm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_rd_st_tm_ts_rd_st_tm.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_ac26.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_structure_node.
    DATA(t10) = t7.
    t9 = t10->structure.
    t6 = t9.
    t5 = t6.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    DATA(t13) = t5.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    t14 = t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t12.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t11 = t16.
    IF t11 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t18.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA(t21) = t5.
    t20 = t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d278_cacef970a917.
    t19 = t20->find_all_expressions( i_type_9913 = t22 ).
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
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
      DATA(t29) = t23.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d346_869087cbf76f.
      t28 = t29->find_all_expressions( i_type_9913 = t30 ).
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
        DATA(t37) = t31.
        DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t36 = t37->find_direct_expressions( i_type_9913 = t38 ).
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
          DATA(t45) = t39.
          DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d278_cacef970a917.
          t44 = t45->find_direct_expressions( i_type_9913 = t46 ).
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
            DATA(t52) = t3.
            DATA t53 TYPE REF TO zcl_lnt_issue.
            CLEAR t53.
            DATA(t54) = t1.
            DATA t55 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t56) = t47.
            t55 = t56->get_first_token( ).
            DATA(t57) = |Nested string templates, reduce|.
            DATA(t58) = VALUE string( ).
            DATA t59 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t59.
            DATA t60 TYPE string.
            DATA(t61) = |reduce_string_templates|.
            t60 = t61.
            DATA t62 TYPE string.
            DATA(t63) = |Reduce string templates|.
            t62 = t63.
            DATA t64 TYPE string.
            DATA(t65) = |Checks for string templates|.
            t64 = t65.
            DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t66.
            DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t67.
            DATA(t68) = abap_true.
            IF t68 = abap_true.
              DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t71.
              t70 = t71.
              DATA(t72) = t70.
              DATA(t73) = |SingleFile|.
              t72->load( ).
              APPEND t73 TO t72->items.
              t72->save( ).
              DATA(t74) = t70.
              t69 = t74.
              t67 = t69.
            ELSE.
              DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t75.
              t67 = t75.
            ENDIF.
            t66 = t67.
            DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t76.
            DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t77.
            DATA(t78) = abap_true.
            IF t78 = abap_true.
              DATA(t79) = |WRITE \|\{ \|sdf\| \}\|.\nWRITE \|\{ 'sdf' \}\|.|.
              DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t80->has = abap_true.
              t80->value = t79.
              t77 = t80.
            ELSE.
              DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t81.
              t77 = t81.
            ENDIF.
            t76 = t77.
            DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t82.
            DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t83.
            DATA(t84) = abap_true.
            IF t84 = abap_true.
              DATA(t85) = |WRITE \|sdf\|.|.
              DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t86->has = abap_true.
              t86->value = t85.
              t83 = t86.
            ELSE.
              DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t87.
              t83 = t87.
            ENDIF.
            t82 = t83.
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t89.
            t88 = t89.
            DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t91.
            t90 = t91.
            DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t93.
            t92 = t93.
            t59 = NEW zcl_lnt_irule_metadata( i_key = t60 i_title = t62 i_short_description = t64 i_bad_example = t76 i_good_example = t82 i_extended_information = t88 i_tags = t66 i_pragma = t90 i_pseudo_comment = t92 ).
            CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
            t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t94.
            IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t94 ).
            ENDIF.
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
            DATA(t100) = |key|.
            DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t101.
            IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
            ENDIF.
            DATA(t102) = |title|.
            DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t103.
            IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
            ENDIF.
            DATA(t104) = |shortDescription|.
            DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t105.
            IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
            ENDIF.
            DATA(t106) = |tags|.
            DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t107.
            IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
            ENDIF.
            DATA(t108) = |badExample|.
            DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t109.
            IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
            ENDIF.
            DATA(t110) = |goodExample|.
            DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t111.
            IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
            ENDIF.
            t58 = t59->key.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t113) = me->conf.
            t112 = t113->zlnt_view_read_sr_15c06369f827( ).
            DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t114.
            t53 = zcl_lnt_issue=>at_token( i_file = t54 i_token = t55 i_message_26cb = t57 i_key = t58 i_severity = t112 i_fix = t114 ).
            t52->load( ).
            APPEND t53 TO t52->items.
            t52->save( ).
          ENDDO.
          DATA t115 TYPE abap_bool.
          DATA t116 TYPE REF TO zcl_lnt_expression_node.
          DATA(t117) = t31.
          DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d347_94341124f92e.
          t116 = t117->find_direct_expression( i_type_9913 = t118 ).
          t115 = xsdbool( t116 IS BOUND ).
          IF t115 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t120) = t39.
          DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
          t119 = t120->find_direct_expressions( i_type_9913 = t121 ).
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
            DATA(t128) = t122.
            DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f.
            t127 = t128->find_direct_expressions( i_type_9913 = t129 ).
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
              DATA(t135) = t3.
              DATA t136 TYPE REF TO zcl_lnt_issue.
              CLEAR t136.
              DATA(t137) = t1.
              DATA t138 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t139) = t130.
              t138 = t139->get_first_token( ).
              DATA(t140) = |Constant string in text template, reduce|.
              DATA(t141) = VALUE string( ).
              DATA t142 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t142.
              DATA t143 TYPE string.
              DATA(t144) = |reduce_string_templates|.
              t143 = t144.
              DATA t145 TYPE string.
              DATA(t146) = |Reduce string templates|.
              t145 = t146.
              DATA t147 TYPE string.
              DATA(t148) = |Checks for string templates|.
              t147 = t148.
              DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t149.
              DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t150.
              DATA(t151) = abap_true.
              IF t151 = abap_true.
                DATA t152 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t154.
                t153 = t154.
                DATA(t155) = t153.
                DATA(t156) = |SingleFile|.
                t155->load( ).
                APPEND t156 TO t155->items.
                t155->save( ).
                DATA(t157) = t153.
                t152 = t157.
                t150 = t152.
              ELSE.
                DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t158.
                t150 = t158.
              ENDIF.
              t149 = t150.
              DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t159.
              DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t160.
              DATA(t161) = abap_true.
              IF t161 = abap_true.
                DATA(t162) = |WRITE \|\{ \|sdf\| \}\|.\nWRITE \|\{ 'sdf' \}\|.|.
                DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t163->has = abap_true.
                t163->value = t162.
                t160 = t163.
              ELSE.
                DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t164.
                t160 = t164.
              ENDIF.
              t159 = t160.
              DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t165.
              DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t166.
              DATA(t167) = abap_true.
              IF t167 = abap_true.
                DATA(t168) = |WRITE \|sdf\|.|.
                DATA(t169) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t169->has = abap_true.
                t169->value = t168.
                t166 = t169.
              ELSE.
                DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t170.
                t166 = t170.
              ENDIF.
              t165 = t166.
              DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t172.
              t171 = t172.
              DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t174.
              t173 = t174.
              DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t176.
              t175 = t176.
              t142 = NEW zcl_lnt_irule_metadata( i_key = t143 i_title = t145 i_short_description = t147 i_bad_example = t159 i_good_example = t165 i_extended_information = t171 i_tags = t149 i_pragma = t173 i_pseudo_comment = t175 ).
              CREATE OBJECT t142->zlnt_view_ownkeys_b0e8086400eb.
              t142->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t177.
              IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t177 ).
              ENDIF.
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
              DATA(t183) = |key|.
              DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t184.
              IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
              ENDIF.
              DATA(t185) = |title|.
              DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t186.
              IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
              ENDIF.
              DATA(t187) = |shortDescription|.
              DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t188.
              IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
              ENDIF.
              DATA(t189) = |tags|.
              DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t190.
              IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
              ENDIF.
              DATA(t191) = |badExample|.
              DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t192.
              IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t191 p1 = t192 ).
              ENDIF.
              DATA(t193) = |goodExample|.
              DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t194.
              IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t193 p1 = t194 ).
              ENDIF.
              t141 = t142->key.
              DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t196) = me->conf.
              t195 = t196->zlnt_view_read_sr_15c06369f827( ).
              DATA t197 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t197.
              t136 = zcl_lnt_issue=>at_token( i_file = t137 i_token = t138 i_message_26cb = t140 i_key = t141 i_severity = t195 i_fix = t197 ).
              t135->load( ).
              APPEND t136 TO t135->items.
              t135->save( ).
            ENDDO.
          ENDDO.
        ENDDO.
      ENDDO.
    ENDDO.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t199 TYPE REF TO zcl_lnt_structure_node.
    DATA(t200) = t5.
    t199 = t200.
    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t198 = t199->find_all_expressions( i_type_9913 = t201 ).
    DATA t202 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t202.
    DATA t203 TYPE REF TO object.
    CLEAR t203.
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
      DATA(t211) = t202.
      t210 = t211.
      DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t213) = t210.
      t212 = t213->children.
      t209 = t212.
      t208 ?= t209.
      t207 = t208.
      DATA t214 TYPE abap_bool.
      DATA t215 TYPE i.
      DATA(t216) = t207.
      t216->load( ).
      t215 = lines( t216->items ).
      DATA(t217) = 3.
      t214 = xsdbool( t215 <> t217 ).
      IF t214 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t218) = VALUE abap_bool( ).
        DATA(t219) = VALUE abap_bool( ).
        DATA t220 TYPE REF TO object.
        CLEAR t220.
        DATA t221 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t221.
        DATA(t222) = t207.
        DATA t223 TYPE REF TO object.
        CLEAR t223.
        t222->load( ).
        CLEAR t223.
        READ TABLE t222->items INDEX 1 INTO t223.
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
        t219 = xsdbool( t220 IS BOUND AND t220 IS INSTANCE OF zcl_lnt_st_string_template ).
        t218 = xsdbool( t219 = abap_false ).
        IF t218 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t226) = VALUE abap_bool( ).
          DATA(t227) = VALUE string( ).
          DATA t228 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t228.
          DATA t229 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t229.
          DATA t230 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t230.
          DATA(t231) = t207.
          DATA t232 TYPE REF TO object.
          CLEAR t232.
          t231->load( ).
          CLEAR t232.
          READ TABLE t231->items INDEX 2 INTO t232.
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
          t229 = t230->get_first_token( ).
          t228 = t229.
          DATA t235 TYPE string.
          DATA(t236) = t228.
          t235 = t236->str.
          t227 = t235.
          DATA(t237) = |&&|.
          t226 = xsdbool( t227 <> t237 ).
          IF t226 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t238) = VALUE abap_bool( ).
            DATA(t239) = VALUE abap_bool( ).
            DATA t240 TYPE REF TO object.
            CLEAR t240.
            DATA t241 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t241.
            DATA(t242) = t207.
            DATA t243 TYPE REF TO object.
            CLEAR t243.
            t242->load( ).
            CLEAR t243.
            READ TABLE t242->items INDEX 3 INTO t243.
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
            t239 = xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_st_source ).
            t238 = xsdbool( t239 = abap_false ).
            IF t238 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t246.
      DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t247.
      DATA t248 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t248.
      DATA(t249) = t207.
      DATA t250 TYPE REF TO object.
      CLEAR t250.
      t249->load( ).
      CLEAR t250.
      READ TABLE t249->items INDEX 3 INTO t250.
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
      t247 = t248->get_children( ).
      t246 = t247.
      DATA t253 TYPE abap_bool.
      DATA t254 TYPE i.
      DATA(t255) = t246.
      t255->load( ).
      t254 = lines( t255->items ).
      DATA(t256) = 1.
      t253 = xsdbool( t254 <> t256 ).
      IF t253 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t257 TYPE REF TO zcl_lnt_position.
      CLEAR t257.
      DATA t258 TYPE REF TO zcl_lnt_position.
      CLEAR t258.
      DATA t259 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t259.
      DATA t260 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t260.
      DATA t261 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t261.
      DATA(t262) = t207.
      DATA t263 TYPE REF TO object.
      CLEAR t263.
      t262->load( ).
      CLEAR t263.
      READ TABLE t262->items INDEX 1 INTO t263.
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
      t260 = t261->get_first_token( ).
      t259 = t260.
      DATA t266 TYPE REF TO zcl_lnt_position.
      DATA(t267) = t259.
      t266 = t267->start.
      t258 = t266.
      t257 = t258.
      DATA t268 TYPE REF TO zcl_lnt_position.
      CLEAR t268.
      DATA t269 TYPE REF TO zcl_lnt_position.
      CLEAR t269.
      DATA t270 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t270.
      DATA t271 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t271.
      DATA t272 TYPE REF TO zif_lnt_node.
      CLEAR t272.
      DATA(t273) = t246.
      DATA t274 TYPE REF TO object.
      CLEAR t274.
      t273->load( ).
      CLEAR t274.
      READ TABLE t273->items INDEX 1 INTO t274.
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
      t271 = t272->get_last_token( ).
      t270 = t271.
      DATA t277 TYPE REF TO zcl_lnt_position.
      DATA t278 TYPE f.
      DATA t279 TYPE REF TO zcl_lnt_position.
      DATA t280 TYPE REF TO zcl_lnt_position.
      DATA(t281) = t270.
      t280 = t281->start.
      t279 = t280.
      DATA t282 TYPE f.
      DATA(t283) = t279.
      t282 = t283->row.
      t278 = t282.
      DATA t284 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t285 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t286 TYPE REF TO zcl_lnt_position.
      DATA t287 TYPE REF TO zcl_lnt_position.
      DATA(t288) = t270.
      t287 = t288->start.
      t286 = t287.
      DATA t289 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t290) = t286.
      t289 = t290->col.
      t285 = t289.
      DATA t291 TYPE f.
      DATA t292 TYPE i.
      DATA t293 TYPE string.
      DATA(t294) = t270.
      t293 = t294->str.
      DATA(t295) = strlen( t293 ).
      t292 = t295.
      t291 = t292.
      DATA(t296) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t296->has = abap_true.
      t296->value = t291.
      t284 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t285 right = t296 op = `+` ).
      t277 = NEW zcl_lnt_position( i_row = t278 i_col = t284 ).
      t269 = t277.
      t268 = t269.
      DATA t297 TYPE abap_bool.
      DATA t298 TYPE f.
      DATA t299 TYPE REF TO zcl_lnt_position.
      DATA(t300) = t257.
      t299 = t300.
      DATA t301 TYPE f.
      DATA(t302) = t299.
      t301 = t302->row.
      t298 = t301.
      DATA t303 TYPE f.
      DATA t304 TYPE REF TO zcl_lnt_position.
      DATA(t305) = t268.
      t304 = t305.
      DATA t306 TYPE f.
      DATA(t307) = t304.
      t306 = t307->row.
      t303 = t306.
      t297 = xsdbool( t298 = t303 ).
      IF t297 = abap_true.
        DATA t308 TYPE string.
        DATA(t309) = |Reduce template, remove "&&"|.
        t308 = t309.
        DATA(t310) = t3.
        DATA t311 TYPE REF TO zcl_lnt_issue.
        CLEAR t311.
        DATA(t312) = t1.
        DATA t313 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t313.
        DATA t314 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t314.
        DATA(t315) = t207.
        DATA t316 TYPE REF TO object.
        CLEAR t316.
        t315->load( ).
        CLEAR t316.
        READ TABLE t315->items INDEX 2 INTO t316.
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
        DATA(t319) = t308.
        DATA(t320) = VALUE string( ).
        DATA t321 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t321.
        DATA t322 TYPE string.
        DATA(t323) = |reduce_string_templates|.
        t322 = t323.
        DATA t324 TYPE string.
        DATA(t325) = |Reduce string templates|.
        t324 = t325.
        DATA t326 TYPE string.
        DATA(t327) = |Checks for string templates|.
        t326 = t327.
        DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t328.
        DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t329.
        DATA(t330) = abap_true.
        IF t330 = abap_true.
          DATA t331 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t332 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t333.
          t332 = t333.
          DATA(t334) = t332.
          DATA(t335) = |SingleFile|.
          t334->load( ).
          APPEND t335 TO t334->items.
          t334->save( ).
          DATA(t336) = t332.
          t331 = t336.
          t329 = t331.
        ELSE.
          DATA t337 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t337.
          t329 = t337.
        ENDIF.
        t328 = t329.
        DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t338.
        DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t339.
        DATA(t340) = abap_true.
        IF t340 = abap_true.
          DATA(t341) = |WRITE \|\{ \|sdf\| \}\|.\nWRITE \|\{ 'sdf' \}\|.|.
          DATA(t342) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t342->has = abap_true.
          t342->value = t341.
          t339 = t342.
        ELSE.
          DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t343.
          t339 = t343.
        ENDIF.
        t338 = t339.
        DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t344.
        DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t345.
        DATA(t346) = abap_true.
        IF t346 = abap_true.
          DATA(t347) = |WRITE \|sdf\|.|.
          DATA(t348) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t348->has = abap_true.
          t348->value = t347.
          t345 = t348.
        ELSE.
          DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t349.
          t345 = t349.
        ENDIF.
        t344 = t345.
        DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t351.
        t350 = t351.
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t353.
        t352 = t353.
        DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t355.
        t354 = t355.
        t321 = NEW zcl_lnt_irule_metadata( i_key = t322 i_title = t324 i_short_description = t326 i_bad_example = t338 i_good_example = t344 i_extended_information = t350 i_tags = t328 i_pragma = t352 i_pseudo_comment = t354 ).
        CREATE OBJECT t321->zlnt_view_ownkeys_b0e8086400eb.
        t321->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t356 ).
        ENDIF.
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
        DATA(t362) = |key|.
        DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t363.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = t362 p1 = t363 ).
        ENDIF.
        DATA(t364) = |title|.
        DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t365.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = t364 p1 = t365 ).
        ENDIF.
        DATA(t366) = |shortDescription|.
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t367.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = t366 p1 = t367 ).
        ENDIF.
        DATA(t368) = |tags|.
        DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t369.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = t368 p1 = t369 ).
        ENDIF.
        DATA(t370) = |badExample|.
        DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t371.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = t370 p1 = t371 ).
        ENDIF.
        DATA(t372) = |goodExample|.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = t372 p1 = t373 ).
        ENDIF.
        t320 = t321->key.
        DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t375) = me->conf.
        t374 = t375->zlnt_view_read_sr_15c06369f827( ).
        DATA t376 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t376.
        t311 = zcl_lnt_issue=>at_token( i_file = t312 i_token = t313 i_message_26cb = t319 i_key = t320 i_severity = t374 i_fix = t376 ).
        t310->load( ).
        APPEND t311 TO t310->items.
        t310->save( ).
      ENDIF.
    ENDDO.
    DATA(t377) = t3.
    result = t377.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_rdc_strng_tmplts_cnf( me->g_c_i_s_r_rd_st_tm_ts_rd_st_tm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rdc_strng_tmplts_cnf( me->g_c_i_s_r_rd_st_tm_ts_rd_st_tm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_rdc_strng_tmplts_cnf.
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
        t1 = NEW zcl_lnt_rdc_strng_tmplts_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_rd_st_tm_ts_rd_st_tm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_rd_st_tm_ts_rd_st_tm( i_file = i_file i_obj_ac26 = i_obj_1ed0 ) ).
    result = t1.

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
