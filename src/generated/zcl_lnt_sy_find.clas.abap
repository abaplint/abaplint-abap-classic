* TS: src/abap/5_syntax/statements/find.ts:11:1 Find
CLASS zcl_lnt_sy_find DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS inline IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_find IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
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
        CLEAR t10.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = t6.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      DATA(t16) = t2.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t16 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t22.
    DATA(t23) = t1.
    DATA(t24) = |RESULTS|.
    t22 = t23->find_expression_after_token( i_text = t24 ).
    t21 = t22.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t21.
    t26 = xsdbool( t27 IS BOUND ).
    t25 = t26.
    IF t26 = abap_true.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t30.
      DATA(t31) = t21.
      t30 = t31.
      t29 = t30->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_st_target ).
      t25 = t28.
    ENDIF.
    IF t25 = abap_true.
      DATA t32 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t32.
      DATA t33 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t36.
      CREATE OBJECT t36.
      t35 = t36.
      DATA(t37) = t35.
      DATA t38 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t38.
      DATA(t39) = VALUE string( ).
      DATA(t40) = |OFFSET|.
      t39 = t40.
      DATA t41 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t42.
      DATA t43 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t43.
      t42 = zcl_lnt_integer_type=>get_db65( i_input_967e = t43 ).
      t41 = t42.
      DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t45.
      t44 = t45.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      t46 = t47.
      t38 = NEW zcl_lnt_istructure_component( i_name = t39 i_type_9913 = t41 i_as_include = t44 i_suffix = t46 ).
      CREATE OBJECT t38->zlnt_view_ownkeys_b0e8086400eb.
      t38->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t48 ).
      ENDIF.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t49 ).
      ENDIF.
      CREATE OBJECT t38->zlnt_json_ownkeys_70e5fd461788.
      t38->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t50) = |name|.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
      ENDIF.
      DATA(t52) = |type|.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
      ENDIF.
      t37->load( ).
      APPEND t38 TO t37->items.
      t37->save( ).
      DATA(t54) = t35.
      DATA t55 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t55.
      DATA(t56) = VALUE string( ).
      DATA(t57) = |LENGTH|.
      t56 = t57.
      DATA t58 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t58.
      DATA t59 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t59.
      DATA t60 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t60.
      t59 = zcl_lnt_integer_type=>get_db65( i_input_967e = t60 ).
      t58 = t59.
      DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t62.
      t61 = t62.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      t63 = t64.
      t55 = NEW zcl_lnt_istructure_component( i_name = t56 i_type_9913 = t58 i_as_include = t61 i_suffix = t63 ).
      CREATE OBJECT t55->zlnt_view_ownkeys_b0e8086400eb.
      t55->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t65 ).
      ENDIF.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t66 ).
      ENDIF.
      CREATE OBJECT t55->zlnt_json_ownkeys_70e5fd461788.
      t55->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t67) = |name|.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
      ENDIF.
      DATA(t69) = |type|.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
      ENDIF.
      t54->load( ).
      APPEND t55 TO t54->items.
      t54->save( ).
      DATA(t71) = t35.
      t34 = t71.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t72.
      DATA(t73) = abap_true.
      IF t73 = abap_true.
        DATA(t74) = |SUBMATCH_RESULT|.
        DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t75->has = abap_true.
        t75->value = t74.
        t72 = t75.
      ELSE.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        t72 = t76.
      ENDIF.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA(t78) = abap_true.
      IF t78 = abap_true.
        DATA(t79) = |SUBMATCH_RESULT|.
        DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t80->has = abap_true.
        t80->value = t79.
        t77 = t80.
      ELSE.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        t77 = t81.
      ENDIF.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t82.
      t33 = NEW zcl_lnt_structure_type( i_components = t34 i_qualified_name = t72 i_ddic_name = t77 i_description = t82 ).
      t32 = t33.
      DATA t83 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t83.
      DATA t84 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t84.
      DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t85.
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t86.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t87.
      CREATE OBJECT t87.
      t86 = t87.
      DATA(t88) = t86.
      DATA t89 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t89.
      DATA(t90) = VALUE string( ).
      DATA(t91) = |LINE|.
      t90 = t91.
      DATA t92 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t93.
      DATA t94 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t94.
      t93 = zcl_lnt_integer_type=>get_db65( i_input_967e = t94 ).
      t92 = t93.
      DATA t95 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t95.
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t96.
      t95 = t96.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t98.
      t97 = t98.
      t89 = NEW zcl_lnt_istructure_component( i_name = t90 i_type_9913 = t92 i_as_include = t95 i_suffix = t97 ).
      CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
      t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t99 ).
      ENDIF.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t100 ).
      ENDIF.
      CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
      t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t101) = |name|.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
      ENDIF.
      DATA(t103) = |type|.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
      ENDIF.
      t88->load( ).
      APPEND t89 TO t88->items.
      t88->save( ).
      DATA(t105) = t86.
      DATA t106 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t106.
      DATA(t107) = VALUE string( ).
      DATA(t108) = |OFFSET|.
      t107 = t108.
      DATA t109 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t109.
      DATA t110 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t110.
      DATA t111 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t111.
      t110 = zcl_lnt_integer_type=>get_db65( i_input_967e = t111 ).
      t109 = t110.
      DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t112.
      DATA t113 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t113.
      t112 = t113.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t114.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t115.
      t114 = t115.
      t106 = NEW zcl_lnt_istructure_component( i_name = t107 i_type_9913 = t109 i_as_include = t112 i_suffix = t114 ).
      CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
      t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t116 ).
      ENDIF.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t117 ).
      ENDIF.
      CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
      t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t118) = |name|.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
      ENDIF.
      DATA(t120) = |type|.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
      ENDIF.
      t105->load( ).
      APPEND t106 TO t105->items.
      t105->save( ).
      DATA(t122) = t86.
      DATA t123 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t123.
      DATA(t124) = VALUE string( ).
      DATA(t125) = |LENGTH|.
      t124 = t125.
      DATA t126 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t126.
      DATA t127 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t127.
      DATA t128 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t128.
      t127 = zcl_lnt_integer_type=>get_db65( i_input_967e = t128 ).
      t126 = t127.
      DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t129.
      DATA t130 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t130.
      t129 = t130.
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t131.
      DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t132.
      t131 = t132.
      t123 = NEW zcl_lnt_istructure_component( i_name = t124 i_type_9913 = t126 i_as_include = t129 i_suffix = t131 ).
      CREATE OBJECT t123->zlnt_view_ownkeys_b0e8086400eb.
      t123->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t133 ).
      ENDIF.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t134 ).
      ENDIF.
      CREATE OBJECT t123->zlnt_json_ownkeys_70e5fd461788.
      t123->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t135) = |name|.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
      ENDIF.
      DATA(t137) = |type|.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
      ENDIF.
      t122->load( ).
      APPEND t123 TO t122->items.
      t122->save( ).
      DATA(t139) = t86.
      DATA t140 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t140.
      DATA(t141) = VALUE string( ).
      DATA(t142) = |SUBMATCHES|.
      t141 = t142.
      DATA t143 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t143.
      DATA t144 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t144.
      DATA(t145) = t32.
      DATA t146 TYPE REF TO zcl_lnt_itable_options.
      CLEAR t146.
      DATA(t147) = VALUE abap_bool( ).
      DATA(t148) = abap_false.
      t147 = t148.
      DATA(t149) = VALUE string( ).
      DATA(t150) = |DEFAULT|.
      t149 = t150.
      DATA t151 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t151.
      DATA t152 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t152.
      t151 = t152.
      DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t153.
      DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t154.
      t153 = t154.
      t146 = NEW zcl_lnt_itable_options( i_with_header = t147 i_key_type = t149 i_primary_key = t151 i_secondary = t153 ).
      CREATE OBJECT t146->zlnt_view_ownkeys_b0e8086400eb.
      t146->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      IF t146->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t146->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t155 ).
      ENDIF.
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t156.
      IF t146->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t146->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t156 ).
      ENDIF.
      CREATE OBJECT t146->zlnt_json_ownkeys_70e5fd461788.
      t146->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t157) = |withHeader|.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      IF t146->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t146->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
      ENDIF.
      DATA(t159) = |keyType|.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t160.
      IF t146->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t146->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
      ENDIF.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t161.
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t162.
      t144 = NEW zcl_lnt_ty_table_type( i_row_type = t145 i_options = t146 i_qualified_name = t161 i_description = t162 ).
      t143 = t144.
      DATA t163 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t163.
      DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t164.
      t163 = t164.
      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t165.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t166.
      t165 = t166.
      t140 = NEW zcl_lnt_istructure_component( i_name = t141 i_type_9913 = t143 i_as_include = t163 i_suffix = t165 ).
      CREATE OBJECT t140->zlnt_view_ownkeys_b0e8086400eb.
      t140->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t167 ).
      ENDIF.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t168 ).
      ENDIF.
      CREATE OBJECT t140->zlnt_json_ownkeys_70e5fd461788.
      t140->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t169) = |name|.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
      ENDIF.
      DATA(t171) = |type|.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t172.
      IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
      ENDIF.
      t139->load( ).
      APPEND t140 TO t139->items.
      t139->save( ).
      DATA(t173) = t86.
      t85 = t173.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t174.
      DATA(t175) = abap_true.
      IF t175 = abap_true.
        DATA(t176) = |MATCH_RESULT|.
        DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t177->has = abap_true.
        t177->value = t176.
        t174 = t177.
      ELSE.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t178.
        t174 = t178.
      ENDIF.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t179.
      DATA(t180) = abap_true.
      IF t180 = abap_true.
        DATA(t181) = |MATCH_RESULT|.
        DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t182->has = abap_true.
        t182->value = t181.
        t179 = t182.
      ELSE.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t183.
        t179 = t183.
      ENDIF.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t184.
      t84 = NEW zcl_lnt_structure_type( i_components = t85 i_qualified_name = t174 i_ddic_name = t179 i_description = t184 ).
      t83 = t84.
      DATA(t185) = VALUE abap_bool( ).
      DATA(t186) = VALUE string( ).
      DATA(t187) = VALUE string( ).
      DATA(t188) = t1.
      t187 = t188->concat_tokens( ).
      DATA(t189) = strlen( t187 ).
      t186 = t187.
      IF t186 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t186 TO UPPER CASE.
      ELSE.
        t186 = zlnt_runtime_uppe_91169605024d=>full( t186 ).
      ENDIF.
      DATA(t190) = |FIND FIRST|.
      DATA(t191) = strlen( t186 ).
      DATA(t192) = VALUE i( ).
      DATA(t193) = VALUE i( ).
      DATA(t194) = VALUE string( ).
      t192 = strlen( t190 ).
      IF t192 = 0.
        t185 = abap_true.
      ELSEIF t192 <= t191.
        t193 = 0.
        t194 = t186+t193(t192).
        IF t194 = t190.
          t185 = abap_true.
        ENDIF.
      ENDIF.
      IF t185 = abap_true.
        DATA t195 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t195.
        DATA t196 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t196.
        DATA(t197) = t21.
        t196 = t197.
        t195 = t196.
        DATA t198 TYPE REF TO zcl_lnt_syntax_input.
        CLEAR t198.
        DATA(t199) = t2.
        t198 = t199.
        DATA t200 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t200.
        DATA(t201) = t83.
        t200 = t201.
        DATA t202 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t202.
        DATA t203 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t203.
        DATA(t204) = t195.
        DATA(t205) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t203 = t204->find_direct_expression( i_type_9913 = t205 ).
        t202 = t203.
        DATA(t206) = VALUE abap_bool( ).
        DATA(t207) = t202.
        t206 = xsdbool( t207 IS BOUND ).
        IF t206 = abap_true.
          DATA t208 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t208.
          DATA(t209) = t202.
          t208 = t209.
          DATA(t210) = t198.
          DATA t211 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t211.
          DATA(t212) = abap_true.
          IF t212 = abap_true.
            DATA(t213) = t200.
            t211 = t213.
          ELSE.
            DATA t214 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t214.
            t211 = t214.
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t208 i_input_967e = t210 i_type_9913 = t211 ).
        ELSE.
          DATA t215 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t215.
          DATA(t216) = t195.
          DATA(t217) = t198.
          t215 = zcl_lnt_sy_target=>run_syntax( i_node = t216 i_input_967e = t217 ).
        ENDIF.
      ELSE.
        DATA t218 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t218.
        DATA t219 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t219.
        DATA(t220) = t21.
        t219 = t220.
        t218 = t219.
        DATA t221 TYPE REF TO zcl_lnt_syntax_input.
        CLEAR t221.
        DATA(t222) = t2.
        t221 = t222.
        DATA t223 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t223.
        DATA t224 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t224.
        DATA(t225) = t83.
        DATA t226 TYPE REF TO zcl_lnt_itable_options.
        CLEAR t226.
        DATA(t227) = VALUE abap_bool( ).
        DATA(t228) = abap_false.
        t227 = t228.
        DATA(t229) = VALUE string( ).
        DATA(t230) = |DEFAULT|.
        t229 = t230.
        DATA t231 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t231.
        DATA t232 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t232.
        t231 = t232.
        DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t233.
        DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t234.
        t233 = t234.
        t226 = NEW zcl_lnt_itable_options( i_with_header = t227 i_key_type = t229 i_primary_key = t231 i_secondary = t233 ).
        CREATE OBJECT t226->zlnt_view_ownkeys_b0e8086400eb.
        t226->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t235.
        IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t235 ).
        ENDIF.
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t236.
        IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t236 ).
        ENDIF.
        CREATE OBJECT t226->zlnt_json_ownkeys_70e5fd461788.
        t226->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t237) = |withHeader|.
        DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t238.
        IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
        ENDIF.
        DATA(t239) = |keyType|.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t239 p1 = t240 ).
        ENDIF.
        DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t241.
        DATA(t242) = abap_true.
        IF t242 = abap_true.
          DATA(t243) = |MATCH_RESULT_TAB|.
          DATA(t244) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t244->has = abap_true.
          t244->value = t243.
          t241 = t244.
        ELSE.
          DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t245.
          t241 = t245.
        ENDIF.
        DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t246.
        t224 = NEW zcl_lnt_ty_table_type( i_row_type = t225 i_options = t226 i_qualified_name = t241 i_description = t246 ).
        t223 = t224.
        DATA t247 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t247.
        DATA t248 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t248.
        DATA(t249) = t218.
        DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t248 = t249->find_direct_expression( i_type_9913 = t250 ).
        t247 = t248.
        DATA(t251) = VALUE abap_bool( ).
        DATA(t252) = t247.
        t251 = xsdbool( t252 IS BOUND ).
        IF t251 = abap_true.
          DATA t253 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t253.
          DATA(t254) = t247.
          t253 = t254.
          DATA(t255) = t221.
          DATA t256 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t256.
          DATA(t257) = abap_true.
          IF t257 = abap_true.
            DATA(t258) = t223.
            t256 = t258.
          ELSE.
            DATA t259 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t259.
            t256 = t259.
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t253 i_input_967e = t255 i_type_9913 = t256 ).
        ELSE.
          DATA t260 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t260.
          DATA(t261) = t218.
          DATA(t262) = t221.
          t260 = zcl_lnt_sy_target=>run_syntax( i_node = t261 i_input_967e = t262 ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t263.
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t264.
    DATA(t265) = t1.
    DATA(t266) = |OFFSET|.
    t264 = t265->find_expressions_after_token( i_text = t266 ).
    t263 = t264.
    DATA(t267) = t263.
    DATA t268 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t268.
    DATA t269 TYPE REF TO object.
    CLEAR t269.
    DATA(t270) = VALUE i( ).
    DO.
      t267->load( ).
      IF t270 >= lines( t267->items ).
        EXIT.
      ENDIF.
      CLEAR t269.
      READ TABLE t267->items INDEX t270 + 1 INTO t269.
      t270 = t270 + 1.
      DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t271.
      CLEAR t268.
      IF t269 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t271 ?= t269.
        DATA t272 TYPE REF TO object.
        CLEAR t272.
        t272 = t271->as_ref( ).
        t268 ?= t272.
      ELSE.
        t268 ?= t269.
      ENDIF.
      DATA(t273) = VALUE abap_bool( ).
      DATA t274 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t274.
      DATA(t275) = t268.
      t274 = t275->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t273 = xsdbool( t274 IS BOUND AND t274 IS INSTANCE OF zcl_lnt_st_target ).
      IF t273 = abap_true.
        DATA t276 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t276.
        DATA(t277) = t268.
        t276 = t277.
        DATA t278 TYPE REF TO zcl_lnt_syntax_input.
        CLEAR t278.
        DATA(t279) = t2.
        t278 = t279.
        DATA t280 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t280.
        DATA t281 TYPE REF TO zcl_lnt_integer_type.
        CLEAR t281.
        DATA t282 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t282.
        t281 = zcl_lnt_integer_type=>get_db65( i_input_967e = t282 ).
        t280 = t281.
        DATA t283 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t283.
        DATA t284 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t284.
        DATA(t285) = t276.
        DATA(t286) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t284 = t285->find_direct_expression( i_type_9913 = t286 ).
        t283 = t284.
        DATA(t287) = VALUE abap_bool( ).
        DATA(t288) = t283.
        t287 = xsdbool( t288 IS BOUND ).
        IF t287 = abap_true.
          DATA t289 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t289.
          DATA(t290) = t283.
          t289 = t290.
          DATA(t291) = t278.
          DATA t292 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t292.
          DATA(t293) = abap_true.
          IF t293 = abap_true.
            DATA(t294) = t280.
            t292 = t294.
          ELSE.
            DATA t295 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t295.
            t292 = t295.
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t289 i_input_967e = t291 i_type_9913 = t292 ).
        ELSE.
          DATA t296 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t296.
          DATA(t297) = t276.
          DATA(t298) = t278.
          t296 = zcl_lnt_sy_target=>run_syntax( i_node = t297 i_input_967e = t298 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t299 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t299.
    DATA t300 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t300.
    DATA(t301) = t1.
    DATA(t302) = |LINE|.
    t300 = t301->find_expression_after_token( i_text = t302 ).
    t299 = t300.
    DATA(t303) = VALUE abap_bool( ).
    DATA(t304) = VALUE abap_bool( ).
    DATA(t305) = t299.
    t304 = xsdbool( t305 IS BOUND ).
    t303 = t304.
    IF t304 = abap_true.
      DATA(t306) = VALUE abap_bool( ).
      DATA t307 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t307.
      DATA t308 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t308.
      DATA(t309) = t299.
      t308 = t309.
      t307 = t308->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t306 = xsdbool( t307 IS BOUND AND t307 IS INSTANCE OF zcl_lnt_st_target ).
      t303 = t306.
    ENDIF.
    IF t303 = abap_true.
      DATA t310 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t310.
      DATA t311 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t311.
      DATA(t312) = t299.
      t311 = t312.
      t310 = t311.
      DATA t313 TYPE REF TO zcl_lnt_syntax_input.
      CLEAR t313.
      DATA(t314) = t2.
      t313 = t314.
      DATA t315 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t315.
      DATA t316 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t316.
      DATA t317 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t317.
      t316 = zcl_lnt_integer_type=>get_db65( i_input_967e = t317 ).
      t315 = t316.
      DATA t318 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t318.
      DATA t319 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t319.
      DATA(t320) = t310.
      DATA(t321) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t319 = t320->find_direct_expression( i_type_9913 = t321 ).
      t318 = t319.
      DATA(t322) = VALUE abap_bool( ).
      DATA(t323) = t318.
      t322 = xsdbool( t323 IS BOUND ).
      IF t322 = abap_true.
        DATA t324 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t324.
        DATA(t325) = t318.
        t324 = t325.
        DATA(t326) = t313.
        DATA t327 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t327.
        DATA(t328) = abap_true.
        IF t328 = abap_true.
          DATA(t329) = t315.
          t327 = t329.
        ELSE.
          DATA t330 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t330.
          t327 = t330.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t324 i_input_967e = t326 i_type_9913 = t327 ).
      ELSE.
        DATA t331 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t331.
        DATA(t332) = t310.
        DATA(t333) = t313.
        t331 = zcl_lnt_sy_target=>run_syntax( i_node = t332 i_input_967e = t333 ).
      ENDIF.
    ENDIF.
    DATA t334 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t334.
    DATA t335 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t335.
    DATA(t336) = t1.
    DATA(t337) = |COUNT|.
    t335 = t336->find_expression_after_token( i_text = t337 ).
    t334 = t335.
    DATA(t338) = VALUE abap_bool( ).
    DATA(t339) = VALUE abap_bool( ).
    DATA(t340) = t334.
    t339 = xsdbool( t340 IS BOUND ).
    t338 = t339.
    IF t339 = abap_true.
      DATA(t341) = VALUE abap_bool( ).
      DATA t342 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t342.
      DATA t343 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t343.
      DATA(t344) = t334.
      t343 = t344.
      t342 = t343->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t341 = xsdbool( t342 IS BOUND AND t342 IS INSTANCE OF zcl_lnt_st_target ).
      t338 = t341.
    ENDIF.
    IF t338 = abap_true.
      DATA t345 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t345.
      DATA t346 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t346.
      DATA(t347) = t334.
      t346 = t347.
      t345 = t346.
      DATA t348 TYPE REF TO zcl_lnt_syntax_input.
      CLEAR t348.
      DATA(t349) = t2.
      t348 = t349.
      DATA t350 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t350.
      DATA t351 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t351.
      DATA t352 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t352.
      t351 = zcl_lnt_integer_type=>get_db65( i_input_967e = t352 ).
      t350 = t351.
      DATA t353 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t353.
      DATA t354 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t354.
      DATA(t355) = t345.
      DATA(t356) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t354 = t355->find_direct_expression( i_type_9913 = t356 ).
      t353 = t354.
      DATA(t357) = VALUE abap_bool( ).
      DATA(t358) = t353.
      t357 = xsdbool( t358 IS BOUND ).
      IF t357 = abap_true.
        DATA t359 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t359.
        DATA(t360) = t353.
        t359 = t360.
        DATA(t361) = t348.
        DATA t362 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t362.
        DATA(t363) = abap_true.
        IF t363 = abap_true.
          DATA(t364) = t350.
          t362 = t364.
        ELSE.
          DATA t365 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t365.
          t362 = t365.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t359 i_input_967e = t361 i_type_9913 = t362 ).
      ELSE.
        DATA t366 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t366.
        DATA(t367) = t345.
        DATA(t368) = t348.
        t366 = zcl_lnt_sy_target=>run_syntax( i_node = t367 i_input_967e = t368 ).
      ENDIF.
    ENDIF.
    DATA t369 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t369.
    DATA t370 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t370.
    DATA(t371) = t1.
    DATA(t372) = |LENGTH|.
    t370 = t371->find_expression_after_token( i_text = t372 ).
    t369 = t370.
    DATA(t373) = VALUE abap_bool( ).
    DATA(t374) = VALUE abap_bool( ).
    DATA(t375) = t369.
    t374 = xsdbool( t375 IS BOUND ).
    t373 = t374.
    IF t374 = abap_true.
      DATA(t376) = VALUE abap_bool( ).
      DATA t377 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t377.
      DATA t378 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t378.
      DATA(t379) = t369.
      t378 = t379.
      t377 = t378->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t376 = xsdbool( t377 IS BOUND AND t377 IS INSTANCE OF zcl_lnt_st_target ).
      t373 = t376.
    ENDIF.
    IF t373 = abap_true.
      DATA t380 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t380.
      DATA t381 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t381.
      DATA(t382) = t369.
      t381 = t382.
      t380 = t381.
      DATA t383 TYPE REF TO zcl_lnt_syntax_input.
      CLEAR t383.
      DATA(t384) = t2.
      t383 = t384.
      DATA t385 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t385.
      DATA t386 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t386.
      DATA t387 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t387.
      t386 = zcl_lnt_integer_type=>get_db65( i_input_967e = t387 ).
      t385 = t386.
      DATA t388 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t388.
      DATA t389 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t389.
      DATA(t390) = t380.
      DATA(t391) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t389 = t390->find_direct_expression( i_type_9913 = t391 ).
      t388 = t389.
      DATA(t392) = VALUE abap_bool( ).
      DATA(t393) = t388.
      t392 = xsdbool( t393 IS BOUND ).
      IF t392 = abap_true.
        DATA t394 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t394.
        DATA(t395) = t388.
        t394 = t395.
        DATA(t396) = t383.
        DATA t397 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t397.
        DATA(t398) = abap_true.
        IF t398 = abap_true.
          DATA(t399) = t385.
          t397 = t399.
        ELSE.
          DATA t400 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t400.
          t397 = t400.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t394 i_input_967e = t396 i_type_9913 = t397 ).
      ELSE.
        DATA t401 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t401.
        DATA(t402) = t380.
        DATA(t403) = t383.
        t401 = zcl_lnt_sy_target=>run_syntax( i_node = t402 i_input_967e = t403 ).
      ENDIF.
    ENDIF.
    DATA(t404) = VALUE abap_bool( ).
    DATA t405 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t405.
    DATA(t406) = t1.
    DATA(t407) = |SUBMATCHES|.
    t405 = t406->find_direct_token_by_text( i_text = t407 ).
    t404 = xsdbool( t405 IS BOUND ).
    IF t404 = abap_true.
      DATA t408 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t408.
      DATA(t409) = t1.
      DATA(t410) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t408 = t409->find_direct_expressions( i_type_9913 = t410 ).
      DATA t411 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t411.
      DATA t412 TYPE REF TO object.
      CLEAR t412.
      DATA(t413) = VALUE i( ).
      DO.
        t408->load( ).
        IF t413 >= lines( t408->items ).
          EXIT.
        ENDIF.
        CLEAR t412.
        READ TABLE t408->items INDEX t413 + 1 INTO t412.
        t413 = t413 + 1.
        DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t414.
        CLEAR t411.
        IF t412 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t414 ?= t412.
          DATA t415 TYPE REF TO object.
          CLEAR t415.
          t415 = t414->as_ref( ).
          t411 ?= t415.
        ELSE.
          t411 ?= t412.
        ENDIF.
        DATA(t416) = VALUE abap_bool( ).
        DATA(t417) = VALUE abap_bool( ).
        DATA(t418) = VALUE abap_bool( ).
        DATA(t419) = VALUE abap_bool( ).
        DATA t420 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t420.
        DATA(t421) = abap_true.
        IF t421 = abap_true.
          DATA(t422) = t411.
          t420 = t422.
        ELSE.
          DATA t423 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t423.
          t420 = t423.
        ENDIF.
        DATA(t424) = t21.
        DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t425.
        DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t426.
        CLEAR t425.
        IF t420 IS BOUND.
          CLEAR t425.
          IF t420 IS BOUND.
            DATA t427 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t427.
            DATA t428 TYPE REF TO object.
            CLEAR t428.
            CLEAR t427.
            t428 = t420.
            TRY.
                t425 ?= t428.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t425 IS NOT BOUND.
              TRY.
                  t427 ?= t420.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t427 IS BOUND.
                t425 = t427->source( ).
              ENDIF.
              IF t425 IS NOT BOUND.
                CREATE OBJECT t425.
                t425->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t425->oval = t420.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t426.
        IF t424 IS BOUND.
          CLEAR t426.
          IF t424 IS BOUND.
            DATA t429 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t429.
            DATA t430 TYPE REF TO object.
            CLEAR t430.
            CLEAR t429.
            t430 = t424.
            TRY.
                t426 ?= t430.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t426 IS NOT BOUND.
              TRY.
                  t429 ?= t424.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t429 IS BOUND.
                t426 = t429->source( ).
              ENDIF.
              IF t426 IS NOT BOUND.
                CREATE OBJECT t426.
                t426->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t426->oval = t424.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t425 IS BOUND.
          t419 = t425->strict_equals( t426 ).
        ELSE.
          t419 = xsdbool( t426 IS NOT BOUND ).
        ENDIF.
        t418 = t419.
        IF t419 = abap_false.
          DATA(t431) = VALUE abap_bool( ).
          DATA t432 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t432.
          DATA(t433) = abap_true.
          IF t433 = abap_true.
            DATA(t434) = t411.
            t432 = t434.
          ELSE.
            DATA t435 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t435.
            t432 = t435.
          ENDIF.
          DATA(t436) = t299.
          DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t437.
          DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t438.
          CLEAR t437.
          IF t432 IS BOUND.
            CLEAR t437.
            IF t432 IS BOUND.
              DATA t439 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t439.
              DATA t440 TYPE REF TO object.
              CLEAR t440.
              CLEAR t439.
              t440 = t432.
              TRY.
                  t437 ?= t440.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t437 IS NOT BOUND.
                TRY.
                    t439 ?= t432.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t439 IS BOUND.
                  t437 = t439->source( ).
                ENDIF.
                IF t437 IS NOT BOUND.
                  CREATE OBJECT t437.
                  t437->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t437->oval = t432.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t438.
          IF t436 IS BOUND.
            CLEAR t438.
            IF t436 IS BOUND.
              DATA t441 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t441.
              DATA t442 TYPE REF TO object.
              CLEAR t442.
              CLEAR t441.
              t442 = t436.
              TRY.
                  t438 ?= t442.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t438 IS NOT BOUND.
                TRY.
                    t441 ?= t436.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t441 IS BOUND.
                  t438 = t441->source( ).
                ENDIF.
                IF t438 IS NOT BOUND.
                  CREATE OBJECT t438.
                  t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t438->oval = t436.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          IF t437 IS BOUND.
            t431 = t437->strict_equals( t438 ).
          ELSE.
            t431 = xsdbool( t438 IS NOT BOUND ).
          ENDIF.
          t418 = t431.
        ENDIF.
        t417 = t418.
        IF t418 = abap_false.
          DATA(t443) = VALUE abap_bool( ).
          DATA t444 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t444.
          DATA(t445) = abap_true.
          IF t445 = abap_true.
            DATA(t446) = t411.
            t444 = t446.
          ELSE.
            DATA t447 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t447.
            t444 = t447.
          ENDIF.
          DATA(t448) = t334.
          DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t449.
          DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t450.
          CLEAR t449.
          IF t444 IS BOUND.
            CLEAR t449.
            IF t444 IS BOUND.
              DATA t451 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t451.
              DATA t452 TYPE REF TO object.
              CLEAR t452.
              CLEAR t451.
              t452 = t444.
              TRY.
                  t449 ?= t452.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t449 IS NOT BOUND.
                TRY.
                    t451 ?= t444.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t451 IS BOUND.
                  t449 = t451->source( ).
                ENDIF.
                IF t449 IS NOT BOUND.
                  CREATE OBJECT t449.
                  t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t449->oval = t444.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t450.
          IF t448 IS BOUND.
            CLEAR t450.
            IF t448 IS BOUND.
              DATA t453 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t453.
              DATA t454 TYPE REF TO object.
              CLEAR t454.
              CLEAR t453.
              t454 = t448.
              TRY.
                  t450 ?= t454.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t450 IS NOT BOUND.
                TRY.
                    t453 ?= t448.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t453 IS BOUND.
                  t450 = t453->source( ).
                ENDIF.
                IF t450 IS NOT BOUND.
                  CREATE OBJECT t450.
                  t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t450->oval = t448.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          IF t449 IS BOUND.
            t443 = t449->strict_equals( t450 ).
          ELSE.
            t443 = xsdbool( t450 IS NOT BOUND ).
          ENDIF.
          t417 = t443.
        ENDIF.
        t416 = t417.
        IF t417 = abap_false.
          DATA(t455) = VALUE abap_bool( ).
          DATA t456 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t456.
          DATA(t457) = abap_true.
          IF t457 = abap_true.
            DATA(t458) = t411.
            t456 = t458.
          ELSE.
            DATA t459 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t459.
            t456 = t459.
          ENDIF.
          DATA(t460) = t369.
          DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t461.
          DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t462.
          CLEAR t461.
          IF t456 IS BOUND.
            CLEAR t461.
            IF t456 IS BOUND.
              DATA t463 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t463.
              DATA t464 TYPE REF TO object.
              CLEAR t464.
              CLEAR t463.
              t464 = t456.
              TRY.
                  t461 ?= t464.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t461 IS NOT BOUND.
                TRY.
                    t463 ?= t456.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t463 IS BOUND.
                  t461 = t463->source( ).
                ENDIF.
                IF t461 IS NOT BOUND.
                  CREATE OBJECT t461.
                  t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t461->oval = t456.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t462.
          IF t460 IS BOUND.
            CLEAR t462.
            IF t460 IS BOUND.
              DATA t465 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t465.
              DATA t466 TYPE REF TO object.
              CLEAR t466.
              CLEAR t465.
              t466 = t460.
              TRY.
                  t462 ?= t466.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t462 IS NOT BOUND.
                TRY.
                    t465 ?= t460.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t465 IS BOUND.
                  t462 = t465->source( ).
                ENDIF.
                IF t462 IS NOT BOUND.
                  CREATE OBJECT t462.
                  t462->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t462->oval = t460.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          IF t461 IS BOUND.
            t455 = t461->strict_equals( t462 ).
          ELSE.
            t455 = xsdbool( t462 IS NOT BOUND ).
          ENDIF.
          t416 = t455.
        ENDIF.
        IF t416 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t467) = VALUE abap_bool( ).
          DATA(t468) = VALUE i( ).
          DATA(t469) = t263.
          DATA(t470) = t411.
          t468 = t469->indexof( p0 = t470 ).
          DATA(t471) = 0.
          t467 = xsdbool( t468 >= t471 ).
          IF t467 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t472 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t472.
        DATA t473 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t473.
        DATA t474 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t474.
        DATA(t475) = t411.
        t474 = t475.
        DATA t476 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t476.
        DATA(t477) = VALUE abap_bool( ).
        DATA(t478) = t474.
        IF t478 IS INITIAL.
          t477 = abap_true.
        ENDIF.
        IF t477 = abap_true.
          DATA t479 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t479.
          t476 = t479.
        ELSE.
          DATA t480 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t480.
          DATA(t481) = t474.
          DATA(t482) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
          t480 = t481->find_direct_expression( i_type_9913 = t482 ).
          t476 = t480.
        ENDIF.
        t473 = t476.
        t472 = t473.
        DATA(t483) = VALUE abap_bool( ).
        DATA(t484) = t472.
        t483 = xsdbool( t484 IS BOUND ).
        IF t483 = abap_true.
          DATA t485 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t485.
          DATA(t486) = t472.
          t485 = t486.
          DATA(t487) = t2.
          DATA t488 TYPE REF TO zcl_lnt_string_type.
          CLEAR t488.
          DATA t489 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t489.
          t488 = zcl_lnt_string_type=>get_db65( i_input_967e = t489 ).
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t485 i_input_967e = t487 i_type_9913 = t488 ).
        ELSE.
          DATA t490 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t490.
          DATA(t491) = t411.
          DATA(t492) = t2.
          t490 = zcl_lnt_sy_target=>run_syntax( i_node = t491 i_input_967e = t492 ).
        ENDIF.
      ENDDO.
    ENDIF.
  ENDMETHOD.

  METHOD inline.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t4.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = t4.
      t10 = t11.
      DATA(t12) = t2.
      DATA t13 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA(t15) = t3.
        t13 = t15.
      ELSE.
        DATA t16 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t16.
        t13 = t16.
      ENDIF.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t10 i_input_967e = t12 i_type_9913 = t13 ).
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t18) = t1.
      DATA(t19) = t2.
      t17 = zcl_lnt_sy_target=>run_syntax( i_node = t18 i_input_967e = t19 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d901_74931db70dbf.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
