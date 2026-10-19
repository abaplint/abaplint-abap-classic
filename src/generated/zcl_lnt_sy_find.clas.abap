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
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t1->find_direct_expressions( i_type_9913 = t5 ).
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
      t12 = t6.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t2 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    t21 = t1->find_expression_after_token( i_text = |RESULTS| ).
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = VALUE abap_bool( ).
    t26 = xsdbool( t21 IS BOUND ).
    t25 = t26.
    IF t26 = abap_true.
      DATA t29 TYPE REF TO zif_lnt_statement_runnable.
      t29 = t21->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t25 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_st_target ).
    ENDIF.
    IF t25 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_structure_type.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t35.
      DATA t38 TYPE REF TO zcl_lnt_istructure_component.
      DATA t41 TYPE REF TO zcl_lnt_abstract_type.
      DATA t43 TYPE REF TO zcl_lnt_abstract_type_data.
      t41 = zcl_lnt_integer_type=>get_db65( i_input_967e = t43 ).
      DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t38 = NEW zcl_lnt_istructure_component( i_name = |OFFSET| i_type_9913 = t41 i_as_include = t44 i_suffix = t46 ).
      CREATE OBJECT t38->zlnt_view_ownkeys_b0e8086400eb.
      t38->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t48 ).
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t49 ).
      ENDIF.
      CREATE OBJECT t38->zlnt_json_ownkeys_70e5fd461788.
      t38->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t51 ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t53 ).
      ENDIF.
      t35->load( ).
      APPEND t38 TO t35->items.
      t35->save( ).
      DATA t55 TYPE REF TO zcl_lnt_istructure_component.
      DATA t58 TYPE REF TO zcl_lnt_abstract_type.
      DATA t60 TYPE REF TO zcl_lnt_abstract_type_data.
      t58 = zcl_lnt_integer_type=>get_db65( i_input_967e = t60 ).
      DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t55 = NEW zcl_lnt_istructure_component( i_name = |LENGTH| i_type_9913 = t58 i_as_include = t61 i_suffix = t63 ).
      CREATE OBJECT t55->zlnt_view_ownkeys_b0e8086400eb.
      t55->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t65 ).
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t66 ).
      ENDIF.
      CREATE OBJECT t55->zlnt_json_ownkeys_70e5fd461788.
      t55->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t68 ).
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t70 ).
      ENDIF.
      t35->load( ).
      APPEND t55 TO t35->items.
      t35->save( ).
      t34 = t35.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t75->has = abap_true.
      t75->value = |SUBMATCH_RESULT|.
      t72 = t75.
      DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t80->has = abap_true.
      t80->value = |SUBMATCH_RESULT|.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t33 = NEW zcl_lnt_structure_type( i_components = t34 i_qualified_name = t72 i_ddic_name = t80 i_description = t82 ).
      DATA t83 TYPE REF TO zcl_lnt_structure_type.
      DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t86.
      DATA t89 TYPE REF TO zcl_lnt_istructure_component.
      DATA t92 TYPE REF TO zcl_lnt_abstract_type.
      DATA t94 TYPE REF TO zcl_lnt_abstract_type_data.
      t92 = zcl_lnt_integer_type=>get_db65( i_input_967e = t94 ).
      DATA t95 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t89 = NEW zcl_lnt_istructure_component( i_name = |LINE| i_type_9913 = t92 i_as_include = t95 i_suffix = t97 ).
      CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
      t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t99 ).
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t100 ).
      ENDIF.
      CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
      t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t102 ).
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t104 ).
      ENDIF.
      t86->load( ).
      APPEND t89 TO t86->items.
      t86->save( ).
      DATA t106 TYPE REF TO zcl_lnt_istructure_component.
      DATA t109 TYPE REF TO zcl_lnt_abstract_type.
      DATA t111 TYPE REF TO zcl_lnt_abstract_type_data.
      t109 = zcl_lnt_integer_type=>get_db65( i_input_967e = t111 ).
      DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t106 = NEW zcl_lnt_istructure_component( i_name = |OFFSET| i_type_9913 = t109 i_as_include = t112 i_suffix = t114 ).
      CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
      t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t116 ).
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t117 ).
      ENDIF.
      CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
      t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t119 ).
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t121 ).
      ENDIF.
      t86->load( ).
      APPEND t106 TO t86->items.
      t86->save( ).
      DATA t123 TYPE REF TO zcl_lnt_istructure_component.
      DATA t126 TYPE REF TO zcl_lnt_abstract_type.
      DATA t128 TYPE REF TO zcl_lnt_abstract_type_data.
      t126 = zcl_lnt_integer_type=>get_db65( i_input_967e = t128 ).
      DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t123 = NEW zcl_lnt_istructure_component( i_name = |LENGTH| i_type_9913 = t126 i_as_include = t129 i_suffix = t131 ).
      CREATE OBJECT t123->zlnt_view_ownkeys_b0e8086400eb.
      t123->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t133 ).
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t134 ).
      ENDIF.
      CREATE OBJECT t123->zlnt_json_ownkeys_70e5fd461788.
      t123->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t136 ).
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t138 ).
      ENDIF.
      t86->load( ).
      APPEND t123 TO t86->items.
      t86->save( ).
      DATA t140 TYPE REF TO zcl_lnt_istructure_component.
      DATA t143 TYPE REF TO zcl_lnt_abstract_type.
      DATA t146 TYPE REF TO zcl_lnt_itable_options.
      DATA t151 TYPE REF TO zcl_lnt_itable_key.
      DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t146 = NEW zcl_lnt_itable_options( i_with_header = abap_false i_key_type = |DEFAULT| i_primary_key = t151 i_secondary = t153 ).
      CREATE OBJECT t146->zlnt_view_ownkeys_b0e8086400eb.
      t146->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t146->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t155 ).
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t146->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t146->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t156 ).
      ENDIF.
      CREATE OBJECT t146->zlnt_json_ownkeys_70e5fd461788.
      t146->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t146->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t158 ).
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t146->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t146->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t160 ).
      ENDIF.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t143 = NEW zcl_lnt_ty_table_type( i_row_type = t33 i_options = t146 i_qualified_name = t161 i_description = t162 ).
      DATA t163 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t140 = NEW zcl_lnt_istructure_component( i_name = |SUBMATCHES| i_type_9913 = t143 i_as_include = t163 i_suffix = t165 ).
      CREATE OBJECT t140->zlnt_view_ownkeys_b0e8086400eb.
      t140->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t167 ).
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t168 ).
      ENDIF.
      CREATE OBJECT t140->zlnt_json_ownkeys_70e5fd461788.
      t140->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t170 ).
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t172 ).
      ENDIF.
      t86->load( ).
      APPEND t140 TO t86->items.
      t86->save( ).
      t85 = t86.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t177->has = abap_true.
      t177->value = |MATCH_RESULT|.
      t174 = t177.
      DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t182->has = abap_true.
      t182->value = |MATCH_RESULT|.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t83 = NEW zcl_lnt_structure_type( i_components = t85 i_qualified_name = t174 i_ddic_name = t182 i_description = t184 ).
      DATA(t185) = VALUE abap_bool( ).
      DATA(t186) = VALUE string( ).
      DATA(t187) = VALUE string( ).
      t187 = t1->concat_tokens( ).
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
        t195 = t21.
        DATA t198 TYPE REF TO zcl_lnt_syntax_input.
        t198 = t2.
        DATA t202 TYPE REF TO zcl_lnt_expression_node.
        DATA(t205) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t202 = t195->find_direct_expression( i_type_9913 = t205 ).
        IF xsdbool( t202 IS BOUND ) = abap_true.
          DATA t208 TYPE REF TO zcl_lnt_expression_node.
          t208 = t202.
          DATA t211 TYPE REF TO zcl_lnt_abstract_type.
          t211 = t83.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t208 i_input_967e = t198 i_type_9913 = t211 ).
        ELSE.
          DATA t215 TYPE REF TO zcl_lnt_abstract_type.
          t215 = zcl_lnt_sy_target=>run_syntax( i_node = t195 i_input_967e = t198 ).
        ENDIF.
      ELSE.
        DATA t218 TYPE REF TO zcl_lnt_expression_node.
        t218 = t21.
        DATA t221 TYPE REF TO zcl_lnt_syntax_input.
        t221 = t2.
        DATA t224 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t226 TYPE REF TO zcl_lnt_itable_options.
        DATA t231 TYPE REF TO zcl_lnt_itable_key.
        DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t226 = NEW zcl_lnt_itable_options( i_with_header = abap_false i_key_type = |DEFAULT| i_primary_key = t231 i_secondary = t233 ).
        CREATE OBJECT t226->zlnt_view_ownkeys_b0e8086400eb.
        t226->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t235 ).
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t236 ).
        ENDIF.
        CREATE OBJECT t226->zlnt_json_ownkeys_70e5fd461788.
        t226->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t238 ).
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t240 ).
        ENDIF.
        DATA(t244) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t244->has = abap_true.
        t244->value = |MATCH_RESULT_TAB|.
        DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t224 = NEW zcl_lnt_ty_table_type( i_row_type = t83 i_options = t226 i_qualified_name = t244 i_description = t246 ).
        DATA t247 TYPE REF TO zcl_lnt_expression_node.
        DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t247 = t218->find_direct_expression( i_type_9913 = t250 ).
        IF xsdbool( t247 IS BOUND ) = abap_true.
          DATA t253 TYPE REF TO zcl_lnt_expression_node.
          t253 = t247.
          DATA t256 TYPE REF TO zcl_lnt_abstract_type.
          t256 = t224.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t253 i_input_967e = t221 i_type_9913 = t256 ).
        ELSE.
          DATA t260 TYPE REF TO zcl_lnt_abstract_type.
          t260 = zcl_lnt_sy_target=>run_syntax( i_node = t218 i_input_967e = t221 ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t263 = t1->find_expressions_after_token( i_text = |OFFSET| ).
    DATA t268 TYPE REF TO zcl_lnt_expression_node.
    DATA t269 TYPE REF TO object.
    DATA(t270) = VALUE i( ).
    DO.
      t263->load( ).
      IF t270 >= lines( t263->items ).
        EXIT.
      ENDIF.
      CLEAR t269.
      READ TABLE t263->items INDEX t270 + 1 INTO t269.
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
      DATA t274 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t274.
      t274 = t268->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      IF xsdbool( t274 IS BOUND AND t274 IS INSTANCE OF zcl_lnt_st_target ) = abap_true.
        DATA t276 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t276.
        t276 = t268.
        DATA t278 TYPE REF TO zcl_lnt_syntax_input.
        CLEAR t278.
        t278 = t2.
        DATA t281 TYPE REF TO zcl_lnt_integer_type.
        CLEAR t281.
        DATA t282 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t282.
        t281 = zcl_lnt_integer_type=>get_db65( i_input_967e = t282 ).
        DATA t283 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t283.
        DATA(t286) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t283 = t276->find_direct_expression( i_type_9913 = t286 ).
        IF xsdbool( t283 IS BOUND ) = abap_true.
          DATA t289 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t289.
          t289 = t283.
          DATA t292 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t292.
          t292 = t281.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t289 i_input_967e = t278 i_type_9913 = t292 ).
        ELSE.
          DATA t296 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t296.
          t296 = zcl_lnt_sy_target=>run_syntax( i_node = t276 i_input_967e = t278 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t299 TYPE REF TO zcl_lnt_expression_node.
    t299 = t1->find_expression_after_token( i_text = |LINE| ).
    DATA(t303) = VALUE abap_bool( ).
    DATA(t304) = VALUE abap_bool( ).
    t304 = xsdbool( t299 IS BOUND ).
    t303 = t304.
    IF t304 = abap_true.
      DATA t307 TYPE REF TO zif_lnt_statement_runnable.
      t307 = t299->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t303 = xsdbool( t307 IS BOUND AND t307 IS INSTANCE OF zcl_lnt_st_target ).
    ENDIF.
    IF t303 = abap_true.
      DATA t310 TYPE REF TO zcl_lnt_expression_node.
      t310 = t299.
      DATA t313 TYPE REF TO zcl_lnt_syntax_input.
      t313 = t2.
      DATA t316 TYPE REF TO zcl_lnt_integer_type.
      DATA t317 TYPE REF TO zcl_lnt_abstract_type_data.
      t316 = zcl_lnt_integer_type=>get_db65( i_input_967e = t317 ).
      DATA t318 TYPE REF TO zcl_lnt_expression_node.
      DATA(t321) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t318 = t310->find_direct_expression( i_type_9913 = t321 ).
      IF xsdbool( t318 IS BOUND ) = abap_true.
        DATA t324 TYPE REF TO zcl_lnt_expression_node.
        t324 = t318.
        DATA t327 TYPE REF TO zcl_lnt_abstract_type.
        t327 = t316.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t324 i_input_967e = t313 i_type_9913 = t327 ).
      ELSE.
        DATA t331 TYPE REF TO zcl_lnt_abstract_type.
        t331 = zcl_lnt_sy_target=>run_syntax( i_node = t310 i_input_967e = t313 ).
      ENDIF.
    ENDIF.
    DATA t334 TYPE REF TO zcl_lnt_expression_node.
    t334 = t1->find_expression_after_token( i_text = |COUNT| ).
    DATA(t338) = VALUE abap_bool( ).
    DATA(t339) = VALUE abap_bool( ).
    t339 = xsdbool( t334 IS BOUND ).
    t338 = t339.
    IF t339 = abap_true.
      DATA t342 TYPE REF TO zif_lnt_statement_runnable.
      t342 = t334->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t338 = xsdbool( t342 IS BOUND AND t342 IS INSTANCE OF zcl_lnt_st_target ).
    ENDIF.
    IF t338 = abap_true.
      DATA t345 TYPE REF TO zcl_lnt_expression_node.
      t345 = t334.
      DATA t348 TYPE REF TO zcl_lnt_syntax_input.
      t348 = t2.
      DATA t351 TYPE REF TO zcl_lnt_integer_type.
      DATA t352 TYPE REF TO zcl_lnt_abstract_type_data.
      t351 = zcl_lnt_integer_type=>get_db65( i_input_967e = t352 ).
      DATA t353 TYPE REF TO zcl_lnt_expression_node.
      DATA(t356) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t353 = t345->find_direct_expression( i_type_9913 = t356 ).
      IF xsdbool( t353 IS BOUND ) = abap_true.
        DATA t359 TYPE REF TO zcl_lnt_expression_node.
        t359 = t353.
        DATA t362 TYPE REF TO zcl_lnt_abstract_type.
        t362 = t351.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t359 i_input_967e = t348 i_type_9913 = t362 ).
      ELSE.
        DATA t366 TYPE REF TO zcl_lnt_abstract_type.
        t366 = zcl_lnt_sy_target=>run_syntax( i_node = t345 i_input_967e = t348 ).
      ENDIF.
    ENDIF.
    DATA t369 TYPE REF TO zcl_lnt_expression_node.
    t369 = t1->find_expression_after_token( i_text = |LENGTH| ).
    DATA(t373) = VALUE abap_bool( ).
    DATA(t374) = VALUE abap_bool( ).
    t374 = xsdbool( t369 IS BOUND ).
    t373 = t374.
    IF t374 = abap_true.
      DATA t377 TYPE REF TO zif_lnt_statement_runnable.
      t377 = t369->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t373 = xsdbool( t377 IS BOUND AND t377 IS INSTANCE OF zcl_lnt_st_target ).
    ENDIF.
    IF t373 = abap_true.
      DATA t380 TYPE REF TO zcl_lnt_expression_node.
      t380 = t369.
      DATA t383 TYPE REF TO zcl_lnt_syntax_input.
      t383 = t2.
      DATA t386 TYPE REF TO zcl_lnt_integer_type.
      DATA t387 TYPE REF TO zcl_lnt_abstract_type_data.
      t386 = zcl_lnt_integer_type=>get_db65( i_input_967e = t387 ).
      DATA t388 TYPE REF TO zcl_lnt_expression_node.
      DATA(t391) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t388 = t380->find_direct_expression( i_type_9913 = t391 ).
      IF xsdbool( t388 IS BOUND ) = abap_true.
        DATA t394 TYPE REF TO zcl_lnt_expression_node.
        t394 = t388.
        DATA t397 TYPE REF TO zcl_lnt_abstract_type.
        t397 = t386.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t394 i_input_967e = t383 i_type_9913 = t397 ).
      ELSE.
        DATA t401 TYPE REF TO zcl_lnt_abstract_type.
        t401 = zcl_lnt_sy_target=>run_syntax( i_node = t380 i_input_967e = t383 ).
      ENDIF.
    ENDIF.
    DATA t405 TYPE REF TO zcl_lnt_abstract_token.
    t405 = t1->find_direct_token_by_text( i_text = |SUBMATCHES| ).
    IF xsdbool( t405 IS BOUND ) = abap_true.
      DATA t408 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t410) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t408 = t1->find_direct_expressions( i_type_9913 = t410 ).
      DATA t411 TYPE REF TO zcl_lnt_expression_node.
      DATA t412 TYPE REF TO object.
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
        t420 = t411.
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
        IF t21 IS BOUND.
          CLEAR t426.
          IF t21 IS BOUND.
            DATA t429 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t429.
            DATA t430 TYPE REF TO object.
            CLEAR t430.
            CLEAR t429.
            t430 = t21.
            TRY.
                t426 ?= t430.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t426 IS NOT BOUND.
              TRY.
                  t429 ?= t21.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t429 IS BOUND.
                t426 = t429->source( ).
              ENDIF.
              IF t426 IS NOT BOUND.
                CREATE OBJECT t426.
                t426->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t426->oval = t21.
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
          t432 = t411.
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
          IF t299 IS BOUND.
            CLEAR t438.
            IF t299 IS BOUND.
              DATA t441 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t441.
              DATA t442 TYPE REF TO object.
              CLEAR t442.
              CLEAR t441.
              t442 = t299.
              TRY.
                  t438 ?= t442.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t438 IS NOT BOUND.
                TRY.
                    t441 ?= t299.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t441 IS BOUND.
                  t438 = t441->source( ).
                ENDIF.
                IF t438 IS NOT BOUND.
                  CREATE OBJECT t438.
                  t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t438->oval = t299.
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
          t444 = t411.
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
          IF t334 IS BOUND.
            CLEAR t450.
            IF t334 IS BOUND.
              DATA t453 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t453.
              DATA t454 TYPE REF TO object.
              CLEAR t454.
              CLEAR t453.
              t454 = t334.
              TRY.
                  t450 ?= t454.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t450 IS NOT BOUND.
                TRY.
                    t453 ?= t334.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t453 IS BOUND.
                  t450 = t453->source( ).
                ENDIF.
                IF t450 IS NOT BOUND.
                  CREATE OBJECT t450.
                  t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t450->oval = t334.
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
          t456 = t411.
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
          IF t369 IS BOUND.
            CLEAR t462.
            IF t369 IS BOUND.
              DATA t465 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t465.
              DATA t466 TYPE REF TO object.
              CLEAR t466.
              CLEAR t465.
              t466 = t369.
              TRY.
                  t462 ?= t466.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t462 IS NOT BOUND.
                TRY.
                    t465 ?= t369.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t465 IS BOUND.
                  t462 = t465->source( ).
                ENDIF.
                IF t462 IS NOT BOUND.
                  CREATE OBJECT t462.
                  t462->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t462->oval = t369.
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
          IF xsdbool( t263->indexof( p0 = t411 ) >= 0 ) = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t472 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t472.
        DATA t474 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t474.
        t474 = t411.
        DATA t476 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t476.
        IF xsdbool( t474 IS INITIAL ) = abap_true.
          CLEAR t476.
        ELSE.
          DATA(t482) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
          t476 = t474->find_direct_expression( i_type_9913 = t482 ).
        ENDIF.
        t472 = t476.
        IF xsdbool( t472 IS BOUND ) = abap_true.
          DATA t485 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t485.
          t485 = t472.
          DATA t489 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t489.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t485 i_input_967e = t2 i_type_9913 = zcl_lnt_string_type=>get_db65( i_input_967e = t489 ) ).
        ELSE.
          DATA t490 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t490.
          t490 = zcl_lnt_sy_target=>run_syntax( i_node = t411 i_input_967e = t2 ).
        ENDIF.
      ENDDO.
    ENDIF.
  ENDMETHOD.

  METHOD inline.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
    t4 = t1->find_direct_expression( i_type_9913 = t7 ).
    IF xsdbool( t4 IS BOUND ) = abap_true.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t4 i_input_967e = t2 i_type_9913 = t3 ).
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      t17 = zcl_lnt_sy_target=>run_syntax( i_node = t1 i_input_967e = t2 ).
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
