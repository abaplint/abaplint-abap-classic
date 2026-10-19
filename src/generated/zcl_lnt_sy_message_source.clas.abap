* TS: src/abap/5_syntax/expressions/message_source.ts:6:1 MessageSource
CLASS zcl_lnt_sy_message_source DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_message_source IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t1->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      t12 = t6.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t2 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t21 = t1->find_direct_expressions( i_type_9913 = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA t25 TYPE REF TO object.
    DATA(t26) = VALUE i( ).
    DO.
      t21->load( ).
      IF t26 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t21->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t30.
      t30 = t24.
      DATA t35 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      t29 = zcl_lnt_sy_source=>run_syntax( i_node = t30 i_input_967e = t2 i_target_type = t35 i_write_reference = t36 i_allow_generic_deference = t37 i_read_reference = t38 ).
    ENDDO.
    DATA t40 TYPE string.
    DATA t41 TYPE string.
    t41 = t1->get_first_token( )->str.
    DATA(t47) = strlen( t41 ).
    t40 = t41.
    IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t40 TO UPPER CASE.
    ELSE.
      t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
    ENDIF.
    IF xsdbool( t40 = |ID| ) = abap_true.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      t51 = t1->find_expression_after_token( i_text = |ID| ).
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t51 IS INITIAL ) = abap_true.
      ELSE.
        DATA t59 TYPE string.
        t59 = t51->concat_tokens( ).
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t59.
        t55 = t62.
      ENDIF.
      t49 = t55.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t65 TYPE REF TO zcl_lnt_expression_node.
      DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d216_5867c1ce5807.
      t65 = t1->find_direct_expression( i_type_9913 = t68 ).
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t65 IS INITIAL ) = abap_true.
      ELSE.
        DATA t73 TYPE string.
        t73 = t65->concat_tokens( ).
        DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t76->has = abap_true.
        t76->value = t73.
        t69 = t76.
      ENDIF.
      t63 = t69.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t78 = t63.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t82) = VALUE abap_bool( ).
      IF t78 IS INITIAL.
        t82 = abap_true.
      ELSEIF t78->has = abap_false.
        t82 = abap_true.
      ENDIF.
      IF t82 = abap_true.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t86 TYPE REF TO zcl_lnt_expression_node.
        t86 = t1->find_expression_after_token( i_text = |NUMBER| ).
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t86 IS INITIAL ) = abap_true.
        ELSE.
          DATA t94 TYPE string.
          t94 = t86->concat_tokens( ).
          DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t97->has = abap_true.
          t97->value = t94.
          t90 = t97.
        ENDIF.
        t84 = t90.
        DATA(t98) = VALUE abap_bool( ).
        DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t100 = t84.
        DATA t102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t103) = VALUE abap_bool( ).
        IF t100 IS INITIAL.
          t103 = abap_true.
        ELSEIF t100->has = abap_false.
          t103 = abap_true.
        ENDIF.
        IF t103 = abap_true.
        ELSE.
          DATA(t106) = VALUE abap_bool( ).
          DATA t107 TYPE string.
          t107 = t100->value.
          DATA(t109) = |'|.
          DATA(t110) = strlen( t107 ).
          DATA t111 TYPE i.
          DATA(t112) = VALUE i( ).
          DATA(t113) = VALUE string( ).
          t111 = strlen( t109 ).
          IF t111 = 0.
            t106 = abap_true.
          ELSEIF t111 <= t110.
            t112 = 0.
            t113 = t107+t112(t111).
            IF t113 = t109.
              t106 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t114) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t114->has = abap_true.
          t114->value = t106.
          t102 = t114.
        ENDIF.
        t99 = t102.
        IF t99 IS BOUND.
          IF t99->has = abap_true.
            t98 = xsdbool( t99->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t98 = abap_true.
          DATA(t117) = VALUE string( ).
          DATA(t118) = VALUE string( ).
          DATA t119 TYPE string.
          t119 = t84->value.
          DATA(t121) = 1.
          DATA t122 TYPE i.
          DATA t123 TYPE i.
          t123 = strlen( t84->value ).
          DATA(t127) = 1.
          t122 = t123 - t127.
          DATA(t128) = strlen( t119 ).
          t121 = COND i( WHEN t121 < 0 THEN 0 WHEN t121 > t128 THEN t128 ELSE t121 ).
          t122 = COND i( WHEN t122 < 0 THEN 0 WHEN t122 > t128 THEN t128 ELSE t122 ).
          IF t121 > t122.
            t128 = t121.
            t121 = t122.
            t122 = t128.
          ENDIF.
          t128 = t122 - t121.
          t118 = t119+t121(t128).
          DATA(t129) = strlen( t118 ).
          t117 = t118.
          IF t117 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t117 TO UPPER CASE.
          ELSE.
            t117 = zlnt_runtime_uppe_91169605024d=>full( t117 ).
          ENDIF.
          DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t130->has = abap_true.
          t130->value = t117.
          t63 = t130.
        ENDIF.
      ENDIF.
      DATA(t132) = VALUE abap_bool( ).
      DATA(t133) = VALUE abap_bool( ).
      DATA t134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t135 = t49.
      DATA t137 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t138) = VALUE abap_bool( ).
      IF t135 IS INITIAL.
        t138 = abap_true.
      ELSEIF t135->has = abap_false.
        t138 = abap_true.
      ENDIF.
      IF t138 = abap_true.
      ELSE.
        DATA(t141) = VALUE abap_bool( ).
        DATA t142 TYPE string.
        t142 = t135->value.
        DATA(t144) = |'|.
        DATA(t145) = strlen( t142 ).
        DATA t146 TYPE i.
        DATA(t147) = VALUE i( ).
        DATA(t148) = VALUE string( ).
        t146 = strlen( t144 ).
        IF t146 = 0.
          t141 = abap_true.
        ELSEIF t146 <= t145.
          t147 = 0.
          t148 = t142+t147(t146).
          IF t148 = t144.
            t141 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t149) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t149->has = abap_true.
        t149->value = t141.
        t137 = t149.
      ENDIF.
      t134 = t137.
      IF t134 IS BOUND.
        IF t134->has = abap_true.
          t133 = xsdbool( t134->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t132 = t133.
      IF t133 = abap_true.
        DATA(t150) = VALUE abap_bool( ).
        IF t63 IS BOUND.
          IF t63->has = abap_true.
            t150 = xsdbool( strlen( t63->value ) > 0 ).
          ENDIF.
        ENDIF.
        t132 = t150.
      ENDIF.
      IF t132 = abap_true.
        DATA(t152) = VALUE string( ).
        DATA(t153) = VALUE string( ).
        DATA(t154) = VALUE string( ).
        DATA t155 TYPE string.
        t155 = t49->value.
        DATA(t157) = 1.
        DATA t158 TYPE i.
        DATA t159 TYPE i.
        t159 = strlen( t49->value ).
        DATA(t163) = 1.
        t158 = t159 - t163.
        DATA(t164) = strlen( t155 ).
        t157 = COND i( WHEN t157 < 0 THEN 0 WHEN t157 > t164 THEN t164 ELSE t157 ).
        t158 = COND i( WHEN t158 < 0 THEN 0 WHEN t158 > t164 THEN t164 ELSE t158 ).
        IF t157 > t158.
          t164 = t157.
          t157 = t158.
          t158 = t164.
        ENDIF.
        t164 = t158 - t157.
        t154 = t155+t157(t164).
        DATA(t165) = strlen( t154 ).
        t153 = t154.
        IF t153 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t153 TO UPPER CASE.
        ELSE.
          t153 = zlnt_runtime_uppe_91169605024d=>full( t153 ).
        ENDIF.
        t152 = t153.
        DATA t166 TYPE REF TO zif_lnt_msag_references.
        t166 = t2->scope->reg->get_msag_references( ).
        DATA t173 TYPE string.
        t173 = t2->filename.
        DATA t175 TYPE REF TO zcl_lnt_abstract_token.
        t175 = t1->get_first_token( ).
        DATA t178 TYPE string.
        t178 = t63->value.
        t166->add_using( i_filename = t173 i_token = t175 i_message_class = t152 i_number = t178 ).
      ENDIF.
    ELSE.
      DATA t182 TYPE REF TO zcl_lnt_expression_node.
      DATA(t185) = zlnt_runtime_desc_78196487750d=>zlnt_member_d217_b89e20eef6cb.
      t182 = t1->find_direct_expression( i_type_9913 = t185 ).
      DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t182 IS INITIAL ) = abap_true.
      ELSE.
        DATA t190 TYPE string.
        t190 = t182->concat_tokens( ).
        DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t193->has = abap_true.
        t193->value = t190.
        t186 = t193.
      ENDIF.
      DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t196 = t186.
      DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t199) = VALUE abap_bool( ).
      IF t196 IS INITIAL.
        t199 = abap_true.
      ELSEIF t196->has = abap_false.
        t199 = abap_true.
      ENDIF.
      IF t199 = abap_true.
      ELSE.
        DATA t203 TYPE string.
        t203 = t196->value.
        DATA(t206) = VALUE string( ).
        DATA(t208) = 1.
        DATA t209 TYPE i.
        t209 = strlen( t203 ).
        DATA(t212) = strlen( t203 ).
        t208 = COND i( WHEN t208 < 0 THEN 0 WHEN t208 > t212 THEN t212 ELSE t208 ).
        t209 = COND i( WHEN t209 < 0 THEN 0 WHEN t209 > t212 THEN t212 ELSE t209 ).
        IF t208 > t209.
          t212 = t208.
          t208 = t209.
          t209 = t212.
        ENDIF.
        t212 = t209 - t208.
        t206 = t203+t208(t212).
        DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t213->has = abap_true.
        t213->value = t206.
        t198 = t213.
      ENDIF.
      t194 = t198.
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t218 TYPE REF TO zcl_lnt_expression_node.
      DATA(t221) = zlnt_runtime_desc_78196487750d=>zlnt_member_d215_80780944ec3f.
      t218 = t1->find_direct_expression( i_type_9913 = t221 ).
      DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t218 IS INITIAL ) = abap_true.
      ELSE.
        DATA t226 TYPE string.
        t226 = t218->concat_tokens( ).
        DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t229->has = abap_true.
        t229->value = t226.
        t222 = t229.
      ENDIF.
      t216 = t222.
      DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t231) = VALUE abap_bool( ).
      IF t216 IS INITIAL.
        t231 = abap_true.
      ELSEIF t216->has = abap_false.
        t231 = abap_true.
      ENDIF.
      IF t231 = abap_true.
      ELSE.
        DATA t234 TYPE string.
        DATA t235 TYPE string.
        t235 = t216->value.
        DATA(t237) = strlen( t235 ).
        t234 = t235.
        IF t234 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t234 TO UPPER CASE.
        ELSE.
          t234 = zlnt_runtime_uppe_91169605024d=>full( t234 ).
        ENDIF.
        DATA(t238) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t238->has = abap_true.
        t238->value = t234.
        t230 = t238.
      ENDIF.
      t214 = t230.
      DATA(t239) = VALUE abap_bool( ).
      DATA(t240) = VALUE abap_bool( ).
      IF t194 IS BOUND.
        IF t194->has = abap_true.
          t240 = xsdbool( strlen( t194->value ) > 0 ).
        ENDIF.
      ENDIF.
      t239 = t240.
      IF t240 = abap_true.
        DATA(t242) = VALUE abap_bool( ).
        IF t214 IS BOUND.
          IF t214->has = abap_true.
            t242 = xsdbool( strlen( t214->value ) > 0 ).
          ENDIF.
        ENDIF.
        t239 = t242.
      ENDIF.
      IF t239 = abap_true.
        DATA t244 TYPE REF TO zif_lnt_msag_references.
        t244 = t2->scope->reg->get_msag_references( ).
        DATA t251 TYPE string.
        t251 = t2->filename.
        DATA t253 TYPE REF TO zcl_lnt_abstract_token.
        t253 = t1->get_first_token( ).
        DATA t255 TYPE string.
        t255 = t214->value.
        DATA t257 TYPE string.
        t257 = t194->value.
        t244->add_using( i_filename = t251 i_token = t253 i_message_class = t255 i_number = t257 ).
      ENDIF.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d817_cd5ad42efa97.
  ENDMETHOD.
ENDCLASS.
