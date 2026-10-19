* TS: src/abap/5_syntax/expressions/inline_fs.ts:9:1 InlineFS
CLASS zcl_lnt_sy_inline_fs DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_inline_fs IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
    t7 = t1->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t11) = xsdbool( t6 IS INITIAL ).
    IF t11 = abap_true.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      t15 = t6.
      t14 = t15->get_first_token( ).
      t10 = t14.
    ENDIF.
    t4 = t10.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
    t18 = t1->find_first_expression( i_type_9913 = t20 ).
    t17 = t18.
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE abap_bool.
    t22 = xsdbool( t17 IS BOUND ).
    t21 = t22.
    IF t22 = abap_true.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE i.
      DATA t26 TYPE string.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      t27 = t17.
      t26 = t27->concat_tokens( ).
      t25 = strlen( t26 ).
      DATA(t30) = 30.
      t24 = xsdbool( t25 > t30 ).
      t21 = t24.
    ENDIF.
    IF t21 = abap_true.
      DATA t32 TYPE string.
      DATA(t33) = |FIELD-SYMBOLS name too long, |.
      DATA t34 TYPE string.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      t35 = t17.
      t34 = t35->concat_tokens( ).
      DATA(t37) = strlen( t33 ).
      t32 = |{ t33 }{ t34 }|.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t38 = t2->issues.
      DATA t40 TYPE REF TO zcl_lnt_issue.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      t43 = t17.
      t42 = t43->get_first_token( ).
      DATA t46 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t40 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t42 i_message_26cb = t32 i_fix = t46 ).
      t38->load( ).
      APPEND t40 TO t38->items.
      t38->save( ).
    ENDIF.
    DATA t47 TYPE abap_bool.
    DATA t48 TYPE abap_bool.
    t48 = xsdbool( t4 IS BOUND ).
    t47 = t48.
    IF t48 = abap_true.
      DATA t50 TYPE abap_bool.
      t50 = xsdbool( t3 IS BOUND ).
      t47 = t50.
    ENDIF.
    IF t47 = abap_true.
      DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      t54 = t4.
      DATA t56 TYPE string.
      t56 = t2->filename.
      DATA t58 TYPE REF TO zcl_lnt_abstract_type.
      t58 = t3.
      DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t64.
      t63 = t64.
      DATA(t66) = |inline|.
      t63->load( ).
      APPEND t66 TO t63->items.
      t63->save( ).
      t60 = t63.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t53 = NEW zcl_lnt_typed_identifier( i_token = t54 i_filename = t56 i_type_9913 = t58 i_meta = t60 i_value = t69 ).
      t52 = t53.
      DATA t71 TYPE REF TO zcl_lnt_current_scope.
      t71 = t2->scope.
      DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
      t73 = t52.
      DATA(t78) = VALUE abap_bool( ).
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t78 = xsdbool( t73 IS INITIAL ).
      IF t78 = abap_true.
      ELSE.
        DATA(t86) = VALUE string( ).
        DATA t87 TYPE REF TO zcl_lnt_fi_identifier.
        t87 = t73.
        DATA(t90) = VALUE string( ).
        DATA t91 TYPE string.
        DATA t94 TYPE REF TO zcl_lnt_abstract_token.
        t94 = t87->token.
        DATA t96 TYPE string.
        t96 = t94->str.
        t91 = t96.
        DATA(t98) = VALUE abap_bool( ).
        DATA(t99) = VALUE string( ).
        DATA(t100) = t91.
        DATA(t101) = 0.
        DATA(t102) = 1.
        DATA(t103) = strlen( t100 ).
        IF t101 < 0.
          t101 = t101 + t103.
          IF t101 < 0.
            t101 = 0.
          ENDIF.
        ENDIF.
        IF t101 > t103 OR t102 <= 0.
          CLEAR t99.
        ELSE.
          IF t102 > t103 - t101.
            t102 = t103 - t101.
          ENDIF.
          t99 = t100+t101(t102).
        ENDIF.
        DATA(t104) = |!|.
        t98 = xsdbool( t99 = t104 ).
        IF t98 = abap_true.
          DATA(t105) = VALUE string( ).
          DATA t106 TYPE string.
          t106 = t91.
          DATA(t108) = VALUE string( ).
          DATA(t110) = 1.
          DATA t111 TYPE i.
          t111 = strlen( t106 ).
          DATA(t114) = strlen( t106 ).
          IF t110 < 0.
            t110 = t110 + t114.
            IF t110 < 0.
              t110 = 0.
            ENDIF.
          ENDIF.
          IF t110 > t114 OR t111 <= 0.
            CLEAR t108.
          ELSE.
            IF t111 > t114 - t110.
              t111 = t114 - t110.
            ENDIF.
            t108 = t106+t110(t111).
          ENDIF.
          t105 = t108.
          t91 = t105.
        ENDIF.
        t90 = t91.
        t86 = t90.
        DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
        t116 = t73.
        t71->add_named_identifier( i_name = t86 i_identifier = t116 ).
      ENDIF.
      DATA t118 TYPE REF TO zcl_lnt_current_scope.
      t118 = t2->scope.
      DATA t120 TYPE REF TO zcl_lnt_abstract_token.
      t120 = t4.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t127) = |Write To|.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t126->sval = t127.
      DATA t128 TYPE string.
      t128 = t2->filename.
      DATA t130 TYPE REF TO zcl_lnt_ireference_extras.
      t118->add_reference( i_usage = t120 i_referencing = t52 i_type_9913 = t126 i_filename = t128 i_extra = t130 ).
    ELSE.
      DATA t131 TYPE abap_bool.
      t131 = xsdbool( t4 IS BOUND ).
      IF t131 = abap_true.
        DATA t134 TYPE string.
        DATA t135 TYPE string.
        DATA(t136) = |InlineFS, could not determine type for "|.
        DATA t137 TYPE string.
        DATA t141 TYPE string.
        t141 = t4->str.
        t137 = t141.
        DATA(t143) = strlen( t136 ).
        t135 = |{ t136 }{ t137 }|.
        DATA(t144) = |"|.
        DATA(t145) = strlen( t135 ).
        t134 = |{ t135 }{ t144 }|.
        DATA t146 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t148 TYPE REF TO zcl_lnt_abstract_token.
        t148 = t4.
        DATA t150 TYPE string.
        t150 = t2->filename.
        DATA t152 TYPE REF TO zcl_lnt_unknown_type.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t152 = NEW zcl_lnt_unknown_type( i_error = t134 i_qualified_name = t154 ).
        DATA t155 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t159.
        t158 = t159.
        DATA(t161) = |inline|.
        t158->load( ).
        APPEND t161 TO t158->items.
        t158->save( ).
        t155 = t158.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t147 = NEW zcl_lnt_typed_identifier( i_token = t148 i_filename = t150 i_type_9913 = t152 i_meta = t155 i_value = t164 ).
        t146 = t147.
        DATA t166 TYPE REF TO zcl_lnt_current_scope.
        t166 = t2->scope.
        DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
        t168 = t146.
        DATA(t173) = VALUE abap_bool( ).
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t173 = xsdbool( t168 IS INITIAL ).
        IF t173 = abap_true.
        ELSE.
          DATA(t181) = VALUE string( ).
          DATA t182 TYPE REF TO zcl_lnt_fi_identifier.
          t182 = t168.
          DATA(t185) = VALUE string( ).
          DATA t186 TYPE string.
          DATA t189 TYPE REF TO zcl_lnt_abstract_token.
          t189 = t182->token.
          DATA t191 TYPE string.
          t191 = t189->str.
          t186 = t191.
          DATA(t193) = VALUE abap_bool( ).
          DATA(t194) = VALUE string( ).
          DATA(t195) = t186.
          DATA(t196) = 0.
          DATA(t197) = 1.
          DATA(t198) = strlen( t195 ).
          IF t196 < 0.
            t196 = t196 + t198.
            IF t196 < 0.
              t196 = 0.
            ENDIF.
          ENDIF.
          IF t196 > t198 OR t197 <= 0.
            CLEAR t194.
          ELSE.
            IF t197 > t198 - t196.
              t197 = t198 - t196.
            ENDIF.
            t194 = t195+t196(t197).
          ENDIF.
          DATA(t199) = |!|.
          t193 = xsdbool( t194 = t199 ).
          IF t193 = abap_true.
            DATA(t200) = VALUE string( ).
            DATA t201 TYPE string.
            t201 = t186.
            DATA(t203) = VALUE string( ).
            DATA(t205) = 1.
            DATA t206 TYPE i.
            t206 = strlen( t201 ).
            DATA(t209) = strlen( t201 ).
            IF t205 < 0.
              t205 = t205 + t209.
              IF t205 < 0.
                t205 = 0.
              ENDIF.
            ENDIF.
            IF t205 > t209 OR t206 <= 0.
              CLEAR t203.
            ELSE.
              IF t206 > t209 - t205.
                t206 = t209 - t205.
              ENDIF.
              t203 = t201+t205(t206).
            ENDIF.
            t200 = t203.
            t186 = t200.
          ENDIF.
          t185 = t186.
          t181 = t185.
          DATA t211 TYPE REF TO zcl_lnt_typed_identifier.
          t211 = t168.
          t166->add_named_identifier( i_name = t181 i_identifier = t211 ).
        ENDIF.
        DATA t213 TYPE REF TO zcl_lnt_current_scope.
        t213 = t2->scope.
        DATA t215 TYPE REF TO zcl_lnt_abstract_token.
        t215 = t4.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t222) = |Write To|.
        CREATE OBJECT t221.
        t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t221->sval = t222.
        DATA t223 TYPE string.
        t223 = t2->filename.
        DATA t225 TYPE REF TO zcl_lnt_ireference_extras.
        t213->add_reference( i_usage = t215 i_referencing = t146 i_type_9913 = t221 i_filename = t223 i_extra = t225 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d813_25344fc234da.
  ENDMETHOD.
ENDCLASS.
