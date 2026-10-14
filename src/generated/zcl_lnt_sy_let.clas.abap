* TS: src/abap/5_syntax/expressions/let.ts:7:1 Let
CLASS zcl_lnt_sy_let DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_skip_scope TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_let IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( i_skip_scope ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
    IF t5 IS INITIAL.
      t4 = abap_true.
    ELSEIF t5->has = abap_false.
      t4 = abap_true.
    ENDIF.
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = abap_false.
        DATA(t9) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t9->has = abap_true.
        t9->value = t8.
        t6 = t9.
      ELSE.
        DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t10.
        t6 = t10.
      ENDIF.
      t3 = t6.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA(t13) = CAST zcl_lnt_expression_node( t1 ).
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    t14 = t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = CAST zcl_lnt_expression_node( t12 ).
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t11 = t16.
    IF t11 = abap_true.
      DATA(t18) = abap_false.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE abap_bool.
    DATA t20 TYPE abap_bool.
    DATA(t21) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
    t20 = t21->value.
    DATA(t22) = abap_true.
    t19 = xsdbool( t20 <> t22 ).
    IF t19 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_current_scope.
      DATA t24 TYPE REF TO zcl_lnt_current_scope.
      DATA(t25) = CAST zcl_lnt_syntax_input( t2 ).
      t24 = t25->scope.
      t23 = t24.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_position.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      DATA(t31) = CAST zcl_lnt_expression_node( t1 ).
      t30 = t31.
      t29 = t30->get_first_token(  ).
      t28 = t29.
      DATA t32 TYPE REF TO zcl_lnt_position.
      DATA(t33) = CAST zcl_lnt_abstract_token( t28 ).
      t32 = t33->start.
      t27 = t32.
      t26 = t27.
      DATA t34 TYPE string.
      DATA t35 TYPE string.
      DATA(t36) = CAST zcl_lnt_syntax_input( t2 ).
      t35 = t36->filename.
      t34 = t35.
      DATA t37 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t38 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t39) = |let|.
      DATA(t40) = |LET|.
      DATA(t41) = t34.
      DATA(t42) = CAST zcl_lnt_position( t26 ).
      DATA t43 TYPE REF TO zcl_lnt_position.
      CLEAR t43.
      t38 = NEW zcl_lnt_iscope_identifier( i_stype = t39 i_sname = t40 i_filename = t41 i_start = t42 i_end = t43 ).
      t37 = t38.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t46 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t47) = CAST zcl_lnt_current_scope( t23 ).
      t46 = t47->current.
      t45 = t46.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      t48 = t49.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = CAST zcl_lnt_spaghetti_scope_node( t45 ).
      IF t51 IS INITIAL.
        t50 = abap_true.
      ENDIF.
      t44 = t50.
      IF t44 = abap_true.
        DATA(t52) = CAST zcl_lnt_current_scope( t23 ).
        DATA t53 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t53.
        DATA(t54) = abap_true.
        IF t54 = abap_true.
          DATA t55 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t56) = CAST zcl_lnt_iscope_identifier( t37 ).
          DATA t57 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t57.
          t55 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t56 i_parent = t57 ).
          t53 = t55.
        ELSE.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t58.
          t53 = t58.
        ENDIF.
        t52->current = t53.
      ELSE.
        DATA t59 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t60 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t61 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t62) = CAST zcl_lnt_current_scope( t23 ).
        t61 = t62->current.
        t60 = t61.
        t59 = t60.
        DATA(t63) = CAST zcl_lnt_current_scope( t23 ).
        DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t64.
        DATA(t65) = abap_true.
        IF t65 = abap_true.
          DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t66.
          DATA(t67) = CAST zcl_lnt_iscope_identifier( t37 ).
          DATA t68 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t68.
          DATA(t69) = abap_true.
          IF t69 = abap_true.
            DATA(t70) = CAST zcl_lnt_spaghetti_scope_node( t59 ).
            t68 = t70.
          ELSE.
            DATA t71 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t71.
            t68 = t71.
          ENDIF.
          t66 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t67 i_parent = t68 ).
          t64 = t66.
        ELSE.
          DATA t72 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t72.
          t64 = t72.
        ENDIF.
        t63->current = t64.
        DATA(t73) = CAST zcl_lnt_spaghetti_scope_node( t59 ).
        DATA t74 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t75 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t76) = CAST zcl_lnt_current_scope( t23 ).
        t75 = t76->current.
        t74 = t75.
        t73->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t74 ).
      ENDIF.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t78 TYPE REF TO zcl_lnt_expression_node.
    DATA(t79) = CAST zcl_lnt_expression_node( t1 ).
    t78 = t79.
    DATA(t80) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6 ).
    t77 = t78->find_direct_expressions( i_type_9913 = t80 ).
    DATA t81 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t81.
    DATA t82 TYPE REF TO object.
    CLEAR t82.
    LOOP AT t77->items INTO t82.
      t81 ?= t82.
      DATA t83 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t84) = CAST zcl_lnt_expression_node( t81 ).
      DATA(t85) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t86 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t86.
      t83 = zcl_lnt_sy_inln_fld_dfntn=>run_syntax( i_node = t84 i_input_967e = t85 i_target_type = t86 ).
    ENDLOOP.
    DATA(t87) = abap_true.
    result = t87.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d793_243ce9349fe6.
  ENDMETHOD.
ENDCLASS.
