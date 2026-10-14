* TS: src/utils/method_length_stats.ts:19:1 MethodLengthStats
CLASS zcl_lnt_method_length_stats DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS find_name IMPORTING i_stat TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_length_stats IMPLEMENTATION.
  METHOD run.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE REF TO zcl_lnt_position.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = ||.
    t6 = t7.
    DATA t8 TYPE int8.
    DATA(t9) = CONV int8( 0 ).
    t8 = t9.
    DATA t10 TYPE abap_bool.
    DATA(t11) = abap_false.
    t10 = t11.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA(t14) = CAST zif_lnt_object( t1 ).
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_abap_object ).
    t12 = xsdbool( t13 = abap_false ).
    IF t12 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zcl_lnt_abap_object.
    DATA t18 TYPE REF TO zcl_lnt_abap_object.
    DATA(t19) = CAST zif_lnt_object( t1 ).
    DATA t20 TYPE REF TO object.
    t20 = t19.
    t18 ?= t20.
    t17 = t18.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = CAST zcl_lnt_abap_object( t17 ).
    t21 = t22->parsed.
    t16 = t21.
    DATA t23 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    LOOP AT t16->items INTO t24.
      t23 ?= t24.
      DATA t25 TYPE string.
      DATA(t26) = ||.
      t25 = t26.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t28 TYPE REF TO zcl_lnt_abap_file.
      DATA(t29) = CAST zcl_lnt_abap_file( t23 ).
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = CAST zcl_lnt_abap_file( t28 ).
      t30 = t31->statements.
      t27 = t30.
      DATA t32 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      LOOP AT t27->items INTO t33.
        t32 ?= t33.
        DATA t34 TYPE REF TO zif_lnt_statement.
        DATA t35 TYPE REF TO zif_lnt_statement.
        DATA(t36) = CAST zcl_lnt_statement_node( t32 ).
        t35 = t36->gt_in_sr_ab_nd_st_nd_ts_stt_nd(  ).
        t34 = t35.
        DATA t37 TYPE abap_bool.
        DATA(t38) = CAST zif_lnt_statement( t34 ).
        t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
        IF t37 = abap_true.
          DATA t39 TYPE REF TO zcl_lnt_position.
          CLEAR t39.
          DATA(t40) = abap_true.
          IF t40 = abap_true.
            DATA t41 TYPE REF TO zcl_lnt_position.
            DATA t42 TYPE REF TO zcl_lnt_abstract_token.
            DATA t43 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t44) = CAST zcl_lnt_statement_node( t32 ).
            t43 = t44->get_first_token(  ).
            t42 = t43.
            DATA t45 TYPE REF TO zcl_lnt_position.
            DATA(t46) = CAST zcl_lnt_abstract_token( t42 ).
            t45 = t46->start.
            t41 = t45.
            t39 = t41.
          ELSE.
            DATA t47 TYPE REF TO zcl_lnt_position.
            CLEAR t47.
            t39 = t47.
          ENDIF.
          t4 = t39.
          DATA t48 TYPE string.
          DATA(t49) = CAST zcl_lnt_statement_node( t32 ).
          t48 = zcl_lnt_method_length_stats=>find_name( i_stat = t49 ).
          t6 = t48.
          DATA(t50) = abap_true.
          t10 = t50.
          DATA(t51) = CONV int8( 0 ).
          t8 = t51.
        ELSE.
          DATA t52 TYPE abap_bool.
          DATA(t53) = CAST zif_lnt_statement( t34 ).
          t52 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
          IF t52 = abap_true.
            DATA(t54) = VALUE string( ).
            DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t55.
            DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t56.
            DATA t57 TYPE REF TO zcl_lnt_expression_node.
            DATA t58 TYPE REF TO zcl_lnt_expression_node.
            DATA(t59) = CAST zcl_lnt_statement_node( t32 ).
            DATA(t60) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
            t58 = t59->find_first_expression( i_type_9913 = t60 ).
            t57 = t58.
            DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t61.
            DATA(t62) = VALUE abap_bool( ).
            DATA(t63) = CAST zcl_lnt_expression_node( t57 ).
            IF t63 IS INITIAL.
              t62 = abap_true.
            ENDIF.
            IF t62 = abap_true.
              DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t64.
              t61 = t64.
            ELSE.
              DATA t65 TYPE string.
              DATA t66 TYPE REF TO zcl_lnt_expression_node.
              DATA(t67) = CAST zcl_lnt_expression_node( t57 ).
              t66 = t67.
              t65 = t66->concat_tokens(  ).
              DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t68->has = abap_true.
              t68->value = t65.
              t61 = t68.
            ENDIF.
            t56 = t61.
            t55 = t56.
            DATA(t69) = VALUE string( ).
            DATA(t70) = VALUE abap_bool( ).
            DATA(t71) = CAST zlnt_runtime_opti_4ba3bdccd169( t55 ).
            IF t71 IS BOUND.
              IF t71->has = abap_true.
                t70 = xsdbool( strlen( t71->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t70 = abap_true.
              DATA t72 TYPE string.
              DATA(t73) = CAST zlnt_runtime_opti_4ba3bdccd169( t55 ).
              t72 = t73->value.
              t69 = t72.
            ELSE.
              DATA(t74) = |INTERNAL_ERROR|.
              t69 = t74.
            ENDIF.
            t54 = t69.
            t25 = t54.
          ELSE.
            DATA t75 TYPE abap_bool.
            DATA(t76) = CAST zif_lnt_statement( t34 ).
            t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_end_method ).
            IF t75 = abap_true.
              DATA t77 TYPE abap_bool.
              DATA(t78) = CAST zcl_lnt_position( t4 ).
              t77 = xsdbool( t78 IS BOUND ).
              IF t77 = abap_true.
                DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
                DATA t80 TYPE REF TO zcl_lnt_imethod_length_result.
                DATA(t81) = t25.
                DATA(t82) = t6.
                DATA(t83) = t8.
                DATA(t84) = CAST zcl_lnt_abap_file( t23 ).
                DATA t85 TYPE REF TO zcl_lnt_position.
                DATA(t86) = CAST zcl_lnt_position( t4 ).
                t85 = t86.
                t80 = NEW zcl_lnt_imethod_length_result( i_class_name = t81 i_name = t82 i_count = t83 i_file = t84 i_pos = t85 ).
                APPEND t80 TO t79->items.
              ELSE.
                CONTINUE.
              ENDIF.
              DATA(t87) = abap_false.
              t10 = t87.
            ELSE.
              DATA(t88) = VALUE abap_bool( ).
              DATA t89 TYPE abap_bool.
              DATA t90 TYPE abap_bool.
              DATA(t91) = t10.
              DATA(t92) = abap_true.
              t90 = xsdbool( t91 = t92 ).
              t89 = t90.
              IF t90 = abap_true.
                DATA t93 TYPE abap_bool.
                DATA t94 TYPE abap_bool.
                DATA(t95) = CAST zif_lnt_statement( t34 ).
                t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_st_comment ).
                t93 = xsdbool( t94 = abap_false ).
                t89 = t93.
              ENDIF.
              t88 = t89.
              IF t89 = abap_true.
                DATA t96 TYPE abap_bool.
                DATA t97 TYPE abap_bool.
                DATA(t98) = CAST zif_lnt_statement( t34 ).
                t97 = xsdbool( t98 IS BOUND AND t98 IS INSTANCE OF zcl_lnt_empty ).
                t96 = xsdbool( t97 = abap_false ).
                t88 = t96.
              ENDIF.
              IF t88 = abap_true.
                DATA t99 TYPE int8.
                DATA(t100) = t8.
                DATA(t101) = CONV int8( 1 ).
                t99 = t100 + t101.
                IF t99 < range_int8_bound_min OR t99 > range_int8_bound_max.
                  RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
                ENDIF.
                t8 = t99.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDLOOP.
    ENDLOOP.
    DATA(t102) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t102.

  ENDMETHOD.
  METHOD find_name.
    DATA(t1) = CAST zcl_lnt_statement_node( i_stat ).
    DATA t2 TYPE string.
    DATA(t3) = ||.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207 ).
    t5 = t6->find_first_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA t8 TYPE abap_bool.
    DATA(t9) = CAST zcl_lnt_expression_node( t4 ).
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE string.
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = CAST zcl_lnt_expression_node( t4 ).
      t13 = t14.
      t12 = t13->get_first_token(  ).
      t11 = t12.
      DATA t15 TYPE string.
      DATA(t16) = CAST zcl_lnt_abstract_token( t11 ).
      t15 = t16->str.
      t10 = t15.
      t2 = t10.
    ELSE.
      DATA t17 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA(t21) = |MethodLength, findName, expected MethodName|.
        DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t22->has = abap_true.
        t22->value = t21.
        t19 = t22.
      ELSE.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        t19 = t23.
      ENDIF.
      t18 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t19 ).
      t17 = NEW #( ).
      t17->payload = t18.
      RAISE EXCEPTION t17.
    ENDIF.
    DATA(t24) = t2.
    result = t24.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1695_a2c3621ecead.
  ENDMETHOD.
ENDCLASS.
