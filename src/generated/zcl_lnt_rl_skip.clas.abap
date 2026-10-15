* TS: src/rules/keyword_case.ts:40:1 Skip
CLASS zcl_lnt_rl_skip DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA conf TYPE REF TO zcl_lnt_keyword_case_conf.
    DATA skip_0892 TYPE abap_bool.
    DATA is_global_class TYPE abap_bool.
    DATA is_global_if TYPE abap_bool.
    METHODS constructor IMPORTING i_conf TYPE REF TO zcl_lnt_keyword_case_conf.
    METHODS skip_statement IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rl_skip IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_conf.
    DATA(t2) = abap_false.
    me->skip_0892 = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skip`.
    DATA(t3) = abap_false.
    me->is_global_class = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isGlobalClass`.
    DATA(t4) = abap_false.
    me->is_global_if = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isGlobalIf`.
    DATA(t5) = t1.
    me->conf = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD skip_statement.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zif_lnt_statement.
    DATA t3 TYPE REF TO zif_lnt_statement.
    DATA(t4) = t1.
    t3 = t4->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    DATA(t11) = t2.
    t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_unknown ).
    t9 = t10.
    IF t10 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t2.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_native_sql ).
      t9 = t12.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t2.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_macro_content ).
      t8 = t14.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t2.
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_macro_call ).
      t7 = t16.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE REF TO zcl_lnt_position.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t22) = t1.
      t21 = t22->get_first_token( ).
      t20 = t21.
      DATA t23 TYPE REF TO zcl_lnt_position.
      DATA(t24) = t20.
      t23 = t24->start.
      t19 = t23.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_virtual_position ).
      t6 = t18.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t25 TYPE abap_bool.
      DATA(t26) = t2.
      t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_st_comment ).
      t5 = t25.
    ENDIF.
    IF t5 = abap_true.
      DATA(t27) = abap_true.
      result = t27.
      RETURN.
    ENDIF.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t30) = me->conf.
    t29 = t30->zlnt_view_read_sr_8a9646993486( ).
    IF t29 IS BOUND.
      IF t29->has = abap_true.
        t28 = xsdbool( t29->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t28 = abap_true.
      DATA t31 TYPE REF TO zif_lnt_statement.
      DATA(t32) = t2.
      t31 = t32.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t31.
      t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_st_interface ).
      t33 = t34.
      IF t34 = abap_true.
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        DATA(t38) = t1.
        DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
        t37 = t38->find_first_expression( i_type_9913 = t39 ).
        t36 = xsdbool( t37 IS BOUND ).
        t33 = t36.
      ENDIF.
      IF t33 = abap_true.
        DATA(t40) = abap_true.
        me->is_global_if = t40.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isGlobalIf`.
        DATA(t41) = abap_true.
        result = t41.
        RETURN.
      ELSE.
        DATA t42 TYPE abap_bool.
        DATA t43 TYPE abap_bool.
        DATA(t44) = CONV abap_bool( me->is_global_if ).
        DATA(t45) = abap_true.
        t43 = xsdbool( t44 = t45 ).
        t42 = t43.
        IF t43 = abap_true.
          DATA t46 TYPE abap_bool.
          DATA(t47) = t31.
          t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_end_interface ).
          t42 = t46.
        ENDIF.
        IF t42 = abap_true.
          DATA(t48) = abap_true.
          result = t48.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t49 TYPE abap_bool.
      DATA t50 TYPE abap_bool.
      DATA(t51) = t31.
      t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_st_class_definition ).
      t49 = t50.
      IF t50 = abap_true.
        DATA t52 TYPE abap_bool.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        DATA(t54) = t1.
        DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
        t53 = t54->find_first_expression( i_type_9913 = t55 ).
        t52 = xsdbool( t53 IS BOUND ).
        t49 = t52.
      ENDIF.
      IF t49 = abap_true.
        DATA(t56) = abap_true.
        me->is_global_class = t56.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isGlobalClass`.
        DATA(t57) = abap_true.
        result = t57.
        RETURN.
      ELSE.
        DATA t58 TYPE abap_bool.
        DATA t59 TYPE abap_bool.
        DATA(t60) = CONV abap_bool( me->is_global_class ).
        DATA(t61) = abap_true.
        t59 = xsdbool( t60 = t61 ).
        t58 = t59.
        IF t59 = abap_true.
          DATA t62 TYPE abap_bool.
          DATA t63 TYPE abap_bool.
          DATA(t64) = t31.
          t63 = xsdbool( t64 IS BOUND AND t64 IS INSTANCE OF zcl_lnt_end_class ).
          t62 = t63.
          IF t63 = abap_false.
            DATA t65 TYPE abap_bool.
            DATA(t66) = t31.
            t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
            t62 = t65.
          ENDIF.
          t58 = t62.
        ENDIF.
        IF t58 = abap_true.
          DATA(t67) = abap_true.
          result = t67.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t68) = VALUE abap_bool( ).
    DATA t69 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t70) = me->conf.
    t69 = t70->zlnt_view_read_sr_3e49b3d4558c( ).
    IF t69 IS BOUND.
      IF t69->has = abap_true.
        t68 = xsdbool( t69->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t68 = abap_true.
      DATA t71 TYPE abap_bool.
      DATA t72 TYPE abap_bool.
      DATA(t73) = t2.
      t72 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_st_class_definition ).
      t71 = t72.
      IF t72 = abap_true.
        DATA t74 TYPE abap_bool.
        DATA t75 TYPE REF TO zcl_lnt_expression_node.
        DATA(t76) = t1.
        DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
        t75 = t76->find_first_expression( i_type_9913 = t77 ).
        t74 = xsdbool( t75 IS BOUND ).
        t71 = t74.
      ENDIF.
      IF t71 = abap_true.
        DATA(t78) = abap_true.
        me->skip_0892 = t78.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skip`.
        DATA(t79) = abap_true.
        result = t79.
        RETURN.
      ELSE.
        DATA t80 TYPE abap_bool.
        DATA t81 TYPE abap_bool.
        DATA(t82) = CONV abap_bool( me->skip_0892 ).
        DATA(t83) = abap_true.
        t81 = xsdbool( t82 = t83 ).
        t80 = t81.
        IF t81 = abap_true.
          DATA t84 TYPE abap_bool.
          DATA(t85) = t2.
          t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_end_class ).
          t80 = t84.
        ENDIF.
        IF t80 = abap_true.
          DATA(t86) = abap_false.
          me->skip_0892 = t86.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skip`.
          DATA(t87) = abap_true.
          result = t87.
          RETURN.
        ELSE.
          DATA t88 TYPE abap_bool.
          DATA(t89) = CONV abap_bool( me->skip_0892 ).
          DATA(t90) = abap_true.
          t88 = xsdbool( t89 = t90 ).
          IF t88 = abap_true.
            DATA(t91) = abap_true.
            result = t91.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t92) = VALUE abap_bool( ).
    DATA t93 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t94) = me->conf.
    t93 = t94->zlnt_view_read_sr_a14b6839a5a2( ).
    IF t93 IS BOUND.
      IF t93->has = abap_true.
        t92 = xsdbool( t93->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t92 = abap_true.
      DATA t95 TYPE abap_bool.
      DATA t96 TYPE abap_bool.
      DATA(t97) = t2.
      t96 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_st_interface ).
      t95 = t96.
      IF t96 = abap_true.
        DATA t98 TYPE abap_bool.
        DATA t99 TYPE REF TO zcl_lnt_expression_node.
        DATA(t100) = t1.
        DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
        t99 = t100->find_first_expression( i_type_9913 = t101 ).
        t98 = xsdbool( t99 IS BOUND ).
        t95 = t98.
      ENDIF.
      IF t95 = abap_true.
        DATA(t102) = abap_true.
        me->skip_0892 = t102.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skip`.
        DATA(t103) = abap_true.
        result = t103.
        RETURN.
      ELSE.
        DATA t104 TYPE abap_bool.
        DATA t105 TYPE abap_bool.
        DATA(t106) = CONV abap_bool( me->skip_0892 ).
        DATA(t107) = abap_true.
        t105 = xsdbool( t106 = t107 ).
        t104 = t105.
        IF t105 = abap_true.
          DATA t108 TYPE abap_bool.
          DATA(t109) = t2.
          t108 = xsdbool( t109 IS BOUND AND t109 IS INSTANCE OF zcl_lnt_end_interface ).
          t104 = t108.
        ENDIF.
        IF t104 = abap_true.
          DATA(t110) = abap_false.
          me->skip_0892 = t110.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skip`.
          DATA(t111) = abap_true.
          result = t111.
          RETURN.
        ELSE.
          DATA t112 TYPE abap_bool.
          DATA(t113) = CONV abap_bool( me->skip_0892 ).
          DATA(t114) = abap_true.
          t112 = xsdbool( t113 = t114 ).
          IF t112 = abap_true.
            DATA(t115) = abap_true.
            result = t115.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t116) = abap_false.
    result = t116.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1556_d593468dbdaf.
  ENDMETHOD.
ENDCLASS.
