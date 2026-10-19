* TS: src/abap/5_syntax/expressions/reduce_body.ts:13:1 ReduceBody
CLASS zcl_lnt_sy_reduce_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_reduce_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    IF t4 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t12 TYPE abap_bool.
    t12 = abap_false.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    t16 = t1.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t15 = t16->find_direct_expression( i_type_9913 = t18 ).
    t14 = t15.
    DATA t19 TYPE abap_bool.
    t19 = xsdbool( t14 IS BOUND ).
    IF t19 = abap_true.
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      t22 = t14.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t21 = zcl_lnt_sy_let=>run_syntax( i_node = t22 i_input_967e = t2 i_skip_scope = t28 ).
      t12 = t21.
    ENDIF.
    DATA t29 TYPE REF TO zcl_lnt_abstract_type.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    t32 = t1.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b.
    t31 = t32->find_direct_expressions( i_type_9913 = t34 ).
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    DATA t36 TYPE REF TO object.
    DATA(t37) = VALUE i( ).
    DO.
      t31->load( ).
      IF t37 >= lines( t31->items ).
        EXIT.
      ENDIF.
      CLEAR t36.
      READ TABLE t31->items INDEX t37 + 1 INTO t36.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      CLEAR t35.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t38 ?= t36.
        DATA t39 TYPE REF TO object.
        t39 = t38->as_ref( ).
        t35 ?= t39.
      ELSE.
        t35 ?= t36.
      ENDIF.
      DATA t40 TYPE abap_bool.
      t40 = xsdbool( t12 = abap_false ).
      IF t40 = abap_true.
        DATA t43 TYPE REF TO zcl_lnt_current_scope.
        DATA t44 TYPE REF TO zcl_lnt_current_scope.
        t44 = t2->scope.
        t43 = t44.
        DATA t49 TYPE REF TO zcl_lnt_abstract_token.
        DATA t50 TYPE REF TO zcl_lnt_expression_node.
        t50 = t1.
        t49 = t50->get_first_token( ).
        DATA t52 TYPE REF TO zcl_lnt_position.
        t52 = t49->start.
        DATA t55 TYPE string.
        t55 = t2->filename.
        DATA t57 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t57.
        DATA t58 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t59 TYPE string.
        t59 = |let|.
        DATA t61 TYPE string.
        t61 = |LET|.
        DATA t63 TYPE REF TO zcl_lnt_position.
        t63 = t52.
        DATA t65 TYPE string.
        t65 = t55.
        DATA t67 TYPE REF TO zcl_lnt_position.
        CLEAR t67.
        t58 = NEW zcl_lnt_iscope_identifier( i_stype = t59 i_sname = t61 i_filename = t65 i_start = t63 i_end = t67 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t69 ).
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t70 ).
        ENDIF.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t71 ).
        ENDIF.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t72 ).
        ENDIF.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t73 ).
        ENDIF.
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t74) = |stype|.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
        DATA(t76) = |sname|.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t76 p1 = t77 ).
        ENDIF.
        DATA(t78) = |start|.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
        ENDIF.
        DATA(t80) = |filename|.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
        ENDIF.
        DATA(t82) = |end|.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
        ENDIF.
        t57 = t58.
        DATA(t84) = VALUE abap_bool( ).
        DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t86 = t43->current.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        t84 = xsdbool( t86 IS INITIAL ).
        IF t84 = abap_true.
          DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t97.
          t95 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t57 i_parent = t97 ).
          t43->current = t95.
          DELETE t43->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        ELSE.
          DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t101 = t43->current.
          t99 = t101.
          DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t106.
          DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t108.
          t108 = t99.
          t106 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t57 i_parent = t108 ).
          t43->current = t106.
          DELETE t43->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
          DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t115 = t43->current.
          t114 = t115.
          t99->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t114 ).
        ENDIF.
        t12 = abap_true.
      ENDIF.
      DATA t118 TYPE REF TO zcl_lnt_abstract_type.
      t118 = t3.
      DATA t120 TYPE REF TO zcl_lnt_expression_node.
      DATA t121 TYPE REF TO zcl_lnt_expression_node.
      DATA(t123) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t121 = t35->find_direct_expression( i_type_9913 = t123 ).
      t120 = t121.
      DATA t124 TYPE abap_bool.
      t124 = xsdbool( t120 IS BOUND ).
      IF t124 = abap_true.
        DATA t126 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t126.
        DATA t127 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t127.
        t127 = t120.
        DATA t134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t135.
        DATA t136 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t136.
        t126 = zcl_lnt_sy_source=>run_syntax( i_node = t127 i_input_967e = t2 i_target_type = t3 i_write_reference = t134 i_allow_generic_deference = t135 i_read_reference = t136 ).
        t118 = t126.
      ENDIF.
      DATA t137 TYPE REF TO zcl_lnt_abstract_type.
      DATA t138 TYPE REF TO zcl_lnt_abstract_type.
      t138 = zcl_lnt_sy_inln_fld_dfntn=>run_syntax( i_node = t35 i_input_967e = t2 i_target_type = t118 ).
      t137 = t138.
      DATA t142 TYPE abap_bool.
      DATA t143 TYPE abap_bool.
      t143 = xsdbool( t137 IS BOUND ).
      t142 = t143.
      IF t143 = abap_true.
        DATA(t145) = VALUE abap_bool( ).
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        t145 = xsdbool( t29 IS INITIAL ).
        t142 = t145.
      ENDIF.
      IF t142 = abap_true.
        t29 = t137.
      ENDIF.
    ENDDO.
    DATA t157 TYPE f.
    DATA(t158) = CONV f( 0 ).
    t157 = t158.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t162 TYPE REF TO zcl_lnt_expression_node.
    t162 = t1.
    DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d182_555fcb96e22f.
    t161 = t162->find_direct_expressions( i_type_9913 = t164 ).
    t160 = t161.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t166 TYPE abap_bool.
    t166 = xsdbool( t160 IS BOUND ).
    IF t166 = abap_true.
      t165 = t160.
    ELSE.
      DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t169.
      t165 = t169.
    ENDIF.
    t159 = t165.
    DATA t170 TYPE REF TO zcl_lnt_expression_node.
    DATA t171 TYPE REF TO object.
    DATA(t172) = VALUE i( ).
    DO.
      t159->load( ).
      IF t172 >= lines( t159->items ).
        EXIT.
      ENDIF.
      CLEAR t171.
      READ TABLE t159->items INDEX t172 + 1 INTO t171.
      t172 = t172 + 1.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      CLEAR t170.
      IF t171 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t173 ?= t171.
        DATA t174 TYPE REF TO object.
        t174 = t173->as_ref( ).
        t170 ?= t174.
      ELSE.
        t170 ?= t171.
      ENDIF.
      DATA t176 TYPE abap_bool.
      t176 = zcl_lnt_sy_for=>run_syntax( i_node = t170 i_input_967e = t2 ).
      DATA t179 TYPE abap_bool.
      t179 = xsdbool( t176 = abap_true ).
      IF t179 = abap_true.
        DATA t182 TYPE f.
        DATA(t184) = CONV f( 1 ).
        t182 = t157 + t184.
        t157 = t182.
      ENDIF.
    ENDDO.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t186 TYPE REF TO zcl_lnt_expression_node.
    t186 = t1.
    DATA(t188) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t185 = t186->find_direct_expressions( i_type_9913 = t188 ).
    DATA t189 TYPE REF TO zcl_lnt_expression_node.
    DATA t190 TYPE REF TO object.
    DATA(t191) = VALUE i( ).
    DO.
      t185->load( ).
      IF t191 >= lines( t185->items ).
        EXIT.
      ENDIF.
      CLEAR t190.
      READ TABLE t185->items INDEX t191 + 1 INTO t190.
      t191 = t191 + 1.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t192.
      CLEAR t189.
      IF t190 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t192 ?= t190.
        DATA t193 TYPE REF TO object.
        t193 = t192->as_ref( ).
        t189 ?= t193.
      ELSE.
        t189 ?= t190.
      ENDIF.
      DATA t194 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t194.
      DATA t195 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t195.
      t195 = t189.
      DATA t200 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t200.
      DATA t201 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t201.
      DATA t202 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t202.
      DATA t203 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t203.
      t194 = zcl_lnt_sy_source=>run_syntax( i_node = t195 i_input_967e = t2 i_target_type = t200 i_write_reference = t201 i_allow_generic_deference = t202 i_read_reference = t203 ).
    ENDDO.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t205 TYPE REF TO zcl_lnt_expression_node.
    t205 = t1.
    DATA(t207) = zlnt_runtime_desc_78196487750d=>zlnt_member_d253_daaebfcb0814.
    t204 = t205->find_direct_expressions( i_type_9913 = t207 ).
    DATA t208 TYPE REF TO zcl_lnt_expression_node.
    DATA t209 TYPE REF TO object.
    DATA(t210) = VALUE i( ).
    DO.
      t204->load( ).
      IF t210 >= lines( t204->items ).
        EXIT.
      ENDIF.
      CLEAR t209.
      READ TABLE t204->items INDEX t210 + 1 INTO t209.
      t210 = t210 + 1.
      DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t211.
      CLEAR t208.
      IF t209 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t211 ?= t209.
        DATA t212 TYPE REF TO object.
        t212 = t211->as_ref( ).
        t208 ?= t212.
      ELSE.
        t208 ?= t209.
      ENDIF.
      DATA t213 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t213.
      t213 = t208.
      zcl_lnt_sy_reduce_next=>run_syntax( i_node = t213 i_input_967e = t2 ).
    ENDDO.
    DATA t218 TYPE abap_bool.
    t218 = xsdbool( t12 = abap_true ).
    IF t218 = abap_true.
      DATA t221 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t222 TYPE REF TO zcl_lnt_current_scope.
      t222 = t2->scope.
      DATA t224 TYPE REF TO zcl_lnt_position.
      DATA t225 TYPE REF TO zcl_lnt_abstract_token.
      DATA t226 TYPE REF TO zcl_lnt_abstract_token.
      DATA t227 TYPE REF TO zcl_lnt_expression_node.
      t227 = t1.
      t226 = t227->get_last_token( ).
      t225 = t226.
      DATA t229 TYPE REF TO zcl_lnt_position.
      DATA t230 TYPE f.
      DATA t232 TYPE REF TO zcl_lnt_position.
      t232 = t225->start.
      DATA t234 TYPE f.
      t234 = t232->row.
      t230 = t234.
      DATA t236 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t237 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t239 TYPE REF TO zcl_lnt_position.
      t239 = t225->start.
      DATA t241 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t241 = t239->col.
      t237 = t241.
      DATA t243 TYPE f.
      DATA t245 TYPE string.
      t245 = t225->str.
      t243 = strlen( t245 ).
      DATA(t248) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t248->has = abap_true.
      t248->value = t243.
      t236 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t237 right = t248 op = `+` ).
      t229 = NEW zcl_lnt_position( i_row = t230 i_col = t236 ).
      t224 = t229.
      t221 = t222->pop( i_end = t224 ).
    ENDIF.
    DATA t249 TYPE f.
    DATA(t250) = CONV f( 0 ).
    t249 = t250.
    DO.
      DATA t251 TYPE abap_bool.
      t251 = xsdbool( t249 < t157 ).
      IF t251 = abap_false.
        EXIT.
      ENDIF.
      DATA t254 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t255 TYPE REF TO zcl_lnt_current_scope.
      t255 = t2->scope.
      DATA t257 TYPE REF TO zcl_lnt_position.
      DATA t258 TYPE REF TO zcl_lnt_abstract_token.
      DATA t259 TYPE REF TO zcl_lnt_abstract_token.
      DATA t260 TYPE REF TO zcl_lnt_expression_node.
      t260 = t1.
      t259 = t260->get_last_token( ).
      t258 = t259.
      DATA t262 TYPE REF TO zcl_lnt_position.
      DATA t263 TYPE f.
      DATA t265 TYPE REF TO zcl_lnt_position.
      t265 = t258->start.
      DATA t267 TYPE f.
      t267 = t265->row.
      t263 = t267.
      DATA t269 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t270 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t272 TYPE REF TO zcl_lnt_position.
      t272 = t258->start.
      DATA t274 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t274 = t272->col.
      t270 = t274.
      DATA t276 TYPE f.
      DATA t278 TYPE string.
      t278 = t258->str.
      t276 = strlen( t278 ).
      DATA(t281) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t281->has = abap_true.
      t281->value = t276.
      t269 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t270 right = t281 op = `+` ).
      t262 = NEW zcl_lnt_position( i_row = t263 i_col = t269 ).
      t257 = t262.
      t254 = t255->pop( i_end = t257 ).
      DATA t282 TYPE f.
      DATA(t284) = CONV f( 1 ).
      t282 = t249 + t284.
      t249 = t282.
    ENDDO.
    DATA t285 TYPE abap_bool.
    t285 = xsdbool( t29 IS BOUND ).
    IF t285 = abap_true.
      result = t29.
      RETURN.
    ELSE.
      DATA t292 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t293) = |todo, ReduceBody|.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t292 = NEW zcl_lnt_unknown_type( i_error = t293 i_qualified_name = t294 ).
      result = t292.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d829_3c9ea8646df0.
  ENDMETHOD.
ENDCLASS.
