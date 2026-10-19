* TS: src/abap/5_syntax/expressions/cond_body.ts:9:1 CondBody
CLASS zcl_lnt_sy_cond_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_cond_body IMPLEMENTATION.
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
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    t30 = t1.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    t29 = t30->find_direct_expressions( i_type_9913 = t32 ).
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    DATA t34 TYPE REF TO object.
    DATA(t35) = VALUE i( ).
    DO.
      t29->load( ).
      IF t35 >= lines( t29->items ).
        EXIT.
      ENDIF.
      CLEAR t34.
      READ TABLE t29->items INDEX t35 + 1 INTO t34.
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
      zcl_lnt_sy_cond=>run_syntax( i_node = t33 i_input_967e = t2 ).
    ENDDO.
    DATA t40 TYPE REF TO zcl_lnt_abstract_type.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    t43 = t1.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t42 = t43->find_direct_expressions( i_type_9913 = t45 ).
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA t47 TYPE REF TO object.
    DATA(t48) = VALUE i( ).
    DO.
      t42->load( ).
      IF t48 >= lines( t42->items ).
        EXIT.
      ENDIF.
      CLEAR t47.
      READ TABLE t42->items INDEX t48 + 1 INTO t47.
      t48 = t48 + 1.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      CLEAR t46.
      IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t49 ?= t47.
        DATA t50 TYPE REF TO object.
        t50 = t49->as_ref( ).
        t46 ?= t50.
      ELSE.
        t46 ?= t47.
      ENDIF.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      IF xsdbool( t40 IS INITIAL ) = abap_true.
        DATA t59 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t59.
        t59 = t46.
        DATA t65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t65.
        DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t66.
        DATA t67 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t67.
        t40 = zcl_lnt_sy_source=>run_syntax( i_node = t59 i_input_967e = t2 i_target_type = t3 i_write_reference = t65 i_allow_generic_deference = t66 i_read_reference = t67 ).
      ELSE.
        DATA t68 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t69.
        t69 = t46.
        DATA t74 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t74.
        DATA t77 TYPE REF TO zcl_lnt_abstract_type.
        t77 = t3.
        DATA t79 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t79.
        IF xsdbool( t77 IS INITIAL ) = abap_true.
          t79 = t40.
        ELSE.
          t79 = t77.
        ENDIF.
        t74 = t79.
        DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t89.
        t68 = zcl_lnt_sy_source=>run_syntax( i_node = t69 i_input_967e = t2 i_target_type = t74 i_write_reference = t87 i_allow_generic_deference = t88 i_read_reference = t89 ).
      ENDIF.
    ENDDO.
    IF xsdbool( t12 = abap_true ) = abap_true.
      DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t94 TYPE REF TO zcl_lnt_current_scope.
      t94 = t2->scope.
      DATA t97 TYPE REF TO zcl_lnt_abstract_token.
      t97 = t1->get_last_token( ).
      DATA t102 TYPE f.
      t102 = t97->start->row.
      DATA t109 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t109 = t97->start->col.
      DATA t115 TYPE f.
      t115 = strlen( t97->str ).
      DATA(t120) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t120->has = abap_true.
      t120->value = t115.
      t93 = t94->pop( i_end = NEW zcl_lnt_position( i_row = t102 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t109 right = t120 op = `+` ) ) ).
    ENDIF.
    result = t40.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d793_243ce9349fe6.
  ENDMETHOD.
ENDCLASS.
