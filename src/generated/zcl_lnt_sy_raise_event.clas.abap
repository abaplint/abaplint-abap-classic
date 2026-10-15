* TS: src/abap/5_syntax/statements/raise_event.ts:8:1 RaiseEvent
CLASS zcl_lnt_sy_raise_event DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_raise_event IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA(t12) = t3.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t11.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE string.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t19) = t11.
      t18 = t19.
      t17 = t18->concat_tokens( ).
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t17.
      t13 = t20.
    ENDIF.
    t10 = t13.
    t9 = t10.
    DATA t21 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t9.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ELSEIF t23->has = abap_false.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      t21 = t24.
    ELSE.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE i( ).
      DATA t27 TYPE string.
      DATA(t28) = t9.
      t27 = t28->value.
      DATA(t29) = |~|.
      DATA(t30) = strlen( t27 ).
      IF t29 IS INITIAL.
        t26 = 0.
      ELSE.
        FIND t29 IN t27 MATCH OFFSET t26.
        IF sy-subrc <> 0.
          t26 = -1.
        ENDIF.
      ENDIF.
      DATA(t31) = 0.
      t25 = xsdbool( t26 >= t31 ).
      DATA(t32) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t32->has = abap_true.
      t32->value = t25.
      t21 = t32.
    ENDIF.
    t8 = t21.
    IF t8 IS BOUND.
      IF t8->has = abap_true.
        t7 = xsdbool( t8->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t7 = abap_true.
      DATA(t33) = VALUE string( ).
      DATA(t34) = VALUE string( ).
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t36 TYPE string.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA(t38) = t3.
      t37 = t38.
      t36 = t37->concat_tokens( ).
      DATA(t39) = |~|.
      DATA(t40) = strlen( t36 ).
      DATA t41 TYPE i.
      DATA(t42) = VALUE i( ).
      DATA(t43) = VALUE i( ).
      DATA t44 TYPE i.
      DATA(t45) = VALUE string( ).
      CREATE OBJECT t35.
      t44 = strlen( t39 ).
      t41 = 0.
      IF t44 = 0.
        WHILE t41 < t40.
          t45 = t36+t41(1).
          APPEND t45 TO t35->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t36 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t36+t41(t43).
          ENDIF.
          APPEND t45 TO t35->items.
          IF t42 < 0.
            EXIT.
          ENDIF.
          t41 = t42 + t44.
        ENDWHILE.
      ENDIF.
      IF t35->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t35->load( ).
      CLEAR t34.
      READ TABLE t35->items INDEX 1 INTO t34.
      t33 = t34.
      DATA t46 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t46.
      DATA t47 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t47.
      DATA t48 TYPE REF TO zcl_lnt_current_scope.
      DATA t49 TYPE REF TO zcl_lnt_current_scope.
      DATA(t50) = t2.
      t49 = t50->scope.
      t48 = t49.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA(t53) = abap_true.
      IF t53 = abap_true.
        DATA(t54) = t33.
        DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t55->has = abap_true.
        t55->value = t54.
        t52 = t55.
      ELSE.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        t52 = t56.
      ENDIF.
      t51 = t52.
      DATA t57 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t57.
      DATA(t58) = VALUE abap_bool( ).
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t60) = t51.
      t59 = t60.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      t61 = t62.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t59.
      IF t64 IS INITIAL.
        t63 = abap_true.
      ELSEIF t64->has = abap_false.
        t63 = abap_true.
      ENDIF.
      t58 = t63.
      IF t58 = abap_true.
        DATA t65 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t65.
        t57 = t65.
      ELSE.
        DATA t66 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t66.
        DATA t67 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t67.
        DATA t68 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t71) = t48.
        t70 = t71->current.
        t69 = t70.
        DATA t72 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t72.
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = t69.
        IF t74 IS INITIAL.
          t73 = abap_true.
        ENDIF.
        IF t73 = abap_true.
          DATA t75 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t75.
          t72 = t75.
        ELSE.
          DATA t76 TYPE REF TO zif_lnt_interface_definition.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t78) = t69.
          t77 = t78.
          DATA t79 TYPE string.
          DATA(t80) = t51.
          t79 = t80->value.
          t76 = t77->find_interface_definition( i_name = t79 ).
          t72 = t76.
        ENDIF.
        t68 = t72.
        t67 = t68.
        DATA t81 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t81.
        DATA t82 TYPE abap_bool.
        DATA(t83) = t67.
        t82 = xsdbool( t83 IS BOUND ).
        IF t82 = abap_true.
          DATA t84 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t84.
          DATA(t85) = abap_true.
          IF t85 = abap_true.
            DATA t86 TYPE REF TO zif_lnt_interface_definition.
            DATA(t87) = t67.
            t86 = t87.
            t84 = t86.
          ELSE.
            DATA t88 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t88.
            t84 = t88.
          ENDIF.
          t81 = t84.
        ELSE.
          DATA t89 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t89.
          DATA t90 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t90.
          DATA t91 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t91.
          DATA t92 TYPE REF TO zif_lnt_object.
          CLEAR t92.
          DATA t93 TYPE REF TO zif_lnt_registry.
          DATA(t94) = t48.
          t93 = t94->reg.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA(t96) = abap_true.
          IF t96 = abap_true.
            DATA(t97) = |INTF|.
            DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t98->has = abap_true.
            t98->value = t97.
            t95 = t98.
          ELSE.
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            t95 = t99.
          ENDIF.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          DATA(t101) = abap_true.
          IF t101 = abap_true.
            DATA t102 TYPE string.
            DATA(t103) = t51.
            t102 = t103->value.
            DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t104->has = abap_true.
            t104->value = t102.
            t100 = t104.
          ELSE.
            DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t105.
            t100 = t105.
          ENDIF.
          t92 = t93->get_object( i_type_9913 = t95 i_name = t100 ).
          DATA t106 TYPE REF TO object.
          t106 = t92.
          t91 ?= t106.
          t90 = t91.
          DATA t107 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t107.
          DATA t108 TYPE abap_bool.
          DATA(t109) = t90.
          t108 = xsdbool( t109 IS BOUND ).
          IF t108 = abap_true.
            DATA t110 TYPE REF TO zif_lnt_interface_definition.
            DATA t111 TYPE REF TO zcl_lnt_ob_interface.
            DATA t112 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t113) = t90.
            t112 = t113.
            t111 = t112.
            DATA t114 TYPE REF TO zif_lnt_interface_definition.
            DATA(t115) = t111.
            t114 = t115->def.
            t110 = t114.
            t107 = t110.
          ELSE.
            DATA t116 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t116.
            t107 = t116.
          ENDIF.
          t89 = t107.
          t81 = t89.
        ENDIF.
        t66 = t81.
        t57 = t66.
      ENDIF.
      t47 = t57.
      t46 = t47.
      DATA t117 TYPE abap_bool.
      DATA(t118) = t46.
      t117 = xsdbool( t118 IS BOUND ).
      IF t117 = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_current_scope.
        DATA(t120) = t2.
        t119 = t120->scope.
        DATA t121 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t121.
        DATA(t122) = abap_true.
        IF t122 = abap_true.
          DATA t123 TYPE REF TO zcl_lnt_abstract_token.
          DATA t124 TYPE REF TO zcl_lnt_expression_node.
          DATA(t125) = t3.
          t124 = t125.
          t123 = t124->get_first_token( ).
          t121 = t123.
        ELSE.
          DATA t126 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t126.
          t121 = t126.
        ENDIF.
        DATA t127 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t127.
        DATA(t128) = abap_true.
        IF t128 = abap_true.
          DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t130 TYPE REF TO zif_lnt_interface_definition.
          DATA(t131) = t46.
          t130 = t131.
          t129 ?= t130.
          t127 = t129.
        ELSE.
          DATA t132 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t132.
          t127 = t132.
        ENDIF.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        DATA(t134) = |Object|.
        CLEAR t133.
        CREATE OBJECT t133.
        t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t133->sval = t134.
        DATA t135 TYPE string.
        DATA(t136) = t2.
        t135 = t136->filename.
        DATA t137 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t137.
        t119->add_reference( i_usage = t121 i_referencing = t127 i_type_9913 = t133 i_filename = t135 i_extra = t137 ).
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t139) = t1.
    DATA(t140) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t138 = t139->find_all_expressions( i_type_9913 = t140 ).
    DATA t141 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t141.
    DATA t142 TYPE REF TO object.
    CLEAR t142.
    DATA(t143) = VALUE i( ).
    DO.
      t138->load( ).
      IF t143 >= lines( t138->items ).
        EXIT.
      ENDIF.
      CLEAR t142.
      READ TABLE t138->items INDEX t143 + 1 INTO t142.
      t143 = t143 + 1.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      CLEAR t141.
      IF t142 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t144 ?= t142.
        DATA t145 TYPE REF TO object.
        t145 = t144->as_ref( ).
        t141 ?= t145.
      ELSE.
        t141 ?= t142.
      ENDIF.
      DATA t146 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t146.
      DATA t147 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t147.
      DATA(t148) = abap_true.
      IF t148 = abap_true.
        DATA(t149) = t141.
        t147 = t149.
      ELSE.
        DATA t150 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t150.
        t147 = t150.
      ENDIF.
      DATA(t151) = t2.
      DATA t152 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t152.
      DATA t153 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t153.
      DATA t154 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t154.
      DATA t155 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t155.
      t146 = zcl_lnt_sy_source=>run_syntax( i_node = t147 i_input_967e = t151 i_target_type = t152 i_write_reference = t153 i_allow_generic_deference = t154 i_read_reference = t155 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d943_25f9189182ed.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
