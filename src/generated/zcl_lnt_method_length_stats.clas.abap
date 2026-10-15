* TS: src/utils/method_length_stats.ts:19:1 MethodLengthStats
CLASS zcl_lnt_method_length_stats DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS find_name IMPORTING i_stat TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_length_stats IMPLEMENTATION.
  METHOD run.
    DATA(t1) = i_obj_1ed0.
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
    DATA t8 TYPE f.
    DATA(t9) = CONV f( 0 ).
    t8 = t9.
    DATA t10 TYPE abap_bool.
    DATA(t11) = abap_false.
    t10 = t11.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA(t14) = t1.
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
    DATA(t19) = t1.
    DATA t20 TYPE REF TO object.
    t20 = t19.
    t18 ?= t20.
    t17 = t18.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t17.
    t21 = t22->parsed.
    t16 = t21.
    DATA t23 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    DATA(t25) = VALUE i( ).
    DO.
      t16->load( ).
      IF t25 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t16->items INDEX t25 + 1 INTO t24.
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
      DATA t28 TYPE string.
      DATA(t29) = ||.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t31 TYPE REF TO zcl_lnt_abap_file.
      DATA(t32) = t23.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t34) = t31.
      t33 = t34->statements.
      t30 = t33.
      DATA t35 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      DATA(t37) = VALUE i( ).
      DO.
        t30->load( ).
        IF t37 >= lines( t30->items ).
          EXIT.
        ENDIF.
        CLEAR t36.
        READ TABLE t30->items INDEX t37 + 1 INTO t36.
        t37 = t37 + 1.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t35.
        IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t36.
          DATA t39 TYPE REF TO object.
          t39 = t38->as_ref( ).
          t35 ?= t39.
        ELSE.
          t35 ?= t36.
        ENDIF.
        DATA t40 TYPE REF TO zif_lnt_statement.
        DATA t41 TYPE REF TO zif_lnt_statement.
        DATA(t42) = t35.
        t41 = t42->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t40 = t41.
        DATA t43 TYPE abap_bool.
        DATA(t44) = t40.
        t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
        IF t43 = abap_true.
          DATA t45 TYPE REF TO zcl_lnt_position.
          CLEAR t45.
          DATA(t46) = abap_true.
          IF t46 = abap_true.
            DATA t47 TYPE REF TO zcl_lnt_position.
            DATA t48 TYPE REF TO zcl_lnt_abstract_token.
            DATA t49 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t50) = t35.
            t49 = t50->get_first_token( ).
            t48 = t49.
            DATA t51 TYPE REF TO zcl_lnt_position.
            DATA(t52) = t48.
            t51 = t52->start.
            t47 = t51.
            t45 = t47.
          ELSE.
            DATA t53 TYPE REF TO zcl_lnt_position.
            CLEAR t53.
            t45 = t53.
          ENDIF.
          t4 = t45.
          DATA t54 TYPE string.
          DATA(t55) = t35.
          t54 = zcl_lnt_method_length_stats=>find_name( i_stat = t55 ).
          t6 = t54.
          DATA(t56) = abap_true.
          t10 = t56.
          DATA(t57) = CONV f( 0 ).
          t8 = t57.
        ELSE.
          DATA t58 TYPE abap_bool.
          DATA(t59) = t40.
          t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
          IF t58 = abap_true.
            DATA(t60) = VALUE string( ).
            DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t61.
            DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t62.
            DATA t63 TYPE REF TO zcl_lnt_expression_node.
            DATA t64 TYPE REF TO zcl_lnt_expression_node.
            DATA(t65) = t35.
            DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
            t64 = t65->find_first_expression( i_type_9913 = t66 ).
            t63 = t64.
            DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t67.
            DATA(t68) = VALUE abap_bool( ).
            DATA(t69) = t63.
            IF t69 IS INITIAL.
              t68 = abap_true.
            ENDIF.
            IF t68 = abap_true.
              DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t70.
              t67 = t70.
            ELSE.
              DATA t71 TYPE string.
              DATA t72 TYPE REF TO zcl_lnt_expression_node.
              DATA(t73) = t63.
              t72 = t73.
              t71 = t72->concat_tokens( ).
              DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t74->has = abap_true.
              t74->value = t71.
              t67 = t74.
            ENDIF.
            t62 = t67.
            t61 = t62.
            DATA(t75) = VALUE string( ).
            DATA(t76) = VALUE abap_bool( ).
            DATA(t77) = t61.
            IF t77 IS BOUND.
              IF t77->has = abap_true.
                t76 = xsdbool( strlen( t77->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t76 = abap_true.
              DATA t78 TYPE string.
              DATA(t79) = t61.
              t78 = t79->value.
              t75 = t78.
            ELSE.
              DATA(t80) = |INTERNAL_ERROR|.
              t75 = t80.
            ENDIF.
            t60 = t75.
            t28 = t60.
          ELSE.
            DATA t81 TYPE abap_bool.
            DATA(t82) = t40.
            t81 = xsdbool( t82 IS BOUND AND t82 IS INSTANCE OF zcl_lnt_end_method ).
            IF t81 = abap_true.
              DATA t83 TYPE abap_bool.
              DATA(t84) = t4.
              t83 = xsdbool( t84 IS BOUND ).
              IF t83 = abap_true.
                DATA(t85) = t2.
                DATA t86 TYPE REF TO zcl_lnt_imethod_length_result.
                DATA t87 TYPE string.
                DATA(t88) = t6.
                t87 = t88.
                DATA t89 TYPE string.
                DATA(t90) = t28.
                t89 = t90.
                DATA t91 TYPE f.
                DATA(t92) = t8.
                t91 = t92.
                DATA t93 TYPE REF TO zcl_lnt_abap_file.
                DATA(t94) = t23.
                t93 = t94.
                DATA t95 TYPE REF TO zcl_lnt_position.
                DATA t96 TYPE REF TO zcl_lnt_position.
                DATA(t97) = t4.
                t96 = t97.
                t95 = t96.
                t86 = NEW zcl_lnt_imethod_length_result( i_class_name = t89 i_name = t87 i_count = t91 i_file = t93 i_pos = t95 ).
                CREATE OBJECT t86->zlnt_view_ownkeys_b0e8086400eb.
                t86->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t98.
                IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t98 ).
                ENDIF.
                DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t99.
                IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `className` p1 = t99 ).
                ENDIF.
                DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t100.
                IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t100 ).
                ENDIF.
                DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t101.
                IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t101 ).
                ENDIF.
                DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t102.
                IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pos` p1 = t102 ).
                ENDIF.
                CREATE OBJECT t86->zlnt_json_ownkeys_70e5fd461788.
                t86->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t103) = |name|.
                DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t104.
                IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
                ENDIF.
                DATA(t105) = |className|.
                DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t106.
                IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
                ENDIF.
                DATA(t107) = |count|.
                DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t108.
                IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
                ENDIF.
                DATA(t109) = |file|.
                DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t110.
                IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
                ENDIF.
                DATA(t111) = |pos|.
                DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t112.
                IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
                ENDIF.
                t85->load( ).
                APPEND t86 TO t85->items.
                t85->save( ).
              ELSE.
                CONTINUE.
              ENDIF.
              DATA(t113) = abap_false.
              t10 = t113.
            ELSE.
              DATA(t114) = VALUE abap_bool( ).
              DATA t115 TYPE abap_bool.
              DATA t116 TYPE abap_bool.
              DATA(t117) = t10.
              DATA(t118) = abap_true.
              t116 = xsdbool( t117 = t118 ).
              t115 = t116.
              IF t116 = abap_true.
                DATA t119 TYPE abap_bool.
                DATA t120 TYPE abap_bool.
                DATA(t121) = t40.
                t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_st_comment ).
                t119 = xsdbool( t120 = abap_false ).
                t115 = t119.
              ENDIF.
              t114 = t115.
              IF t115 = abap_true.
                DATA t122 TYPE abap_bool.
                DATA t123 TYPE abap_bool.
                DATA(t124) = t40.
                t123 = xsdbool( t124 IS BOUND AND t124 IS INSTANCE OF zcl_lnt_empty ).
                t122 = xsdbool( t123 = abap_false ).
                t114 = t122.
              ENDIF.
              IF t114 = abap_true.
                DATA t125 TYPE f.
                DATA(t126) = t8.
                DATA(t127) = CONV f( 1 ).
                t125 = t126 + t127.
                t8 = t125.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t128) = t2.
    result = t128.

  ENDMETHOD.

  METHOD find_name.
    DATA(t1) = i_stat.
    DATA(t2) = VALUE string( ).
    DATA(t3) = ||.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    t5 = t6->find_first_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA(t10) = VALUE string( ).
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t13.
      DATA(t14) = t4.
      t13 = t14.
      t12 = t13->get_first_token( ).
      t11 = t12.
      DATA(t15) = VALUE string( ).
      DATA(t16) = t11.
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
      CLEAR t17->source_value.
      IF t18 IS BOUND.
        DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t24.
        DATA t25 TYPE REF TO object.
        CLEAR t25.
        CLEAR t24.
        t25 = t18.
        TRY.
            t17->source_value ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17->source_value IS NOT BOUND.
          TRY.
              t24 ?= t18.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t24 IS BOUND.
            t17->source_value = t24->source( ).
          ENDIF.
          IF t17->source_value IS NOT BOUND.
            CREATE OBJECT t17->source_value.
            t17->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t17->source_value->oval = t18.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t17.
    ENDIF.
    DATA(t26) = t2.
    result = t26.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1794_d2bc4af83ba3.
  ENDMETHOD.
ENDCLASS.
