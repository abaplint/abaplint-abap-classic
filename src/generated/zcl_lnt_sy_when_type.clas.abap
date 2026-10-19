* TS: src/abap/5_syntax/statements/when_type.ts:11:1 WhenType
CLASS zcl_lnt_sy_when_type DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_when_type IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t6 = t1->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t10) = xsdbool( t5 IS INITIAL ).
    IF t10 = abap_true.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      t14 = t5.
      t13 = t14->get_first_token( ).
      t9 = t13.
    ENDIF.
    t3 = t9.
    DATA(t16) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16 = xsdbool( t3 IS INITIAL ).
    IF t16 = abap_true.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t25) = VALUE string( ).
    DATA t26 TYPE string.
    DATA t27 TYPE string.
    DATA t31 TYPE string.
    t31 = t3->str.
    t27 = t31.
    DATA(t33) = strlen( t27 ).
    t26 = t27.
    IF t26 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t26 TO UPPER CASE.
    ELSE.
      t26 = zlnt_runtime_uppe_91169605024d=>full( t26 ).
    ENDIF.
    t25 = t26.
    DATA t34 TYPE REF TO zcl_lnt_shape_59e28496.
    DATA t35 TYPE REF TO zcl_lnt_shape_59e28496.
    DATA t36 TYPE REF TO zcl_lnt_current_scope.
    t36 = t2->scope.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t41->has = abap_true.
    t41->value = t25.
    t38 = t41.
    t35 = t36->exists_object( i_name = t38 ).
    t34 = t35.
    DATA(t43) = VALUE abap_bool( ).
    DATA t44 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t45 TYPE REF TO zcl_lnt_shape_59e28496.
    t45 = t34.
    DATA t47 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t48) = xsdbool( t45 IS INITIAL ).
    IF t48 = abap_true.
    ELSE.
      DATA t51 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t52 TYPE REF TO zcl_lnt_shape_59e28496.
      t52 = t45.
      t51 = t52->id.
      t47 = t51.
    ENDIF.
    t44 = t47.
    t43 = xsdbool( t44 IS BOUND ).
    IF t43 = abap_true.
      DATA t54 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t55 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t56 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t57 TYPE REF TO zcl_lnt_shape_59e28496.
      t57 = t34.
      t56 = t57->id.
      t55 = t56.
      DATA t59 TYPE REF TO zcl_lnt_abstract_type_data.
      t54 = NEW zcl_lnt_object_reference_type( i_id = t55 i_extra = t59 ).
      t23 = t54.
      DATA t60 TYPE REF TO zcl_lnt_current_scope.
      t60 = t2->scope.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      t62 = t3.
      DATA t67 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t70 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t71 TYPE REF TO zcl_lnt_shape_59e28496.
      t71 = t34.
      t70 = t71->id.
      t67 = t70.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t75) = |Object|.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t74->sval = t75.
      DATA t76 TYPE string.
      t76 = t2->filename.
      DATA t78 TYPE REF TO zcl_lnt_ireference_extras.
      t60->add_reference( i_usage = t62 i_referencing = t67 i_type_9913 = t74 i_filename = t76 i_extra = t78 ).
    ELSE.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = VALUE abap_bool( ).
      DATA t84 TYPE REF TO zcl_lnt_current_scope.
      t84 = t2->scope.
      DATA t86 TYPE REF TO zcl_lnt_ddic.
      DATA t87 TYPE REF TO zif_lnt_registry.
      t87 = t84->reg.
      t86 = NEW zcl_lnt_ddic( i_reg_f149 = t87 ).
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t93->has = abap_true.
      t93->value = t25.
      t89 = t93.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t97 = t89.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t101) = VALUE abap_bool( ).
      IF t97 IS INITIAL.
        t101 = abap_true.
      ELSEIF t97->has = abap_false.
        t101 = abap_true.
      ENDIF.
      t96 = t101.
      IF t96 = abap_true.
        t95 = abap_true.
      ELSE.
        DATA t104 TYPE abap_bool.
        DATA t105 TYPE REF TO zif_lnt_registry.
        t105 = t86->reg.
        DATA t107 TYPE string.
        t107 = t89->value.
        t104 = t105->in_error_namespace( i_name = t107 ).
        t95 = t104.
      ENDIF.
      t80 = t95.
      t79 = xsdbool( t80 = abap_false ).
      IF t79 = abap_true.
        DATA t110 TYPE REF TO zcl_lnt_void_type.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t114->has = abap_true.
        t114->value = t25.
        t111 = t114.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t110 = zcl_lnt_void_type=>get_db65( i_voided = t111 i_qualified_name = t116 ).
        t23 = t110.
        DATA t117 TYPE REF TO zcl_lnt_current_scope.
        t117 = t2->scope.
        DATA t119 TYPE REF TO zcl_lnt_abstract_token.
        t119 = t3.
        DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t126) = |Object (Void)|.
        CREATE OBJECT t125.
        t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t125->sval = t126.
        DATA t127 TYPE string.
        t127 = t2->filename.
        DATA t129 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t131 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t136->has = abap_true.
        t136->value = t25.
        t132 = t136.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t141) = |Void|.
        DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t142->has = abap_true.
        t142->value = t141.
        t138 = t142.
        DATA t144 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t131 = NEW zcl_lnt_ireference_extras( i_oo_name = t132 i_oo_type = t138 i_found_qualified = t144 ).
        CREATE OBJECT t131->zlnt_view_ownkeys_b0e8086400eb.
        t131->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t146 ).
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t147 ).
        ENDIF.
        CREATE OBJECT t131->zlnt_json_ownkeys_70e5fd461788.
        t131->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t148) = |ooName|.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
        DATA(t150) = |ooType|.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
        ENDIF.
        t129 = t131.
        t117->add_reference( i_usage = t119 i_referencing = t124 i_type_9913 = t125 i_filename = t127 i_extra = t129 ).
      ELSE.
        DATA t154 TYPE string.
        DATA t155 TYPE string.
        DATA(t156) = |Class |.
        DATA(t158) = strlen( t156 ).
        t155 = |{ t156 }{ t25 }|.
        DATA(t159) = | not found|.
        DATA(t160) = strlen( t155 ).
        t154 = |{ t155 }{ t159 }|.
        DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t161 = t2->issues.
        DATA t163 TYPE REF TO zcl_lnt_issue.
        DATA t165 TYPE REF TO zcl_lnt_abstract_token.
        t165 = t3.
        DATA t168 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t163 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t165 i_message_26cb = t154 i_fix = t168 ).
        t161->load( ).
        APPEND t163 TO t161->items.
        t161->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t169 TYPE REF TO zcl_lnt_expression_node.
    DATA t171 TYPE REF TO zcl_lnt_statement_node.
    t171 = t1.
    DATA t173 TYPE REF TO zcl_lnt_expression_node.
    DATA(t174) = xsdbool( t171 IS INITIAL ).
    IF t174 = abap_true.
    ELSE.
      DATA t177 TYPE REF TO zcl_lnt_expression_node.
      DATA(t179) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t177 = t171->find_direct_expression( i_type_9913 = t179 ).
      t173 = t177.
    ENDIF.
    t169 = t173.
    DATA t180 TYPE REF TO zcl_lnt_expression_node.
    DATA t182 TYPE REF TO zcl_lnt_expression_node.
    t182 = t169.
    DATA t184 TYPE REF TO zcl_lnt_expression_node.
    DATA(t185) = xsdbool( t182 IS INITIAL ).
    IF t185 = abap_true.
    ELSE.
      DATA t188 TYPE REF TO zcl_lnt_expression_node.
      DATA t189 TYPE REF TO zcl_lnt_expression_node.
      t189 = t182.
      DATA(t191) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t188 = t189->find_direct_expression( i_type_9913 = t191 ).
      t184 = t188.
    ENDIF.
    t180 = t184.
    DATA t192 TYPE abap_bool.
    t192 = xsdbool( t180 IS BOUND ).
    IF t192 = abap_true.
      DATA t194 TYPE REF TO zcl_lnt_expression_node.
      t194 = t180.
      DATA t197 TYPE REF TO zcl_lnt_abstract_type.
      t197 = t23.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t194 i_input_967e = t2 i_type_9913 = t197 ).
    ELSE.
      DATA t202 TYPE abap_bool.
      t202 = xsdbool( t169 IS BOUND ).
      IF t202 = abap_true.
        DATA t204 TYPE REF TO zcl_lnt_abstract_type.
        DATA t205 TYPE REF TO zcl_lnt_expression_node.
        t205 = t169.
        t204 = zcl_lnt_sy_target=>run_syntax( i_node = t205 i_input_967e = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d985_a5bb0f4f58f1.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
