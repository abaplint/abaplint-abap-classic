* TS: src/utils/include_graph.ts:83:1 IncludeGraph
CLASS zcl_lnt_include_graph DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_include_graph.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA graph TYPE REF TO zcl_lnt_graph.
    DATA severity TYPE string.
    DATA allow_unused TYPE abap_bool.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_allow_unused TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    METHODS l_m_f_i_i_sr_ut_in_gr_ts_in_gr IMPORTING i_filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_issues_file IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build.
    METHODS add_vertices.
    METHODS list_main_for_include IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_include_graph IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_severity ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( i_allow_unused ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    IF t5 IS INITIAL.
      t4 = abap_true.
    ELSEIF t5->has = abap_false.
      t4 = abap_true.
    ENDIF.
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = |Error|.
        DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t9->has = abap_true.
        t9->value = t8.
        t6 = t9.
      ELSE.
        DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t10.
        t6 = t10.
      ENDIF.
      t2 = t6.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
    IF t12 IS INITIAL.
      t11 = abap_true.
    ELSEIF t12->has = abap_false.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA(t15) = abap_false.
        DATA(t16) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t16->has = abap_true.
        t16->value = t15.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      t3 = t13.
    ENDIF.
    DATA(t18) = CAST zif_lnt_registry( t1 ).
    me->reg = t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    me->issues = t19.
    DATA(t20) = NEW zcl_lnt_graph(  ).
    me->graph = t20.
    DATA t21 TYPE string.
    DATA(t22) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    t21 = t22->value.
    me->severity = t21.
    DATA t23 TYPE abap_bool.
    DATA(t24) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
    t23 = t24->value.
    me->allow_unused = t23.
    me->build(  ).
  ENDMETHOD.
  METHOD l_m_f_i_i_sr_ut_in_gr_ts_in_gr.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_filename ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ELSEIF t10->has = abap_false.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = CAST zcl_lnt_graph( me->graph ).
    DATA t14 TYPE string.
    DATA(t15) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t14 = t15->value.
    t12 = t13->find_top( i_filename = t14 ).
    DATA t16 TYPE REF TO zcl_lnt_ivertex.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    LOOP AT t12->items INTO t17.
      t16 ?= t17.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE abap_bool.
      DATA(t20) = CAST zcl_lnt_ivertex( t16 ).
      t19 = t20->include_3f11.
      DATA(t21) = abap_false.
      t18 = xsdbool( t19 = t21 ).
      IF t18 = abap_true.
        DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
        DATA t23 TYPE string.
        DATA(t24) = CAST zcl_lnt_ivertex( t16 ).
        t23 = t24->filename.
        APPEND t23 TO t22->items.
      ENDIF.
    ENDLOOP.
    DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    result = t25.
    
  ENDMETHOD.
  METHOD get_issues_file.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/utils/include_graph.ts:112|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD build.
    me->add_vertices(  ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = CAST zif_lnt_registry( me->reg ).
    t1 = zcl_lnt_include_graph_module=>get_abap_objects( i_reg_f149 = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    LOOP AT t1->items INTO t4.
      t3 ?= t4.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t6 TYPE REF TO zcl_lnt_abap_object.
      DATA(t7) = CAST zcl_lnt_abap_object( t3 ).
      t6 = t7.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t9) = CAST zcl_lnt_abap_object( t6 ).
      t8 = t9->parsed.
      t5 = t8.
      DATA t10 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t10.
      DATA t11 TYPE REF TO object.
      CLEAR t11.
      LOOP AT t5->items INTO t11.
        t10 ?= t11.
        DATA(t12) = VALUE abap_bool( ).
        DATA(t13) = VALUE abap_bool( ).
        DATA(t14) = VALUE i( ).
        DATA t15 TYPE string.
        DATA t16 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t17) = CAST zcl_lnt_abap_file( t10 ).
        t16 = t17.
        DATA t18 TYPE string.
        DATA(t19) = CAST zcl_lnt_abstract_file( t16 ).
        t18 = t19->filename.
        t15 = t18.
        DATA(t20) = |.prog.screen_|.
        DATA(t21) = strlen( t15 ).
        IF t20 IS INITIAL.
          t14 = 0.
        ELSE.
          FIND t20 IN t15 MATCH OFFSET t14.
          IF sy-subrc <> 0.
            t14 = -1.
          ENDIF.
        ENDIF.
        DATA(t22) = 0.
        t13 = xsdbool( t14 >= t22 ).
        t12 = t13.
        IF t13 = abap_false.
          DATA(t23) = VALUE abap_bool( ).
          DATA(t24) = VALUE i( ).
          DATA t25 TYPE string.
          DATA t26 TYPE REF TO zcl_lnt_abstract_file.
          DATA(t27) = CAST zcl_lnt_abap_file( t10 ).
          t26 = t27.
          DATA t28 TYPE string.
          DATA(t29) = CAST zcl_lnt_abstract_file( t26 ).
          t28 = t29->filename.
          t25 = t28.
          DATA(t30) = |.fugr.screen_|.
          DATA(t31) = strlen( t25 ).
          IF t30 IS INITIAL.
            t24 = 0.
          ELSE.
            FIND t30 IN t25 MATCH OFFSET t24.
            IF sy-subrc <> 0.
              t24 = -1.
            ENDIF.
          ENDIF.
          DATA(t32) = 0.
          t23 = xsdbool( t24 >= t32 ).
          t12 = t23.
        ENDIF.
        IF t12 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zcl_lnt_abap_file.
        DATA(t35) = CAST zcl_lnt_abap_file( t10 ).
        t34 = t35.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t37) = CAST zcl_lnt_abap_file( t34 ).
        t36 = t37->statements.
        t33 = t36.
        DATA t38 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t38.
        DATA t39 TYPE REF TO object.
        CLEAR t39.
        LOOP AT t33->items INTO t39.
          t38 ?= t39.
          DATA t40 TYPE abap_bool.
          DATA t41 TYPE REF TO zif_lnt_statement.
          DATA(t42) = CAST zcl_lnt_statement_node( t38 ).
          t41 = t42->gt_in_sr_ab_nd_st_nd_ts_stt_nd(  ).
          t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_include ).
          IF t40 = abap_true.
            DATA t43 TYPE REF TO zcl_lnt_expression_node.
            DATA t44 TYPE REF TO zcl_lnt_expression_node.
            DATA(t45) = CAST zcl_lnt_statement_node( t38 ).
            DATA(t46) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d83_c58d804fe3d16b ).
            t44 = t45->find_first_expression( i_type_9913 = t46 ).
            t43 = t44.
            DATA(t47) = VALUE abap_bool( ).
            DATA t48 TYPE REF TO zcl_lnt_expression_node.
            DATA(t49) = CAST zcl_lnt_expression_node( t43 ).
            t48 = t49.
            DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t51.
            t50 = t51.
            DATA(t52) = VALUE abap_bool( ).
            DATA(t53) = CAST zcl_lnt_expression_node( t48 ).
            IF t53 IS INITIAL.
              t52 = abap_true.
            ENDIF.
            t47 = t52.
            IF t47 = abap_true.
              DATA t54 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
              CLEAR t54.
              DATA t55 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
              CLEAR t55.
              DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t56.
              DATA(t57) = abap_true.
              IF t57 = abap_true.
                DATA(t58) = |unexpected Include node|.
                DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t59->has = abap_true.
                t59->value = t58.
                t56 = t59.
              ELSE.
                DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t60.
                t56 = t60.
              ENDIF.
              t55 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t56 ).
              t54 = NEW #( ).
              t54->payload = t55.
              RAISE EXCEPTION t54.
            ENDIF.
            DATA(t61) = VALUE string( ).
            DATA t62 TYPE string.
            DATA t63 TYPE string.
            DATA t64 TYPE REF TO zcl_lnt_abstract_token.
            DATA t65 TYPE REF TO zcl_lnt_abstract_token.
            DATA t66 TYPE REF TO zcl_lnt_expression_node.
            DATA(t67) = CAST zcl_lnt_expression_node( t43 ).
            t66 = t67.
            t65 = t66->get_first_token(  ).
            t64 = t65.
            DATA t68 TYPE string.
            DATA(t69) = CAST zcl_lnt_abstract_token( t64 ).
            t68 = t69->str.
            t63 = t68.
            DATA(t70) = strlen( t63 ).
            t62 = t63.
            IF t62 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t62 TO UPPER CASE.
            ELSE.
              t62 = zlnt_runtime_uppe_91169605024d=>full( t62 ).
            ENDIF.
            t61 = t62.
            DATA(t71) = VALUE abap_bool( ).
            DATA t72 TYPE string.
            DATA(t73) = t61.
            t72 = t73.
            DATA(t74) = VALUE abap_bool( ).
            DATA t75 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t75.
            IF zcl_lnt_include_graph_module=>zlnt_builtin_init_672ad5f3b5e9 = abap_false.
              zcl_lnt_include_graph_module=>zlnt_builtin_init_eae383aaa208( ).
            ENDIF.
            t75 = zcl_lnt_include_graph_module=>fmxxinclude.
            DATA(t76) = t72.
            t74 = t75->match_test( p0 = t76 ).
            t71 = t74.
            IF t71 = abap_true.
              CONTINUE.
            ENDIF.
            DATA t77 TYPE REF TO zcl_lnt_ivertex.
            CLEAR t77.
            DATA t78 TYPE REF TO zcl_lnt_ivertex.
            CLEAR t78.
            DATA t79 TYPE REF TO zcl_lnt_graph.
            DATA(t80) = CAST zcl_lnt_graph( me->graph ).
            t79 = t80.
            DATA t81 TYPE string.
            DATA(t82) = t61.
            t81 = t82.
            DATA t83 TYPE REF TO zcl_lnt_ivertex.
            CLEAR t83.
            DATA t84 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            DATA(t85) = CAST zcl_lnt_graph( t79 ).
            t84 = t85->vertices_includename_index.
            DATA t86 TYPE string.
            DATA(t87) = t81.
            DATA(t88) = strlen( t87 ).
            t86 = t87.
            IF t86 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t86 TO UPPER CASE.
            ELSE.
              t86 = zlnt_runtime_uppe_91169605024d=>full( t86 ).
            ENDIF.
            t83 = t84->get( p0 = t86 ).
            t78 = t83.
            t77 = t78.
            DATA(t89) = VALUE abap_bool( ).
            DATA t90 TYPE REF TO zcl_lnt_ivertex.
            DATA(t91) = CAST zcl_lnt_ivertex( t77 ).
            t90 = t91.
            DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t93.
            t92 = t93.
            DATA(t94) = VALUE abap_bool( ).
            DATA(t95) = CAST zcl_lnt_ivertex( t90 ).
            IF t95 IS INITIAL.
              t94 = abap_true.
            ENDIF.
            t89 = t94.
            IF t89 = abap_true.
              DATA(t96) = VALUE abap_bool( ).
              DATA(t97) = VALUE abap_bool( ).
              DATA(t98) = VALUE i( ).
              DATA t99 TYPE string.
              DATA t100 TYPE string.
              DATA(t101) = CAST zcl_lnt_statement_node( t38 ).
              t100 = t101->concat_tokens(  ).
              DATA(t102) = strlen( t100 ).
              t99 = t100.
              IF t99 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t99 TO UPPER CASE.
              ELSE.
                t99 = zlnt_runtime_uppe_91169605024d=>full( t99 ).
              ENDIF.
              DATA(t103) = |IF FOUND|.
              DATA(t104) = strlen( t99 ).
              IF t103 IS INITIAL.
                t98 = 0.
              ELSE.
                FIND t103 IN t99 MATCH OFFSET t98.
                IF sy-subrc <> 0.
                  t98 = -1.
                ENDIF.
              ENDIF.
              DATA(t105) = 0.
              t97 = xsdbool( t98 >= t105 ).
              t96 = t97.
              DATA t106 TYPE abap_bool.
              DATA(t107) = t96.
              DATA(t108) = abap_false.
              t106 = xsdbool( t107 = t108 ).
              IF t106 = abap_true.
                DATA t109 TYPE REF TO zcl_lnt_issue.
                CLEAR t109.
                DATA t110 TYPE REF TO zcl_lnt_issue.
                CLEAR t110.
                DATA(t111) = CAST zcl_lnt_abap_file( t10 ).
                DATA(t112) = CAST zcl_lnt_statement_node( t38 ).
                DATA t113 TYPE string.
                DATA t114 TYPE string.
                DATA(t115) = |Include |.
                DATA(t116) = t61.
                DATA(t117) = strlen( t115 ).
                t114 = |{ t115 }{ t116 }|.
                DATA(t118) = | not found|.
                DATA(t119) = strlen( t114 ).
                t113 = |{ t114 }{ t118 }|.
                DATA(t120) = VALUE string( ).
                DATA t121 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t121.
                DATA t122 TYPE REF TO zcl_lnt_check_include.
                DATA(t123) = NEW zcl_lnt_check_include(  ).
                t122 = t123.
                DATA t124 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t124.
                DATA(t125) = |check_include|.
                DATA(t126) = |Check INCLUDEs|.
                DATA(t127) = |Checks INCLUDE statements|.
                DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t128.
                DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t129.
                DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t130.
                DATA(t131) = abap_true.
                IF t131 = abap_true.
                  DATA(t132) = ||.
                  DATA t133 TYPE c LENGTH 1.
                  CLEAR t133.
                  t133 = cl_abap_conv_in_ce=>uccpi( 10 ).
                  CONCATENATE t132 t133 INTO t132 RESPECTING BLANKS.
                  t132 = t132 && |* Reports unused includes|.
                  DATA t134 TYPE c LENGTH 1.
                  CLEAR t134.
                  t134 = cl_abap_conv_in_ce=>uccpi( 10 ).
                  CONCATENATE t132 t134 INTO t132 RESPECTING BLANKS.
                  t132 = t132 && |* Errors if the includes are not found|.
                  DATA t135 TYPE c LENGTH 1.
                  CLEAR t135.
                  t135 = cl_abap_conv_in_ce=>uccpi( 10 ).
                  CONCATENATE t132 t135 INTO t132 RESPECTING BLANKS.
                  t132 = t132 && |* Error if including a main program|.
                  DATA t136 TYPE c LENGTH 1.
                  CLEAR t136.
                  t136 = cl_abap_conv_in_ce=>uccpi( 10 ).
                  CONCATENATE t132 t136 INTO t132 RESPECTING BLANKS.
                  t132 = t132 && |* Skips ZX* includes|.
                  DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t137->has = abap_true.
                  t137->value = t132.
                  t130 = t137.
                ELSE.
                  DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t138.
                  t130 = t138.
                ENDIF.
                DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t139.
                DATA(t140) = abap_true.
                IF t140 = abap_true.
                  DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CREATE OBJECT t143.
                  t142 = t143.
                  DATA(t144) = CAST zlnt_runtime_arra_8ecd6afe19e0( t142 ).
                  DATA(t145) = |Syntax|.
                  APPEND t145 TO t144->items.
                  DATA(t146) = CAST zlnt_runtime_arra_8ecd6afe19e0( t142 ).
                  t141 = t146.
                  t139 = t141.
                ELSE.
                  DATA t147 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t147.
                  t139 = t147.
                ENDIF.
                DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t148.
                DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t149.
                t124 = NEW zcl_lnt_irule_metadata( i_key = t125 i_title = t126 i_short_description = t127 i_bad_example = t128 i_good_example = t129 i_extended_information = t130 i_tags = t139 i_pragma = t148 i_pseudo_comment = t149 ).
                t121 = t124.
                t120 = t121->key.
                DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t150.
                DATA(t151) = abap_true.
                IF t151 = abap_true.
                  DATA(t152) = CONV string( me->severity ).
                  DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t153->has = abap_true.
                  t153->value = t152.
                  t150 = t153.
                ELSE.
                  DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t154.
                  t150 = t154.
                ENDIF.
                DATA t155 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t155.
                DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t156.
                t110 = zcl_lnt_issue=>at_statement( i_file = t111 i_statement = t112 i_message_26cb = t113 i_key = t120 i_severity = t150 i_fix = t155 i_alternative_fixes = t156 ).
                t109 = t110.
                DATA(t157) = CAST zlnt_runtime_arra_c22708faf2e3( me->issues ).
                DATA(t158) = CAST zcl_lnt_issue( t109 ).
                APPEND t158 TO t157->items.
              ENDIF.
            ELSE.
              DATA t159 TYPE abap_bool.
              DATA t160 TYPE abap_bool.
              DATA t161 TYPE REF TO zcl_lnt_ivertex.
              DATA(t162) = CAST zcl_lnt_ivertex( t77 ).
              t161 = t162.
              t160 = t161->include_3f11.
              DATA(t163) = abap_false.
              t159 = xsdbool( t160 = t163 ).
              IF t159 = abap_true.
                DATA t164 TYPE REF TO zcl_lnt_issue.
                CLEAR t164.
                DATA t165 TYPE REF TO zcl_lnt_issue.
                CLEAR t165.
                DATA(t166) = CAST zcl_lnt_abap_file( t10 ).
                DATA(t167) = CAST zcl_lnt_statement_node( t38 ).
                DATA t168 TYPE string.
                DATA(t169) = |Not possible to INCLUDE a main program, |.
                DATA(t170) = t61.
                DATA(t171) = strlen( t169 ).
                t168 = |{ t169 }{ t170 }|.
                DATA(t172) = VALUE string( ).
                DATA t173 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t173.
                DATA t174 TYPE REF TO zcl_lnt_check_include.
                DATA(t175) = NEW zcl_lnt_check_include(  ).
                t174 = t175.
                DATA t176 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t176.
                DATA(t177) = |check_include|.
                DATA(t178) = |Check INCLUDEs|.
                DATA(t179) = |Checks INCLUDE statements|.
                DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t180.
                DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t181.
                DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t182.
                DATA(t183) = abap_true.
                IF t183 = abap_true.
                  DATA(t184) = ||.
                  DATA t185 TYPE c LENGTH 1.
                  CLEAR t185.
                  t185 = cl_abap_conv_in_ce=>uccpi( 10 ).
                  CONCATENATE t184 t185 INTO t184 RESPECTING BLANKS.
                  t184 = t184 && |* Reports unused includes|.
                  DATA t186 TYPE c LENGTH 1.
                  CLEAR t186.
                  t186 = cl_abap_conv_in_ce=>uccpi( 10 ).
                  CONCATENATE t184 t186 INTO t184 RESPECTING BLANKS.
                  t184 = t184 && |* Errors if the includes are not found|.
                  DATA t187 TYPE c LENGTH 1.
                  CLEAR t187.
                  t187 = cl_abap_conv_in_ce=>uccpi( 10 ).
                  CONCATENATE t184 t187 INTO t184 RESPECTING BLANKS.
                  t184 = t184 && |* Error if including a main program|.
                  DATA t188 TYPE c LENGTH 1.
                  CLEAR t188.
                  t188 = cl_abap_conv_in_ce=>uccpi( 10 ).
                  CONCATENATE t184 t188 INTO t184 RESPECTING BLANKS.
                  t184 = t184 && |* Skips ZX* includes|.
                  DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t189->has = abap_true.
                  t189->value = t184.
                  t182 = t189.
                ELSE.
                  DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t190.
                  t182 = t190.
                ENDIF.
                DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t191.
                DATA(t192) = abap_true.
                IF t192 = abap_true.
                  DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t195 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CREATE OBJECT t195.
                  t194 = t195.
                  DATA(t196) = CAST zlnt_runtime_arra_8ecd6afe19e0( t194 ).
                  DATA(t197) = |Syntax|.
                  APPEND t197 TO t196->items.
                  DATA(t198) = CAST zlnt_runtime_arra_8ecd6afe19e0( t194 ).
                  t193 = t198.
                  t191 = t193.
                ELSE.
                  DATA t199 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t199.
                  t191 = t199.
                ENDIF.
                DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t200.
                DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t201.
                t176 = NEW zcl_lnt_irule_metadata( i_key = t177 i_title = t178 i_short_description = t179 i_bad_example = t180 i_good_example = t181 i_extended_information = t182 i_tags = t191 i_pragma = t200 i_pseudo_comment = t201 ).
                t173 = t176.
                t172 = t173->key.
                DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t202.
                DATA(t203) = abap_true.
                IF t203 = abap_true.
                  DATA(t204) = CONV string( me->severity ).
                  DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t205->has = abap_true.
                  t205->value = t204.
                  t202 = t205.
                ELSE.
                  DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t206.
                  t202 = t206.
                ENDIF.
                DATA t207 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t207.
                DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t208.
                t165 = zcl_lnt_issue=>at_statement( i_file = t166 i_statement = t167 i_message_26cb = t168 i_key = t172 i_severity = t202 i_fix = t207 i_alternative_fixes = t208 ).
                t164 = t165.
                DATA(t209) = CAST zlnt_runtime_arra_c22708faf2e3( me->issues ).
                DATA(t210) = CAST zcl_lnt_issue( t164 ).
                APPEND t210 TO t209->items.
              ELSE.
                DATA(t211) = CAST zcl_lnt_graph( me->graph ).
                DATA t212 TYPE REF TO zcl_lnt_ivertex.
                DATA(t213) = CAST zcl_lnt_ivertex( t77 ).
                t212 = t213.
                DATA t214 TYPE string.
                DATA t215 TYPE REF TO zcl_lnt_abstract_file.
                DATA(t216) = CAST zcl_lnt_abap_file( t10 ).
                t215 = t216.
                DATA t217 TYPE string.
                DATA(t218) = CAST zcl_lnt_abstract_file( t215 ).
                t217 = t218->filename.
                t214 = t217.
                t211->add_edge( i_from = t212 i_to_filename = t214 ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDLOOP.
      ENDLOOP.
    ENDLOOP.
  ENDMETHOD.
  METHOD add_vertices.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = CAST zif_lnt_registry( me->reg ).
    t1 = zcl_lnt_include_graph_module=>get_abap_objects( i_reg_f149 = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    LOOP AT t1->items INTO t4.
      t3 ?= t4.
      DATA t5 TYPE abap_bool.
      DATA(t6) = CAST zcl_lnt_abap_object( t3 ).
      t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_ob_program ).
      IF t5 = abap_true.
        DATA t7 TYPE REF TO zcl_lnt_abap_file.
        DATA t8 TYPE REF TO zcl_lnt_abap_file.
        DATA t9 TYPE REF TO zcl_lnt_ob_program.
        DATA(t10) = CAST zcl_lnt_abap_object( t3 ).
        t9 ?= t10.
        t8 = t9->get_main_abap_file(  ).
        t7 = t8.
        DATA t11 TYPE abap_bool.
        DATA(t12) = CAST zcl_lnt_abap_file( t7 ).
        t11 = xsdbool( t12 IS BOUND ).
        IF t11 = abap_true.
          DATA t13 TYPE REF TO zcl_lnt_graph.
          DATA(t14) = CAST zcl_lnt_graph( me->graph ).
          t13 = t14.
          DATA t15 TYPE REF TO zcl_lnt_ivertex.
          CLEAR t15.
          DATA t16 TYPE REF TO zcl_lnt_ivertex.
          CLEAR t16.
          DATA t17 TYPE string.
          DATA t18 TYPE REF TO zcl_lnt_abstract_file.
          DATA t19 TYPE REF TO zcl_lnt_abap_file.
          DATA(t20) = CAST zcl_lnt_abap_file( t7 ).
          t19 = t20.
          t18 = t19.
          DATA t21 TYPE string.
          DATA(t22) = CAST zcl_lnt_abstract_file( t18 ).
          t21 = t22->filename.
          t17 = t21.
          DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t23.
          DATA(t24) = abap_true.
          IF t24 = abap_true.
            DATA t25 TYPE string.
            DATA t26 TYPE REF TO zcl_lnt_abstract_object.
            DATA t27 TYPE REF TO zcl_lnt_ob_program.
            DATA(t28) = CAST zcl_lnt_abap_object( t3 ).
            t27 ?= t28.
            t26 = t27.
            DATA t29 TYPE string.
            DATA(t30) = CAST zcl_lnt_abstract_object( t26 ).
            t29 = t30->name.
            t25 = t29.
            DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t31->has = abap_true.
            t31->value = t25.
            t23 = t31.
          ELSE.
            DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t32.
            t23 = t32.
          ENDIF.
          DATA t33 TYPE abap_bool.
          DATA t34 TYPE REF TO zcl_lnt_ob_program.
          DATA t35 TYPE REF TO zcl_lnt_ob_program.
          DATA(t36) = CAST zcl_lnt_abap_object( t3 ).
          t35 ?= t36.
          t34 = t35.
          DATA t37 TYPE abap_bool.
          DATA(t38) = CAST zcl_lnt_ob_program( t34 ).
          t38->parse_xml(  ).
          DATA t39 TYPE abap_bool.
          DATA t40 TYPE REF TO zcl_lnt_shape_e86506f0.
          DATA t41 TYPE REF TO zcl_lnt_shape_e86506f0.
          DATA(t42) = CAST zcl_lnt_ob_program( t34 ).
          t41 = t42->parsed_xml.
          t40 = t41.
          t39 = t40->is_include.
          t37 = t39.
          t33 = t37.
          t16 = NEW zcl_lnt_ivertex( i_filename = t17 i_include_name = t23 i_include_cc4a = t33 ).
          t15 = t16.
          DATA(t43) = VALUE abap_bool( ).
          DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t46) = CAST zcl_lnt_ivertex( t15 ).
          t45 = t46->include_name.
          t44 = t45.
          DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t48.
          t47 = t48.
          DATA(t49) = VALUE abap_bool( ).
          DATA(t50) = VALUE abap_bool( ).
          DATA(t51) = CAST zlnt_runtime_opti_4ba3bdccd169( t44 ).
          IF t51 IS INITIAL.
            t50 = abap_true.
          ELSEIF t51->has = abap_false.
            t50 = abap_true.
          ENDIF.
          t49 = xsdbool( t50 = abap_false ).
          t43 = t49.
          IF t43 = abap_true.
            DATA t52 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            CLEAR t52.
            DATA t53 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            DATA(t54) = CAST zcl_lnt_graph( t13 ).
            t53 = t54->vertices_includename_index.
            DATA t55 TYPE string.
            DATA t56 TYPE string.
            DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t58) = CAST zcl_lnt_ivertex( t15 ).
            t57 = t58->include_name.
            t56 = t57->value.
            DATA(t59) = strlen( t56 ).
            t55 = t56.
            IF t55 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t55 TO UPPER CASE.
            ELSE.
              t55 = zlnt_runtime_uppe_91169605024d=>full( t55 ).
            ENDIF.
            DATA(t60) = CAST zcl_lnt_ivertex( t15 ).
            t52 = t53->set( p0 = t55 p1 = t60 ).
          ENDIF.
          DATA t61 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
          CLEAR t61.
          DATA t62 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
          DATA(t63) = CAST zcl_lnt_graph( t13 ).
          t62 = t63->vertices_filename_index.
          DATA t64 TYPE string.
          DATA t65 TYPE string.
          DATA(t66) = CAST zcl_lnt_ivertex( t15 ).
          t65 = t66->filename.
          DATA(t67) = strlen( t65 ).
          t64 = t65.
          IF t64 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t64 TO UPPER CASE.
          ELSE.
            t64 = zlnt_runtime_uppe_91169605024d=>full( t64 ).
          ENDIF.
          DATA(t68) = CAST zcl_lnt_ivertex( t15 ).
          t61 = t62->set( p0 = t64 p1 = t68 ).
        ENDIF.
      ELSE.
        DATA t69 TYPE abap_bool.
        DATA(t70) = CAST zcl_lnt_abap_object( t3 ).
        t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_ob_type_pool ).
        IF t69 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_abap_file.
          DATA t72 TYPE REF TO zcl_lnt_abap_file.
          DATA t73 TYPE REF TO zcl_lnt_ob_type_pool.
          DATA(t74) = CAST zcl_lnt_abap_object( t3 ).
          t73 ?= t74.
          t72 = t73->get_main_abap_file(  ).
          t71 = t72.
          DATA t75 TYPE abap_bool.
          DATA(t76) = CAST zcl_lnt_abap_file( t71 ).
          t75 = xsdbool( t76 IS BOUND ).
          IF t75 = abap_true.
            DATA t77 TYPE REF TO zcl_lnt_graph.
            DATA(t78) = CAST zcl_lnt_graph( me->graph ).
            t77 = t78.
            DATA t79 TYPE REF TO zcl_lnt_ivertex.
            DATA t80 TYPE REF TO zcl_lnt_ivertex.
            DATA t81 TYPE string.
            DATA t82 TYPE REF TO zcl_lnt_abstract_file.
            DATA t83 TYPE REF TO zcl_lnt_abap_file.
            DATA(t84) = CAST zcl_lnt_abap_file( t71 ).
            t83 = t84.
            t82 = t83.
            DATA t85 TYPE string.
            DATA(t86) = CAST zcl_lnt_abstract_file( t82 ).
            t85 = t86->filename.
            t81 = t85.
            DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t87.
            DATA(t88) = abap_false.
            t80 = NEW zcl_lnt_ivertex( i_filename = t81 i_include_name = t87 i_include_cc4a = t88 ).
            t79 = t80.
            DATA(t89) = VALUE abap_bool( ).
            DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t92) = CAST zcl_lnt_ivertex( t79 ).
            t91 = t92->include_name.
            t90 = t91.
            DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t94.
            t93 = t94.
            DATA(t95) = VALUE abap_bool( ).
            DATA(t96) = VALUE abap_bool( ).
            DATA(t97) = CAST zlnt_runtime_opti_4ba3bdccd169( t90 ).
            IF t97 IS INITIAL.
              t96 = abap_true.
            ELSEIF t97->has = abap_false.
              t96 = abap_true.
            ENDIF.
            t95 = xsdbool( t96 = abap_false ).
            t89 = t95.
            IF t89 = abap_true.
              DATA t98 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              CLEAR t98.
              DATA t99 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              DATA(t100) = CAST zcl_lnt_graph( t77 ).
              t99 = t100->vertices_includename_index.
              DATA t101 TYPE string.
              DATA t102 TYPE string.
              DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t104) = CAST zcl_lnt_ivertex( t79 ).
              t103 = t104->include_name.
              t102 = t103->value.
              DATA(t105) = strlen( t102 ).
              t101 = t102.
              IF t101 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t101 TO UPPER CASE.
              ELSE.
                t101 = zlnt_runtime_uppe_91169605024d=>full( t101 ).
              ENDIF.
              DATA(t106) = CAST zcl_lnt_ivertex( t79 ).
              t98 = t99->set( p0 = t101 p1 = t106 ).
            ENDIF.
            DATA t107 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            CLEAR t107.
            DATA t108 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            DATA(t109) = CAST zcl_lnt_graph( t77 ).
            t108 = t109->vertices_filename_index.
            DATA t110 TYPE string.
            DATA t111 TYPE string.
            DATA(t112) = CAST zcl_lnt_ivertex( t79 ).
            t111 = t112->filename.
            DATA(t113) = strlen( t111 ).
            t110 = t111.
            IF t110 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t110 TO UPPER CASE.
            ELSE.
              t110 = zlnt_runtime_uppe_91169605024d=>full( t110 ).
            ENDIF.
            DATA(t114) = CAST zcl_lnt_ivertex( t79 ).
            t107 = t108->set( p0 = t110 p1 = t114 ).
          ENDIF.
        ELSE.
          DATA t115 TYPE abap_bool.
          DATA(t116) = CAST zcl_lnt_abap_object( t3 ).
          t115 = xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_class ).
          IF t115 = abap_true.
            DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t118 TYPE REF TO zcl_lnt_class.
            DATA(t119) = CAST zcl_lnt_abap_object( t3 ).
            t118 ?= t119.
            t117 = t118->get_sequenced_files(  ).
            DATA t120 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t120.
            DATA t121 TYPE REF TO object.
            CLEAR t121.
            LOOP AT t117->items INTO t121.
              t120 ?= t121.
              DATA t122 TYPE REF TO zcl_lnt_graph.
              DATA(t123) = CAST zcl_lnt_graph( me->graph ).
              t122 = t123.
              DATA t124 TYPE REF TO zcl_lnt_ivertex.
              DATA t125 TYPE REF TO zcl_lnt_ivertex.
              DATA t126 TYPE string.
              DATA t127 TYPE REF TO zcl_lnt_abstract_file.
              DATA(t128) = CAST zcl_lnt_abap_file( t120 ).
              t127 = t128.
              DATA t129 TYPE string.
              DATA(t130) = CAST zcl_lnt_abstract_file( t127 ).
              t129 = t130->filename.
              t126 = t129.
              DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t131.
              DATA(t132) = abap_false.
              t125 = NEW zcl_lnt_ivertex( i_filename = t126 i_include_name = t131 i_include_cc4a = t132 ).
              t124 = t125.
              DATA(t133) = VALUE abap_bool( ).
              DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t136) = CAST zcl_lnt_ivertex( t124 ).
              t135 = t136->include_name.
              t134 = t135.
              DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t138.
              t137 = t138.
              DATA(t139) = VALUE abap_bool( ).
              DATA(t140) = VALUE abap_bool( ).
              DATA(t141) = CAST zlnt_runtime_opti_4ba3bdccd169( t134 ).
              IF t141 IS INITIAL.
                t140 = abap_true.
              ELSEIF t141->has = abap_false.
                t140 = abap_true.
              ENDIF.
              t139 = xsdbool( t140 = abap_false ).
              t133 = t139.
              IF t133 = abap_true.
                DATA t142 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                CLEAR t142.
                DATA t143 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                DATA(t144) = CAST zcl_lnt_graph( t122 ).
                t143 = t144->vertices_includename_index.
                DATA t145 TYPE string.
                DATA t146 TYPE string.
                DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t148) = CAST zcl_lnt_ivertex( t124 ).
                t147 = t148->include_name.
                t146 = t147->value.
                DATA(t149) = strlen( t146 ).
                t145 = t146.
                IF t145 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t145 TO UPPER CASE.
                ELSE.
                  t145 = zlnt_runtime_uppe_91169605024d=>full( t145 ).
                ENDIF.
                DATA(t150) = CAST zcl_lnt_ivertex( t124 ).
                t142 = t143->set( p0 = t145 p1 = t150 ).
              ENDIF.
              DATA t151 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              CLEAR t151.
              DATA t152 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              DATA(t153) = CAST zcl_lnt_graph( t122 ).
              t152 = t153->vertices_filename_index.
              DATA t154 TYPE string.
              DATA t155 TYPE string.
              DATA(t156) = CAST zcl_lnt_ivertex( t124 ).
              t155 = t156->filename.
              DATA(t157) = strlen( t155 ).
              t154 = t155.
              IF t154 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t154 TO UPPER CASE.
              ELSE.
                t154 = zlnt_runtime_uppe_91169605024d=>full( t154 ).
              ENDIF.
              DATA(t158) = CAST zcl_lnt_ivertex( t124 ).
              t151 = t152->set( p0 = t154 p1 = t158 ).
            ENDLOOP.
          ELSE.
            DATA t159 TYPE abap_bool.
            DATA(t160) = CAST zcl_lnt_abap_object( t3 ).
            t159 = xsdbool( t160 IS BOUND AND t160 IS INSTANCE OF zcl_lnt_function_group ).
            IF t159 = abap_true.
              DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t162 TYPE REF TO zcl_lnt_function_group.
              DATA(t163) = CAST zcl_lnt_abap_object( t3 ).
              t162 ?= t163.
              t161 = t162->get_include_files(  ).
              DATA t164 TYPE REF TO zcl_lnt_shape_124357cf.
              CLEAR t164.
              DATA t165 TYPE REF TO object.
              CLEAR t165.
              LOOP AT t161->items INTO t165.
                t164 ?= t165.
                DATA t166 TYPE REF TO zcl_lnt_graph.
                DATA(t167) = CAST zcl_lnt_graph( me->graph ).
                t166 = t167.
                DATA t168 TYPE REF TO zcl_lnt_ivertex.
                CLEAR t168.
                DATA t169 TYPE REF TO zcl_lnt_ivertex.
                CLEAR t169.
                DATA t170 TYPE string.
                DATA t171 TYPE REF TO zcl_lnt_abstract_file.
                DATA t172 TYPE REF TO zcl_lnt_abap_file.
                DATA(t173) = CAST zcl_lnt_shape_124357cf( t164 ).
                t172 = t173->file.
                t171 = t172.
                DATA t174 TYPE string.
                DATA(t175) = CAST zcl_lnt_abstract_file( t171 ).
                t174 = t175->filename.
                t170 = t174.
                DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t176.
                DATA(t177) = abap_true.
                IF t177 = abap_true.
                  DATA t178 TYPE string.
                  DATA(t179) = CAST zcl_lnt_shape_124357cf( t164 ).
                  t178 = t179->name.
                  DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t180->has = abap_true.
                  t180->value = t178.
                  t176 = t180.
                ELSE.
                  DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t181.
                  t176 = t181.
                ENDIF.
                DATA(t182) = abap_true.
                t169 = NEW zcl_lnt_ivertex( i_filename = t170 i_include_name = t176 i_include_cc4a = t182 ).
                t168 = t169.
                DATA(t183) = VALUE abap_bool( ).
                DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t186) = CAST zcl_lnt_ivertex( t168 ).
                t185 = t186->include_name.
                t184 = t185.
                DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t188.
                t187 = t188.
                DATA(t189) = VALUE abap_bool( ).
                DATA(t190) = VALUE abap_bool( ).
                DATA(t191) = CAST zlnt_runtime_opti_4ba3bdccd169( t184 ).
                IF t191 IS INITIAL.
                  t190 = abap_true.
                ELSEIF t191->has = abap_false.
                  t190 = abap_true.
                ENDIF.
                t189 = xsdbool( t190 = abap_false ).
                t183 = t189.
                IF t183 = abap_true.
                  DATA t192 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  CLEAR t192.
                  DATA t193 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  DATA(t194) = CAST zcl_lnt_graph( t166 ).
                  t193 = t194->vertices_includename_index.
                  DATA t195 TYPE string.
                  DATA t196 TYPE string.
                  DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t198) = CAST zcl_lnt_ivertex( t168 ).
                  t197 = t198->include_name.
                  t196 = t197->value.
                  DATA(t199) = strlen( t196 ).
                  t195 = t196.
                  IF t195 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t195 TO UPPER CASE.
                  ELSE.
                    t195 = zlnt_runtime_uppe_91169605024d=>full( t195 ).
                  ENDIF.
                  DATA(t200) = CAST zcl_lnt_ivertex( t168 ).
                  t192 = t193->set( p0 = t195 p1 = t200 ).
                ENDIF.
                DATA t201 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                CLEAR t201.
                DATA t202 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                DATA(t203) = CAST zcl_lnt_graph( t166 ).
                t202 = t203->vertices_filename_index.
                DATA t204 TYPE string.
                DATA t205 TYPE string.
                DATA(t206) = CAST zcl_lnt_ivertex( t168 ).
                t205 = t206->filename.
                DATA(t207) = strlen( t205 ).
                t204 = t205.
                IF t204 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t204 TO UPPER CASE.
                ELSE.
                  t204 = zlnt_runtime_uppe_91169605024d=>full( t204 ).
                ENDIF.
                DATA(t208) = CAST zcl_lnt_ivertex( t168 ).
                t201 = t202->set( p0 = t204 p1 = t208 ).
              ENDLOOP.
              DATA t209 TYPE REF TO zcl_lnt_abap_file.
              DATA t210 TYPE REF TO zcl_lnt_abap_file.
              DATA t211 TYPE REF TO zcl_lnt_function_group.
              DATA(t212) = CAST zcl_lnt_abap_object( t3 ).
              t211 ?= t212.
              t210 = t211->get_main_abap_file(  ).
              t209 = t210.
              DATA t213 TYPE abap_bool.
              DATA(t214) = CAST zcl_lnt_abap_file( t209 ).
              t213 = xsdbool( t214 IS BOUND ).
              IF t213 = abap_true.
                DATA t215 TYPE REF TO zcl_lnt_graph.
                DATA(t216) = CAST zcl_lnt_graph( me->graph ).
                t215 = t216.
                DATA t217 TYPE REF TO zcl_lnt_ivertex.
                DATA t218 TYPE REF TO zcl_lnt_ivertex.
                DATA t219 TYPE string.
                DATA t220 TYPE REF TO zcl_lnt_abstract_file.
                DATA t221 TYPE REF TO zcl_lnt_abap_file.
                DATA(t222) = CAST zcl_lnt_abap_file( t209 ).
                t221 = t222.
                t220 = t221.
                DATA t223 TYPE string.
                DATA(t224) = CAST zcl_lnt_abstract_file( t220 ).
                t223 = t224->filename.
                t219 = t223.
                DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t225.
                DATA(t226) = abap_false.
                t218 = NEW zcl_lnt_ivertex( i_filename = t219 i_include_name = t225 i_include_cc4a = t226 ).
                t217 = t218.
                DATA(t227) = VALUE abap_bool( ).
                DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t230) = CAST zcl_lnt_ivertex( t217 ).
                t229 = t230->include_name.
                t228 = t229.
                DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t232.
                t231 = t232.
                DATA(t233) = VALUE abap_bool( ).
                DATA(t234) = VALUE abap_bool( ).
                DATA(t235) = CAST zlnt_runtime_opti_4ba3bdccd169( t228 ).
                IF t235 IS INITIAL.
                  t234 = abap_true.
                ELSEIF t235->has = abap_false.
                  t234 = abap_true.
                ENDIF.
                t233 = xsdbool( t234 = abap_false ).
                t227 = t233.
                IF t227 = abap_true.
                  DATA t236 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  CLEAR t236.
                  DATA t237 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  DATA(t238) = CAST zcl_lnt_graph( t215 ).
                  t237 = t238->vertices_includename_index.
                  DATA t239 TYPE string.
                  DATA t240 TYPE string.
                  DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t242) = CAST zcl_lnt_ivertex( t217 ).
                  t241 = t242->include_name.
                  t240 = t241->value.
                  DATA(t243) = strlen( t240 ).
                  t239 = t240.
                  IF t239 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t239 TO UPPER CASE.
                  ELSE.
                    t239 = zlnt_runtime_uppe_91169605024d=>full( t239 ).
                  ENDIF.
                  DATA(t244) = CAST zcl_lnt_ivertex( t217 ).
                  t236 = t237->set( p0 = t239 p1 = t244 ).
                ENDIF.
                DATA t245 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                CLEAR t245.
                DATA t246 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                DATA(t247) = CAST zcl_lnt_graph( t215 ).
                t246 = t247->vertices_filename_index.
                DATA t248 TYPE string.
                DATA t249 TYPE string.
                DATA(t250) = CAST zcl_lnt_ivertex( t217 ).
                t249 = t250->filename.
                DATA(t251) = strlen( t249 ).
                t248 = t249.
                IF t248 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t248 TO UPPER CASE.
                ELSE.
                  t248 = zlnt_runtime_uppe_91169605024d=>full( t248 ).
                ENDIF.
                DATA(t252) = CAST zcl_lnt_ivertex( t217 ).
                t245 = t246->set( p0 = t248 p1 = t252 ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
  METHOD list_main_for_include.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = t1.
      DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t6->has = abap_true.
      t6->value = t5.
      t3 = t6.
    ELSE.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t3 = t7.
    ENDIF.
    t2 = me->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t3 ).
    result = t2.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1693_8e4c463ba2a3.
  ENDMETHOD.
  METHOD zif_lnt_include_graph~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_include_graph~list_main_for_include.
    result = me->list_main_for_include(  i_filename = i_filename ).
  ENDMETHOD.
  METHOD zif_lnt_include_graph~get_issues_file.
    result = me->get_issues_file(  i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
