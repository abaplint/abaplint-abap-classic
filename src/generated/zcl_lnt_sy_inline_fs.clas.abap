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
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
    t6 = t1->find_first_expression( i_type_9913 = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t10 = t6->get_first_token( ).
    ENDIF.
    t4 = t10.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
    t17 = t1->find_first_expression( i_type_9913 = t20 ).
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE abap_bool.
    t22 = xsdbool( t17 IS BOUND ).
    t21 = t22.
    IF t22 = abap_true.
      t21 = xsdbool( strlen( t17->concat_tokens( ) ) > 30 ).
    ENDIF.
    IF t21 = abap_true.
      DATA t32 TYPE string.
      DATA(t33) = |FIELD-SYMBOLS name too long, |.
      DATA t34 TYPE string.
      t34 = t17->concat_tokens( ).
      DATA(t37) = strlen( t33 ).
      t32 = |{ t33 }{ t34 }|.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t38 = t2->issues.
      DATA t40 TYPE REF TO zcl_lnt_issue.
      DATA t46 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t40 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t17->get_first_token( ) i_message_26cb = t32 i_fix = t46 ).
      t38->load( ).
      APPEND t40 TO t38->items.
      t38->save( ).
    ENDIF.
    DATA t47 TYPE abap_bool.
    DATA t48 TYPE abap_bool.
    t48 = xsdbool( t4 IS BOUND ).
    t47 = t48.
    IF t48 = abap_true.
      t47 = xsdbool( t3 IS BOUND ).
    ENDIF.
    IF t47 = abap_true.
      DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      t54 = t4.
      DATA t56 TYPE string.
      t56 = t2->filename.
      DATA t58 TYPE REF TO zcl_lnt_abstract_type.
      t58 = t3.
      DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t63.
      t63->load( ).
      APPEND |inline| TO t63->items.
      t63->save( ).
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t52 = NEW zcl_lnt_typed_identifier( i_token = t54 i_filename = t56 i_type_9913 = t58 i_meta = t63 i_value = t69 ).
      DATA t71 TYPE REF TO zcl_lnt_current_scope.
      t71 = t2->scope.
      DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
      t73 = t52.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t73 IS INITIAL ) = abap_true.
      ELSE.
        DATA t87 TYPE REF TO zcl_lnt_fi_identifier.
        t87 = t73.
        DATA t91 TYPE string.
        t91 = t87->token->str.
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
        ELSE.
          IF t102 > t103 - t101.
            t102 = t103 - t101.
          ENDIF.
          t99 = t100+t101(t102).
        ENDIF.
        IF xsdbool( t99 = |!| ) = abap_true.
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
          ELSE.
            IF t111 > t114 - t110.
              t111 = t114 - t110.
            ENDIF.
            t108 = t106+t110(t111).
          ENDIF.
          t91 = t108.
        ENDIF.
        t71->add_named_identifier( i_name = t91 i_identifier = t73 ).
      ENDIF.
      DATA t118 TYPE REF TO zcl_lnt_current_scope.
      t118 = t2->scope.
      DATA t120 TYPE REF TO zcl_lnt_abstract_token.
      t120 = t4.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t126->sval = |Write To|.
      DATA t128 TYPE string.
      t128 = t2->filename.
      DATA t130 TYPE REF TO zcl_lnt_ireference_extras.
      t118->add_reference( i_usage = t120 i_referencing = t52 i_type_9913 = t126 i_filename = t128 i_extra = t130 ).
    ELSE.
      IF xsdbool( t4 IS BOUND ) = abap_true.
        DATA t134 TYPE string.
        DATA t135 TYPE string.
        DATA(t136) = |InlineFS, could not determine type for "|.
        DATA t137 TYPE string.
        t137 = t4->str.
        DATA(t143) = strlen( t136 ).
        t135 = |{ t136 }{ t137 }|.
        DATA(t145) = strlen( t135 ).
        t134 = |{ t135 }{ |"| }|.
        DATA t146 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t148 TYPE REF TO zcl_lnt_abstract_token.
        t148 = t4.
        DATA t150 TYPE string.
        t150 = t2->filename.
        DATA t152 TYPE REF TO zcl_lnt_unknown_type.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t152 = NEW zcl_lnt_unknown_type( i_error = t134 i_qualified_name = t154 ).
        DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t158.
        t158->load( ).
        APPEND |inline| TO t158->items.
        t158->save( ).
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t146 = NEW zcl_lnt_typed_identifier( i_token = t148 i_filename = t150 i_type_9913 = t152 i_meta = t158 i_value = t164 ).
        DATA t166 TYPE REF TO zcl_lnt_current_scope.
        t166 = t2->scope.
        DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
        t168 = t146.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t168 IS INITIAL ) = abap_true.
        ELSE.
          DATA t182 TYPE REF TO zcl_lnt_fi_identifier.
          t182 = t168.
          DATA t186 TYPE string.
          t186 = t182->token->str.
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
          ELSE.
            IF t197 > t198 - t196.
              t197 = t198 - t196.
            ENDIF.
            t194 = t195+t196(t197).
          ENDIF.
          IF xsdbool( t194 = |!| ) = abap_true.
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
            ELSE.
              IF t206 > t209 - t205.
                t206 = t209 - t205.
              ENDIF.
              t203 = t201+t205(t206).
            ENDIF.
            t186 = t203.
          ENDIF.
          t166->add_named_identifier( i_name = t186 i_identifier = t168 ).
        ENDIF.
        DATA t213 TYPE REF TO zcl_lnt_current_scope.
        t213 = t2->scope.
        DATA t215 TYPE REF TO zcl_lnt_abstract_token.
        t215 = t4.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t221.
        t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t221->sval = |Write To|.
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
