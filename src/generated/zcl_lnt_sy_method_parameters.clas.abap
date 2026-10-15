* TS: src/abap/5_syntax/expressions/method_parameters.ts:29:1 MethodParameters
CLASS zcl_lnt_sy_method_parameters DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA required_parameters TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    METHODS constructor.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    METHODS check_receiving IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    METHODS check_importing IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    METHODS check_changing IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    METHODS check_exporting IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e i_errors TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS report_errors IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS parameter_list_s IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parameter_list_t IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_parameters IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t1.
    me->required_parameters = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `requiredParameters`.
  ENDMETHOD.

  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = t1.
    t6 = t7->get_db65( ).
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_st_method_parameters ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t8.
      DATA t9 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA(t12) = |MethodParameters, unexpected input|.
        DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t13->has = abap_true.
        t13->value = t12.
        t10 = t13.
      ELSE.
        DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t14.
        t10 = t14.
      ENDIF.
      t9 = NEW zcx_lnt_assert_error( i_message_26cb = t10 ).
      t8 = NEW #( ).
      t8->payload = t9.
      CLEAR t8->source_value.
      IF t9 IS BOUND.
        DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t15.
        DATA t16 TYPE REF TO object.
        CLEAR t16.
        CLEAR t15.
        t16 = t9.
        TRY.
            t8->source_value ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8->source_value IS NOT BOUND.
          TRY.
              t15 ?= t9.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t15 IS BOUND.
            t8->source_value = t15->source( ).
          ENDIF.
          IF t8->source_value IS NOT BOUND.
            CREATE OBJECT t8->source_value.
            t8->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t8->source_value->oval = t9.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    DATA(t20) = t1.
    t19 = t20->get_children( ).
    t18 = t19->slice0( ).
    t17 = t18.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t3.
    t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_void_type ).
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t23.
      DATA(t24) = abap_true.
      IF t24 = abap_true.
        DATA(t25) = NEW zlnt_runtime_set__1827558fd4c7( ).
        t23 = t25.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t26.
        t23 = t26.
      ENDIF.
      me->required_parameters = t23.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `requiredParameters`.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA t29 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t29.
        DATA(t30) = NEW zlnt_runtime_set__1827558fd4c7( ).
        DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t31.
        DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t32.
        DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t33.
        CREATE OBJECT t33.
        t32 = t33.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t34.
        DATA t35 TYPE REF TO zif_lnt_method_parameters.
        CLEAR t35.
        DATA t36 TYPE REF TO zif_lnt_method_definition.
        CLEAR t36.
        DATA(t37) = t3.
        t36 ?= t37.
        t35 = t36->get_parameters( ).
        t34 = t35->get_required_parameters( ).
        DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t38.
        DATA t39 TYPE REF TO object.
        CLEAR t39.
        DATA(t40) = VALUE i( ).
        DO.
          t34->load( ).
          IF t40 >= lines( t34->items ).
            EXIT.
          ENDIF.
          CLEAR t39.
          READ TABLE t34->items INDEX t40 + 1 INTO t39.
          t40 = t40 + 1.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          CLEAR t38.
          IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t41 ?= t39.
            DATA t42 TYPE REF TO object.
            CLEAR t42.
            t42 = t41->as_ref( ).
            t38 ?= t42.
          ELSE.
            t38 ?= t39.
          ENDIF.
          DATA(t43) = t32.
          DATA(t44) = VALUE string( ).
          DATA(t45) = VALUE string( ).
          DATA t46 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t46.
          DATA(t47) = t38.
          t46 = t47.
          DATA(t48) = VALUE string( ).
          DATA(t49) = VALUE string( ).
          DATA(t50) = VALUE string( ).
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t51.
          DATA t52 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t52.
          DATA(t53) = t46.
          t52 = t53->token.
          t51 = t52.
          DATA(t54) = VALUE string( ).
          DATA(t55) = t51.
          t54 = t55->str.
          t50 = t54.
          t49 = t50.
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = VALUE string( ).
          DATA(t58) = t49.
          DATA(t59) = 0.
          DATA(t60) = 1.
          DATA(t61) = strlen( t58 ).
          IF t59 < 0.
            t59 = t59 + t61.
            IF t59 < 0.
              t59 = 0.
            ENDIF.
          ENDIF.
          IF t59 > t61 OR t60 <= 0.
            CLEAR t57.
          ELSE.
            IF t60 > t61 - t59.
              t60 = t61 - t59.
            ENDIF.
            t57 = t58+t59(t60).
          ENDIF.
          DATA(t62) = |!|.
          t56 = xsdbool( t57 = t62 ).
          IF t56 = abap_true.
            DATA(t63) = VALUE string( ).
            DATA(t64) = VALUE string( ).
            DATA(t65) = t49.
            t64 = t65.
            DATA(t66) = VALUE string( ).
            DATA(t67) = t64.
            DATA(t68) = 1.
            DATA(t69) = VALUE i( ).
            DATA(t70) = t64.
            DATA(t71) = strlen( t70 ).
            t69 = t71.
            DATA(t72) = strlen( t67 ).
            IF t68 < 0.
              t68 = t68 + t72.
              IF t68 < 0.
                t68 = 0.
              ENDIF.
            ENDIF.
            IF t68 > t72 OR t69 <= 0.
              CLEAR t66.
            ELSE.
              IF t69 > t72 - t68.
                t69 = t72 - t68.
              ENDIF.
              t66 = t67+t68(t69).
            ENDIF.
            t63 = t66.
            t49 = t63.
          ENDIF.
          DATA(t73) = t49.
          t48 = t73.
          t45 = t48.
          DATA(t74) = strlen( t45 ).
          t44 = t45.
          IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t44 TO UPPER CASE.
          ELSE.
            t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
          ENDIF.
          t43->load( ).
          APPEND t44 TO t43->items.
          t43->save( ).
        ENDDO.
        DATA(t75) = t32.
        t31 = t75.
        t29 = t30->fromarray( p0 = t31 ).
        t27 = t29.
      ELSE.
        DATA t76 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t76.
        t27 = t76.
      ENDIF.
      me->required_parameters = t27.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `requiredParameters`.
    ENDIF.
    DO.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = VALUE i( ).
      DATA(t79) = t17.
      t79->load( ).
      t78 = lines( t79->items ).
      DATA(t80) = 0.
      t77 = xsdbool( t78 > t80 ).
      IF t77 = abap_false.
        EXIT.
      ENDIF.
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t81.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t82.
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t83.
      DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t84.
      DATA t85 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t85.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t86.
      DATA t87 TYPE REF TO zif_lnt_node.
      CLEAR t87.
      DATA t88 TYPE REF TO zif_lnt_node.
      CLEAR t88.
      DATA(t89) = t17.
      DATA t90 TYPE REF TO object.
      CLEAR t90.
      t90 = t89->shift( ).
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      CLEAR t88.
      IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t91 ?= t90.
        DATA t92 TYPE REF TO object.
        CLEAR t92.
        t92 = t91->as_ref( ).
        t88 ?= t92.
      ELSE.
        t88 ?= t90.
      ENDIF.
      t87 = t88.
      DATA t93 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t93.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = t87.
      IF t95 IS INITIAL.
        t94 = abap_true.
      ENDIF.
      IF t94 = abap_true.
        DATA t96 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t96.
        t93 = t96.
      ELSE.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t97.
        DATA t98 TYPE REF TO zif_lnt_node.
        CLEAR t98.
        DATA(t99) = t87.
        t98 = t99.
        t97 = t98->get_first_token( ).
        t93 = t97.
      ENDIF.
      t86 = t93.
      t85 = t86.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      DATA(t101) = VALUE abap_bool( ).
      DATA(t102) = t85.
      IF t102 IS INITIAL.
        t101 = abap_true.
      ENDIF.
      IF t101 = abap_true.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t103.
        t100 = t103.
      ELSE.
        DATA(t104) = VALUE string( ).
        DATA t105 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t105.
        DATA t106 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t106.
        DATA(t107) = t85.
        t106 = t107.
        t105 = t106.
        DATA(t108) = VALUE string( ).
        DATA(t109) = t105.
        t108 = t109->str.
        t104 = t108.
        DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t110->has = abap_true.
        t110->value = t104.
        t100 = t110.
      ENDIF.
      t84 = t100.
      t83 = t84.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      DATA(t112) = VALUE abap_bool( ).
      DATA(t113) = t83.
      IF t113 IS INITIAL.
        t112 = abap_true.
      ELSEIF t113->has = abap_false.
        t112 = abap_true.
      ENDIF.
      IF t112 = abap_true.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
        t111 = t114.
      ELSE.
        DATA(t115) = VALUE string( ).
        DATA(t116) = VALUE string( ).
        DATA(t117) = t83.
        t116 = t117->value.
        DATA(t118) = strlen( t116 ).
        t115 = t116.
        IF t115 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t115 TO UPPER CASE.
        ELSE.
          t115 = zlnt_runtime_uppe_91169605024d=>full( t115 ).
        ENDIF.
        DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t119->has = abap_true.
        t119->value = t115.
        t111 = t119.
      ENDIF.
      t82 = t111.
      t81 = t82.
      DATA(t120) = VALUE abap_bool( ).
      DATA(t121) = t81.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t122.
      DATA(t123) = abap_true.
      IF t123 = abap_true.
        DATA(t124) = |EXPORTING|.
        DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t125->has = abap_true.
        t125->value = t124.
        t122 = t125.
      ELSE.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        t122 = t126.
      ENDIF.
      DATA(t127) = VALUE abap_bool( ).
      DATA(t128) = VALUE abap_bool( ).
      IF t121 IS BOUND.
        t127 = t121->has.
      ENDIF.
      IF t122 IS BOUND.
        t128 = t122->has.
      ENDIF.
      IF t127 = t128.
        IF t127 = abap_false.
          t120 = abap_true.
        ELSEIF t121->value = t122->value.
          t120 = abap_true.
        ENDIF.
      ENDIF.
      IF t120 = abap_true.
        DATA t129 TYPE REF TO zif_lnt_node.
        CLEAR t129.
        DATA t130 TYPE REF TO zif_lnt_node.
        CLEAR t130.
        DATA(t131) = t17.
        DATA t132 TYPE REF TO object.
        CLEAR t132.
        t132 = t131->shift( ).
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        CLEAR t130.
        IF t132 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t133 ?= t132.
          DATA t134 TYPE REF TO object.
          CLEAR t134.
          t134 = t133->as_ref( ).
          t130 ?= t134.
        ELSE.
          t130 ?= t132.
        ENDIF.
        t129 = t130.
        DATA(t135) = t2.
        DATA(t136) = t3.
        DATA t137 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t137.
        DATA(t138) = abap_true.
        IF t138 = abap_true.
          DATA(t139) = abap_false.
          DATA(t140) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t140->has = abap_true.
          t140->value = t139.
          t137 = t140.
        ELSE.
          DATA t141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t141.
          t137 = t141.
        ENDIF.
        me->check_exporting( i_node = t129 i_input_967e = t135 i_method = t136 i_errors = t137 ).
      ELSE.
        DATA(t142) = VALUE abap_bool( ).
        DATA(t143) = t81.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        DATA(t145) = abap_true.
        IF t145 = abap_true.
          DATA(t146) = |IMPORTING|.
          DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t147->has = abap_true.
          t147->value = t146.
          t144 = t147.
        ELSE.
          DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t148.
          t144 = t148.
        ENDIF.
        DATA(t149) = VALUE abap_bool( ).
        DATA(t150) = VALUE abap_bool( ).
        IF t143 IS BOUND.
          t149 = t143->has.
        ENDIF.
        IF t144 IS BOUND.
          t150 = t144->has.
        ENDIF.
        IF t149 = t150.
          IF t149 = abap_false.
            t142 = abap_true.
          ELSEIF t143->value = t144->value.
            t142 = abap_true.
          ENDIF.
        ENDIF.
        IF t142 = abap_true.
          DATA t151 TYPE REF TO zif_lnt_node.
          CLEAR t151.
          DATA t152 TYPE REF TO zif_lnt_node.
          CLEAR t152.
          DATA(t153) = t17.
          DATA t154 TYPE REF TO object.
          CLEAR t154.
          t154 = t153->shift( ).
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          CLEAR t152.
          IF t154 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t155 ?= t154.
            DATA t156 TYPE REF TO object.
            CLEAR t156.
            t156 = t155->as_ref( ).
            t152 ?= t156.
          ELSE.
            t152 ?= t154.
          ENDIF.
          t151 = t152.
          DATA(t157) = t2.
          DATA(t158) = t3.
          me->check_importing( i_node = t151 i_input_967e = t157 i_method = t158 ).
        ELSE.
          DATA(t159) = VALUE abap_bool( ).
          DATA(t160) = t81.
          DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t161.
          DATA(t162) = abap_true.
          IF t162 = abap_true.
            DATA(t163) = |CHANGING|.
            DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t164->has = abap_true.
            t164->value = t163.
            t161 = t164.
          ELSE.
            DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t165.
            t161 = t165.
          ENDIF.
          DATA(t166) = VALUE abap_bool( ).
          DATA(t167) = VALUE abap_bool( ).
          IF t160 IS BOUND.
            t166 = t160->has.
          ENDIF.
          IF t161 IS BOUND.
            t167 = t161->has.
          ENDIF.
          IF t166 = t167.
            IF t166 = abap_false.
              t159 = abap_true.
            ELSEIF t160->value = t161->value.
              t159 = abap_true.
            ENDIF.
          ENDIF.
          IF t159 = abap_true.
            DATA t168 TYPE REF TO zif_lnt_node.
            CLEAR t168.
            DATA t169 TYPE REF TO zif_lnt_node.
            CLEAR t169.
            DATA(t170) = t17.
            DATA t171 TYPE REF TO object.
            CLEAR t171.
            t171 = t170->shift( ).
            DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t172.
            CLEAR t169.
            IF t171 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t172 ?= t171.
              DATA t173 TYPE REF TO object.
              CLEAR t173.
              t173 = t172->as_ref( ).
              t169 ?= t173.
            ELSE.
              t169 ?= t171.
            ENDIF.
            t168 = t169.
            DATA(t174) = t2.
            DATA(t175) = t3.
            me->check_changing( i_node = t168 i_input_967e = t174 i_method = t175 ).
          ELSE.
            DATA(t176) = VALUE abap_bool( ).
            DATA(t177) = t81.
            DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t178.
            DATA(t179) = abap_true.
            IF t179 = abap_true.
              DATA(t180) = |RECEIVING|.
              DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t181->has = abap_true.
              t181->value = t180.
              t178 = t181.
            ELSE.
              DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t182.
              t178 = t182.
            ENDIF.
            DATA(t183) = VALUE abap_bool( ).
            DATA(t184) = VALUE abap_bool( ).
            IF t177 IS BOUND.
              t183 = t177->has.
            ENDIF.
            IF t178 IS BOUND.
              t184 = t178->has.
            ENDIF.
            IF t183 = t184.
              IF t183 = abap_false.
                t176 = abap_true.
              ELSEIF t177->value = t178->value.
                t176 = abap_true.
              ENDIF.
            ENDIF.
            IF t176 = abap_true.
              DATA t185 TYPE REF TO zif_lnt_node.
              CLEAR t185.
              DATA t186 TYPE REF TO zif_lnt_node.
              CLEAR t186.
              DATA(t187) = t17.
              DATA t188 TYPE REF TO object.
              CLEAR t188.
              t188 = t187->shift( ).
              DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t189.
              CLEAR t186.
              IF t188 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t189 ?= t188.
                DATA t190 TYPE REF TO object.
                CLEAR t190.
                t190 = t189->as_ref( ).
                t186 ?= t190.
              ELSE.
                t186 ?= t188.
              ENDIF.
              t185 = t186.
              DATA(t191) = t2.
              DATA(t192) = t3.
              me->check_receiving( i_node = t185 i_input_967e = t191 i_method = t192 ).
            ELSE.
              DATA(t193) = VALUE abap_bool( ).
              DATA(t194) = t81.
              DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t195.
              DATA(t196) = abap_true.
              IF t196 = abap_true.
                DATA(t197) = |EXCEPTIONS|.
                DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t198->has = abap_true.
                t198->value = t197.
                t195 = t198.
              ELSE.
                DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t199.
                t195 = t199.
              ENDIF.
              DATA(t200) = VALUE abap_bool( ).
              DATA(t201) = VALUE abap_bool( ).
              IF t194 IS BOUND.
                t200 = t194->has.
              ENDIF.
              IF t195 IS BOUND.
                t201 = t195->has.
              ENDIF.
              IF t200 = t201.
                IF t200 = abap_false.
                  t193 = abap_true.
                ELSEIF t194->value = t195->value.
                  t193 = abap_true.
                ENDIF.
              ENDIF.
              IF t193 = abap_true.
                DATA t202 TYPE REF TO zif_lnt_union_734b3529.
                CLEAR t202.
                DATA t203 TYPE REF TO zif_lnt_union_734b3529.
                CLEAR t203.
                DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t204.
                DATA t205 TYPE REF TO zif_lnt_node.
                CLEAR t205.
                DATA t206 TYPE REF TO zif_lnt_node.
                CLEAR t206.
                DATA(t207) = t17.
                DATA t208 TYPE REF TO object.
                CLEAR t208.
                t208 = t207->shift( ).
                DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t209.
                CLEAR t206.
                IF t208 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t209 ?= t208.
                  DATA t210 TYPE REF TO object.
                  CLEAR t210.
                  t210 = t209->as_ref( ).
                  t206 ?= t210.
                ELSE.
                  t206 ?= t208.
                ENDIF.
                t205 = t206.
                CLEAR t204.
                IF t205 IS BOUND.
                  DATA t211 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t211.
                  DATA t212 TYPE REF TO object.
                  CLEAR t212.
                  CLEAR t211.
                  t212 = t205.
                  TRY.
                      t204 ?= t212.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t204 IS NOT BOUND.
                    TRY.
                        t211 ?= t205.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t211 IS BOUND.
                      t204 = t211->source( ).
                    ENDIF.
                    IF t204 IS NOT BOUND.
                      CREATE OBJECT t204.
                      t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t204->oval = t205.
                    ENDIF.
                  ENDIF.
                ENDIF.
                DATA t213 TYPE REF TO object.
                CLEAR t213.
                t213 = t204->as_ref( ).
                t203 ?= t213.
                t202 = t203.
                DATA t214 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t214.
                DATA t215 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t215.
                DATA(t216) = t202.
                DATA(t217) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
                t215 = t216->find_first_expression( i_type_9913 = t217 ).
                t214 = t215.
                DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t218.
                DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t219.
                DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t220.
                DATA t221 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t221.
                DATA(t222) = t214.
                t221 = t222.
                DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t223.
                DATA(t224) = VALUE abap_bool( ).
                DATA(t225) = t221.
                IF t225 IS INITIAL.
                  t224 = abap_true.
                ENDIF.
                IF t224 = abap_true.
                  DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t226.
                  t223 = t226.
                ELSE.
                  DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t227.
                  DATA t228 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t228.
                  DATA(t229) = t221.
                  t228 = t229.
                  DATA(t230) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
                  t227 = t228->find_all_expressions( i_type_9913 = t230 ).
                  t223 = t227.
                ENDIF.
                t220 = t223.
                t219 = t220.
                DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t231.
                DATA(t232) = VALUE abap_bool( ).
                DATA(t233) = t219.
                t232 = xsdbool( t233 IS BOUND ).
                IF t232 = abap_true.
                  DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t234.
                  DATA(t235) = t219.
                  t234 = t235.
                  t231 = t234.
                ELSE.
                  DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t236.
                  CREATE OBJECT t236.
                  t231 = t236.
                ENDIF.
                t218 = t231.
                DATA t237 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t237.
                DATA t238 TYPE REF TO object.
                CLEAR t238.
                DATA(t239) = VALUE i( ).
                DO.
                  t218->load( ).
                  IF t239 >= lines( t218->items ).
                    EXIT.
                  ENDIF.
                  CLEAR t238.
                  READ TABLE t218->items INDEX t239 + 1 INTO t238.
                  t239 = t239 + 1.
                  DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t240.
                  CLEAR t237.
                  IF t238 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t240 ?= t238.
                    DATA t241 TYPE REF TO object.
                    CLEAR t241.
                    t241 = t240->as_ref( ).
                    t237 ?= t241.
                  ELSE.
                    t237 ?= t238.
                  ENDIF.
                  DATA t242 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t242.
                  DATA(t243) = t237.
                  DATA(t244) = t2.
                  DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t245.
                  DATA(t246) = abap_true.
                  IF t246 = abap_true.
                    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t247.
                    DATA(t248) = |Read From|.
                    CLEAR t247.
                    CREATE OBJECT t247.
                    t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                    t247->sval = t248.
                    t245 = t247.
                  ELSE.
                    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t249.
                    t245 = t249.
                  ENDIF.
                  DATA t250 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t250.
                  t242 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t243 i_input_967e = t244 i_ref_type = t245 i_allow_generic_deference = t250 ).
                ENDDO.
              ELSE.
                DATA t251 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
                CLEAR t251.
                DATA t252 TYPE REF TO zcx_lnt_assert_error.
                CLEAR t252.
                DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t253.
                DATA(t254) = abap_true.
                IF t254 = abap_true.
                  DATA(t255) = VALUE string( ).
                  DATA(t256) = |MethodParameters, unexpected token, |.
                  DATA(t257) = VALUE string( ).
                  DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t258.
                  DATA(t259) = t81.
                  t258 = t259.
                  DATA(t260) = VALUE string( ).
                  DATA(t261) = VALUE abap_bool( ).
                  DATA(t262) = t258.
                  IF t262 IS INITIAL.
                    t261 = abap_true.
                  ELSEIF t262->has = abap_false.
                    t261 = abap_true.
                  ENDIF.
                  IF t261 = abap_true.
                    DATA(t263) = |undefined|.
                    t260 = t263.
                  ELSE.
                    DATA(t264) = VALUE string( ).
                    DATA(t265) = t258.
                    t264 = t265->value.
                    t260 = t264.
                  ENDIF.
                  t257 = t260.
                  DATA(t266) = strlen( t256 ).
                  t255 = |{ t256 }{ t257 }|.
                  DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t267->has = abap_true.
                  t267->value = t255.
                  t253 = t267.
                ELSE.
                  DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t268.
                  t253 = t268.
                ENDIF.
                t252 = NEW zcx_lnt_assert_error( i_message_26cb = t253 ).
                t251 = NEW #( ).
                t251->payload = t252.
                CLEAR t251->source_value.
                IF t252 IS BOUND.
                  DATA t269 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t269.
                  DATA t270 TYPE REF TO object.
                  CLEAR t270.
                  CLEAR t269.
                  t270 = t252.
                  TRY.
                      t251->source_value ?= t270.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t251->source_value IS NOT BOUND.
                    TRY.
                        t269 ?= t252.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t269 IS BOUND.
                      t251->source_value = t269->source( ).
                    ENDIF.
                    IF t251->source_value IS NOT BOUND.
                      CREATE OBJECT t251->source_value.
                      t251->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t251->source_value->oval = t252.
                    ENDIF.
                  ENDIF.
                ENDIF.
                RAISE EXCEPTION t251.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t271) = t1.
    DATA(t272) = t2.
    me->report_errors( i_node = t271 i_input_967e = t272 ).
  ENDMETHOD.

  METHOD check_receiving.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t5.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t3.
    t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_void_type ).
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_void_type.
      DATA(t9) = t3.
      DATA t10 TYPE REF TO object.
      t10 = t9.
      t8 ?= t10.
      t5 = t8.
    ELSE.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t14 TYPE REF TO zif_lnt_method_parameters.
      DATA t15 TYPE REF TO zif_lnt_method_definition.
      DATA(t16) = t3.
      t15 ?= t16.
      t14 = t15->get_parameters( ).
      t13 = t14->get_returning( ).
      t12 = t13.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t12.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      IF t18 = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t20.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zcl_lnt_abstract_type.
        DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t24) = t12.
        t23 = t24.
        t22 = t23.
        DATA t25 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t26) = t22.
        t25 = t26->type_cba0.
        t21 = t25.
        t17 = t21.
      ENDIF.
      t11 = t17.
      t5 = t11.
    ENDIF.
    t4 = t5.
    DATA(t27) = VALUE abap_bool( ).
    DATA t28 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t29) = t4.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    t30 = t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = t28.
    IF t33 IS INITIAL.
      t32 = abap_true.
    ENDIF.
    t27 = t32.
    IF t27 = abap_true.
      DATA t34 TYPE string.
      DATA(t35) = |Method does not have a returning parameter|.
      t34 = t35.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t37) = t2.
      t36 = t37->issues.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      DATA(t39) = t2.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t41) = t1.
      t40 = t41->get_first_token( ).
      DATA(t42) = t34.
      DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t43.
      t38 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t39 i_token = t40 i_message_26cb = t42 i_fix = t43 ).
      t36->load( ).
      APPEND t38 TO t36->items.
      t36->save( ).
      RETURN.
    ELSE.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA(t46) = t1.
      t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_expression_node ).
      t44 = xsdbool( t45 = abap_false ).
      IF t44 = abap_true.
        DATA t47 TYPE string.
        DATA(t48) = |checkReceiving, not an expression node|.
        t47 = t48.
        DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t50) = t2.
        t49 = t50->issues.
        DATA t51 TYPE REF TO zcl_lnt_issue.
        DATA(t52) = t2.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t54) = t1.
        t53 = t54->get_first_token( ).
        DATA(t55) = t47.
        DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t56.
        t51 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t52 i_token = t53 i_message_26cb = t55 i_fix = t56 ).
        t49->load( ).
        APPEND t51 TO t49->items.
        t49->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    DATA t58 TYPE REF TO zcl_lnt_expression_node.
    DATA t59 TYPE REF TO zcl_lnt_expression_node.
    DATA(t60) = t1.
    DATA t61 TYPE REF TO object.
    t61 = t60.
    t59 ?= t61.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t58 = t59->find_direct_expression( i_type_9913 = t62 ).
    t57 = t58.
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t63.
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t64.
    DATA t65 TYPE REF TO zcl_lnt_expression_node.
    DATA(t66) = t57.
    t65 = t66.
    DATA t67 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t67.
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = t65.
    IF t69 IS INITIAL.
      t68 = abap_true.
    ENDIF.
    IF t68 = abap_true.
      DATA t70 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t70.
      t67 = t70.
    ELSE.
      DATA t71 TYPE REF TO zcl_lnt_expression_node.
      DATA t72 TYPE REF TO zcl_lnt_expression_node.
      DATA(t73) = t65.
      t72 = t73.
      DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t71 = t72->find_direct_expression( i_type_9913 = t74 ).
      t67 = t71.
    ENDIF.
    t64 = t67.
    t63 = t64.
    DATA t75 TYPE abap_bool.
    DATA(t76) = t63.
    t75 = xsdbool( t76 IS BOUND ).
    IF t75 = abap_true.
      DATA t77 TYPE REF TO zcl_lnt_expression_node.
      DATA(t78) = t63.
      t77 = t78.
      DATA(t79) = t2.
      DATA t80 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t80.
      DATA(t81) = abap_true.
      IF t81 = abap_true.
        DATA t82 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t83) = t4.
        t82 = t83.
        t80 = t82.
      ELSE.
        DATA t84 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t84.
        t80 = t84.
      ENDIF.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t77 i_input_967e = t79 i_type_9913 = t80 ).
    ELSE.
      DATA t85 TYPE abap_bool.
      DATA(t86) = t57.
      t85 = xsdbool( t86 IS BOUND ).
      IF t85 = abap_true.
        DATA t87 TYPE REF TO zcl_lnt_abstract_type.
        DATA t88 TYPE REF TO zcl_lnt_abstract_type.
        DATA t89 TYPE REF TO zcl_lnt_expression_node.
        DATA(t90) = t57.
        t89 = t90.
        DATA(t91) = t2.
        t88 = zcl_lnt_sy_target=>run_syntax( i_node = t89 i_input_967e = t91 ).
        t87 = t88.
        DATA t92 TYPE abap_bool.
        DATA t93 TYPE abap_bool.
        DATA(t94) = t87.
        t93 = xsdbool( t94 IS BOUND ).
        t92 = t93.
        IF t93 = abap_true.
          DATA(t95) = VALUE abap_bool( ).
          DATA(t96) = VALUE abap_bool( ).
          DATA t97 TYPE REF TO zcl_lnt_type_utils.
          DATA t98 TYPE REF TO zcl_lnt_current_scope.
          DATA(t99) = t2.
          t98 = t99->scope.
          t97 = NEW zcl_lnt_type_utils( i_scope = t98 ).
          DATA t100 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t100.
          DATA(t101) = abap_true.
          IF t101 = abap_true.
            DATA t102 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t103) = t4.
            t102 = t103.
            t100 = t102.
          ELSE.
            DATA t104 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t104.
            t100 = t104.
          ENDIF.
          DATA t105 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t105.
          DATA(t106) = abap_true.
          IF t106 = abap_true.
            DATA t107 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t108) = t87.
            t107 = t108.
            t105 = t107.
          ELSE.
            DATA t109 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t109.
            t105 = t109.
          ENDIF.
          t96 = t97->is_assignable( i_source_75cf = t100 i_target_5f8a = t105 ).
          DATA(t110) = abap_false.
          t95 = xsdbool( t96 = t110 ).
          t92 = t95.
        ENDIF.
        IF t92 = abap_true.
          DATA t111 TYPE string.
          DATA(t112) = |Method returning value not type compatible|.
          t111 = t112.
          DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t114) = t2.
          t113 = t114->issues.
          DATA t115 TYPE REF TO zcl_lnt_issue.
          DATA(t116) = t2.
          DATA t117 TYPE REF TO zcl_lnt_abstract_token.
          DATA t118 TYPE REF TO zcl_lnt_expression_node.
          DATA(t119) = t1.
          DATA t120 TYPE REF TO object.
          t120 = t119.
          t118 ?= t120.
          t117 = t118->get_first_token( ).
          DATA(t121) = t111.
          DATA t122 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t122.
          t115 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t116 i_token = t117 i_message_26cb = t121 i_fix = t122 ).
          t113->load( ).
          APPEND t115 TO t113->items.
          t113->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD check_importing.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_node.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = t1.
      t5 = t7.
    ELSE.
      DATA t8 TYPE REF TO zif_lnt_node.
      CLEAR t8.
      t5 = t8.
    ENDIF.
    DATA(t9) = t2.
    t4 = me->parameter_list_t( i_node = t5 i_input_967e = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_ilist_item_t.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t16.
      t15 = t16.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t3.
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_void_type ).
      IF t17 = abap_true.
        DATA t19 TYPE REF TO zcl_lnt_void_type.
        DATA(t20) = t3.
        DATA t21 TYPE REF TO object.
        t21 = t20.
        t19 ?= t21.
        t15 = t19.
      ELSE.
        DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t22.
        DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t23.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t26 TYPE REF TO zif_lnt_method_parameters.
        DATA t27 TYPE REF TO zif_lnt_method_definition.
        DATA(t28) = t3.
        t27 ?= t28.
        t26 = t27->get_parameters( ).
        t25 = t26->get_exporting( ).
        t24 = t25.
        DATA t29 TYPE i.
        DATA t30 TYPE i.
        DATA(t31) = t24.
        t31->load( ).
        t30 = lines( t31->items ).
        t29 = t30.
        DATA t32 TYPE i.
        DATA(t33) = 0.
        t32 = t33.
        DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t35.
        t34 = t35.
        DO.
          DATA t36 TYPE abap_bool.
          DATA(t37) = t32.
          DATA(t38) = t29.
          t36 = xsdbool( t37 < t38 ).
          IF t36 = abap_false.
            EXIT.
          ENDIF.
          DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t39.
          DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t40.
          DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t41.
          DATA(t42) = t24.
          DATA(t43) = t32.
          DATA t44 TYPE REF TO object.
          t44 = t42->get( p0 = t43 ).
          DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t45.
          CLEAR t41.
          IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t45 ?= t44.
            DATA t46 TYPE REF TO object.
            t46 = t45->as_ref( ).
            t41 ?= t46.
          ELSE.
            t41 ?= t44.
          ENDIF.
          t40 = t41.
          t39 = t40.
          DATA(t47) = VALUE abap_bool( ).
          DATA(t48) = VALUE string( ).
          DATA(t49) = VALUE string( ).
          DATA t50 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t51) = t39.
          t50 = t51.
          DATA(t52) = VALUE string( ).
          DATA t53 TYPE string.
          DATA t54 TYPE string.
          DATA t55 TYPE REF TO zcl_lnt_abstract_token.
          DATA t56 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t57) = t50.
          t56 = t57->token.
          t55 = t56.
          DATA t58 TYPE string.
          DATA(t59) = t55.
          t58 = t59->str.
          t54 = t58.
          t53 = t54.
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE string( ).
          DATA(t62) = t53.
          DATA(t63) = 0.
          DATA(t64) = 1.
          DATA(t65) = strlen( t62 ).
          IF t63 < 0.
            t63 = t63 + t65.
            IF t63 < 0.
              t63 = 0.
            ENDIF.
          ENDIF.
          IF t63 > t65 OR t64 <= 0.
            CLEAR t61.
          ELSE.
            IF t64 > t65 - t63.
              t64 = t65 - t63.
            ENDIF.
            t61 = t62+t63(t64).
          ENDIF.
          DATA(t66) = |!|.
          t60 = xsdbool( t61 = t66 ).
          IF t60 = abap_true.
            DATA(t67) = VALUE string( ).
            DATA t68 TYPE string.
            DATA(t69) = t53.
            t68 = t69.
            DATA(t70) = VALUE string( ).
            DATA(t71) = t68.
            DATA(t72) = 1.
            DATA t73 TYPE i.
            DATA(t74) = t68.
            DATA(t75) = strlen( t74 ).
            t73 = t75.
            DATA(t76) = strlen( t71 ).
            IF t72 < 0.
              t72 = t72 + t76.
              IF t72 < 0.
                t72 = 0.
              ENDIF.
            ENDIF.
            IF t72 > t76 OR t73 <= 0.
              CLEAR t70.
            ELSE.
              IF t73 > t76 - t72.
                t73 = t76 - t72.
              ENDIF.
              t70 = t71+t72(t73).
            ENDIF.
            t67 = t70.
            t53 = t67.
          ENDIF.
          DATA(t77) = t53.
          t52 = t77.
          t49 = t52.
          DATA(t78) = strlen( t49 ).
          t48 = t49.
          IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t48 TO UPPER CASE.
          ELSE.
            t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
          ENDIF.
          DATA t79 TYPE string.
          DATA(t80) = t10.
          t79 = t80->name.
          t47 = xsdbool( t48 = t79 ).
          IF t47 = abap_true.
            DATA t81 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t81.
            DATA(t82) = abap_true.
            IF t82 = abap_true.
              DATA(t83) = t39.
              t81 = t83.
            ELSE.
              DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t84.
              t81 = t84.
            ENDIF.
            t34 = t81.
            EXIT.
          ENDIF.
          DATA t85 TYPE i.
          DATA(t86) = t32.
          DATA(t87) = 1.
          t85 = t86 + t87.
          t32 = t85.
        ENDDO.
        DATA(t88) = t34.
        t23 = t88.
        t22 = t23.
        DATA(t89) = VALUE abap_bool( ).
        DATA t90 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t91) = t22.
        t90 = t91.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        t92 = t93.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = t90.
        IF t95 IS INITIAL.
          t94 = abap_true.
        ENDIF.
        t89 = t94.
        IF t89 = abap_true.
          DATA t96 TYPE string.
          DATA t97 TYPE string.
          DATA t98 TYPE string.
          DATA(t99) = |Method exporting parameter "|.
          DATA t100 TYPE string.
          DATA(t101) = t10.
          t100 = t101->name.
          DATA(t102) = strlen( t99 ).
          t98 = |{ t99 }{ t100 }|.
          DATA(t103) = |" does not exist|.
          DATA(t104) = strlen( t98 ).
          t97 = |{ t98 }{ t103 }|.
          t96 = t97.
          DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t106) = t2.
          t105 = t106->issues.
          DATA t107 TYPE REF TO zcl_lnt_issue.
          DATA(t108) = t2.
          DATA t109 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t110) = t1.
          t109 = t110->get_first_token( ).
          DATA(t111) = t96.
          DATA t112 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t112.
          t107 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t108 i_token = t109 i_message_26cb = t111 i_fix = t112 ).
          t105->load( ).
          APPEND t107 TO t105->items.
          t105->save( ).
          RETURN.
        ENDIF.
        DATA t113 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t113.
        DATA(t114) = abap_true.
        IF t114 = abap_true.
          DATA t115 TYPE REF TO zcl_lnt_abstract_type.
          DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t117 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t118) = t22.
          t117 = t118.
          t116 = t117.
          DATA t119 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t120) = t116.
          t119 = t120->type_cba0.
          t115 = t119.
          t113 = t115.
        ELSE.
          DATA t121 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t121.
          t113 = t121.
        ENDIF.
        t15 = t113.
      ENDIF.
      DATA t122 TYPE REF TO zcl_lnt_expression_node.
      DATA t123 TYPE REF TO zcl_lnt_expression_node.
      DATA t124 TYPE REF TO zcl_lnt_expression_node.
      DATA(t125) = t10.
      t124 = t125->target.
      DATA(t126) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t123 = t124->find_direct_expression( i_type_9913 = t126 ).
      t122 = t123.
      DATA t127 TYPE abap_bool.
      DATA(t128) = t122.
      t127 = xsdbool( t128 IS BOUND ).
      IF t127 = abap_true.
        DATA t129 TYPE REF TO zcl_lnt_expression_node.
        DATA(t130) = t122.
        t129 = t130.
        DATA(t131) = t2.
        DATA t132 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t132.
        DATA(t133) = abap_true.
        IF t133 = abap_true.
          DATA t134 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t135) = t15.
          t134 = t135.
          t132 = t134.
        ELSE.
          DATA t136 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t136.
          t132 = t136.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t129 i_input_967e = t131 i_type_9913 = t132 ).
      ELSE.
        DATA(t137) = VALUE abap_bool( ).
        DATA t138 TYPE REF TO zcl_lnt_abstract_type.
        DATA t139 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t140) = t10.
        t139 = t140->target_type.
        t138 = t139.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        t141 = t142.
        DATA(t143) = VALUE abap_bool( ).
        DATA(t144) = t138.
        IF t144 IS INITIAL.
          t143 = abap_true.
        ENDIF.
        t137 = t143.
        IF t137 = abap_true.
          DATA t145 TYPE string.
          DATA(t146) = |Could not determine target type|.
          t145 = t146.
          DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t148) = t2.
          t147 = t148->issues.
          DATA t149 TYPE REF TO zcl_lnt_issue.
          DATA(t150) = t2.
          DATA t151 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t152) = t1.
          t151 = t152->get_first_token( ).
          DATA(t153) = t145.
          DATA t154 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t154.
          t149 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t150 i_token = t151 i_message_26cb = t153 i_fix = t154 ).
          t147->load( ).
          APPEND t149 TO t147->items.
          t147->save( ).
          RETURN.
        ELSE.
          DATA t155 TYPE abap_bool.
          DATA t156 TYPE abap_bool.
          DATA t157 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t158) = t10.
          t157 = t158->target_type.
          t156 = xsdbool( t157 IS BOUND ).
          t155 = t156.
          IF t156 = abap_true.
            DATA(t159) = VALUE abap_bool( ).
            DATA(t160) = VALUE abap_bool( ).
            DATA t161 TYPE REF TO zcl_lnt_type_utils.
            DATA t162 TYPE REF TO zcl_lnt_current_scope.
            DATA(t163) = t2.
            t162 = t163->scope.
            t161 = NEW zcl_lnt_type_utils( i_scope = t162 ).
            DATA t164 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t164.
            DATA(t165) = abap_true.
            IF t165 = abap_true.
              DATA t166 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t167) = t15.
              t166 = t167.
              t164 = t166.
            ELSE.
              DATA t168 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t168.
              t164 = t168.
            ENDIF.
            DATA t169 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t169.
            DATA(t170) = abap_true.
            IF t170 = abap_true.
              DATA t171 TYPE REF TO zcl_lnt_abstract_type.
              DATA t172 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t173) = t10.
              t172 = t173->target_type.
              t171 = t172.
              t169 = t171.
            ELSE.
              DATA t174 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t174.
              t169 = t174.
            ENDIF.
            DATA t175 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t175.
            t160 = t161->is_assignable_strict( i_source_75cf = t164 i_target_5f8a = t169 i_node = t175 ).
            DATA(t176) = abap_false.
            t159 = xsdbool( t160 = t176 ).
            t155 = t159.
          ENDIF.
          IF t155 = abap_true.
            DATA t177 TYPE string.
            DATA t178 TYPE string.
            DATA(t179) = |Method parameter type not compatible, |.
            DATA t180 TYPE string.
            DATA(t181) = t10.
            t180 = t181->name.
            DATA(t182) = strlen( t179 ).
            t178 = |{ t179 }{ t180 }|.
            t177 = t178.
            DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t184) = t2.
            t183 = t184->issues.
            DATA t185 TYPE REF TO zcl_lnt_issue.
            DATA(t186) = t2.
            DATA t187 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t188) = t1.
            t187 = t188->get_first_token( ).
            DATA(t189) = t177.
            DATA t190 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t190.
            t185 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t186 i_token = t187 i_message_26cb = t189 i_fix = t190 ).
            t183->load( ).
            APPEND t185 TO t183->items.
            t183->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_changing.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_node.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = t1.
      t5 = t7.
    ELSE.
      DATA t8 TYPE REF TO zif_lnt_node.
      CLEAR t8.
      t5 = t8.
    ENDIF.
    DATA(t9) = t2.
    t4 = me->parameter_list_t( i_node = t5 i_input_967e = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_ilist_item_t.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t19) = t10.
      t18 = t19->target.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t17 = t18->find_first_expression( i_type_9913 = t20 ).
      t16 = t17.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      t21 = t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t16.
      IF t25 IS INITIAL.
        t24 = abap_true.
      ENDIF.
      t23 = xsdbool( t24 = abap_false ).
      t15 = t23.
      IF t15 = abap_true.
        DATA t26 TYPE string.
        DATA(t27) = |CHANGING cannot be inlined|.
        t26 = t27.
        DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t29) = t2.
        t28 = t29->issues.
        DATA t30 TYPE REF TO zcl_lnt_issue.
        DATA(t31) = t2.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t33) = t1.
        t32 = t33->get_first_token( ).
        DATA(t34) = t26.
        DATA t35 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t35.
        t30 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t31 i_token = t32 i_message_26cb = t34 i_fix = t35 ).
        t28->load( ).
        APPEND t30 TO t28->items.
        t28->save( ).
        RETURN.
      ENDIF.
      DATA t36 TYPE REF TO zcl_lnt_abstract_type.
      DATA t37 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t37.
      t36 = t37.
      DATA t38 TYPE abap_bool.
      DATA(t39) = t3.
      t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_void_type ).
      IF t38 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_void_type.
        DATA(t41) = t3.
        DATA t42 TYPE REF TO object.
        t42 = t41.
        t40 ?= t42.
        t36 = t40.
      ELSE.
        DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t47 TYPE REF TO zif_lnt_method_parameters.
        DATA t48 TYPE REF TO zif_lnt_method_definition.
        DATA(t49) = t3.
        t48 ?= t49.
        t47 = t48->get_parameters( ).
        t46 = t47->get_changing( ).
        t45 = t46.
        DATA t50 TYPE i.
        DATA t51 TYPE i.
        DATA(t52) = t45.
        t52->load( ).
        t51 = lines( t52->items ).
        t50 = t51.
        DATA t53 TYPE i.
        DATA(t54) = 0.
        t53 = t54.
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t56.
        t55 = t56.
        DO.
          DATA t57 TYPE abap_bool.
          DATA(t58) = t53.
          DATA(t59) = t50.
          t57 = xsdbool( t58 < t59 ).
          IF t57 = abap_false.
            EXIT.
          ENDIF.
          DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t60.
          DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t61.
          DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t62.
          DATA(t63) = t45.
          DATA(t64) = t53.
          DATA t65 TYPE REF TO object.
          t65 = t63->get( p0 = t64 ).
          DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t66.
          CLEAR t62.
          IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t66 ?= t65.
            DATA t67 TYPE REF TO object.
            t67 = t66->as_ref( ).
            t62 ?= t67.
          ELSE.
            t62 ?= t65.
          ENDIF.
          t61 = t62.
          t60 = t61.
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = VALUE string( ).
          DATA(t70) = VALUE string( ).
          DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t72) = t60.
          t71 = t72.
          DATA(t73) = VALUE string( ).
          DATA t74 TYPE string.
          DATA t75 TYPE string.
          DATA t76 TYPE REF TO zcl_lnt_abstract_token.
          DATA t77 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t78) = t71.
          t77 = t78->token.
          t76 = t77.
          DATA t79 TYPE string.
          DATA(t80) = t76.
          t79 = t80->str.
          t75 = t79.
          t74 = t75.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = VALUE string( ).
          DATA(t83) = t74.
          DATA(t84) = 0.
          DATA(t85) = 1.
          DATA(t86) = strlen( t83 ).
          IF t84 < 0.
            t84 = t84 + t86.
            IF t84 < 0.
              t84 = 0.
            ENDIF.
          ENDIF.
          IF t84 > t86 OR t85 <= 0.
            CLEAR t82.
          ELSE.
            IF t85 > t86 - t84.
              t85 = t86 - t84.
            ENDIF.
            t82 = t83+t84(t85).
          ENDIF.
          DATA(t87) = |!|.
          t81 = xsdbool( t82 = t87 ).
          IF t81 = abap_true.
            DATA(t88) = VALUE string( ).
            DATA t89 TYPE string.
            DATA(t90) = t74.
            t89 = t90.
            DATA(t91) = VALUE string( ).
            DATA(t92) = t89.
            DATA(t93) = 1.
            DATA t94 TYPE i.
            DATA(t95) = t89.
            DATA(t96) = strlen( t95 ).
            t94 = t96.
            DATA(t97) = strlen( t92 ).
            IF t93 < 0.
              t93 = t93 + t97.
              IF t93 < 0.
                t93 = 0.
              ENDIF.
            ENDIF.
            IF t93 > t97 OR t94 <= 0.
              CLEAR t91.
            ELSE.
              IF t94 > t97 - t93.
                t94 = t97 - t93.
              ENDIF.
              t91 = t92+t93(t94).
            ENDIF.
            t88 = t91.
            t74 = t88.
          ENDIF.
          DATA(t98) = t74.
          t73 = t98.
          t70 = t73.
          DATA(t99) = strlen( t70 ).
          t69 = t70.
          IF t69 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t69 TO UPPER CASE.
          ELSE.
            t69 = zlnt_runtime_uppe_91169605024d=>full( t69 ).
          ENDIF.
          DATA t100 TYPE string.
          DATA(t101) = t10.
          t100 = t101->name.
          t68 = xsdbool( t69 = t100 ).
          IF t68 = abap_true.
            DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t102.
            DATA(t103) = abap_true.
            IF t103 = abap_true.
              DATA(t104) = t60.
              t102 = t104.
            ELSE.
              DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t105.
              t102 = t105.
            ENDIF.
            t55 = t102.
            EXIT.
          ENDIF.
          DATA t106 TYPE i.
          DATA(t107) = t53.
          DATA(t108) = 1.
          t106 = t107 + t108.
          t53 = t106.
        ENDDO.
        DATA(t109) = t55.
        t44 = t109.
        t43 = t44.
        DATA(t110) = VALUE abap_bool( ).
        DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t112) = t43.
        t111 = t112.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        t113 = t114.
        DATA(t115) = VALUE abap_bool( ).
        DATA(t116) = t111.
        IF t116 IS INITIAL.
          t115 = abap_true.
        ENDIF.
        t110 = t115.
        IF t110 = abap_true.
          DATA t117 TYPE string.
          DATA t118 TYPE string.
          DATA t119 TYPE string.
          DATA(t120) = |Method changing parameter "|.
          DATA t121 TYPE string.
          DATA(t122) = t10.
          t121 = t122->name.
          DATA(t123) = strlen( t120 ).
          t119 = |{ t120 }{ t121 }|.
          DATA(t124) = |" does not exist|.
          DATA(t125) = strlen( t119 ).
          t118 = |{ t119 }{ t124 }|.
          t117 = t118.
          DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t127) = t2.
          t126 = t127->issues.
          DATA t128 TYPE REF TO zcl_lnt_issue.
          DATA(t129) = t2.
          DATA t130 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t131) = t1.
          t130 = t131->get_first_token( ).
          DATA(t132) = t117.
          DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t133.
          t128 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t129 i_token = t130 i_message_26cb = t132 i_fix = t133 ).
          t126->load( ).
          APPEND t128 TO t126->items.
          t126->save( ).
          RETURN.
        ENDIF.
        DATA t134 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t134.
        DATA(t135) = abap_true.
        IF t135 = abap_true.
          DATA t136 TYPE REF TO zcl_lnt_abstract_type.
          DATA t137 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t138 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t139) = t43.
          t138 = t139.
          t137 = t138.
          DATA t140 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t141) = t137.
          t140 = t141->type_cba0.
          t136 = t140.
          t134 = t136.
        ELSE.
          DATA t142 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t142.
          t134 = t142.
        ENDIF.
        t36 = t134.
      ENDIF.
      DATA t143 TYPE abap_bool.
      DATA t144 TYPE abap_bool.
      DATA t145 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t146) = t10.
      t145 = t146->target_type.
      t144 = xsdbool( t145 IS BOUND ).
      t143 = t144.
      IF t144 = abap_true.
        DATA(t147) = VALUE abap_bool( ).
        DATA(t148) = VALUE abap_bool( ).
        DATA t149 TYPE REF TO zcl_lnt_type_utils.
        DATA t150 TYPE REF TO zcl_lnt_current_scope.
        DATA(t151) = t2.
        t150 = t151->scope.
        t149 = NEW zcl_lnt_type_utils( i_scope = t150 ).
        DATA t152 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t152.
        DATA(t153) = abap_true.
        IF t153 = abap_true.
          DATA t154 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t155) = t36.
          t154 = t155.
          t152 = t154.
        ELSE.
          DATA t156 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t156.
          t152 = t156.
        ENDIF.
        DATA t157 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t157.
        DATA(t158) = abap_true.
        IF t158 = abap_true.
          DATA t159 TYPE REF TO zcl_lnt_abstract_type.
          DATA t160 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t161) = t10.
          t160 = t161->target_type.
          t159 = t160.
          t157 = t159.
        ELSE.
          DATA t162 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t162.
          t157 = t162.
        ENDIF.
        DATA t163 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t163.
        t148 = t149->is_assignable_strict( i_source_75cf = t152 i_target_5f8a = t157 i_node = t163 ).
        DATA(t164) = abap_false.
        t147 = xsdbool( t148 = t164 ).
        t143 = t147.
      ENDIF.
      IF t143 = abap_true.
        DATA t165 TYPE string.
        DATA t166 TYPE string.
        DATA(t167) = |Method parameter type not compatible, |.
        DATA t168 TYPE string.
        DATA(t169) = t10.
        t168 = t169->name.
        DATA(t170) = strlen( t167 ).
        t166 = |{ t167 }{ t168 }|.
        t165 = t166.
        DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t172) = t2.
        t171 = t172->issues.
        DATA t173 TYPE REF TO zcl_lnt_issue.
        DATA(t174) = t2.
        DATA t175 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t176) = t1.
        t175 = t176->get_first_token( ).
        DATA(t177) = t165.
        DATA t178 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t178.
        t173 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t174 i_token = t175 i_message_26cb = t177 i_fix = t178 ).
        t171->load( ).
        APPEND t173 TO t171->items.
        t171->save( ).
        RETURN.
      ENDIF.
      DATA t179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t179.
      DATA t180 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t181) = me->required_parameters.
      t180 = t181.
      DATA t182 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t182.
      DATA(t183) = VALUE abap_bool( ).
      DATA(t184) = t180.
      IF t184 IS INITIAL.
        t183 = abap_true.
      ENDIF.
      IF t183 = abap_true.
        DATA t185 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t185.
        t182 = t185.
      ELSE.
        DATA t186 TYPE abap_bool.
        DATA t187 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t188) = t180.
        t187 = t188.
        DATA t189 TYPE string.
        DATA(t190) = t10.
        t189 = t190->name.
        t186 = t187->delete( p0 = t189 ).
        DATA(t191) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t191->has = abap_true.
        t191->value = t186.
        t182 = t191.
      ENDIF.
      t179 = t182.
    ENDDO.
  ENDMETHOD.

  METHOD check_exporting.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA(t4) = i_errors.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t4.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA(t9) = abap_true.
        DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t10->has = abap_true.
        t10->value = t9.
        t7 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t11.
        t7 = t11.
      ENDIF.
      t4 = t7.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_node.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA(t16) = t1.
      t14 = t16.
    ELSE.
      DATA t17 TYPE REF TO zif_lnt_node.
      CLEAR t17.
      t14 = t17.
    ENDIF.
    DATA(t18) = t2.
    DATA(t19) = t3.
    t13 = me->parameter_list_s( i_node = t14 i_input_967e = t18 i_method = t19 ).
    t12 = t13.
    DATA t20 TYPE abap_bool.
    DATA(t21) = t3.
    t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_void_type ).
    IF t20 = abap_true.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zif_lnt_method_parameters.
    DATA t25 TYPE REF TO zif_lnt_method_definition.
    DATA(t26) = t3.
    t25 ?= t26.
    t24 = t25->get_parameters( ).
    t23 = t24->get_importing( ).
    t22 = t23.
    DATA(t27) = VALUE abap_bool( ).
    DATA t28 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t29) = me->required_parameters.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    t30 = t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = t28.
    IF t33 IS INITIAL.
      t32 = abap_true.
    ENDIF.
    t27 = t32.
    IF t27 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t34.
      DATA(t35) = abap_true.
      IF t35 = abap_true.
        DATA t36 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t36.
        DATA(t37) = NEW zlnt_runtime_set__1827558fd4c7( ).
        DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t38.
        DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t40.
        t39 = t40.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t42 TYPE REF TO zif_lnt_method_parameters.
        DATA t43 TYPE REF TO zif_lnt_method_definition.
        DATA(t44) = t3.
        t43 ?= t44.
        t42 = t43->get_parameters( ).
        t41 = t42->get_required_parameters( ).
        DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t45.
        DATA t46 TYPE REF TO object.
        CLEAR t46.
        DATA(t47) = VALUE i( ).
        DO.
          t41->load( ).
          IF t47 >= lines( t41->items ).
            EXIT.
          ENDIF.
          CLEAR t46.
          READ TABLE t41->items INDEX t47 + 1 INTO t46.
          t47 = t47 + 1.
          DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t48.
          CLEAR t45.
          IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t48 ?= t46.
            DATA t49 TYPE REF TO object.
            t49 = t48->as_ref( ).
            t45 ?= t49.
          ELSE.
            t45 ?= t46.
          ENDIF.
          DATA(t50) = t39.
          DATA(t51) = VALUE string( ).
          DATA(t52) = VALUE string( ).
          DATA t53 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t54) = t45.
          t53 = t54.
          DATA(t55) = VALUE string( ).
          DATA t56 TYPE string.
          DATA t57 TYPE string.
          DATA t58 TYPE REF TO zcl_lnt_abstract_token.
          DATA t59 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t60) = t53.
          t59 = t60->token.
          t58 = t59.
          DATA t61 TYPE string.
          DATA(t62) = t58.
          t61 = t62->str.
          t57 = t61.
          t56 = t57.
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = VALUE string( ).
          DATA(t65) = t56.
          DATA(t66) = 0.
          DATA(t67) = 1.
          DATA(t68) = strlen( t65 ).
          IF t66 < 0.
            t66 = t66 + t68.
            IF t66 < 0.
              t66 = 0.
            ENDIF.
          ENDIF.
          IF t66 > t68 OR t67 <= 0.
            CLEAR t64.
          ELSE.
            IF t67 > t68 - t66.
              t67 = t68 - t66.
            ENDIF.
            t64 = t65+t66(t67).
          ENDIF.
          DATA(t69) = |!|.
          t63 = xsdbool( t64 = t69 ).
          IF t63 = abap_true.
            DATA(t70) = VALUE string( ).
            DATA t71 TYPE string.
            DATA(t72) = t56.
            t71 = t72.
            DATA(t73) = VALUE string( ).
            DATA(t74) = t71.
            DATA(t75) = 1.
            DATA t76 TYPE i.
            DATA(t77) = t71.
            DATA(t78) = strlen( t77 ).
            t76 = t78.
            DATA(t79) = strlen( t74 ).
            IF t75 < 0.
              t75 = t75 + t79.
              IF t75 < 0.
                t75 = 0.
              ENDIF.
            ENDIF.
            IF t75 > t79 OR t76 <= 0.
              CLEAR t73.
            ELSE.
              IF t76 > t79 - t75.
                t76 = t79 - t75.
              ENDIF.
              t73 = t74+t75(t76).
            ENDIF.
            t70 = t73.
            t56 = t70.
          ENDIF.
          DATA(t80) = t56.
          t55 = t80.
          t52 = t55.
          DATA(t81) = strlen( t52 ).
          t51 = t52.
          IF t51 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t51 TO UPPER CASE.
          ELSE.
            t51 = zlnt_runtime_uppe_91169605024d=>full( t51 ).
          ENDIF.
          t50->load( ).
          APPEND t51 TO t50->items.
          t50->save( ).
        ENDDO.
        DATA(t82) = t39.
        t38 = t82.
        t36 = t37->fromarray( p0 = t38 ).
        t34 = t36.
      ELSE.
        DATA t83 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t83.
        t34 = t83.
      ENDIF.
      me->required_parameters = t34.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `requiredParameters`.
    ENDIF.
    DATA(t84) = t12.
    DATA t85 TYPE REF TO zcl_lnt_ilist_item_s.
    CLEAR t85.
    DATA t86 TYPE REF TO object.
    CLEAR t86.
    DATA(t87) = VALUE i( ).
    DO.
      t84->load( ).
      IF t87 >= lines( t84->items ).
        EXIT.
      ENDIF.
      CLEAR t86.
      READ TABLE t84->items INDEX t87 + 1 INTO t86.
      t87 = t87 + 1.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      CLEAR t85.
      IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t88 ?= t86.
        DATA t89 TYPE REF TO object.
        t89 = t88->as_ref( ).
        t85 ?= t89.
      ELSE.
        t85 ?= t86.
      ENDIF.
      DATA t90 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t90.
      DATA t91 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t93) = t22.
      t92 = t93.
      DATA t94 TYPE i.
      DATA t95 TYPE i.
      DATA(t96) = t92.
      t96->load( ).
      t95 = lines( t96->items ).
      t94 = t95.
      DATA t97 TYPE i.
      DATA(t98) = 0.
      t97 = t98.
      DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t100.
      t99 = t100.
      DO.
        DATA t101 TYPE abap_bool.
        DATA(t102) = t97.
        DATA(t103) = t94.
        t101 = xsdbool( t102 < t103 ).
        IF t101 = abap_false.
          EXIT.
        ENDIF.
        DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t104.
        DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t105.
        DATA t106 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t106.
        DATA(t107) = t92.
        DATA(t108) = t97.
        DATA t109 TYPE REF TO object.
        t109 = t107->get( p0 = t108 ).
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        CLEAR t106.
        IF t109 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t110 ?= t109.
          DATA t111 TYPE REF TO object.
          t111 = t110->as_ref( ).
          t106 ?= t111.
        ELSE.
          t106 ?= t109.
        ENDIF.
        t105 = t106.
        t104 = t105.
        DATA(t112) = VALUE abap_bool( ).
        DATA(t113) = VALUE string( ).
        DATA(t114) = VALUE string( ).
        DATA t115 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t116) = t104.
        t115 = t116.
        DATA(t117) = VALUE string( ).
        DATA t118 TYPE string.
        DATA t119 TYPE string.
        DATA t120 TYPE REF TO zcl_lnt_abstract_token.
        DATA t121 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t122) = t115.
        t121 = t122->token.
        t120 = t121.
        DATA t123 TYPE string.
        DATA(t124) = t120.
        t123 = t124->str.
        t119 = t123.
        t118 = t119.
        DATA(t125) = VALUE abap_bool( ).
        DATA(t126) = VALUE string( ).
        DATA(t127) = t118.
        DATA(t128) = 0.
        DATA(t129) = 1.
        DATA(t130) = strlen( t127 ).
        IF t128 < 0.
          t128 = t128 + t130.
          IF t128 < 0.
            t128 = 0.
          ENDIF.
        ENDIF.
        IF t128 > t130 OR t129 <= 0.
          CLEAR t126.
        ELSE.
          IF t129 > t130 - t128.
            t129 = t130 - t128.
          ENDIF.
          t126 = t127+t128(t129).
        ENDIF.
        DATA(t131) = |!|.
        t125 = xsdbool( t126 = t131 ).
        IF t125 = abap_true.
          DATA(t132) = VALUE string( ).
          DATA t133 TYPE string.
          DATA(t134) = t118.
          t133 = t134.
          DATA(t135) = VALUE string( ).
          DATA(t136) = t133.
          DATA(t137) = 1.
          DATA t138 TYPE i.
          DATA(t139) = t133.
          DATA(t140) = strlen( t139 ).
          t138 = t140.
          DATA(t141) = strlen( t136 ).
          IF t137 < 0.
            t137 = t137 + t141.
            IF t137 < 0.
              t137 = 0.
            ENDIF.
          ENDIF.
          IF t137 > t141 OR t138 <= 0.
            CLEAR t135.
          ELSE.
            IF t138 > t141 - t137.
              t138 = t141 - t137.
            ENDIF.
            t135 = t136+t137(t138).
          ENDIF.
          t132 = t135.
          t118 = t132.
        ENDIF.
        DATA(t142) = t118.
        t117 = t142.
        t114 = t117.
        DATA(t143) = strlen( t114 ).
        t113 = t114.
        IF t113 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t113 TO UPPER CASE.
        ELSE.
          t113 = zlnt_runtime_uppe_91169605024d=>full( t113 ).
        ENDIF.
        DATA t144 TYPE string.
        DATA(t145) = t85.
        t144 = t145->name.
        t112 = xsdbool( t113 = t144 ).
        IF t112 = abap_true.
          DATA t146 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t146.
          DATA(t147) = abap_true.
          IF t147 = abap_true.
            DATA(t148) = t104.
            t146 = t148.
          ELSE.
            DATA t149 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t149.
            t146 = t149.
          ENDIF.
          t99 = t146.
          EXIT.
        ENDIF.
        DATA t150 TYPE i.
        DATA(t151) = t97.
        DATA(t152) = 1.
        t150 = t151 + t152.
        t97 = t150.
      ENDDO.
      DATA(t153) = t99.
      t91 = t153.
      t90 = t91.
      DATA(t154) = VALUE abap_bool( ).
      DATA t155 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t156) = t90.
      t155 = t156.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      t157 = t158.
      DATA(t159) = VALUE abap_bool( ).
      DATA(t160) = t155.
      IF t160 IS INITIAL.
        t159 = abap_true.
      ENDIF.
      t154 = t159.
      IF t154 = abap_true.
        DATA t161 TYPE string.
        DATA t162 TYPE string.
        DATA t163 TYPE string.
        DATA(t164) = |Method importing parameter "|.
        DATA t165 TYPE string.
        DATA(t166) = t85.
        t165 = t166->name.
        DATA(t167) = strlen( t164 ).
        t163 = |{ t164 }{ t165 }|.
        DATA(t168) = |" does not exist|.
        DATA(t169) = strlen( t163 ).
        t162 = |{ t163 }{ t168 }|.
        t161 = t162.
        DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t171) = t2.
        t170 = t171->issues.
        DATA t172 TYPE REF TO zcl_lnt_issue.
        DATA(t173) = t2.
        DATA t174 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t175) = t1.
        t174 = t175->get_first_token( ).
        DATA(t176) = t161.
        DATA t177 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t177.
        t172 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t173 i_token = t174 i_message_26cb = t176 i_fix = t177 ).
        t170->load( ).
        APPEND t172 TO t170->items.
        t170->save( ).
        CONTINUE.
      ELSE.
        DATA(t178) = VALUE abap_bool( ).
        DATA(t179) = VALUE abap_bool( ).
        DATA t180 TYPE REF TO zcl_lnt_type_utils.
        DATA t181 TYPE REF TO zcl_lnt_current_scope.
        DATA(t182) = t2.
        t181 = t182->scope.
        t180 = NEW zcl_lnt_type_utils( i_scope = t181 ).
        DATA t183 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t184) = t85.
        t183 = t184->source_type.
        DATA t185 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t185.
        DATA(t186) = abap_true.
        IF t186 = abap_true.
          DATA t187 TYPE REF TO zcl_lnt_abstract_type.
          DATA t188 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t189 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t190) = t90.
          t189 = t190.
          t188 = t189.
          DATA t191 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t192) = t188.
          t191 = t192->type_cba0.
          t187 = t191.
          t185 = t187.
        ELSE.
          DATA t193 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t193.
          t185 = t193.
        ENDIF.
        DATA t194 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t194.
        DATA(t195) = abap_true.
        IF t195 = abap_true.
          DATA t196 TYPE REF TO zcl_lnt_expression_node.
          DATA(t197) = t85.
          t196 = t197->source.
          t194 = t196.
        ELSE.
          DATA t198 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t198.
          t194 = t198.
        ENDIF.
        t179 = t180->is_assignable_strict( i_source_75cf = t183 i_target_5f8a = t185 i_node = t194 ).
        DATA(t199) = abap_false.
        t178 = xsdbool( t179 = t199 ).
        IF t178 = abap_true.
          DATA t200 TYPE string.
          DATA t201 TYPE string.
          DATA(t202) = |Method parameter type not compatible, |.
          DATA t203 TYPE string.
          DATA(t204) = t85.
          t203 = t204->name.
          DATA(t205) = strlen( t202 ).
          t201 = |{ t202 }{ t203 }|.
          t200 = t201.
          DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t207) = t2.
          t206 = t207->issues.
          DATA t208 TYPE REF TO zcl_lnt_issue.
          DATA(t209) = t2.
          DATA t210 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t211) = t1.
          t210 = t211->get_first_token( ).
          DATA(t212) = t200.
          DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t213.
          t208 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t209 i_token = t210 i_message_26cb = t212 i_fix = t213 ).
          t206->load( ).
          APPEND t208 TO t206->items.
          t206->save( ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA t214 TYPE abap_bool.
      DATA t215 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t216) = me->required_parameters.
      t215 = t216.
      DATA t217 TYPE string.
      DATA(t218) = t85.
      t217 = t218->name.
      t214 = t215->delete( p0 = t217 ).
    ENDDO.
    DATA t219 TYPE abap_bool.
    DATA t220 TYPE abap_bool.
    DATA(t221) = t4.
    t220 = t221->value.
    DATA(t222) = abap_true.
    t219 = xsdbool( t220 = t222 ).
    IF t219 = abap_true.
      DATA(t223) = t1.
      DATA(t224) = t2.
      me->report_errors( i_node = t223 i_input_967e = t224 ).
    ENDIF.
  ENDMETHOD.

  METHOD report_errors.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t7) = me->required_parameters.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t6.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t14) = t6.
      t13 = t14.
      t12 = t13->values( ).
      t8 = t12.
    ENDIF.
    t5 = t8.
    t4 = t5.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA t16 TYPE abap_bool.
    DATA(t17) = t4.
    t16 = xsdbool( t17 IS BOUND ).
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t19) = t4.
      t18 = t19.
      t15 = t18.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t20.
      t15 = t20.
    ENDIF.
    t3 = t15.
    DATA(t21) = VALUE string( ).
    t3->dense( ).
    DATA(t22) = VALUE i( ).
    DO.
      t3->load( ).
      IF t22 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t3->items INDEX t22 + 1 INTO t21.
      IF t3->has( t22 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t22 = t22 + 1.
      DATA t23 TYPE string.
      DATA t24 TYPE string.
      DATA t25 TYPE string.
      DATA(t26) = |method parameter "|.
      DATA(t27) = t21.
      DATA(t28) = strlen( t26 ).
      t25 = |{ t26 }{ t27 }|.
      DATA(t29) = |" must be supplied|.
      DATA(t30) = strlen( t25 ).
      t24 = |{ t25 }{ t29 }|.
      t23 = t24.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = t2.
      t31 = t32->issues.
      DATA t33 TYPE REF TO zcl_lnt_issue.
      DATA(t34) = t2.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t36) = t1.
      t35 = t36->get_first_token( ).
      DATA(t37) = t23.
      DATA t38 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t38.
      t33 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t34 i_token = t35 i_message_26cb = t37 i_fix = t38 ).
      t31->load( ).
      APPEND t33 TO t31->items.
      t31->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD parameter_list_s.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_node.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      CREATE OBJECT t11.
      result = t11.
      RETURN.
    ELSE.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_node.
      CLEAR t15.
      DATA(t16) = t1.
      t15 = t16.
      t14 = t15->get_db65( ).
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_parameter_list_s ).
      t12 = xsdbool( t13 = abap_false ).
      IF t12 = abap_true.
        DATA t17 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t17.
        DATA t18 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t18.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        DATA(t20) = abap_true.
        IF t20 = abap_true.
          DATA(t21) = |parameterListS, unexpected node|.
          DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t22->has = abap_true.
          t22->value = t21.
          t19 = t22.
        ELSE.
          DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t23.
          t19 = t23.
        ENDIF.
        t18 = NEW zcx_lnt_assert_error( i_message_26cb = t19 ).
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
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t28.
    DATA(t29) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_node.
    CLEAR t31.
    DATA(t32) = t1.
    t31 = t32.
    t30 = t31->get_children( ).
    DATA t33 TYPE REF TO zif_lnt_node.
    CLEAR t33.
    DATA t34 TYPE REF TO object.
    CLEAR t34.
    DATA(t35) = VALUE i( ).
    DO.
      t30->load( ).
      IF t35 >= lines( t30->items ).
        EXIT.
      ENDIF.
      CLEAR t34.
      READ TABLE t30->items INDEX t35 + 1 INTO t34.
      t35 = t35 + 1.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      CLEAR t33.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t36 ?= t34.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t37 = t36->as_ref( ).
        t33 ?= t37.
      ELSE.
        t33 ?= t34.
      ENDIF.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE abap_bool( ).
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      DATA(t42) = t33.
      t41 = t42->get_db65( ).
      t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_parameter_s ).
      t39 = xsdbool( t40 = abap_false ).
      t38 = t39.
      IF t39 = abap_false.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = t33.
        t44 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_expression_node ).
        t43 = xsdbool( t44 = abap_false ).
        t38 = t43.
      ENDIF.
      IF t38 = abap_true.
        DATA t46 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t46.
        DATA t47 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA(t49) = abap_true.
        IF t49 = abap_true.
          DATA(t50) = |parameterListS, unexpected node, child|.
          DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t51->has = abap_true.
          t51->value = t50.
          t48 = t51.
        ELSE.
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          t48 = t52.
        ENDIF.
        t47 = NEW zcx_lnt_assert_error( i_message_26cb = t48 ).
        t46 = NEW #( ).
        t46->payload = t47.
        CLEAR t46->source_value.
        IF t47 IS BOUND.
          DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t53.
          DATA t54 TYPE REF TO object.
          CLEAR t54.
          CLEAR t53.
          t54 = t47.
          TRY.
              t46->source_value ?= t54.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t46->source_value IS NOT BOUND.
            TRY.
                t53 ?= t47.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t53 IS BOUND.
              t46->source_value = t53->source( ).
            ENDIF.
            IF t46->source_value IS NOT BOUND.
              CREATE OBJECT t46->source_value.
              t46->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t46->source_value->oval = t47.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t46.
      ENDIF.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t57.
      DATA(t58) = t33.
      DATA t59 TYPE REF TO object.
      CLEAR t59.
      t59 = t58.
      t57 ?= t59.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t56 = t57->find_direct_expression( i_type_9913 = t60 ).
      t55 = t56.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t65.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t66.
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t67.
      DATA(t68) = t55.
      t67 = t68.
      DATA t69 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t69.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t67.
      IF t71 IS INITIAL.
        t70 = abap_true.
      ENDIF.
      IF t70 = abap_true.
        DATA t72 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t72.
        t69 = t72.
      ELSE.
        DATA t73 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t73.
        DATA t74 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t74.
        DATA(t75) = t67.
        t74 = t75.
        t73 = t74->get_first_token( ).
        t69 = t73.
      ENDIF.
      t66 = t69.
      t65 = t66.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = t65.
      IF t78 IS INITIAL.
        t77 = abap_true.
      ENDIF.
      IF t77 = abap_true.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        t76 = t79.
      ELSE.
        DATA(t80) = VALUE string( ).
        DATA t81 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t81.
        DATA t82 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t82.
        DATA(t83) = t65.
        t82 = t83.
        t81 = t82.
        DATA(t84) = VALUE string( ).
        DATA(t85) = t81.
        t84 = t85->str.
        t80 = t84.
        DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t86->has = abap_true.
        t86->value = t80.
        t76 = t86.
      ENDIF.
      t64 = t76.
      t63 = t64.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t87.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = t63.
      IF t89 IS INITIAL.
        t88 = abap_true.
      ELSEIF t89->has = abap_false.
        t88 = abap_true.
      ENDIF.
      IF t88 = abap_true.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        t87 = t90.
      ELSE.
        DATA(t91) = VALUE string( ).
        DATA(t92) = VALUE string( ).
        DATA(t93) = t63.
        t92 = t93->value.
        DATA(t94) = strlen( t92 ).
        t91 = t92.
        IF t91 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t91 TO UPPER CASE.
        ELSE.
          t91 = zlnt_runtime_uppe_91169605024d=>full( t91 ).
        ENDIF.
        DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t95->has = abap_true.
        t95->value = t91.
        t87 = t95.
      ENDIF.
      t62 = t87.
      t61 = t62.
      DATA(t96) = VALUE abap_bool( ).
      DATA(t97) = VALUE abap_bool( ).
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t98.
      DATA(t99) = t61.
      t98 = t99.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      t100 = t101.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = t98.
      IF t103 IS INITIAL.
        t102 = abap_true.
      ELSEIF t103->has = abap_false.
        t102 = abap_true.
      ENDIF.
      t97 = t102.
      t96 = t97.
      IF t97 = abap_false.
        DATA(t104) = VALUE abap_bool( ).
        DATA t105 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t105.
        DATA(t106) = t55.
        t105 = t106.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        t107 = t108.
        DATA(t109) = VALUE abap_bool( ).
        DATA(t110) = t105.
        IF t110 IS INITIAL.
          t109 = abap_true.
        ENDIF.
        t104 = t109.
        t96 = t104.
      ENDIF.
      IF t96 = abap_true.
        DATA t111 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t111.
        DATA t112 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t112.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        DATA(t114) = abap_true.
        IF t114 = abap_true.
          DATA(t115) = |parameterListS, no name determined|.
          DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t116->has = abap_true.
          t116->value = t115.
          t113 = t116.
        ELSE.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          t113 = t117.
        ENDIF.
        t112 = NEW zcx_lnt_assert_error( i_message_26cb = t113 ).
        t111 = NEW #( ).
        t111->payload = t112.
        CLEAR t111->source_value.
        IF t112 IS BOUND.
          DATA t118 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t118.
          DATA t119 TYPE REF TO object.
          CLEAR t119.
          CLEAR t118.
          t119 = t112.
          TRY.
              t111->source_value ?= t119.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t111->source_value IS NOT BOUND.
            TRY.
                t118 ?= t112.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t118 IS BOUND.
              t111->source_value = t118->source( ).
            ENDIF.
            IF t111->source_value IS NOT BOUND.
              CREATE OBJECT t111->source_value.
              t111->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t111->source_value->oval = t112.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t111.
      ENDIF.
      DATA(t120) = VALUE abap_bool( ).
      DATA(t121) = t28.
      DATA(t122) = VALUE string( ).
      DATA(t123) = t61.
      t122 = t123->value.
      t120 = t121->has( p0 = t122 ).
      IF t120 = abap_true.
        DATA(t124) = VALUE string( ).
        DATA(t125) = VALUE string( ).
        DATA(t126) = VALUE string( ).
        DATA(t127) = |Method parameter "|.
        DATA(t128) = VALUE string( ).
        DATA(t129) = t61.
        t128 = t129->value.
        DATA(t130) = strlen( t127 ).
        t126 = |{ t127 }{ t128 }|.
        DATA(t131) = |" is supplied more than once|.
        DATA(t132) = strlen( t126 ).
        t125 = |{ t126 }{ t131 }|.
        t124 = t125.
        DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t133.
        DATA(t134) = t2.
        t133 = t134->issues.
        DATA t135 TYPE REF TO zcl_lnt_issue.
        CLEAR t135.
        DATA(t136) = t2.
        DATA t137 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t137.
        DATA t138 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t138.
        DATA(t139) = t55.
        t138 = t139.
        t137 = t138->get_first_token( ).
        DATA(t140) = t124.
        DATA t141 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t141.
        t135 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t136 i_token = t137 i_message_26cb = t140 i_fix = t141 ).
        t133->load( ).
        APPEND t135 TO t133->items.
        t133->save( ).
      ENDIF.
      DATA t142 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t142.
      DATA(t143) = t28.
      DATA(t144) = VALUE string( ).
      DATA(t145) = t61.
      t144 = t145->value.
      t142 = t143->add( p0 = t144 ).
      DATA t146 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t146.
      DATA t147 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t147.
      DATA t148 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t148.
      DATA(t149) = t33.
      DATA t150 TYPE REF TO object.
      CLEAR t150.
      t150 = t149.
      t148 ?= t150.
      DATA(t151) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t147 = t148->find_direct_expression( i_type_9913 = t151 ).
      t146 = t147.
      DATA(t152) = VALUE abap_bool( ).
      DATA t153 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t153.
      DATA(t154) = t146.
      t153 = t154.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t156.
      t155 = t156.
      DATA(t157) = VALUE abap_bool( ).
      DATA(t158) = t153.
      IF t158 IS INITIAL.
        t157 = abap_true.
      ENDIF.
      t152 = t157.
      IF t152 = abap_true.
        DATA t159 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t159.
        DATA t160 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t160.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t161.
        DATA(t162) = abap_true.
        IF t162 = abap_true.
          DATA(t163) = |parameterListS, no source found|.
          DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t164->has = abap_true.
          t164->value = t163.
          t161 = t164.
        ELSE.
          DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t165.
          t161 = t165.
        ENDIF.
        t160 = NEW zcx_lnt_assert_error( i_message_26cb = t161 ).
        t159 = NEW #( ).
        t159->payload = t160.
        CLEAR t159->source_value.
        IF t160 IS BOUND.
          DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t166.
          DATA t167 TYPE REF TO object.
          CLEAR t167.
          CLEAR t166.
          t167 = t160.
          TRY.
              t159->source_value ?= t167.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t159->source_value IS NOT BOUND.
            TRY.
                t166 ?= t160.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t166 IS BOUND.
              t159->source_value = t166->source( ).
            ENDIF.
            IF t159->source_value IS NOT BOUND.
              CREATE OBJECT t159->source_value.
              t159->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t159->source_value->oval = t160.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t159.
      ENDIF.
      DATA t168 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t168.
      DATA t169 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t169.
      t168 = t169.
      DATA(t170) = VALUE abap_bool( ).
      DATA(t171) = VALUE abap_bool( ).
      DATA(t172) = t3.
      t171 = xsdbool( t172 IS BOUND AND t172 IS INSTANCE OF zcl_lnt_void_type ).
      t170 = xsdbool( t171 = abap_false ).
      IF t170 = abap_true.
        DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t173.
        DATA t174 TYPE REF TO zif_lnt_method_parameters.
        CLEAR t174.
        DATA t175 TYPE REF TO zif_lnt_method_definition.
        CLEAR t175.
        DATA(t176) = t3.
        t175 ?= t176.
        t174 = t175->get_parameters( ).
        t173 = t174->get_importing( ).
        DATA t177 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t177.
        DATA t178 TYPE REF TO object.
        CLEAR t178.
        DATA(t179) = VALUE i( ).
        DO.
          t173->load( ).
          IF t179 >= lines( t173->items ).
            EXIT.
          ENDIF.
          CLEAR t178.
          READ TABLE t173->items INDEX t179 + 1 INTO t178.
          t179 = t179 + 1.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          CLEAR t177.
          IF t178 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t180 ?= t178.
            DATA t181 TYPE REF TO object.
            CLEAR t181.
            t181 = t180->as_ref( ).
            t177 ?= t181.
          ELSE.
            t177 ?= t178.
          ENDIF.
          DATA(t182) = VALUE abap_bool( ).
          DATA(t183) = VALUE string( ).
          DATA(t184) = VALUE string( ).
          DATA t185 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t185.
          DATA(t186) = t177.
          t185 = t186.
          DATA(t187) = VALUE string( ).
          DATA(t188) = VALUE string( ).
          DATA(t189) = VALUE string( ).
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t190.
          DATA t191 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t191.
          DATA(t192) = t185.
          t191 = t192->token.
          t190 = t191.
          DATA(t193) = VALUE string( ).
          DATA(t194) = t190.
          t193 = t194->str.
          t189 = t193.
          t188 = t189.
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = VALUE string( ).
          DATA(t197) = t188.
          DATA(t198) = 0.
          DATA(t199) = 1.
          DATA(t200) = strlen( t197 ).
          IF t198 < 0.
            t198 = t198 + t200.
            IF t198 < 0.
              t198 = 0.
            ENDIF.
          ENDIF.
          IF t198 > t200 OR t199 <= 0.
            CLEAR t196.
          ELSE.
            IF t199 > t200 - t198.
              t199 = t200 - t198.
            ENDIF.
            t196 = t197+t198(t199).
          ENDIF.
          DATA(t201) = |!|.
          t195 = xsdbool( t196 = t201 ).
          IF t195 = abap_true.
            DATA(t202) = VALUE string( ).
            DATA(t203) = VALUE string( ).
            DATA(t204) = t188.
            t203 = t204.
            DATA(t205) = VALUE string( ).
            DATA(t206) = t203.
            DATA(t207) = 1.
            DATA(t208) = VALUE i( ).
            DATA(t209) = t203.
            DATA(t210) = strlen( t209 ).
            t208 = t210.
            DATA(t211) = strlen( t206 ).
            IF t207 < 0.
              t207 = t207 + t211.
              IF t207 < 0.
                t207 = 0.
              ENDIF.
            ENDIF.
            IF t207 > t211 OR t208 <= 0.
              CLEAR t205.
            ELSE.
              IF t208 > t211 - t207.
                t208 = t211 - t207.
              ENDIF.
              t205 = t206+t207(t208).
            ENDIF.
            t202 = t205.
            t188 = t202.
          ENDIF.
          DATA(t212) = t188.
          t187 = t212.
          t184 = t187.
          DATA(t213) = strlen( t184 ).
          t183 = t184.
          IF t183 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t183 TO UPPER CASE.
          ELSE.
            t183 = zlnt_runtime_uppe_91169605024d=>full( t183 ).
          ENDIF.
          DATA(t214) = VALUE string( ).
          DATA(t215) = t61.
          t214 = t215->value.
          t182 = xsdbool( t183 = t214 ).
          IF t182 = abap_true.
            DATA t216 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t216.
            DATA(t217) = abap_true.
            IF t217 = abap_true.
              DATA t218 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t218.
              DATA t219 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t219.
              DATA(t220) = t177.
              t219 = t220.
              DATA t221 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t221.
              DATA(t222) = t219.
              t221 = t222->type_cba0.
              t218 = t221.
              t216 = t218.
            ELSE.
              DATA t223 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t223.
              t216 = t223.
            ENDIF.
            t168 = t216.
            EXIT.
          ENDIF.
        ENDDO.
      ELSE.
        DATA t224 TYPE REF TO zcl_lnt_void_type.
        CLEAR t224.
        DATA(t225) = t3.
        DATA t226 TYPE REF TO object.
        CLEAR t226.
        t226 = t225.
        t224 ?= t226.
        t168 = t224.
      ENDIF.
      DATA t227 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t227.
      DATA t228 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t228.
      DATA t229 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t229.
      DATA(t230) = abap_true.
      IF t230 = abap_true.
        DATA t231 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t231.
        DATA(t232) = t146.
        t231 = t232.
        t229 = t231.
      ELSE.
        DATA t233 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t233.
        t229 = t233.
      ENDIF.
      DATA(t234) = t2.
      DATA(t235) = t168.
      DATA t236 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t236.
      DATA t237 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t237.
      DATA t238 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t238.
      t228 = zcl_lnt_sy_source=>run_syntax( i_node = t229 i_input_967e = t234 i_target_type = t235 i_write_reference = t236 i_allow_generic_deference = t237 i_read_reference = t238 ).
      t227 = t228.
      DATA(t239) = VALUE abap_bool( ).
      DATA t240 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t240.
      DATA(t241) = t146.
      t240 = t241.
      DATA(t242) = t227.
      DATA(t243) = t3.
      DATA(t244) = t2.
      t239 = zcl_lnt_chck_offst_lngth_mdl=>check_offset_length( i_source_75cf = t240 i_source_type = t242 i_method = t243 i_input_967e = t244 ).
      DATA(t245) = VALUE abap_bool( ).
      DATA t246 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t246.
      DATA(t247) = t227.
      t246 = t247.
      DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t248.
      DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t249.
      t248 = t249.
      DATA(t250) = VALUE abap_bool( ).
      DATA(t251) = t246.
      IF t251 IS INITIAL.
        t250 = abap_true.
      ENDIF.
      t245 = t250.
      IF t245 = abap_true.
        DATA(t252) = VALUE abap_bool( ).
        DATA(t253) = t3.
        t252 = xsdbool( t253 IS BOUND AND t253 IS INSTANCE OF zcl_lnt_void_type ).
        IF t252 = abap_true.
          DATA t254 TYPE REF TO zcl_lnt_void_type.
          CLEAR t254.
          DATA(t255) = t3.
          DATA t256 TYPE REF TO object.
          CLEAR t256.
          t256 = t255.
          t254 ?= t256.
          t227 = t254.
        ELSE.
          DATA(t257) = VALUE string( ).
          DATA(t258) = VALUE string( ).
          DATA(t259) = VALUE string( ).
          DATA(t260) = |No source type determined for parameter |.
          DATA(t261) = VALUE string( ).
          DATA(t262) = t61.
          t261 = t262->value.
          DATA(t263) = strlen( t260 ).
          t259 = |{ t260 }{ t261 }|.
          DATA(t264) = | input|.
          DATA(t265) = strlen( t259 ).
          t258 = |{ t259 }{ t264 }|.
          t257 = t258.
          DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t266.
          DATA(t267) = t2.
          t266 = t267->issues.
          DATA t268 TYPE REF TO zcl_lnt_issue.
          CLEAR t268.
          DATA(t269) = t2.
          DATA t270 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t270.
          DATA t271 TYPE REF TO zif_lnt_node.
          CLEAR t271.
          DATA(t272) = t1.
          t271 = t272.
          t270 = t271->get_first_token( ).
          DATA(t273) = t257.
          DATA t274 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t274.
          t268 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t269 i_token = t270 i_message_26cb = t273 i_fix = t274 ).
          t266->load( ).
          APPEND t268 TO t266->items.
          t266->save( ).
          DATA t275 TYPE REF TO zcl_lnt_void_type.
          CLEAR t275.
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          DATA(t277) = abap_true.
          IF t277 = abap_true.
            DATA(t278) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t279->has = abap_true.
            t279->value = t278.
            t276 = t279.
          ELSE.
            DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t280.
            t276 = t280.
          ENDIF.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t281.
          t275 = zcl_lnt_void_type=>get_db65( i_voided = t276 i_qualified_name = t281 ).
          t227 = t275.
        ENDIF.
      ENDIF.
      DATA(t282) = t26.
      DATA t283 TYPE REF TO zcl_lnt_ilist_item_s.
      CLEAR t283.
      DATA(t284) = VALUE string( ).
      DATA(t285) = VALUE string( ).
      DATA(t286) = t61.
      t285 = t286->value.
      t284 = t285.
      DATA t287 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t287.
      DATA t288 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t288.
      DATA(t289) = t146.
      t288 = t289.
      t287 = t288.
      DATA t290 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t290.
      DATA t291 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t291.
      DATA(t292) = abap_true.
      IF t292 = abap_true.
        DATA t293 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t293.
        DATA(t294) = t227.
        t293 = t294.
        t291 = t293.
      ELSE.
        DATA t295 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t295.
        t291 = t295.
      ENDIF.
      t290 = t291.
      t283 = NEW zcl_lnt_ilist_item_s( i_name = t284 i_source_75cf = t287 i_source_type = t290 ).
      CREATE OBJECT t283->zlnt_view_ownkeys_b0e8086400eb.
      t283->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t296.
      IF t283->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t283->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t296 ).
      ENDIF.
      DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t297.
      IF t283->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t283->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `source` p1 = t297 ).
      ENDIF.
      DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t298.
      IF t283->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t283->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sourceType` p1 = t298 ).
      ENDIF.
      CREATE OBJECT t283->zlnt_json_ownkeys_70e5fd461788.
      t283->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t299) = |name|.
      DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t300.
      IF t283->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t283->zlnt_json_ownkeys_70e5fd461788->put( p0 = t299 p1 = t300 ).
      ENDIF.
      DATA(t301) = |source|.
      DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t302.
      IF t283->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t283->zlnt_json_ownkeys_70e5fd461788->put( p0 = t301 p1 = t302 ).
      ENDIF.
      DATA(t303) = |sourceType|.
      DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t304.
      IF t283->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t283->zlnt_json_ownkeys_70e5fd461788->put( p0 = t303 p1 = t304 ).
      ENDIF.
      t282->load( ).
      APPEND t283 TO t282->items.
      t282->save( ).
    ENDDO.
    DATA(t305) = t26.
    result = t305.

  ENDMETHOD.

  METHOD parameter_list_t.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_node.
    CLEAR t4.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t10.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ELSE.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      DATA t14 TYPE REF TO zif_lnt_node.
      CLEAR t14.
      DATA(t15) = t1.
      t14 = t15.
      t13 = t14->get_db65( ).
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_parameter_list_t ).
      t11 = xsdbool( t12 = abap_false ).
      IF t11 = abap_true.
        DATA t16 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t16.
        DATA t17 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t17.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        DATA(t19) = abap_true.
        IF t19 = abap_true.
          DATA(t20) = |parameterListT, unexpected node|.
          DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t21->has = abap_true.
          t21->value = t20.
          t18 = t21.
        ELSE.
          DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t22.
          t18 = t22.
        ENDIF.
        t17 = NEW zcx_lnt_assert_error( i_message_26cb = t18 ).
        t16 = NEW #( ).
        t16->payload = t17.
        CLEAR t16->source_value.
        IF t17 IS BOUND.
          DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t23.
          DATA t24 TYPE REF TO object.
          CLEAR t24.
          CLEAR t23.
          t24 = t17.
          TRY.
              t16->source_value ?= t24.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t16->source_value IS NOT BOUND.
            TRY.
                t23 ?= t17.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t23 IS BOUND.
              t16->source_value = t23->source( ).
            ENDIF.
            IF t16->source_value IS NOT BOUND.
              CREATE OBJECT t16->source_value.
              t16->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t16->source_value->oval = t17.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t16.
      ENDIF.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t27.
    DATA(t28) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_node.
    CLEAR t30.
    DATA(t31) = t1.
    t30 = t31.
    t29 = t30->get_children( ).
    DATA t32 TYPE REF TO zif_lnt_node.
    CLEAR t32.
    DATA t33 TYPE REF TO object.
    CLEAR t33.
    DATA(t34) = VALUE i( ).
    DO.
      t29->load( ).
      IF t34 >= lines( t29->items ).
        EXIT.
      ENDIF.
      CLEAR t33.
      READ TABLE t29->items INDEX t34 + 1 INTO t33.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t32.
      IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t33.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        t36 = t35->as_ref( ).
        t32 ?= t36.
      ELSE.
        t32 ?= t33.
      ENDIF.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      DATA(t41) = t32.
      t40 = t41->get_db65( ).
      t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_parameter_t ).
      t38 = xsdbool( t39 = abap_false ).
      t37 = t38.
      IF t38 = abap_false.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = t32.
        t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_expression_node ).
        t42 = xsdbool( t43 = abap_false ).
        t37 = t42.
      ENDIF.
      IF t37 = abap_true.
        DATA t45 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t45.
        DATA t46 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t46.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA(t49) = |parameterListT, unexpected node, child|.
          DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t50->has = abap_true.
          t50->value = t49.
          t47 = t50.
        ELSE.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          t47 = t51.
        ENDIF.
        t46 = NEW zcx_lnt_assert_error( i_message_26cb = t47 ).
        t45 = NEW #( ).
        t45->payload = t46.
        CLEAR t45->source_value.
        IF t46 IS BOUND.
          DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t52.
          DATA t53 TYPE REF TO object.
          CLEAR t53.
          CLEAR t52.
          t53 = t46.
          TRY.
              t45->source_value ?= t53.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t45->source_value IS NOT BOUND.
            TRY.
                t52 ?= t46.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t52 IS BOUND.
              t45->source_value = t52->source( ).
            ENDIF.
            IF t45->source_value IS NOT BOUND.
              CREATE OBJECT t45->source_value.
              t45->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t45->source_value->oval = t46.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t45.
      ENDIF.
      DATA t54 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t56.
      DATA(t57) = t32.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      t58 = t57.
      t56 ?= t58.
      DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t55 = t56->find_direct_expression( i_type_9913 = t59 ).
      t54 = t55.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA t64 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t64.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t65.
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t66.
      DATA(t67) = t54.
      t66 = t67.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = t66.
      IF t70 IS INITIAL.
        t69 = abap_true.
      ENDIF.
      IF t69 = abap_true.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t71.
        t68 = t71.
      ELSE.
        DATA t72 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t73.
        DATA(t74) = t66.
        t73 = t74.
        t72 = t73->get_first_token( ).
        t68 = t72.
      ENDIF.
      t65 = t68.
      t64 = t65.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t75.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = t64.
      IF t77 IS INITIAL.
        t76 = abap_true.
      ENDIF.
      IF t76 = abap_true.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        t75 = t78.
      ELSE.
        DATA(t79) = VALUE string( ).
        DATA t80 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t80.
        DATA t81 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t81.
        DATA(t82) = t64.
        t81 = t82.
        t80 = t81.
        DATA(t83) = VALUE string( ).
        DATA(t84) = t80.
        t83 = t84->str.
        t79 = t83.
        DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t85->has = abap_true.
        t85->value = t79.
        t75 = t85.
      ENDIF.
      t63 = t75.
      t62 = t63.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = t62.
      IF t88 IS INITIAL.
        t87 = abap_true.
      ELSEIF t88->has = abap_false.
        t87 = abap_true.
      ENDIF.
      IF t87 = abap_true.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        t86 = t89.
      ELSE.
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE string( ).
        DATA(t92) = t62.
        t91 = t92->value.
        DATA(t93) = strlen( t91 ).
        t90 = t91.
        IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t90 TO UPPER CASE.
        ELSE.
          t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
        ENDIF.
        DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t94->has = abap_true.
        t94->value = t90.
        t86 = t94.
      ENDIF.
      t61 = t86.
      t60 = t61.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA(t98) = t60.
      t97 = t98.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      t99 = t100.
      DATA(t101) = VALUE abap_bool( ).
      DATA(t102) = t97.
      IF t102 IS INITIAL.
        t101 = abap_true.
      ELSEIF t102->has = abap_false.
        t101 = abap_true.
      ENDIF.
      t96 = t101.
      t95 = t96.
      IF t96 = abap_false.
        DATA(t103) = VALUE abap_bool( ).
        DATA t104 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t104.
        DATA(t105) = t54.
        t104 = t105.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        t106 = t107.
        DATA(t108) = VALUE abap_bool( ).
        DATA(t109) = t104.
        IF t109 IS INITIAL.
          t108 = abap_true.
        ENDIF.
        t103 = t108.
        t95 = t103.
      ENDIF.
      IF t95 = abap_true.
        DATA t110 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t110.
        DATA t111 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t111.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t113) = abap_true.
        IF t113 = abap_true.
          DATA(t114) = |parameterListT, no name determined|.
          DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t115->has = abap_true.
          t115->value = t114.
          t112 = t115.
        ELSE.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          t112 = t116.
        ENDIF.
        t111 = NEW zcx_lnt_assert_error( i_message_26cb = t112 ).
        t110 = NEW #( ).
        t110->payload = t111.
        CLEAR t110->source_value.
        IF t111 IS BOUND.
          DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t117.
          DATA t118 TYPE REF TO object.
          CLEAR t118.
          CLEAR t117.
          t118 = t111.
          TRY.
              t110->source_value ?= t118.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t110->source_value IS NOT BOUND.
            TRY.
                t117 ?= t111.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t117 IS BOUND.
              t110->source_value = t117->source( ).
            ENDIF.
            IF t110->source_value IS NOT BOUND.
              CREATE OBJECT t110->source_value.
              t110->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t110->source_value->oval = t111.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t110.
      ENDIF.
      DATA(t119) = VALUE abap_bool( ).
      DATA(t120) = t27.
      DATA(t121) = VALUE string( ).
      DATA(t122) = t60.
      t121 = t122->value.
      t119 = t120->has( p0 = t121 ).
      IF t119 = abap_true.
        DATA(t123) = VALUE string( ).
        DATA(t124) = VALUE string( ).
        DATA(t125) = VALUE string( ).
        DATA(t126) = |Method parameter "|.
        DATA(t127) = VALUE string( ).
        DATA(t128) = t60.
        t127 = t128->value.
        DATA(t129) = strlen( t126 ).
        t125 = |{ t126 }{ t127 }|.
        DATA(t130) = |" is supplied more than once|.
        DATA(t131) = strlen( t125 ).
        t124 = |{ t125 }{ t130 }|.
        t123 = t124.
        DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t132.
        DATA(t133) = t2.
        t132 = t133->issues.
        DATA t134 TYPE REF TO zcl_lnt_issue.
        CLEAR t134.
        DATA(t135) = t2.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t136.
        DATA t137 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t137.
        DATA(t138) = t54.
        t137 = t138.
        t136 = t137->get_first_token( ).
        DATA(t139) = t123.
        DATA t140 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t140.
        t134 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t135 i_token = t136 i_message_26cb = t139 i_fix = t140 ).
        t132->load( ).
        APPEND t134 TO t132->items.
        t132->save( ).
      ENDIF.
      DATA t141 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t141.
      DATA(t142) = t27.
      DATA(t143) = VALUE string( ).
      DATA(t144) = t60.
      t143 = t144->value.
      t141 = t142->add( p0 = t143 ).
      DATA t145 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t145.
      DATA t146 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t146.
      DATA t147 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t147.
      DATA(t148) = t32.
      DATA t149 TYPE REF TO object.
      CLEAR t149.
      t149 = t148.
      t147 ?= t149.
      DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t146 = t147->find_direct_expression( i_type_9913 = t150 ).
      t145 = t146.
      DATA(t151) = VALUE abap_bool( ).
      DATA t152 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t152.
      DATA(t153) = t145.
      t152 = t153.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      t154 = t155.
      DATA(t156) = VALUE abap_bool( ).
      DATA(t157) = t152.
      IF t157 IS INITIAL.
        t156 = abap_true.
      ENDIF.
      t151 = t156.
      IF t151 = abap_true.
        DATA t158 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t158.
        DATA t159 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t159.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t160.
        DATA(t161) = abap_true.
        IF t161 = abap_true.
          DATA(t162) = |parameterListT, no target found|.
          DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t163->has = abap_true.
          t163->value = t162.
          t160 = t163.
        ELSE.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t164.
          t160 = t164.
        ENDIF.
        t159 = NEW zcx_lnt_assert_error( i_message_26cb = t160 ).
        t158 = NEW #( ).
        t158->payload = t159.
        CLEAR t158->source_value.
        IF t159 IS BOUND.
          DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t165.
          DATA t166 TYPE REF TO object.
          CLEAR t166.
          CLEAR t165.
          t166 = t159.
          TRY.
              t158->source_value ?= t166.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t158->source_value IS NOT BOUND.
            TRY.
                t165 ?= t159.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t165 IS BOUND.
              t158->source_value = t165->source( ).
            ENDIF.
            IF t158->source_value IS NOT BOUND.
              CREATE OBJECT t158->source_value.
              t158->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t158->source_value->oval = t159.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t158.
      ENDIF.
      DATA t167 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t167.
      DATA t168 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t168.
      DATA t169 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t169.
      DATA(t170) = t145.
      t169 = t170.
      DATA(t171) = t2.
      t168 = zcl_lnt_sy_target=>run_syntax( i_node = t169 i_input_967e = t171 ).
      t167 = t168.
      DATA(t172) = t25.
      DATA t173 TYPE REF TO zcl_lnt_ilist_item_t.
      CLEAR t173.
      DATA(t174) = VALUE string( ).
      DATA(t175) = VALUE string( ).
      DATA(t176) = t60.
      t175 = t176->value.
      t174 = t175.
      DATA t177 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t177.
      DATA t178 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t178.
      DATA(t179) = t145.
      t178 = t179.
      t177 = t178.
      DATA t180 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t180.
      DATA(t181) = t167.
      t180 = t181.
      t173 = NEW zcl_lnt_ilist_item_t( i_name = t174 i_target_5f8a = t177 i_target_type = t180 ).
      CREATE OBJECT t173->zlnt_view_ownkeys_b0e8086400eb.
      t173->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      IF t173->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t173->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t182 ).
      ENDIF.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t183.
      IF t173->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t173->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `target` p1 = t183 ).
      ENDIF.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      IF t173->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t173->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `targetType` p1 = t184 ).
      ENDIF.
      CREATE OBJECT t173->zlnt_json_ownkeys_70e5fd461788.
      t173->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t185) = |name|.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      IF t173->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
      ENDIF.
      DATA(t187) = |target|.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      IF t173->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
      ENDIF.
      DATA(t189) = |targetType|.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t190.
      IF t173->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
      ENDIF.
      t172->load( ).
      APPEND t173 TO t172->items.
      t172->save( ).
    ENDDO.
    DATA(t191) = t25.
    result = t191.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d825_9e2524302ad1.
  ENDMETHOD.
ENDCLASS.
