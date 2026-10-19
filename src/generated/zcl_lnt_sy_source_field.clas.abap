* TS: src/abap/5_syntax/expressions/source_field.ts:7:1 SourceField
CLASS zcl_lnt_sy_source_field DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_error TYPE REF TO zlnt_runtime_opti_7f2541396f43
    RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_source_field IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA(t4) = i_error.
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
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    t13 = t1->get_first_token( ).
    t12 = t13.
    DATA t15 TYPE string.
    DATA t19 TYPE string.
    t19 = t12->str.
    t15 = t19.
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t23 TYPE REF TO zcl_lnt_current_scope.
    DATA t24 TYPE REF TO zcl_lnt_current_scope.
    t24 = t2->scope.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t15.
    t26 = t30.
    DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t34 = t26.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = VALUE abap_bool( ).
    IF t34 IS INITIAL.
      t38 = abap_true.
    ELSEIF t34->has = abap_false.
      t38 = abap_true.
    ENDIF.
    t33 = t38.
    IF t33 = abap_true.
    ELSE.
      DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t45 = t23->current.
      t44 = t45.
      DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t48) = xsdbool( t44 IS INITIAL ).
      IF t48 = abap_true.
      ELSE.
        DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t52 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t52 = t44.
        DATA t54 TYPE string.
        t54 = t26->value.
        t51 = t52->find_variable( i_name = t54 ).
        t47 = t51.
      ENDIF.
      t42 = t47.
      DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t57 TYPE abap_bool.
      t57 = xsdbool( t42 IS BOUND ).
      IF t57 = abap_true.
        t56 = t42.
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t68 TYPE string.
        t68 = t26->value.
        DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t70->has = abap_true.
        t70->value = t68.
        t66 = t70.
        t64 = t23->find_type_pool_constant( i_name = t66 ).
        t56 = t64.
      ENDIF.
      t32 = t56.
    ENDIF.
    t21 = t32.
    DATA(t72) = VALUE abap_bool( ).
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t72 = xsdbool( t21 IS INITIAL ).
    IF t72 = abap_true.
      DATA t80 TYPE string.
      DATA t81 TYPE string.
      DATA(t82) = |"|.
      DATA(t84) = strlen( t82 ).
      t81 = |{ t82 }{ t15 }|.
      DATA(t85) = |" not found, findTop|.
      DATA(t86) = strlen( t81 ).
      t80 = |{ t81 }{ t85 }|.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE abap_bool.
      t88 = t4->value.
      t87 = xsdbool( t88 = abap_true ).
      IF t87 = abap_true.
        DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t91 = t2->issues.
        DATA t93 TYPE REF TO zcl_lnt_issue.
        DATA t95 TYPE REF TO zcl_lnt_abstract_token.
        t95 = t1->get_first_token( ).
        DATA t98 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t93 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t95 i_message_26cb = t80 i_fix = t98 ).
        t91->load( ).
        APPEND t93 TO t91->items.
        t91->save( ).
      ENDIF.
      DATA t99 TYPE REF TO zcl_lnt_void_type.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t102) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t103->has = abap_true.
      t103->value = t102.
      t100 = t103.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t99 = zcl_lnt_void_type=>get_db65( i_voided = t100 i_qualified_name = t105 ).
      result = t99.
      RETURN.
    ENDIF.
    DATA(t106) = VALUE abap_bool( ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t107 = t3.
    IF t107 IS BOUND.
      t106 = t107->truth( ).
    ENDIF.
    IF t106 = abap_true.
      DATA t109 TYPE REF TO zcl_lnt_current_scope.
      t109 = t2->scope.
      DATA t111 TYPE REF TO zcl_lnt_abstract_token.
      t111 = t12.
      DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
      t115 = t21.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t117 = t3.
      DATA t119 TYPE string.
      t119 = t2->filename.
      DATA t121 TYPE REF TO zcl_lnt_ireference_extras.
      t109->add_reference( i_usage = t111 i_referencing = t115 i_type_9913 = t117 i_filename = t119 i_extra = t121 ).
    ENDIF.
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = VALUE i( ).
    DATA(t125) = |~|.
    DATA(t126) = strlen( t15 ).
    IF t125 IS INITIAL.
      t123 = 0.
    ELSE.
      FIND t125 IN t15 MATCH OFFSET t123.
      IF sy-subrc <> 0.
        t123 = -1.
      ENDIF.
    ENDIF.
    DATA(t127) = 0.
    t122 = xsdbool( t123 >= t127 ).
    IF t122 = abap_true.
      DATA t128 TYPE REF TO zif_lnt_interface_definition.
      DATA t130 TYPE REF TO zcl_lnt_current_scope.
      DATA t131 TYPE REF TO zcl_lnt_current_scope.
      t131 = t2->scope.
      t130 = t131.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t137) = |~|.
      DATA(t138) = strlen( t15 ).
      DATA t139 TYPE i.
      DATA(t140) = VALUE i( ).
      DATA(t141) = VALUE i( ).
      DATA t142 TYPE i.
      DATA(t143) = VALUE string( ).
      CREATE OBJECT t135.
      t142 = strlen( t137 ).
      t139 = 0.
      IF t142 = 0.
        WHILE t139 < t138.
          t143 = t15+t139(1).
          APPEND t143 TO t135->items.
          t139 = t139 + 1.
        ENDWHILE.
      ELSE.
        WHILE t139 <= t138.
          FIND FIRST OCCURRENCE OF t137 IN SECTION OFFSET t139 OF t15 MATCH OFFSET t140.
          IF sy-subrc = 0.
            t141 = t140 - t139.
          ELSE.
            t140 = -1.
            t141 = t138 - t139.
          ENDIF.
          CLEAR t143.
          IF t141 > 0.
            t143 = t15+t139(t141).
          ENDIF.
          APPEND t143 TO t135->items.
          IF t140 < 0.
            EXIT.
          ENDIF.
          t139 = t140 + t142.
        ENDWHILE.
      ENDIF.
      DATA(t144) = 0.
      t134 = t135->get( p0 = t144 ).
      t133 = t134.
      DATA t145 TYPE REF TO zif_lnt_interface_definition.
      DATA(t146) = VALUE abap_bool( ).
      DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t147 = t133.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t151) = VALUE abap_bool( ).
      IF t147 IS INITIAL.
        t151 = abap_true.
      ELSEIF t147->has = abap_false.
        t151 = abap_true.
      ENDIF.
      t146 = t151.
      IF t146 = abap_true.
      ELSE.
        DATA t155 TYPE REF TO zif_lnt_interface_definition.
        DATA t157 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t158 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t158 = t130->current.
        t157 = t158.
        DATA t160 TYPE REF TO zif_lnt_interface_definition.
        DATA(t161) = xsdbool( t157 IS INITIAL ).
        IF t161 = abap_true.
        ELSE.
          DATA t164 TYPE REF TO zif_lnt_interface_definition.
          DATA t165 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t165 = t157.
          DATA t167 TYPE string.
          t167 = t133->value.
          t164 = t165->find_interface_definition( i_name = t167 ).
          t160 = t164.
        ENDIF.
        t155 = t160.
        DATA t169 TYPE REF TO zif_lnt_interface_definition.
        DATA t170 TYPE abap_bool.
        t170 = xsdbool( t155 IS BOUND ).
        IF t170 = abap_true.
          t169 = t155.
        ELSE.
          DATA t178 TYPE REF TO zcl_lnt_ob_interface.
          DATA t179 TYPE REF TO zcl_lnt_ob_interface.
          DATA t180 TYPE REF TO zif_lnt_object.
          DATA t181 TYPE REF TO zif_lnt_registry.
          t181 = t130->reg.
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t185) = |INTF|.
          DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t186->has = abap_true.
          t186->value = t185.
          t183 = t186.
          DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t190 TYPE string.
          t190 = t133->value.
          DATA(t192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t192->has = abap_true.
          t192->value = t190.
          t188 = t192.
          t180 = t181->get_object( i_type_9913 = t183 i_name = t188 ).
          DATA t194 TYPE REF TO object.
          t194 = t180.
          t179 ?= t194.
          t178 = t179.
          DATA t195 TYPE REF TO zif_lnt_interface_definition.
          DATA t196 TYPE abap_bool.
          t196 = xsdbool( t178 IS BOUND ).
          IF t196 = abap_true.
            DATA t202 TYPE REF TO zif_lnt_interface_definition.
            t202 = t178->def.
            t195 = t202.
          ELSE.
            CLEAR t195.
          ENDIF.
          t169 = t195.
        ENDIF.
        t145 = t169.
      ENDIF.
      t128 = t145.
      DATA t205 TYPE abap_bool.
      t205 = xsdbool( t128 IS BOUND ).
      IF t205 = abap_true.
        DATA t207 TYPE REF TO zcl_lnt_current_scope.
        t207 = t2->scope.
        DATA t209 TYPE REF TO zcl_lnt_abstract_token.
        t209 = t12.
        DATA t213 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t216 TYPE REF TO zif_lnt_interface_definition.
        t216 = t128.
        t215 ?= t216.
        t213 = t215.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t220) = |Object|.
        CREATE OBJECT t219.
        t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t219->sval = t220.
        DATA t221 TYPE string.
        t221 = t2->filename.
        DATA t223 TYPE REF TO zcl_lnt_ireference_extras.
        t207->add_reference( i_usage = t209 i_referencing = t213 i_type_9913 = t219 i_filename = t221 i_extra = t223 ).
      ENDIF.
    ENDIF.
    DATA t230 TYPE REF TO zcl_lnt_abstract_type.
    t230 = t21->type_cba0.
    result = t230.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d833_44fc5bb2f891.
  ENDMETHOD.
ENDCLASS.
