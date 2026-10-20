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
    CLEAR me->required_parameters.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `requiredParameters`.
  ENDMETHOD.

  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t6 TYPE REF TO object.
    t6 = t1->get_db65( ).
    IF xsdbool( xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_st_method_parameters ) = abap_false ) = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t9 TYPE REF TO zcx_lnt_assert_error.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = |MethodParameters, unexpected input|.
      t9 = NEW zcx_lnt_assert_error( i_message_26cb = t13 ).
      t8 = NEW #( ).
      t8->payload = t9.
      CLEAR t8->source_value.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t16 TYPE REF TO object.
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
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t17 = t1->get_children( )->slice0( ).
    IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
      me->required_parameters = NEW zlnt_runtime_set__1827558fd4c7( ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `requiredParameters`.
    ELSE.
      DATA(t30) = NEW zlnt_runtime_set__1827558fd4c7( ).
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t32.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t36 TYPE REF TO zif_lnt_method_definition.
      t36 ?= t3.
      t34 = t36->get_parameters( )->get_required_parameters( ).
      DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t39 TYPE REF TO object.
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
          t42 = t41->as_ref( ).
          t38 ?= t42.
        ELSE.
          t38 ?= t39.
        ENDIF.
        DATA(t44) = VALUE string( ).
        DATA(t45) = VALUE string( ).
        DATA t46 TYPE REF TO zcl_lnt_fi_identifier.
        t46 = t38.
        DATA(t49) = VALUE string( ).
        t49 = t46->token->str.
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
        ELSE.
          IF t60 > t61 - t59.
            t60 = t61 - t59.
          ENDIF.
          t57 = t58+t59(t60).
        ENDIF.
        IF xsdbool( t57 = |!| ) = abap_true.
          DATA(t64) = VALUE string( ).
          t64 = t49.
          DATA(t66) = VALUE string( ).
          DATA(t68) = 1.
          DATA(t69) = VALUE i( ).
          t69 = strlen( t64 ).
          DATA(t72) = strlen( t64 ).
          IF t68 < 0.
            t68 = t68 + t72.
            IF t68 < 0.
              t68 = 0.
            ENDIF.
          ENDIF.
          IF t68 > t72 OR t69 <= 0.
          ELSE.
            IF t69 > t72 - t68.
              t69 = t72 - t68.
            ENDIF.
            t66 = t64+t68(t69).
          ENDIF.
          t49 = t66.
        ENDIF.
        t45 = t49.
        DATA(t74) = strlen( t45 ).
        t44 = t45.
        IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t44 TO UPPER CASE.
        ELSE.
          t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
        ENDIF.
        t32->load( ).
        APPEND t44 TO t32->items.
        t32->save( ).
      ENDDO.
      me->required_parameters = t30->fromarray( p0 = t32 ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `requiredParameters`.
    ENDIF.
    DO.
      t17->load( ).
      IF xsdbool( lines( t17->items ) > 0 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t81.
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t83.
      DATA t85 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t85.
      DATA t87 TYPE REF TO zif_lnt_node.
      CLEAR t87.
      DATA t88 TYPE REF TO zif_lnt_node.
      CLEAR t88.
      DATA t90 TYPE REF TO object.
      t90 = t17->shift( ).
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      CLEAR t88.
      IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t91 ?= t90.
        DATA t92 TYPE REF TO object.
        t92 = t91->as_ref( ).
        t88 ?= t92.
      ELSE.
        t88 ?= t90.
      ENDIF.
      t87 = t88.
      DATA t93 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t93.
      IF xsdbool( t87 IS INITIAL ) = abap_true.
        CLEAR t93.
      ELSE.
        t93 = t87->get_first_token( ).
      ENDIF.
      t85 = t93.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      IF xsdbool( t85 IS INITIAL ) = abap_true.
        CLEAR t100.
      ELSE.
        DATA(t108) = VALUE string( ).
        t108 = t85->str.
        DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t110->has = abap_true.
        t110->value = t108.
        t100 = t110.
      ENDIF.
      t83 = t100.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      DATA(t112) = VALUE abap_bool( ).
      IF t83 IS INITIAL.
        t112 = abap_true.
      ELSEIF t83->has = abap_false.
        t112 = abap_true.
      ENDIF.
      IF t112 = abap_true.
        CLEAR t111.
      ELSE.
        DATA(t115) = VALUE string( ).
        DATA(t116) = VALUE string( ).
        t116 = t83->value.
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
      t81 = t111.
      DATA(t120) = VALUE abap_bool( ).
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t125->has = abap_true.
      t125->value = |EXPORTING|.
      t122 = t125.
      DATA(t127) = VALUE abap_bool( ).
      DATA(t128) = VALUE abap_bool( ).
      IF t81 IS BOUND.
        t127 = t81->has.
      ENDIF.
      IF t122 IS BOUND.
        t128 = t122->has.
      ENDIF.
      IF t127 = t128.
        IF t127 = abap_false.
          t120 = abap_true.
        ELSEIF t81->value = t122->value.
          t120 = abap_true.
        ENDIF.
      ENDIF.
      IF t120 = abap_true.
        DATA t129 TYPE REF TO zif_lnt_node.
        CLEAR t129.
        DATA t130 TYPE REF TO zif_lnt_node.
        CLEAR t130.
        DATA t132 TYPE REF TO object.
        t132 = t17->shift( ).
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        CLEAR t130.
        IF t132 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t133 ?= t132.
          DATA t134 TYPE REF TO object.
          t134 = t133->as_ref( ).
          t130 ?= t134.
        ELSE.
          t130 ?= t132.
        ENDIF.
        t129 = t130.
        DATA(t140) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t140->has = abap_true.
        t140->value = abap_false.
        me->check_exporting( i_node = t129 i_input_967e = t2 i_method = t3 i_errors = t140 ).
      ELSE.
        DATA(t142) = VALUE abap_bool( ).
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t147->has = abap_true.
        t147->value = |IMPORTING|.
        t144 = t147.
        DATA(t149) = VALUE abap_bool( ).
        DATA(t150) = VALUE abap_bool( ).
        IF t81 IS BOUND.
          t149 = t81->has.
        ENDIF.
        IF t144 IS BOUND.
          t150 = t144->has.
        ENDIF.
        IF t149 = t150.
          IF t149 = abap_false.
            t142 = abap_true.
          ELSEIF t81->value = t144->value.
            t142 = abap_true.
          ENDIF.
        ENDIF.
        IF t142 = abap_true.
          DATA t152 TYPE REF TO zif_lnt_node.
          CLEAR t152.
          DATA t154 TYPE REF TO object.
          t154 = t17->shift( ).
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          CLEAR t152.
          IF t154 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t155 ?= t154.
            DATA t156 TYPE REF TO object.
            t156 = t155->as_ref( ).
            t152 ?= t156.
          ELSE.
            t152 ?= t154.
          ENDIF.
          me->check_importing( i_node = t152 i_input_967e = t2 i_method = t3 ).
        ELSE.
          DATA(t159) = VALUE abap_bool( ).
          DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t164->has = abap_true.
          t164->value = |CHANGING|.
          t161 = t164.
          DATA(t166) = VALUE abap_bool( ).
          DATA(t167) = VALUE abap_bool( ).
          IF t81 IS BOUND.
            t166 = t81->has.
          ENDIF.
          IF t161 IS BOUND.
            t167 = t161->has.
          ENDIF.
          IF t166 = t167.
            IF t166 = abap_false.
              t159 = abap_true.
            ELSEIF t81->value = t161->value.
              t159 = abap_true.
            ENDIF.
          ENDIF.
          IF t159 = abap_true.
            DATA t169 TYPE REF TO zif_lnt_node.
            CLEAR t169.
            DATA t171 TYPE REF TO object.
            t171 = t17->shift( ).
            DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t172.
            CLEAR t169.
            IF t171 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t172 ?= t171.
              DATA t173 TYPE REF TO object.
              t173 = t172->as_ref( ).
              t169 ?= t173.
            ELSE.
              t169 ?= t171.
            ENDIF.
            me->check_changing( i_node = t169 i_input_967e = t2 i_method = t3 ).
          ELSE.
            DATA(t176) = VALUE abap_bool( ).
            DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t181->has = abap_true.
            t181->value = |RECEIVING|.
            t178 = t181.
            DATA(t183) = VALUE abap_bool( ).
            DATA(t184) = VALUE abap_bool( ).
            IF t81 IS BOUND.
              t183 = t81->has.
            ENDIF.
            IF t178 IS BOUND.
              t184 = t178->has.
            ENDIF.
            IF t183 = t184.
              IF t183 = abap_false.
                t176 = abap_true.
              ELSEIF t81->value = t178->value.
                t176 = abap_true.
              ENDIF.
            ENDIF.
            IF t176 = abap_true.
              DATA t186 TYPE REF TO zif_lnt_node.
              CLEAR t186.
              DATA t188 TYPE REF TO object.
              t188 = t17->shift( ).
              DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t189.
              CLEAR t186.
              IF t188 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t189 ?= t188.
                DATA t190 TYPE REF TO object.
                t190 = t189->as_ref( ).
                t186 ?= t190.
              ELSE.
                t186 ?= t188.
              ENDIF.
              me->check_receiving( i_node = t186 i_input_967e = t2 i_method = t3 ).
            ELSE.
              DATA(t193) = VALUE abap_bool( ).
              DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t198->has = abap_true.
              t198->value = |EXCEPTIONS|.
              t195 = t198.
              DATA(t200) = VALUE abap_bool( ).
              DATA(t201) = VALUE abap_bool( ).
              IF t81 IS BOUND.
                t200 = t81->has.
              ENDIF.
              IF t195 IS BOUND.
                t201 = t195->has.
              ENDIF.
              IF t200 = t201.
                IF t200 = abap_false.
                  t193 = abap_true.
                ELSEIF t81->value = t195->value.
                  t193 = abap_true.
                ENDIF.
              ENDIF.
              IF t193 = abap_true.
                DATA t203 TYPE REF TO zif_lnt_union_734b3529.
                CLEAR t203.
                DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t204.
                DATA t205 TYPE REF TO zif_lnt_node.
                CLEAR t205.
                DATA t206 TYPE REF TO zif_lnt_node.
                CLEAR t206.
                DATA t208 TYPE REF TO object.
                t208 = t17->shift( ).
                DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t209.
                CLEAR t206.
                IF t208 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t209 ?= t208.
                  DATA t210 TYPE REF TO object.
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
                t213 = t204->as_ref( ).
                t203 ?= t213.
                DATA t215 TYPE REF TO zcl_lnt_expression_node.
                DATA(t217) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
                t215 = t203->find_first_expression( i_type_9913 = t217 ).
                DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t218.
                DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t219.
                DATA t221 TYPE REF TO zcl_lnt_expression_node.
                t221 = t215.
                DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t223.
                IF xsdbool( t221 IS INITIAL ) = abap_true.
                  CLEAR t223.
                ELSE.
                  DATA t228 TYPE REF TO zcl_lnt_expression_node.
                  t228 = t221.
                  DATA(t230) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
                  t223 = t228->find_all_expressions( i_type_9913 = t230 ).
                ENDIF.
                t219 = t223.
                DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t231.
                IF xsdbool( t219 IS BOUND ) = abap_true.
                  t231 = t219.
                ELSE.
                  CREATE OBJECT t231.
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
                    t241 = t240->as_ref( ).
                    t237 ?= t241.
                  ELSE.
                    t237 ?= t238.
                  ENDIF.
                  DATA t242 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t245.
                  DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CREATE OBJECT t247.
                  t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                  t247->sval = |Read From|.
                  t245 = t247.
                  DATA t250 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t250.
                  t242 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t237 i_input_967e = t2 i_ref_type = t245 i_allow_generic_deference = t250 ).
                ENDDO.
              ELSE.
                DATA t251 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
                CLEAR t251.
                DATA t252 TYPE REF TO zcx_lnt_assert_error.
                CLEAR t252.
                DATA(t255) = VALUE string( ).
                DATA(t256) = |MethodParameters, unexpected token, |.
                DATA(t257) = VALUE string( ).
                DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t258 = t81.
                DATA(t260) = VALUE string( ).
                DATA(t261) = VALUE abap_bool( ).
                IF t258 IS INITIAL.
                  t261 = abap_true.
                ELSEIF t258->has = abap_false.
                  t261 = abap_true.
                ENDIF.
                IF t261 = abap_true.
                  t260 = |undefined|.
                ELSE.
                  t260 = t258->value.
                ENDIF.
                t257 = t260.
                DATA(t266) = strlen( t256 ).
                t255 = |{ t256 }{ t257 }|.
                DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t267->has = abap_true.
                t267->value = t255.
                t252 = NEW zcx_lnt_assert_error( i_message_26cb = t267 ).
                t251 = NEW #( ).
                t251->payload = t252.
                CLEAR t251->source_value.
                DATA t269 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t269.
                DATA t270 TYPE REF TO object.
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
                RAISE EXCEPTION t251.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    me->report_errors( i_node = t1 i_input_967e = t2 ).
  ENDMETHOD.

  METHOD check_receiving.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_void_type.
      DATA t10 TYPE REF TO object.
      t10 = t3.
      t8 ?= t10.
      t5 = t8.
    ELSE.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t15 TYPE REF TO zif_lnt_method_definition.
      t15 ?= t3.
      t12 = t15->get_parameters( )->get_returning( ).
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      IF xsdbool( t12 IS INITIAL ) = abap_true.
      ELSE.
        t17 = t12->type_cba0.
      ENDIF.
      t5 = t17.
    ENDIF.
    t4 = t5.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t36 = t2->issues.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t38 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Method does not have a returning parameter| i_fix = t43 ).
      t36->load( ).
      APPEND t38 TO t36->items.
      t36->save( ).
      RETURN.
    ENDIF.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ) = abap_true.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t49 = t2->issues.
      DATA t51 TYPE REF TO zcl_lnt_issue.
      DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t51 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |checkReceiving, not an expression node| i_fix = t56 ).
      t49->load( ).
      APPEND t51 TO t49->items.
      t49->save( ).
      RETURN.
    ENDIF.

    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    DATA t59 TYPE REF TO zcl_lnt_expression_node.
    DATA t61 TYPE REF TO object.
    t61 = t1.
    t59 ?= t61.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t57 = t59->find_direct_expression( i_type_9913 = t62 ).
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    DATA t65 TYPE REF TO zcl_lnt_expression_node.
    t65 = t57.
    DATA t67 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t65 IS INITIAL ) = abap_true.
    ELSE.
      DATA t72 TYPE REF TO zcl_lnt_expression_node.
      t72 = t65.
      DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t67 = t72->find_direct_expression( i_type_9913 = t74 ).
    ENDIF.
    t63 = t67.
    IF xsdbool( t63 IS BOUND ) = abap_true.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t63 i_input_967e = t2 i_type_9913 = t4 ).
    ELSE.
      IF xsdbool( t57 IS BOUND ) = abap_true.
        DATA t87 TYPE REF TO zcl_lnt_abstract_type.
        t87 = zcl_lnt_sy_target=>run_syntax( i_node = t57 i_input_967e = t2 ).
        DATA t92 TYPE abap_bool.
        DATA t93 TYPE abap_bool.
        t93 = xsdbool( t87 IS BOUND ).
        t92 = t93.
        IF t93 = abap_true.
          DATA t98 TYPE REF TO zcl_lnt_current_scope.
          t98 = t2->scope.
          t92 = xsdbool( NEW zcl_lnt_type_utils( i_scope = t98 )->is_assignable( i_source_75cf = t4 i_target_5f8a = t87 ) = abap_false ).
        ENDIF.
        IF t92 = abap_true.
          DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t113 = t2->issues.
          DATA t115 TYPE REF TO zcl_lnt_issue.
          DATA t118 TYPE REF TO zcl_lnt_expression_node.
          DATA t120 TYPE REF TO object.
          t120 = t1.
          t118 ?= t120.
          DATA t122 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t115 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t118->get_first_token( ) i_message_26cb = |Method returning value not type compatible| i_fix = t122 ).
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
    t4 = me->parameter_list_t( i_node = t1 i_input_967e = t2 ).
    DATA t10 TYPE REF TO zcl_lnt_ilist_item_t.
    DATA t11 TYPE REF TO object.
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
      CLEAR t15.
      IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
        DATA t19 TYPE REF TO zcl_lnt_void_type.
        DATA t21 TYPE REF TO object.
        t21 = t3.
        t19 ?= t21.
        t15 = t19.
      ELSE.
        DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t22.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t27 TYPE REF TO zif_lnt_method_definition.
        t27 ?= t3.
        t24 = t27->get_parameters( )->get_exporting( ).
        DATA t29 TYPE i.
        t24->load( ).
        t29 = lines( t24->items ).
        DATA t32 TYPE i.
        t32 = 0.
        DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t34.
        DO.
          IF xsdbool( t32 < t29 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t39.
          DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t41.
          DATA t44 TYPE REF TO object.
          t44 = t24->get( p0 = t32 ).
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
          t39 = t41.
          DATA(t48) = VALUE string( ).
          DATA(t49) = VALUE string( ).
          DATA t50 TYPE REF TO zcl_lnt_fi_identifier.
          t50 = t39.
          DATA t53 TYPE string.
          t53 = t50->token->str.
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
          ELSE.
            IF t64 > t65 - t63.
              t64 = t65 - t63.
            ENDIF.
            t61 = t62+t63(t64).
          ENDIF.
          IF xsdbool( t61 = |!| ) = abap_true.
            DATA t68 TYPE string.
            t68 = t53.
            DATA(t70) = VALUE string( ).
            DATA(t72) = 1.
            DATA t73 TYPE i.
            t73 = strlen( t68 ).
            DATA(t76) = strlen( t68 ).
            IF t72 < 0.
              t72 = t72 + t76.
              IF t72 < 0.
                t72 = 0.
              ENDIF.
            ENDIF.
            IF t72 > t76 OR t73 <= 0.
            ELSE.
              IF t73 > t76 - t72.
                t73 = t76 - t72.
              ENDIF.
              t70 = t68+t72(t73).
            ENDIF.
            t53 = t70.
          ENDIF.
          t49 = t53.
          DATA(t78) = strlen( t49 ).
          t48 = t49.
          IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t48 TO UPPER CASE.
          ELSE.
            t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
          ENDIF.
          IF xsdbool( t48 = t10->name ) = abap_true.
            t34 = t39.
            EXIT.
          ENDIF.
          DATA(t87) = 1.
          t32 = t32 + t87.
        ENDDO.
        t22 = t34.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF xsdbool( t22 IS INITIAL ) = abap_true.
          DATA t97 TYPE string.
          DATA t98 TYPE string.
          DATA(t99) = |Method exporting parameter "|.
          DATA t100 TYPE string.
          t100 = t10->name.
          DATA(t102) = strlen( t99 ).
          t98 = |{ t99 }{ t100 }|.
          DATA(t104) = strlen( t98 ).
          t97 = |{ t98 }{ |" does not exist| }|.
          DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t105 = t2->issues.
          DATA t107 TYPE REF TO zcl_lnt_issue.
          DATA t109 TYPE REF TO zcl_lnt_abstract_token.
          t109 = t1->get_first_token( ).
          DATA t112 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t112.
          t107 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t109 i_message_26cb = t97 i_fix = t112 ).
          t105->load( ).
          APPEND t107 TO t105->items.
          t105->save( ).
          RETURN.
        ENDIF.
        t15 = t22->type_cba0.
      ENDIF.
      DATA t122 TYPE REF TO zcl_lnt_expression_node.
      DATA t124 TYPE REF TO zcl_lnt_expression_node.
      t124 = t10->target.
      DATA(t126) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t122 = t124->find_direct_expression( i_type_9913 = t126 ).
      IF xsdbool( t122 IS BOUND ) = abap_true.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t122 i_input_967e = t2 i_type_9913 = t15 ).
      ELSE.
        DATA t139 TYPE REF TO zcl_lnt_abstract_type.
        t139 = t10->target_type.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        IF xsdbool( t139 IS INITIAL ) = abap_true.
          DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t147 = t2->issues.
          DATA t149 TYPE REF TO zcl_lnt_issue.
          DATA t151 TYPE REF TO zcl_lnt_abstract_token.
          t151 = t1->get_first_token( ).
          DATA t154 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t154.
          t149 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t151 i_message_26cb = |Could not determine target type| i_fix = t154 ).
          t147->load( ).
          APPEND t149 TO t147->items.
          t147->save( ).
          RETURN.
        ELSE.
          DATA t155 TYPE abap_bool.
          DATA t156 TYPE abap_bool.
          DATA t157 TYPE REF TO zcl_lnt_abstract_type.
          t157 = t10->target_type.
          t156 = xsdbool( t157 IS BOUND ).
          t155 = t156.
          IF t156 = abap_true.
            DATA t161 TYPE REF TO zcl_lnt_type_utils.
            DATA t162 TYPE REF TO zcl_lnt_current_scope.
            t162 = t2->scope.
            t161 = NEW zcl_lnt_type_utils( i_scope = t162 ).
            DATA t164 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t164.
            t164 = t15.
            DATA t169 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t169.
            t169 = t10->target_type.
            DATA t175 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t175.
            t155 = xsdbool( t161->is_assignable_strict( i_source_75cf = t164 i_target_5f8a = t169 i_node = t175 ) = abap_false ).
          ENDIF.
          IF t155 = abap_true.
            DATA t178 TYPE string.
            DATA(t179) = |Method parameter type not compatible, |.
            DATA t180 TYPE string.
            t180 = t10->name.
            DATA(t182) = strlen( t179 ).
            t178 = |{ t179 }{ t180 }|.
            DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t183 = t2->issues.
            DATA t185 TYPE REF TO zcl_lnt_issue.
            DATA t187 TYPE REF TO zcl_lnt_abstract_token.
            t187 = t1->get_first_token( ).
            DATA t190 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t190.
            t185 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t187 i_message_26cb = t178 i_fix = t190 ).
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
    t4 = me->parameter_list_t( i_node = t1 i_input_967e = t2 ).
    DATA t10 TYPE REF TO zcl_lnt_ilist_item_t.
    DATA t11 TYPE REF TO object.
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
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      t18 = t10->target.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t17 = t18->find_first_expression( i_type_9913 = t20 ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      IF xsdbool( xsdbool( t17 IS INITIAL ) = abap_false ) = abap_true.
        DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t28 = t2->issues.
        DATA t30 TYPE REF TO zcl_lnt_issue.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        t32 = t1->get_first_token( ).
        DATA t35 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t35.
        t30 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t32 i_message_26cb = |CHANGING cannot be inlined| i_fix = t35 ).
        t28->load( ).
        APPEND t30 TO t28->items.
        t28->save( ).
        RETURN.
      ENDIF.
      DATA t36 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t36.
      IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_void_type.
        DATA t42 TYPE REF TO object.
        t42 = t3.
        t40 ?= t42.
        t36 = t40.
      ELSE.
        DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t43.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t48 TYPE REF TO zif_lnt_method_definition.
        t48 ?= t3.
        t45 = t48->get_parameters( )->get_changing( ).
        DATA t50 TYPE i.
        t45->load( ).
        t50 = lines( t45->items ).
        DATA t53 TYPE i.
        t53 = 0.
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t55.
        DO.
          IF xsdbool( t53 < t50 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t60.
          DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t62.
          DATA t65 TYPE REF TO object.
          t65 = t45->get( p0 = t53 ).
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
          t60 = t62.
          DATA(t69) = VALUE string( ).
          DATA(t70) = VALUE string( ).
          DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
          t71 = t60.
          DATA t74 TYPE string.
          t74 = t71->token->str.
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
          ELSE.
            IF t85 > t86 - t84.
              t85 = t86 - t84.
            ENDIF.
            t82 = t83+t84(t85).
          ENDIF.
          IF xsdbool( t82 = |!| ) = abap_true.
            DATA t89 TYPE string.
            t89 = t74.
            DATA(t91) = VALUE string( ).
            DATA(t93) = 1.
            DATA t94 TYPE i.
            t94 = strlen( t89 ).
            DATA(t97) = strlen( t89 ).
            IF t93 < 0.
              t93 = t93 + t97.
              IF t93 < 0.
                t93 = 0.
              ENDIF.
            ENDIF.
            IF t93 > t97 OR t94 <= 0.
            ELSE.
              IF t94 > t97 - t93.
                t94 = t97 - t93.
              ENDIF.
              t91 = t89+t93(t94).
            ENDIF.
            t74 = t91.
          ENDIF.
          t70 = t74.
          DATA(t99) = strlen( t70 ).
          t69 = t70.
          IF t69 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t69 TO UPPER CASE.
          ELSE.
            t69 = zlnt_runtime_uppe_91169605024d=>full( t69 ).
          ENDIF.
          IF xsdbool( t69 = t10->name ) = abap_true.
            t55 = t60.
            EXIT.
          ENDIF.
          DATA(t108) = 1.
          t53 = t53 + t108.
        ENDDO.
        t43 = t55.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF xsdbool( t43 IS INITIAL ) = abap_true.
          DATA t118 TYPE string.
          DATA t119 TYPE string.
          DATA(t120) = |Method changing parameter "|.
          DATA t121 TYPE string.
          t121 = t10->name.
          DATA(t123) = strlen( t120 ).
          t119 = |{ t120 }{ t121 }|.
          DATA(t125) = strlen( t119 ).
          t118 = |{ t119 }{ |" does not exist| }|.
          DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t126 = t2->issues.
          DATA t128 TYPE REF TO zcl_lnt_issue.
          DATA t130 TYPE REF TO zcl_lnt_abstract_token.
          t130 = t1->get_first_token( ).
          DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t133.
          t128 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t130 i_message_26cb = t118 i_fix = t133 ).
          t126->load( ).
          APPEND t128 TO t126->items.
          t126->save( ).
          RETURN.
        ENDIF.
        t36 = t43->type_cba0.
      ENDIF.
      DATA t143 TYPE abap_bool.
      DATA t144 TYPE abap_bool.
      DATA t145 TYPE REF TO zcl_lnt_abstract_type.
      t145 = t10->target_type.
      t144 = xsdbool( t145 IS BOUND ).
      t143 = t144.
      IF t144 = abap_true.
        DATA t149 TYPE REF TO zcl_lnt_type_utils.
        DATA t150 TYPE REF TO zcl_lnt_current_scope.
        t150 = t2->scope.
        t149 = NEW zcl_lnt_type_utils( i_scope = t150 ).
        DATA t152 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t152.
        t152 = t36.
        DATA t157 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t157.
        t157 = t10->target_type.
        DATA t163 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t163.
        t143 = xsdbool( t149->is_assignable_strict( i_source_75cf = t152 i_target_5f8a = t157 i_node = t163 ) = abap_false ).
      ENDIF.
      IF t143 = abap_true.
        DATA t166 TYPE string.
        DATA(t167) = |Method parameter type not compatible, |.
        DATA t168 TYPE string.
        t168 = t10->name.
        DATA(t170) = strlen( t167 ).
        t166 = |{ t167 }{ t168 }|.
        DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t171 = t2->issues.
        DATA t173 TYPE REF TO zcl_lnt_issue.
        DATA t175 TYPE REF TO zcl_lnt_abstract_token.
        t175 = t1->get_first_token( ).
        DATA t178 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t178.
        t173 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t175 i_message_26cb = t166 i_fix = t178 ).
        t171->load( ).
        APPEND t173 TO t171->items.
        t171->save( ).
        RETURN.
      ENDIF.
      DATA t179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t179.
      DATA t180 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t180 = me->required_parameters.
      DATA t182 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t182.
      IF xsdbool( t180 IS INITIAL ) = abap_true.
        CLEAR t182.
      ELSE.
        DATA t186 TYPE abap_bool.
        DATA t187 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        t187 = t180.
        DATA t189 TYPE string.
        t189 = t10->name.
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
      DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t10->has = abap_true.
      t10->value = abap_true.
      t4 = t10.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t12 = me->parameter_list_s( i_node = t1 i_input_967e = t2 i_method = t3 ).
    IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zif_lnt_method_definition.
    t25 ?= t3.
    t22 = t25->get_parameters( )->get_importing( ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->required_parameters IS INITIAL ) = abap_true.
      DATA(t37) = NEW zlnt_runtime_set__1827558fd4c7( ).
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t39.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t43 TYPE REF TO zif_lnt_method_definition.
      t43 ?= t3.
      t41 = t43->get_parameters( )->get_required_parameters( ).
      DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t46 TYPE REF TO object.
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
        DATA(t51) = VALUE string( ).
        DATA(t52) = VALUE string( ).
        DATA t53 TYPE REF TO zcl_lnt_fi_identifier.
        t53 = t45.
        DATA t56 TYPE string.
        t56 = t53->token->str.
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
        ELSE.
          IF t67 > t68 - t66.
            t67 = t68 - t66.
          ENDIF.
          t64 = t65+t66(t67).
        ENDIF.
        IF xsdbool( t64 = |!| ) = abap_true.
          DATA t71 TYPE string.
          t71 = t56.
          DATA(t73) = VALUE string( ).
          DATA(t75) = 1.
          DATA t76 TYPE i.
          t76 = strlen( t71 ).
          DATA(t79) = strlen( t71 ).
          IF t75 < 0.
            t75 = t75 + t79.
            IF t75 < 0.
              t75 = 0.
            ENDIF.
          ENDIF.
          IF t75 > t79 OR t76 <= 0.
          ELSE.
            IF t76 > t79 - t75.
              t76 = t79 - t75.
            ENDIF.
            t73 = t71+t75(t76).
          ENDIF.
          t56 = t73.
        ENDIF.
        t52 = t56.
        DATA(t81) = strlen( t52 ).
        t51 = t52.
        IF t51 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t51 TO UPPER CASE.
        ELSE.
          t51 = zlnt_runtime_uppe_91169605024d=>full( t51 ).
        ENDIF.
        t39->load( ).
        APPEND t51 TO t39->items.
        t39->save( ).
      ENDDO.
      me->required_parameters = t37->fromarray( p0 = t39 ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `requiredParameters`.
    ENDIF.
    DATA t85 TYPE REF TO zcl_lnt_ilist_item_s.
    DATA t86 TYPE REF TO object.
    DATA(t87) = VALUE i( ).
    DO.
      t12->load( ).
      IF t87 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t86.
      READ TABLE t12->items INDEX t87 + 1 INTO t86.
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
      DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t92 = t22.
      DATA t94 TYPE i.
      t92->load( ).
      t94 = lines( t92->items ).
      DATA t97 TYPE i.
      t97 = 0.
      DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t99.
      DO.
        IF xsdbool( t97 < t94 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t104.
        DATA t106 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t106.
        DATA t109 TYPE REF TO object.
        t109 = t92->get( p0 = t97 ).
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
        t104 = t106.
        DATA(t113) = VALUE string( ).
        DATA(t114) = VALUE string( ).
        DATA t115 TYPE REF TO zcl_lnt_fi_identifier.
        t115 = t104.
        DATA t118 TYPE string.
        t118 = t115->token->str.
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
        ELSE.
          IF t129 > t130 - t128.
            t129 = t130 - t128.
          ENDIF.
          t126 = t127+t128(t129).
        ENDIF.
        IF xsdbool( t126 = |!| ) = abap_true.
          DATA t133 TYPE string.
          t133 = t118.
          DATA(t135) = VALUE string( ).
          DATA(t137) = 1.
          DATA t138 TYPE i.
          t138 = strlen( t133 ).
          DATA(t141) = strlen( t133 ).
          IF t137 < 0.
            t137 = t137 + t141.
            IF t137 < 0.
              t137 = 0.
            ENDIF.
          ENDIF.
          IF t137 > t141 OR t138 <= 0.
          ELSE.
            IF t138 > t141 - t137.
              t138 = t141 - t137.
            ENDIF.
            t135 = t133+t137(t138).
          ENDIF.
          t118 = t135.
        ENDIF.
        t114 = t118.
        DATA(t143) = strlen( t114 ).
        t113 = t114.
        IF t113 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t113 TO UPPER CASE.
        ELSE.
          t113 = zlnt_runtime_uppe_91169605024d=>full( t113 ).
        ENDIF.
        IF xsdbool( t113 = t85->name ) = abap_true.
          t99 = t104.
          EXIT.
        ENDIF.
        DATA(t152) = 1.
        t97 = t97 + t152.
      ENDDO.
      t90 = t99.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      IF xsdbool( t90 IS INITIAL ) = abap_true.
        DATA t162 TYPE string.
        DATA t163 TYPE string.
        DATA(t164) = |Method importing parameter "|.
        DATA t165 TYPE string.
        t165 = t85->name.
        DATA(t167) = strlen( t164 ).
        t163 = |{ t164 }{ t165 }|.
        DATA(t169) = strlen( t163 ).
        t162 = |{ t163 }{ |" does not exist| }|.
        DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t170 = t2->issues.
        DATA t172 TYPE REF TO zcl_lnt_issue.
        DATA t174 TYPE REF TO zcl_lnt_abstract_token.
        t174 = t1->get_first_token( ).
        DATA t177 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t177.
        t172 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t174 i_message_26cb = t162 i_fix = t177 ).
        t170->load( ).
        APPEND t172 TO t170->items.
        t170->save( ).
        CONTINUE.
      ENDIF.
      DATA t180 TYPE REF TO zcl_lnt_type_utils.
      DATA t181 TYPE REF TO zcl_lnt_current_scope.
      t181 = t2->scope.
      t180 = NEW zcl_lnt_type_utils( i_scope = t181 ).
      DATA t183 TYPE REF TO zcl_lnt_abstract_type.
      t183 = t85->source_type.
      DATA t185 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t185.
      t185 = t90->type_cba0.
      DATA t196 TYPE REF TO zcl_lnt_expression_node.
      t196 = t85->source.
      IF xsdbool( t180->is_assignable_strict( i_source_75cf = t183 i_target_5f8a = t185 i_node = t196 ) = abap_false ) = abap_true.
        DATA t201 TYPE string.
        DATA(t202) = |Method parameter type not compatible, |.
        DATA t203 TYPE string.
        t203 = t85->name.
        DATA(t205) = strlen( t202 ).
        t201 = |{ t202 }{ t203 }|.
        DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t206 = t2->issues.
        DATA t208 TYPE REF TO zcl_lnt_issue.
        DATA t210 TYPE REF TO zcl_lnt_abstract_token.
        t210 = t1->get_first_token( ).
        DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t213.
        t208 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t210 i_message_26cb = t201 i_fix = t213 ).
        t206->load( ).
        APPEND t208 TO t206->items.
        t206->save( ).
        RETURN.
      ENDIF.

      DATA t214 TYPE abap_bool.
      DATA t215 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t215 = me->required_parameters.
      DATA t217 TYPE string.
      t217 = t85->name.
      t214 = t215->delete( p0 = t217 ).
    ENDDO.
    IF xsdbool( t4->value = abap_true ) = abap_true.
      me->report_errors( i_node = t1 i_input_967e = t2 ).
    ENDIF.
  ENDMETHOD.

  METHOD report_errors.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t6 = me->required_parameters.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t8 = t6->values( ).
    ENDIF.
    t4 = t8.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      t15 = t4.
    ELSE.
      CREATE OBJECT t15.
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
      DATA t24 TYPE string.
      DATA t25 TYPE string.
      DATA(t26) = |method parameter "|.
      DATA(t28) = strlen( t26 ).
      t25 = |{ t26 }{ t21 }|.
      DATA(t30) = strlen( t25 ).
      t24 = |{ t25 }{ |" must be supplied| }|.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t31 = t2->issues.
      DATA t33 TYPE REF TO zcl_lnt_issue.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      t35 = t1->get_first_token( ).
      DATA t38 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t38.
      t33 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t35 i_message_26cb = t24 i_fix = t38 ).
      t31->load( ).
      APPEND t33 TO t31->items.
      t31->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD parameter_list_s.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO object.
    t14 = t1->get_db65( ).
    IF xsdbool( xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_parameter_list_s ) = abap_false ) = abap_true.
      DATA t17 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t18 TYPE REF TO zcx_lnt_assert_error.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = |parameterListS, unexpected node|.
      t18 = NEW zcx_lnt_assert_error( i_message_26cb = t22 ).
      t17 = NEW #( ).
      t17->payload = t18.
      CLEAR t17->source_value.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
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
      RAISE EXCEPTION t17.
    ENDIF.

    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    DATA t28 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t28 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t30 = t1->get_children( ).
    DATA t33 TYPE REF TO zif_lnt_node.
    DATA t34 TYPE REF TO object.
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
        t37 = t36->as_ref( ).
        t33 ?= t37.
      ELSE.
        t33 ?= t34.
      ENDIF.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE abap_bool( ).
      DATA t41 TYPE REF TO object.
      t41 = t33->get_db65( ).
      t39 = xsdbool( xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_parameter_s ) = abap_false ).
      t38 = t39.
      IF t39 = abap_false.
        t38 = xsdbool( xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
      ENDIF.
      IF t38 = abap_true.
        DATA t46 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        DATA t47 TYPE REF TO zcx_lnt_assert_error.
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = |parameterListS, unexpected node, child|.
        t47 = NEW zcx_lnt_assert_error( i_message_26cb = t51 ).
        t46 = NEW #( ).
        t46->payload = t47.
        CLEAR t46->source_value.
        DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t53.
        DATA t54 TYPE REF TO object.
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
        RAISE EXCEPTION t46.
      ENDIF.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t57.
      DATA t59 TYPE REF TO object.
      t59 = t33.
      t57 ?= t59.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t55 = t57->find_direct_expression( i_type_9913 = t60 ).
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t65.
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      t67 = t55.
      DATA t69 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t69.
      IF xsdbool( t67 IS INITIAL ) = abap_true.
        CLEAR t69.
      ELSE.
        t69 = t67->get_first_token( ).
      ENDIF.
      t65 = t69.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      IF xsdbool( t65 IS INITIAL ) = abap_true.
        CLEAR t76.
      ELSE.
        DATA(t84) = VALUE string( ).
        t84 = t65->str.
        DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t86->has = abap_true.
        t86->value = t84.
        t76 = t86.
      ENDIF.
      t63 = t76.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t87.
      DATA(t88) = VALUE abap_bool( ).
      IF t63 IS INITIAL.
        t88 = abap_true.
      ELSEIF t63->has = abap_false.
        t88 = abap_true.
      ENDIF.
      IF t88 = abap_true.
        CLEAR t87.
      ELSE.
        DATA(t91) = VALUE string( ).
        DATA(t92) = VALUE string( ).
        t92 = t63->value.
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
      t61 = t87.
      DATA(t96) = VALUE abap_bool( ).
      DATA(t97) = VALUE abap_bool( ).
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t98 = t61.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      CLEAR t100.
      DATA(t102) = VALUE abap_bool( ).
      IF t98 IS INITIAL.
        t102 = abap_true.
      ELSEIF t98->has = abap_false.
        t102 = abap_true.
      ENDIF.
      t97 = t102.
      t96 = t97.
      IF t97 = abap_false.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        CLEAR t107.
        t96 = xsdbool( t55 IS INITIAL ).
      ENDIF.
      IF t96 = abap_true.
        DATA t111 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        DATA t112 TYPE REF TO zcx_lnt_assert_error.
        DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t116->has = abap_true.
        t116->value = |parameterListS, no name determined|.
        t112 = NEW zcx_lnt_assert_error( i_message_26cb = t116 ).
        t111 = NEW #( ).
        t111->payload = t112.
        CLEAR t111->source_value.
        DATA t118 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t118.
        DATA t119 TYPE REF TO object.
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
        RAISE EXCEPTION t111.
      ENDIF.
      DATA(t122) = VALUE string( ).
      t122 = t61->value.
      IF t28->has( p0 = t122 ) = abap_true.
        DATA(t124) = VALUE string( ).
        DATA(t126) = VALUE string( ).
        DATA(t127) = |Method parameter "|.
        DATA(t128) = VALUE string( ).
        t128 = t61->value.
        DATA(t130) = strlen( t127 ).
        t126 = |{ t127 }{ t128 }|.
        DATA(t132) = strlen( t126 ).
        t124 = |{ t126 }{ |" is supplied more than once| }|.
        DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t133 = t2->issues.
        DATA t135 TYPE REF TO zcl_lnt_issue.
        DATA t137 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t137.
        t137 = t55->get_first_token( ).
        DATA t141 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t141.
        t135 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t137 i_message_26cb = t124 i_fix = t141 ).
        t133->load( ).
        APPEND t135 TO t133->items.
        t133->save( ).
      ENDIF.
      DATA t142 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t144) = VALUE string( ).
      t144 = t61->value.
      t142 = t28->add( p0 = t144 ).
      DATA t146 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t146.
      DATA t148 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t148.
      DATA t150 TYPE REF TO object.
      t150 = t33.
      t148 ?= t150.
      DATA(t151) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t146 = t148->find_direct_expression( i_type_9913 = t151 ).
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      CLEAR t155.
      IF xsdbool( t146 IS INITIAL ) = abap_true.
        DATA t159 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        DATA t160 TYPE REF TO zcx_lnt_assert_error.
        DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t164->has = abap_true.
        t164->value = |parameterListS, no source found|.
        t160 = NEW zcx_lnt_assert_error( i_message_26cb = t164 ).
        t159 = NEW #( ).
        t159->payload = t160.
        CLEAR t159->source_value.
        DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t166.
        DATA t167 TYPE REF TO object.
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
        RAISE EXCEPTION t159.
      ENDIF.
      DATA t168 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t168.
      CLEAR t168.
      IF xsdbool( xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ) = abap_true.
        DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t173.
        DATA t175 TYPE REF TO zif_lnt_method_definition.
        CLEAR t175.
        t175 ?= t3.
        t173 = t175->get_parameters( )->get_importing( ).
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
            t181 = t180->as_ref( ).
            t177 ?= t181.
          ELSE.
            t177 ?= t178.
          ENDIF.
          DATA(t183) = VALUE string( ).
          DATA(t184) = VALUE string( ).
          DATA t185 TYPE REF TO zcl_lnt_fi_identifier.
          t185 = t177.
          DATA(t188) = VALUE string( ).
          t188 = t185->token->str.
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
          ELSE.
            IF t199 > t200 - t198.
              t199 = t200 - t198.
            ENDIF.
            t196 = t197+t198(t199).
          ENDIF.
          IF xsdbool( t196 = |!| ) = abap_true.
            DATA(t203) = VALUE string( ).
            t203 = t188.
            DATA(t205) = VALUE string( ).
            DATA(t207) = 1.
            DATA(t208) = VALUE i( ).
            t208 = strlen( t203 ).
            DATA(t211) = strlen( t203 ).
            IF t207 < 0.
              t207 = t207 + t211.
              IF t207 < 0.
                t207 = 0.
              ENDIF.
            ENDIF.
            IF t207 > t211 OR t208 <= 0.
            ELSE.
              IF t208 > t211 - t207.
                t208 = t211 - t207.
              ENDIF.
              t205 = t203+t207(t208).
            ENDIF.
            t188 = t205.
          ENDIF.
          t184 = t188.
          DATA(t213) = strlen( t184 ).
          t183 = t184.
          IF t183 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t183 TO UPPER CASE.
          ELSE.
            t183 = zlnt_runtime_uppe_91169605024d=>full( t183 ).
          ENDIF.
          IF xsdbool( t183 = t61->value ) = abap_true.
            t168 = t177->type_cba0.
            EXIT.
          ENDIF.
        ENDDO.
      ELSE.
        DATA t224 TYPE REF TO zcl_lnt_void_type.
        CLEAR t224.
        DATA t226 TYPE REF TO object.
        t226 = t3.
        t224 ?= t226.
        t168 = t224.
      ENDIF.
      DATA t227 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t227.
      DATA t229 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t229.
      t229 = t146.
      DATA t236 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t236.
      DATA t237 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t237.
      DATA t238 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t238.
      t227 = zcl_lnt_sy_source=>run_syntax( i_node = t229 i_input_967e = t2 i_target_type = t168 i_write_reference = t236 i_allow_generic_deference = t237 i_read_reference = t238 ).
      DATA(t239) = VALUE abap_bool( ).
      t239 = zcl_lnt_chck_offst_lngth_mdl=>check_offset_length( i_source_75cf = t146 i_source_type = t227 i_method = t3 i_input_967e = t2 ).
      DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t248.
      CLEAR t248.
      IF xsdbool( t227 IS INITIAL ) = abap_true.
        IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
          DATA t254 TYPE REF TO zcl_lnt_void_type.
          CLEAR t254.
          DATA t256 TYPE REF TO object.
          t256 = t3.
          t254 ?= t256.
          t227 = t254.
        ELSE.
          DATA(t257) = VALUE string( ).
          DATA(t259) = VALUE string( ).
          DATA(t260) = |No source type determined for parameter |.
          DATA(t261) = VALUE string( ).
          t261 = t61->value.
          DATA(t263) = strlen( t260 ).
          t259 = |{ t260 }{ t261 }|.
          DATA(t265) = strlen( t259 ).
          t257 = |{ t259 }{ | input| }|.
          DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t266 = t2->issues.
          DATA t268 TYPE REF TO zcl_lnt_issue.
          DATA t270 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t270.
          t270 = t1->get_first_token( ).
          DATA t274 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t274.
          t268 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t270 i_message_26cb = t257 i_fix = t274 ).
          t266->load( ).
          APPEND t268 TO t266->items.
          t266->save( ).
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          DATA(t278) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t279->has = abap_true.
          t279->value = t278.
          t276 = t279.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t281.
          t227 = zcl_lnt_void_type=>get_db65( i_voided = t276 i_qualified_name = t281 ).
        ENDIF.
      ENDIF.
      DATA t283 TYPE REF TO zcl_lnt_ilist_item_s.
      DATA(t284) = VALUE string( ).
      t284 = t61->value.
      t283 = NEW zcl_lnt_ilist_item_s( i_name = t284 i_source_75cf = t146 i_source_type = t227 ).
      CREATE OBJECT t283->zlnt_view_ownkeys_b0e8086400eb.
      t283->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t296.
      t283->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t296 ).
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
      DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t300.
      t283->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t300 ).
      DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t302.
      IF t283->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t283->zlnt_json_ownkeys_70e5fd461788->put( p0 = |source| p1 = t302 ).
      ENDIF.
      DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t304.
      IF t283->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t283->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sourceType| p1 = t304 ).
      ENDIF.
      t26->load( ).
      APPEND t283 TO t26->items.
      t26->save( ).
    ENDDO.
    result = t26.

  ENDMETHOD.

  METHOD parameter_list_t.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO object.
    t13 = t1->get_db65( ).
    IF xsdbool( xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_parameter_list_t ) = abap_false ) = abap_true.
      DATA t16 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t17 TYPE REF TO zcx_lnt_assert_error.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = |parameterListT, unexpected node|.
      t17 = NEW zcx_lnt_assert_error( i_message_26cb = t21 ).
      t16 = NEW #( ).
      t16->payload = t17.
      CLEAR t16->source_value.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t24 TYPE REF TO object.
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
      RAISE EXCEPTION t16.
    ENDIF.

    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    DATA t27 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t27 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t29 = t1->get_children( ).
    DATA t32 TYPE REF TO zif_lnt_node.
    DATA t33 TYPE REF TO object.
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
        t36 = t35->as_ref( ).
        t32 ?= t36.
      ELSE.
        t32 ?= t33.
      ENDIF.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA t40 TYPE REF TO object.
      t40 = t32->get_db65( ).
      t38 = xsdbool( xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_parameter_t ) = abap_false ).
      t37 = t38.
      IF t38 = abap_false.
        t37 = xsdbool( xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_expression_node ) = abap_false ).
      ENDIF.
      IF t37 = abap_true.
        DATA t45 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        DATA t46 TYPE REF TO zcx_lnt_assert_error.
        DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t50->has = abap_true.
        t50->value = |parameterListT, unexpected node, child|.
        t46 = NEW zcx_lnt_assert_error( i_message_26cb = t50 ).
        t45 = NEW #( ).
        t45->payload = t46.
        CLEAR t45->source_value.
        DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t52.
        DATA t53 TYPE REF TO object.
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
        RAISE EXCEPTION t45.
      ENDIF.
      DATA t54 TYPE REF TO zcl_lnt_expression_node.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t56.
      DATA t58 TYPE REF TO object.
      t58 = t32.
      t56 ?= t58.
      DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t54 = t56->find_direct_expression( i_type_9913 = t59 ).
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t62.
      DATA t64 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t64.
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      t66 = t54.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t68.
      IF xsdbool( t66 IS INITIAL ) = abap_true.
        CLEAR t68.
      ELSE.
        t68 = t66->get_first_token( ).
      ENDIF.
      t64 = t68.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t75.
      IF xsdbool( t64 IS INITIAL ) = abap_true.
        CLEAR t75.
      ELSE.
        DATA(t83) = VALUE string( ).
        t83 = t64->str.
        DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t85->has = abap_true.
        t85->value = t83.
        t75 = t85.
      ENDIF.
      t62 = t75.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      DATA(t87) = VALUE abap_bool( ).
      IF t62 IS INITIAL.
        t87 = abap_true.
      ELSEIF t62->has = abap_false.
        t87 = abap_true.
      ENDIF.
      IF t87 = abap_true.
        CLEAR t86.
      ELSE.
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE string( ).
        t91 = t62->value.
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
      t60 = t86.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t97 = t60.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      CLEAR t99.
      DATA(t101) = VALUE abap_bool( ).
      IF t97 IS INITIAL.
        t101 = abap_true.
      ELSEIF t97->has = abap_false.
        t101 = abap_true.
      ENDIF.
      t96 = t101.
      t95 = t96.
      IF t96 = abap_false.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        CLEAR t106.
        t95 = xsdbool( t54 IS INITIAL ).
      ENDIF.
      IF t95 = abap_true.
        DATA t110 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        DATA t111 TYPE REF TO zcx_lnt_assert_error.
        DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t115->has = abap_true.
        t115->value = |parameterListT, no name determined|.
        t111 = NEW zcx_lnt_assert_error( i_message_26cb = t115 ).
        t110 = NEW #( ).
        t110->payload = t111.
        CLEAR t110->source_value.
        DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t117.
        DATA t118 TYPE REF TO object.
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
        RAISE EXCEPTION t110.
      ENDIF.
      DATA(t121) = VALUE string( ).
      t121 = t60->value.
      IF t27->has( p0 = t121 ) = abap_true.
        DATA(t123) = VALUE string( ).
        DATA(t125) = VALUE string( ).
        DATA(t126) = |Method parameter "|.
        DATA(t127) = VALUE string( ).
        t127 = t60->value.
        DATA(t129) = strlen( t126 ).
        t125 = |{ t126 }{ t127 }|.
        DATA(t131) = strlen( t125 ).
        t123 = |{ t125 }{ |" is supplied more than once| }|.
        DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t132 = t2->issues.
        DATA t134 TYPE REF TO zcl_lnt_issue.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t136.
        t136 = t54->get_first_token( ).
        DATA t140 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t140.
        t134 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t136 i_message_26cb = t123 i_fix = t140 ).
        t132->load( ).
        APPEND t134 TO t132->items.
        t132->save( ).
      ENDIF.
      DATA t141 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t143) = VALUE string( ).
      t143 = t60->value.
      t141 = t27->add( p0 = t143 ).
      DATA t145 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t145.
      DATA t147 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t147.
      DATA t149 TYPE REF TO object.
      t149 = t32.
      t147 ?= t149.
      DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t145 = t147->find_direct_expression( i_type_9913 = t150 ).
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      CLEAR t154.
      IF xsdbool( t145 IS INITIAL ) = abap_true.
        DATA t158 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        DATA t159 TYPE REF TO zcx_lnt_assert_error.
        DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t163->has = abap_true.
        t163->value = |parameterListT, no target found|.
        t159 = NEW zcx_lnt_assert_error( i_message_26cb = t163 ).
        t158 = NEW #( ).
        t158->payload = t159.
        CLEAR t158->source_value.
        DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t165.
        DATA t166 TYPE REF TO object.
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
        RAISE EXCEPTION t158.
      ENDIF.
      DATA t168 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t168.
      t168 = zcl_lnt_sy_target=>run_syntax( i_node = t145 i_input_967e = t2 ).
      DATA t173 TYPE REF TO zcl_lnt_ilist_item_t.
      DATA(t174) = VALUE string( ).
      t174 = t60->value.
      t173 = NEW zcl_lnt_ilist_item_t( i_name = t174 i_target_5f8a = t145 i_target_type = t168 ).
      CREATE OBJECT t173->zlnt_view_ownkeys_b0e8086400eb.
      t173->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      t173->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t182 ).
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
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t186 ).
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      IF t173->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = |target| p1 = t188 ).
      ENDIF.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t190.
      IF t173->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = |targetType| p1 = t190 ).
      ENDIF.
      t25->load( ).
      APPEND t173 TO t25->items.
      t25->save( ).
    ENDDO.
    result = t25.

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
