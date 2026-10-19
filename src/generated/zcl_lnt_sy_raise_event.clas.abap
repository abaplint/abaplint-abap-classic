* TS: src/abap/5_syntax/statements/raise_event.ts:8:1 RaiseEvent
CLASS zcl_lnt_sy_raise_event DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_raise_event IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
    t3 = t1->find_direct_expression( i_type_9913 = t6 ).
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    t11 = t3.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
    ELSE.
      DATA t17 TYPE string.
      t17 = t11->concat_tokens( ).
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t17.
      t13 = t20.
    ENDIF.
    t9 = t13.
    DATA t21 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t22) = VALUE abap_bool( ).
    IF t9 IS INITIAL.
      t22 = abap_true.
    ELSEIF t9->has = abap_false.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
    ELSE.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE i( ).
      DATA t27 TYPE string.
      t27 = t9->value.
      DATA(t29) = |~|.
      DATA(t30) = strlen( t27 ).
      IF t29 IS INITIAL.
        t26 = 0.
      ELSE.
        FIND t29 IN t27 MATCH OFFSET t26.
        IF sy-subrc <> 0.
          t26 = -1.
        ENDIF.
      ENDIF.
      t25 = xsdbool( t26 >= 0 ).
      DATA(t32) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t32->has = abap_true.
      t32->value = t25.
      t21 = t32.
    ENDIF.
    t8 = t21.
    IF t8 IS BOUND.
      IF t8->has = abap_true.
        t7 = xsdbool( t8->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t7 = abap_true.
      DATA(t34) = VALUE string( ).
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t36 TYPE string.
      t36 = t3->concat_tokens( ).
      DATA(t39) = |~|.
      DATA(t40) = strlen( t36 ).
      DATA t41 TYPE i.
      DATA(t42) = VALUE i( ).
      DATA(t43) = VALUE i( ).
      DATA t44 TYPE i.
      DATA(t45) = VALUE string( ).
      CREATE OBJECT t35.
      t44 = strlen( t39 ).
      t41 = 0.
      IF t44 = 0.
        WHILE t41 < t40.
          t45 = t36+t41(1).
          APPEND t45 TO t35->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t36 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t36+t41(t43).
          ENDIF.
          APPEND t45 TO t35->items.
          IF t42 < 0.
            EXIT.
          ENDIF.
          t41 = t42 + t44.
        ENDWHILE.
      ENDIF.
      IF t35->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t35->load( ).
      READ TABLE t35->items INDEX 1 INTO t34.
      DATA t46 TYPE REF TO zif_lnt_interface_definition.
      DATA t48 TYPE REF TO zcl_lnt_current_scope.
      t48 = t2->scope.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t55->has = abap_true.
      t55->value = t34.
      t51 = t55.
      DATA t57 TYPE REF TO zif_lnt_interface_definition.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t59 = t51.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t63) = VALUE abap_bool( ).
      IF t59 IS INITIAL.
        t63 = abap_true.
      ELSEIF t59->has = abap_false.
        t63 = abap_true.
      ENDIF.
      IF t63 = abap_true.
      ELSE.
        DATA t67 TYPE REF TO zif_lnt_interface_definition.
        DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t69 = t48->current.
        DATA t72 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t69 IS INITIAL ) = abap_true.
        ELSE.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t77 = t69.
          DATA t79 TYPE string.
          t79 = t51->value.
          t72 = t77->find_interface_definition( i_name = t79 ).
        ENDIF.
        t67 = t72.
        DATA t81 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t67 IS BOUND ) = abap_true.
          t81 = t67.
        ELSE.
          DATA t90 TYPE REF TO zcl_lnt_ob_interface.
          DATA t91 TYPE REF TO zcl_lnt_ob_interface.
          DATA t93 TYPE REF TO zif_lnt_registry.
          t93 = t48->reg.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t98->has = abap_true.
          t98->value = |INTF|.
          t95 = t98.
          DATA t102 TYPE string.
          t102 = t51->value.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = t102.
          DATA t106 TYPE REF TO object.
          t106 = t93->get_object( i_type_9913 = t95 i_name = t104 ).
          t91 ?= t106.
          t90 = t91.
          DATA t107 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t90 IS BOUND ) = abap_true.
            t107 = t90->def.
          ELSE.
            CLEAR t107.
          ENDIF.
          t81 = t107.
        ENDIF.
        t57 = t81.
      ENDIF.
      t46 = t57.
      IF xsdbool( t46 IS BOUND ) = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_current_scope.
        t119 = t2->scope.
        DATA t121 TYPE REF TO zcl_lnt_abstract_token.
        t121 = t3->get_first_token( ).
        DATA t127 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t130 TYPE REF TO zif_lnt_interface_definition.
        t130 = t46.
        t129 ?= t130.
        t127 = t129.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t133.
        t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t133->sval = |Object|.
        DATA t135 TYPE string.
        t135 = t2->filename.
        DATA t137 TYPE REF TO zcl_lnt_ireference_extras.
        t119->add_reference( i_usage = t121 i_referencing = t127 i_type_9913 = t133 i_filename = t135 i_extra = t137 ).
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t140) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t138 = t1->find_all_expressions( i_type_9913 = t140 ).
    DATA t141 TYPE REF TO zcl_lnt_expression_node.
    DATA t142 TYPE REF TO object.
    DATA(t143) = VALUE i( ).
    DO.
      t138->load( ).
      IF t143 >= lines( t138->items ).
        EXIT.
      ENDIF.
      CLEAR t142.
      READ TABLE t138->items INDEX t143 + 1 INTO t142.
      t143 = t143 + 1.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      CLEAR t141.
      IF t142 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t144 ?= t142.
        DATA t145 TYPE REF TO object.
        t145 = t144->as_ref( ).
        t141 ?= t145.
      ELSE.
        t141 ?= t142.
      ENDIF.
      DATA t146 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t146.
      DATA t147 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t147.
      t147 = t141.
      DATA t152 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t152.
      DATA t153 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t153.
      DATA t154 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t154.
      DATA t155 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t155.
      t146 = zcl_lnt_sy_source=>run_syntax( i_node = t147 i_input_967e = t2 i_target_type = t152 i_write_reference = t153 i_allow_generic_deference = t154 i_read_reference = t155 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d943_25f9189182ed.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
