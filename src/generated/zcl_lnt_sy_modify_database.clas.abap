* TS: src/abap/5_syntax/statements/modify_database.ts:10:1 ModifyDatabase
CLASS zcl_lnt_sy_modify_database DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_modify_database IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t3 = t1->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t6 i_input_967e = t2 ).
    ENDDO.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    t13 = t1->find_first_expression( i_type_9913 = t16 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t13 IS INITIAL ) = abap_false ) = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_abstract_node.
      t29 = t1.
      t28 = t29->children.
      t27 ?= t28.
      t27->load( ).
      IF xsdbool( lines( t27->items ) = 5 ) = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t36 TYPE REF TO zcl_lnt_current_scope.
        t36 = t2->scope.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t42 TYPE string.
        t42 = t13->concat_tokens( ).
        DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t45->has = abap_true.
        t45->value = t42.
        t39 = t45.
        DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t49 = t39.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t53) = VALUE abap_bool( ).
        IF t49 IS INITIAL.
          t53 = abap_true.
        ELSEIF t49->has = abap_false.
          t53 = abap_true.
        ENDIF.
        IF t53 = abap_true.
        ELSE.
          DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t59 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t59 = t36->current.
          DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
          IF xsdbool( t59 IS INITIAL ) = abap_true.
          ELSE.
            DATA t67 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t67 = t59.
            DATA t69 TYPE string.
            t69 = t39->value.
            t62 = t67->find_variable( i_name = t69 ).
          ENDIF.
          t57 = t62.
          DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
          IF xsdbool( t57 IS BOUND ) = abap_true.
            t71 = t57.
          ELSE.
            DATA t83 TYPE string.
            t83 = t39->value.
            DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t85->has = abap_true.
            t85->value = t83.
            t71 = t36->find_type_pool_constant( i_name = t85 ).
          ENDIF.
          t47 = t71.
        ENDIF.
        t34 = t47.
        IF xsdbool( t34 IS BOUND ) = abap_true.
          DATA t89 TYPE REF TO zcl_lnt_current_scope.
          t89 = t2->scope.
          DATA t91 TYPE REF TO zcl_lnt_abstract_token.
          t91 = t13->get_first_token( ).
          DATA t97 TYPE REF TO zcl_lnt_typed_identifier.
          t97 = t34.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t99->sval = |Write To|.
          DATA t101 TYPE string.
          t101 = t2->filename.
          DATA t103 TYPE REF TO zcl_lnt_ireference_extras.
          t89->add_reference( i_usage = t91 i_referencing = t97 i_type_9913 = t99 i_filename = t101 i_extra = t103 ).
        ELSE.
          DATA t104 TYPE REF TO zif_lnt_union_c74a232f.
          t104 = zcl_lnt_sy_database_table=>run_syntax( i_node = t13 i_input_967e = t2 ).
        ENDIF.
      ELSE.
        DATA t108 TYPE REF TO zif_lnt_union_c74a232f.
        t108 = zcl_lnt_sy_database_table=>run_syntax( i_node = t13 i_input_967e = t2 ).
      ENDIF.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t112 = t1->find_all_expressions( i_type_9913 = t114 ).
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    DATA t116 TYPE REF TO object.
    DATA(t117) = VALUE i( ).
    DO.
      t112->load( ).
      IF t117 >= lines( t112->items ).
        EXIT.
      ENDIF.
      CLEAR t116.
      READ TABLE t112->items INDEX t117 + 1 INTO t116.
      t117 = t117 + 1.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      CLEAR t115.
      IF t116 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t118 ?= t116.
        DATA t119 TYPE REF TO object.
        t119 = t118->as_ref( ).
        t115 ?= t119.
      ELSE.
        t115 ?= t116.
      ENDIF.
      DATA t120 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t120.
      DATA t121 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t121.
      t121 = t115.
      DATA t126 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t126.
      DATA t127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t127.
      DATA t128 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t129.
      t120 = zcl_lnt_sy_source=>run_syntax( i_node = t121 i_input_967e = t2 i_target_type = t126 i_write_reference = t127 i_allow_generic_deference = t128 i_read_reference = t129 ).
    ENDDO.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t130 = t1->find_all_expressions( i_type_9913 = t132 ).
    DATA t133 TYPE REF TO zcl_lnt_expression_node.
    DATA t134 TYPE REF TO object.
    DATA(t135) = VALUE i( ).
    DO.
      t130->load( ).
      IF t135 >= lines( t130->items ).
        EXIT.
      ENDIF.
      CLEAR t134.
      READ TABLE t130->items INDEX t135 + 1 INTO t134.
      t135 = t135 + 1.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      CLEAR t133.
      IF t134 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t136 ?= t134.
        DATA t137 TYPE REF TO object.
        t137 = t136->as_ref( ).
        t133 ?= t137.
      ELSE.
        t133 ?= t134.
      ENDIF.
      DATA t138 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t138.
      DATA t139 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t139.
      t139 = t133.
      DATA t144 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t144.
      DATA t145 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t145.
      DATA t146 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t146.
      DATA t147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t147.
      t138 = zcl_lnt_sy_source=>run_syntax( i_node = t139 i_input_967e = t2 i_target_type = t144 i_write_reference = t145 i_allow_generic_deference = t146 i_read_reference = t147 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d930_fb3618e3512f.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
