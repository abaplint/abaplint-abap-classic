* TS: src/abap/5_syntax/statements/class_local_friends.ts:7:1 ClassLocalFriends
CLASS zcl_lnt_sy_class_local_friends DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_class_local_friends IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t4 = t1->find_all_expressions( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t10 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX 1 INTO t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t11 ?= t10.
      DATA t12 TYPE REF TO object.
      t12 = t11->as_ref( ).
      t8 ?= t12.
    ELSE.
      t8 ?= t10.
    ENDIF.
    t7 = t8.
    DATA t13 TYPE abap_bool.
    t13 = xsdbool( t7 IS BOUND ).
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      t16 = t7->get_first_token( ).
      t15 = t16.
      DATA t18 TYPE string.
      DATA t22 TYPE string.
      t22 = t15->str.
      t18 = t22.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE string.
      DATA t27 TYPE REF TO zif_lnt_object.
      DATA t29 TYPE REF TO zcl_lnt_current_scope.
      t29 = t2->scope.
      DATA t31 TYPE REF TO zif_lnt_object.
      t31 = t29->parent_obj.
      t27 = t31.
      t26 = t27->get_type( ).
      DATA(t33) = |CLAS|.
      t25 = xsdbool( t26 = t33 ).
      t24 = t25.
      IF t25 = abap_true.
        DATA(t34) = VALUE abap_bool( ).
        DATA t35 TYPE string.
        DATA(t37) = strlen( t18 ).
        t35 = t18.
        IF t35 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t35 TO UPPER CASE.
        ELSE.
          t35 = zlnt_runtime_uppe_91169605024d=>full( t35 ).
        ENDIF.
        DATA t38 TYPE string.
        DATA t39 TYPE string.
        DATA t40 TYPE REF TO zif_lnt_object.
        DATA t42 TYPE REF TO zcl_lnt_current_scope.
        t42 = t2->scope.
        DATA t44 TYPE REF TO zif_lnt_object.
        t44 = t42->parent_obj.
        t40 = t44.
        t39 = t40->get_name( ).
        DATA(t46) = strlen( t39 ).
        t38 = t39.
        IF t38 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t38 TO UPPER CASE.
        ELSE.
          t38 = zlnt_runtime_uppe_91169605024d=>full( t38 ).
        ENDIF.
        t34 = xsdbool( t35 <> t38 ).
        t24 = t34.
      ENDIF.
      IF t24 = abap_true.
        DATA(t47) = VALUE string( ).
        DATA(t48) = VALUE string( ).
        DATA(t49) = |Befriending must be |.
        DATA t50 TYPE string.
        DATA t51 TYPE string.
        DATA t52 TYPE REF TO zif_lnt_object.
        DATA t54 TYPE REF TO zcl_lnt_current_scope.
        t54 = t2->scope.
        DATA t56 TYPE REF TO zif_lnt_object.
        t56 = t54->parent_obj.
        t52 = t56.
        t51 = t52->get_name( ).
        DATA(t58) = strlen( t51 ).
        t50 = t51.
        IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t50 TO UPPER CASE.
        ELSE.
          t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
        ENDIF.
        DATA(t59) = strlen( t49 ).
        t48 = |{ t49 }{ t50 }|.
        t47 = t48.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t60 = t2->issues.
        DATA t62 TYPE REF TO zcl_lnt_issue.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        t64 = t1->get_first_token( ).
        DATA t67 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t62 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t64 i_message_26cb = t47 i_fix = t67 ).
        t60->load( ).
        APPEND t62 TO t60->items.
        t60->save( ).
        RETURN.
      ENDIF.
      DATA t68 TYPE REF TO zif_lnt_class_definition.
      DATA t70 TYPE REF TO zcl_lnt_current_scope.
      DATA t71 TYPE REF TO zcl_lnt_current_scope.
      t71 = t2->scope.
      t70 = t71.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t77->has = abap_true.
      t77->value = t18.
      t73 = t77.
      DATA t79 TYPE REF TO zif_lnt_class_definition.
      DATA(t80) = VALUE abap_bool( ).
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t81 = t73.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t85) = VALUE abap_bool( ).
      IF t81 IS INITIAL.
        t85 = abap_true.
      ELSEIF t81->has = abap_false.
        t85 = abap_true.
      ENDIF.
      t80 = t85.
      IF t80 = abap_true.
      ELSE.
        DATA t89 TYPE REF TO zif_lnt_class_definition.
        DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t92 = t70->current.
        t91 = t92.
        DATA t94 TYPE REF TO zif_lnt_class_definition.
        DATA(t95) = xsdbool( t91 IS INITIAL ).
        IF t95 = abap_true.
        ELSE.
          DATA t98 TYPE REF TO zif_lnt_class_definition.
          DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t99 = t91.
          DATA t101 TYPE string.
          t101 = t73->value.
          t98 = t99->find_class_definition( i_name = t101 ).
          t94 = t98.
        ENDIF.
        t89 = t94.
        DATA t103 TYPE REF TO zif_lnt_class_definition.
        DATA t104 TYPE abap_bool.
        t104 = xsdbool( t89 IS BOUND ).
        IF t104 = abap_true.
          t103 = t89.
        ELSE.
          DATA t112 TYPE REF TO zcl_lnt_class.
          DATA t113 TYPE REF TO zcl_lnt_class.
          DATA t114 TYPE REF TO zif_lnt_object.
          DATA t115 TYPE REF TO zif_lnt_registry.
          t115 = t70->reg.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t119) = |CLAS|.
          DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t120->has = abap_true.
          t120->value = t119.
          t117 = t120.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t124 TYPE string.
          t124 = t73->value.
          DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t126->has = abap_true.
          t126->value = t124.
          t122 = t126.
          t114 = t115->get_object( i_type_9913 = t117 i_name = t122 ).
          DATA t128 TYPE REF TO object.
          t128 = t114.
          t113 ?= t128.
          t112 = t113.
          DATA t129 TYPE REF TO zif_lnt_class_definition.
          DATA t130 TYPE abap_bool.
          t130 = xsdbool( t112 IS BOUND ).
          IF t130 = abap_true.
            DATA t132 TYPE REF TO zif_lnt_class_definition.
            DATA t133 TYPE REF TO zcl_lnt_class.
            t133 = t112.
            t132 = t133->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t129 = t132.
          ELSE.
            CLEAR t129.
          ENDIF.
          t103 = t129.
        ENDIF.
        t79 = t103.
      ENDIF.
      t68 = t79.
      DATA t136 TYPE abap_bool.
      t136 = xsdbool( t68 IS BOUND ).
      IF t136 = abap_true.
        DATA t138 TYPE REF TO zcl_lnt_current_scope.
        t138 = t2->scope.
        DATA t140 TYPE REF TO zcl_lnt_abstract_token.
        t140 = t15.
        DATA t144 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t146 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t147 TYPE REF TO zif_lnt_class_definition.
        t147 = t68.
        t146 ?= t147.
        t144 = t146.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t151) = |Object|.
        CREATE OBJECT t150.
        t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t150->sval = t151.
        DATA t152 TYPE string.
        t152 = t2->filename.
        DATA t154 TYPE REF TO zcl_lnt_ireference_extras.
        t138->add_reference( i_usage = t140 i_referencing = t144 i_type_9913 = t150 i_filename = t152 i_extra = t154 ).
      ELSE.
        DATA(t155) = VALUE string( ).
        DATA(t156) = VALUE string( ).
        DATA(t157) = VALUE string( ).
        DATA(t158) = |Class |.
        DATA t159 TYPE string.
        DATA(t161) = strlen( t18 ).
        t159 = t18.
        IF t159 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t159 TO UPPER CASE.
        ELSE.
          t159 = zlnt_runtime_uppe_91169605024d=>full( t159 ).
        ENDIF.
        DATA(t162) = strlen( t158 ).
        t157 = |{ t158 }{ t159 }|.
        DATA(t163) = | not found|.
        DATA(t164) = strlen( t157 ).
        t156 = |{ t157 }{ t163 }|.
        t155 = t156.
        DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t165 = t2->issues.
        DATA t167 TYPE REF TO zcl_lnt_issue.
        DATA t169 TYPE REF TO zcl_lnt_abstract_token.
        t169 = t1->get_first_token( ).
        DATA t172 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t167 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t169 i_message_26cb = t155 i_fix = t172 ).
        t165->load( ).
        APPEND t167 TO t165->items.
        t165->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t173 TYPE i.
    t173 = 1.
    DO.
      DATA t175 TYPE abap_bool.
      DATA t177 TYPE i.
      t3->load( ).
      t177 = lines( t3->items ).
      t175 = xsdbool( t173 < t177 ).
      IF t175 = abap_false.
        EXIT.
      ENDIF.
      DATA(t179) = VALUE string( ).
      DATA(t180) = VALUE string( ).
      DATA t181 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t181.
      DATA(t183) = t173.
      t183 = t183 + 1.
      DATA t184 TYPE REF TO object.
      CLEAR t184.
      t3->load( ).
      CLEAR t184.
      READ TABLE t3->items INDEX t183 INTO t184.
      DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t185.
      CLEAR t181.
      IF t184 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t185 ?= t184.
        DATA t186 TYPE REF TO object.
        t186 = t185->as_ref( ).
        t181 ?= t186.
      ELSE.
        t181 ?= t184.
      ENDIF.
      t180 = t181->concat_tokens( ).
      t179 = t180.
      DATA t188 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t188.
      DATA t189 TYPE REF TO zcl_lnt_current_scope.
      t189 = t2->scope.
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t191.
      DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t194->has = abap_true.
      t194->value = t179.
      t191 = t194.
      t188 = t189->exists_object( i_name = t191 ).
      DATA(t196) = VALUE abap_bool( ).
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      t196 = xsdbool( t188 IS INITIAL ).
      IF t196 = abap_true.
        DATA(t203) = VALUE string( ).
        DATA(t204) = VALUE string( ).
        DATA(t205) = VALUE string( ).
        DATA(t206) = |Class |.
        DATA t207 TYPE string.
        DATA(t209) = strlen( t179 ).
        t207 = t179.
        IF t207 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t207 TO UPPER CASE.
        ELSE.
          t207 = zlnt_runtime_uppe_91169605024d=>full( t207 ).
        ENDIF.
        DATA(t210) = strlen( t206 ).
        t205 = |{ t206 }{ t207 }|.
        DATA(t211) = | not found|.
        DATA(t212) = strlen( t205 ).
        t204 = |{ t205 }{ t211 }|.
        t203 = t204.
        DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t213 = t2->issues.
        DATA t215 TYPE REF TO zcl_lnt_issue.
        DATA t217 TYPE REF TO zcl_lnt_abstract_token.
        t217 = t1->get_first_token( ).
        DATA t220 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t220.
        t215 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t217 i_message_26cb = t203 i_fix = t220 ).
        t213->load( ).
        APPEND t215 TO t213->items.
        t213->save( ).
        RETURN.
      ELSE.
        DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t221.
        DATA t223 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t223.
        DATA t225 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t225.
        DATA t226 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t226.
        DATA(t228) = 0.
        DATA t229 TYPE REF TO object.
        t229 = t3->get( p0 = t228 ).
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        CLEAR t226.
        IF t229 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t230 ?= t229.
          DATA t231 TYPE REF TO object.
          t231 = t230->as_ref( ).
          t226 ?= t231.
        ELSE.
          t226 ?= t229.
        ENDIF.
        t225 = t226.
        DATA t232 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t232.
        DATA(t233) = xsdbool( t225 IS INITIAL ).
        IF t233 = abap_true.
          CLEAR t232.
        ELSE.
          DATA t236 TYPE REF TO zcl_lnt_abstract_token.
          DATA t237 TYPE REF TO zcl_lnt_expression_node.
          t237 = t225.
          t236 = t237->get_first_token( ).
          t232 = t236.
        ENDIF.
        t223 = t232.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t239.
        DATA(t240) = xsdbool( t223 IS INITIAL ).
        IF t240 = abap_true.
          CLEAR t239.
        ELSE.
          DATA t247 TYPE string.
          t247 = t223->str.
          DATA(t249) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t249->has = abap_true.
          t249->value = t247.
          t239 = t249.
        ENDIF.
        t221 = t239.
        DATA(t250) = VALUE abap_bool( ).
        IF t221 IS BOUND.
          IF t221->has = abap_true.
            t250 = xsdbool( strlen( t221->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t250 = abap_true.
          DATA t252 TYPE REF TO zcl_lnt_current_scope.
          DATA t253 TYPE REF TO zcl_lnt_current_scope.
          t253 = t2->scope.
          t252 = t253.
          DATA t255 TYPE string.
          DATA t256 TYPE string.
          t256 = t221->value.
          t255 = t256.
          DATA t258 TYPE string.
          t258 = t179.
          DATA(t260) = VALUE string( ).
          DATA t261 TYPE string.
          DATA(t263) = strlen( t255 ).
          t261 = t255.
          IF t261 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t261 TO UPPER CASE.
          ELSE.
            t261 = zlnt_runtime_uppe_91169605024d=>full( t261 ).
          ENDIF.
          t260 = t261.
          DATA t264 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t264.
          DATA t266 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t267 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t268 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          t268 = t252->local_friends.
          t267 = t268->get( p0 = t260 ).
          t266 = t267.
          DATA t271 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t271.
          DATA(t272) = xsdbool( t266 IS INITIAL ).
          IF t272 = abap_true.
            DATA t274 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t274.
            t271 = t274.
          ELSE.
            t271 = t266.
          ENDIF.
          t264 = t271.
          DATA t278 TYPE string.
          DATA(t280) = strlen( t258 ).
          t278 = t258.
          IF t278 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t278 TO UPPER CASE.
          ELSE.
            t278 = zlnt_runtime_uppe_91169605024d=>full( t278 ).
          ENDIF.
          t264->load( ).
          APPEND t278 TO t264->items.
          t264->save( ).
          DATA t281 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          DATA t282 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          t282 = t252->local_friends.
          t281 = t282->set( p0 = t260 p1 = t264 ).
        ENDIF.
      ENDIF.
      DATA t286 TYPE i.
      DATA(t288) = 1.
      t286 = t173 + t288.
      t173 = t286.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d873_97df92b862d8.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
