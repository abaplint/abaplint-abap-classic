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
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t12 TYPE abap_bool.
    t12 = abap_false.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    t16 = t1.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t14 = t16->find_direct_expression( i_type_9913 = t18 ).
    IF xsdbool( t14 IS BOUND ) = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t12 = zcl_lnt_sy_let=>run_syntax( i_node = t14 i_input_967e = t2 i_skip_scope = t28 ).
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
      IF xsdbool( t12 = abap_false ) = abap_true.
        DATA t43 TYPE REF TO zcl_lnt_current_scope.
        t43 = t2->scope.
        DATA t52 TYPE REF TO zcl_lnt_position.
        t52 = t1->get_first_token( )->start.
        DATA t55 TYPE string.
        t55 = t2->filename.
        DATA t57 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t57.
        DATA t58 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t63 TYPE REF TO zcl_lnt_position.
        t63 = t52.
        DATA t65 TYPE string.
        t65 = t55.
        DATA t67 TYPE REF TO zcl_lnt_position.
        CLEAR t67.
        t58 = NEW zcl_lnt_iscope_identifier( i_stype = |let| i_sname = |LET| i_filename = t65 i_start = t63 i_end = t67 ).
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
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t75 ).
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t77 ).
        ENDIF.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t79 ).
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t81 ).
        ENDIF.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t83 ).
        ENDIF.
        t57 = t58.
        DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t86 = t43->current.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF xsdbool( t86 IS INITIAL ) = abap_true.
          DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t97.
          t43->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t57 i_parent = t97 ).
          DELETE t43->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        ELSE.
          DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t99 = t43->current.
          t43->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t57 i_parent = t99 ).
          DELETE t43->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
          DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t115 = t43->current.
          t99->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t115 ).
        ENDIF.
        t12 = abap_true.
      ENDIF.
      DATA t118 TYPE REF TO zcl_lnt_abstract_type.
      t118 = t3.
      DATA t120 TYPE REF TO zcl_lnt_expression_node.
      DATA(t123) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t120 = t35->find_direct_expression( i_type_9913 = t123 ).
      IF xsdbool( t120 IS BOUND ) = abap_true.
        DATA t127 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t127.
        t127 = t120.
        DATA t134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t135.
        DATA t136 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t136.
        t118 = zcl_lnt_sy_source=>run_syntax( i_node = t127 i_input_967e = t2 i_target_type = t3 i_write_reference = t134 i_allow_generic_deference = t135 i_read_reference = t136 ).
      ENDIF.
      DATA t137 TYPE REF TO zcl_lnt_abstract_type.
      t137 = zcl_lnt_sy_inln_fld_dfntn=>run_syntax( i_node = t35 i_input_967e = t2 i_target_type = t118 ).
      DATA t142 TYPE abap_bool.
      DATA t143 TYPE abap_bool.
      t143 = xsdbool( t137 IS BOUND ).
      t142 = t143.
      IF t143 = abap_true.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        t142 = xsdbool( t29 IS INITIAL ).
      ENDIF.
      IF t142 = abap_true.
        t29 = t137.
      ENDIF.
    ENDDO.
    DATA t157 TYPE f.
    t157 = CONV f( 0 ).
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t162 TYPE REF TO zcl_lnt_expression_node.
    t162 = t1.
    DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d182_555fcb96e22f.
    t160 = t162->find_direct_expressions( i_type_9913 = t164 ).
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t160 IS BOUND ) = abap_true.
      t165 = t160.
    ELSE.
      CREATE OBJECT t165.
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
      IF xsdbool( zcl_lnt_sy_for=>run_syntax( i_node = t170 i_input_967e = t2 ) = abap_true ) = abap_true.
        DATA(t184) = CONV f( 1 ).
        t157 = t157 + t184.
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
      zcl_lnt_sy_reduce_next=>run_syntax( i_node = t208 i_input_967e = t2 ).
    ENDDO.
    IF xsdbool( t12 = abap_true ) = abap_true.
      DATA t221 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t222 TYPE REF TO zcl_lnt_current_scope.
      t222 = t2->scope.
      DATA t225 TYPE REF TO zcl_lnt_abstract_token.
      t225 = t1->get_last_token( ).
      DATA t230 TYPE f.
      t230 = t225->start->row.
      DATA t237 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t237 = t225->start->col.
      DATA t243 TYPE f.
      t243 = strlen( t225->str ).
      DATA(t248) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t248->has = abap_true.
      t248->value = t243.
      t221 = t222->pop( i_end = NEW zcl_lnt_position( i_row = t230 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t237 right = t248 op = `+` ) ) ).
    ENDIF.
    DATA t249 TYPE f.
    t249 = CONV f( 0 ).
    DO.
      IF xsdbool( t249 < t157 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t254 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t255 TYPE REF TO zcl_lnt_current_scope.
      t255 = t2->scope.
      DATA t258 TYPE REF TO zcl_lnt_abstract_token.
      t258 = t1->get_last_token( ).
      DATA t263 TYPE f.
      t263 = t258->start->row.
      DATA t270 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t270 = t258->start->col.
      DATA t276 TYPE f.
      t276 = strlen( t258->str ).
      DATA(t281) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t281->has = abap_true.
      t281->value = t276.
      t254 = t255->pop( i_end = NEW zcl_lnt_position( i_row = t263 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t270 right = t281 op = `+` ) ) ).
      DATA(t284) = CONV f( 1 ).
      t249 = t249 + t284.
    ENDDO.
    IF xsdbool( t29 IS BOUND ) = abap_true.
      result = t29.
      RETURN.
    ELSE.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_unknown_type( i_error = |todo, ReduceBody| i_qualified_name = t294 ).

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
