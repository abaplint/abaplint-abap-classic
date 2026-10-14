* TS: src/abap/5_syntax/basic_types.ts:21:1 BasicTypes
CLASS zcl_lnt_basic_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA input_2fd0 TYPE REF TO zcl_lnt_syntax_input.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS lookup_qualified_name IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS resolve_like_name IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_header_logic TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS clone_type IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS resolve_type_name IMPORTING i_type_name TYPE REF TO zcl_lnt_expression_node i_length TYPE REF TO zlnt_runtime_opti_4a236cd5714d i_decimals_2eed TYPE REF TO zlnt_runtime_opti_4a236cd5714d i_qualified_name TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS simple_type IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_qualified_name_prefix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS parse_table IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS rap_table_for IMPORTING i_entity_name TYPE string i_options TYPE REF TO zcl_lnt_itable_options RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS parse_type IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS is_occurs IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_rap_base_entity_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS resolve_rap_alias IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS is_rap_derived_entity_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_rap_table_for IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_rap_type_structure IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS resolve_type_chain IMPORTING i_expr TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS resolve_constant_value IMPORTING i_expr TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS resolve_type_ref IMPORTING i_chain_8ed6 TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS find_value IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS find_decimals IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    METHODS find_length IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    METHODS parse_int IMPORTING i_text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_bb79b741c1de TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_basic_types IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t2) = CAST zcl_lnt_syntax_input( t1 ).
    me->input_2fd0 = t2.
  ENDMETHOD.
  METHOD lookup_qualified_name.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/basic_types.ts:28|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD resolve_like_name.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA(t2) = CAST zlnt_runtime_opti_7f2541396f43( i_header_logic ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = CAST zlnt_runtime_opti_7f2541396f43( t2 ).
    IF t4 IS INITIAL.
      t3 = abap_true.
    ELSEIF t4->has = abap_false.
      t3 = abap_true.
    ENDIF.
    IF t3 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t5.
      DATA(t6) = abap_true.
      IF t6 = abap_true.
        DATA(t7) = abap_true.
        DATA(t8) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t8->has = abap_true.
        t8->value = t7.
        t5 = t8.
      ELSE.
        DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t9.
        t5 = t9.
      ENDIF.
      t2 = t5.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zif_lnt_union_bb14dc41.
    DATA(t12) = CAST zif_lnt_union_bb14dc41( t1 ).
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zif_lnt_union_bb14dc41( t11 ).
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA t20 TYPE REF TO zif_lnt_union_bb14dc41.
    DATA(t21) = CAST zif_lnt_union_bb14dc41( t1 ).
    t20 = t21.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    t19 = t20->find_first_expression( i_type_9913 = t22 ).
    t18 = t19.
    DATA(t23) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA(t25) = CAST zcl_lnt_expression_node( t18 ).
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    t26 = t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = CAST zcl_lnt_expression_node( t24 ).
    IF t29 IS INITIAL.
      t28 = abap_true.
    ENDIF.
    t23 = t28.
    IF t23 = abap_true.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      DATA t31 TYPE REF TO zif_lnt_union_bb14dc41.
      DATA(t32) = CAST zif_lnt_union_bb14dc41( t1 ).
      t31 = t32.
      DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
      t30 = t31->find_first_expression( i_type_9913 = t33 ).
      t18 = t30.
    ENDIF.
    DATA(t34) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    DATA(t36) = CAST zcl_lnt_expression_node( t18 ).
    t35 = t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    t37 = t38.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = CAST zcl_lnt_expression_node( t35 ).
    IF t40 IS INITIAL.
      t39 = abap_true.
    ENDIF.
    t34 = t39.
    IF t34 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      DATA t42 TYPE REF TO zif_lnt_union_bb14dc41.
      DATA(t43) = CAST zif_lnt_union_bb14dc41( t1 ).
      t42 = t43.
      DATA(t44) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
      t41 = t42->find_first_expression( i_type_9913 = t44 ).
      t18 = t41.
    ENDIF.
    DATA(t45) = VALUE abap_bool( ).
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA(t47) = CAST zcl_lnt_expression_node( t18 ).
    t46 = t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    t48 = t49.
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = CAST zcl_lnt_expression_node( t46 ).
    IF t51 IS INITIAL.
      t50 = abap_true.
    ENDIF.
    t45 = t50.
    IF t45 = abap_true.
      DATA t52 TYPE REF TO zcl_lnt_expression_node.
      DATA t53 TYPE REF TO zif_lnt_union_bb14dc41.
      DATA(t54) = CAST zif_lnt_union_bb14dc41( t1 ).
      t53 = t54.
      DATA(t55) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4 ).
      t52 = t53->find_first_expression( i_type_9913 = t55 ).
      t18 = t52.
    ENDIF.
    DATA(t56) = VALUE abap_bool( ).
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    DATA(t58) = CAST zcl_lnt_expression_node( t18 ).
    t57 = t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    t59 = t60.
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = CAST zcl_lnt_expression_node( t57 ).
    IF t62 IS INITIAL.
      t61 = abap_true.
    ENDIF.
    t56 = t61.
    IF t56 = abap_true.
      DATA t63 TYPE REF TO zcl_lnt_expression_node.
      DATA t64 TYPE REF TO zif_lnt_union_bb14dc41.
      DATA(t65) = CAST zif_lnt_union_bb14dc41( t1 ).
      t64 = t65.
      DATA(t66) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18 ).
      t63 = t64->find_first_expression( i_type_9913 = t66 ).
      t18 = t63.
    ENDIF.
    DATA(t67) = VALUE abap_bool( ).
    DATA t68 TYPE REF TO zcl_lnt_expression_node.
    DATA(t69) = CAST zcl_lnt_expression_node( t18 ).
    t68 = t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    t70 = t71.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = CAST zcl_lnt_expression_node( t68 ).
    IF t73 IS INITIAL.
      t72 = abap_true.
    ENDIF.
    t67 = t72.
    IF t67 = abap_true.
      DATA t74 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t75.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      DATA(t77) = abap_true.
      IF t77 = abap_true.
        DATA(t78) = |resolveLikeName, chain undefined|.
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = t78.
        t76 = t79.
      ELSE.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        t76 = t80.
      ENDIF.
      t75 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t76 ).
      t74 = NEW #( ).
      t74->payload = t75.
      RAISE EXCEPTION t74.
    ENDIF.
    DATA t81 TYPE string.
    DATA t82 TYPE string.
    DATA t83 TYPE REF TO zcl_lnt_expression_node.
    DATA(t84) = CAST zcl_lnt_expression_node( t18 ).
    t83 = t84.
    t82 = t83->concat_tokens( ).
    t81 = t82.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t88.
    t87 = t88.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t91) = CAST zlnt_runtime_arra_c22708faf2e3( t87 ).
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zcl_lnt_abstract_node.
    DATA t95 TYPE REF TO zcl_lnt_expression_node.
    DATA(t96) = CAST zcl_lnt_expression_node( t18 ).
    t95 = t96.
    t94 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t98) = CAST zcl_lnt_abstract_node( t94 ).
    t97 = t98->children.
    t93 = t97.
    t92 ?= t93.
    t90 = t91->concat( p0 = t92 ).
    t89 = t90.
    DATA(t99) = CAST zlnt_runtime_arra_c22708faf2e3( t89 ).
    t86 = t99.
    t85 = t86.
    DATA t100 TYPE abap_bool.
    DATA t101 TYPE i.
    DATA(t102) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    t101 = lines( t102->items ).
    DATA(t103) = 0.
    t100 = xsdbool( t101 = t103 ).
    IF t100 = abap_true.
      DATA t104 TYPE REF TO zcl_lnt_unknown_type.
      DATA t105 TYPE string.
      DATA t106 TYPE string.
      DATA(t107) = |Type error, could not resolve "|.
      DATA(t108) = t81.
      DATA(t109) = strlen( t107 ).
      t106 = |{ t107 }{ t108 }|.
      DATA(t110) = |", resolveLikeName1|.
      DATA(t111) = strlen( t106 ).
      t105 = |{ t106 }{ t110 }|.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t112.
      t104 = NEW zcl_lnt_unknown_type( i_error = t105 i_qualified_name = t112 ).
      result = t104.
      RETURN.
    ENDIF.
    DATA t113 TYPE REF TO zcl_lnt_abstract_type.
    DATA t114 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t114.
    t113 = t114.
    DATA t115 TYPE abap_bool.
    DATA t116 TYPE abap_bool.
    DATA t117 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t118) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    DATA t119 TYPE REF TO object.
    CLEAR t119.
    READ TABLE t118->items INDEX 2 INTO t119.
    t117 ?= t119.
    t116 = xsdbool( t117 IS BOUND ).
    t115 = t116.
    IF t116 = abap_true.
      DATA t120 TYPE abap_bool.
      DATA t121 TYPE abap_bool.
      DATA t122 TYPE string.
      DATA t123 TYPE REF TO zcl_lnt_abstract_token.
      DATA t124 TYPE REF TO zcl_lnt_abstract_token.
      DATA t125 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t126) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
      DATA t127 TYPE REF TO object.
      CLEAR t127.
      READ TABLE t126->items INDEX 2 INTO t127.
      t125 ?= t127.
      t124 = t125->get_first_token( ).
      t123 = t124.
      DATA t128 TYPE string.
      DATA(t129) = CAST zcl_lnt_abstract_token( t123 ).
      t128 = t129->str.
      t122 = t128.
      DATA(t130) = |=>|.
      t121 = xsdbool( t122 = t130 ).
      t120 = t121.
      IF t121 = abap_false.
        DATA t131 TYPE abap_bool.
        DATA t132 TYPE string.
        DATA t133 TYPE REF TO zcl_lnt_abstract_token.
        DATA t134 TYPE REF TO zcl_lnt_abstract_token.
        DATA t135 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
        DATA t137 TYPE REF TO object.
        CLEAR t137.
        READ TABLE t136->items INDEX 2 INTO t137.
        t135 ?= t137.
        t134 = t135->get_first_token( ).
        t133 = t134.
        DATA t138 TYPE string.
        DATA(t139) = CAST zcl_lnt_abstract_token( t133 ).
        t138 = t139->str.
        t132 = t138.
        DATA(t140) = |->|.
        t131 = xsdbool( t132 = t140 ).
        t120 = t131.
      ENDIF.
      t115 = t120.
    ENDIF.
    IF t115 = abap_true.
      DATA t141 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t141.
      DATA t142 TYPE REF TO zcl_lnt_expression_node.
      DATA(t143) = CAST zcl_lnt_expression_node( t18 ).
      t142 = t143.
      DATA(t144) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t145.
      DATA(t146) = abap_true.
      IF t146 = abap_true.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t148) = |Type|.
        CREATE OBJECT t147.
        t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t147->sval = t148.
        t145 = t147.
      ELSE.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        t145 = t149.
      ENDIF.
      DATA t150 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t150.
      t141 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t142 i_input_967e = t144 i_ref_type = t145 i_allow_generic_deference = t150 ).
      t113 = t141.
    ELSE.
      DATA t151 TYPE string.
      DATA t152 TYPE string.
      DATA t153 TYPE REF TO zcl_lnt_abstract_token.
      DATA t154 TYPE REF TO zcl_lnt_abstract_token.
      DATA t155 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t156 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t157) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
      DATA t158 TYPE REF TO object.
      t158 = t157->shift( ).
      t156 ?= t158.
      t155 = t156.
      t154 = t155->get_first_token( ).
      t153 = t154.
      DATA t159 TYPE string.
      DATA(t160) = CAST zcl_lnt_abstract_token( t153 ).
      t159 = t160->str.
      t152 = t159.
      t151 = t152.
      DATA t161 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t161.
      DATA t162 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t162.
      DATA t163 TYPE REF TO zcl_lnt_current_scope.
      DATA t164 TYPE REF TO zcl_lnt_current_scope.
      DATA(t165) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      t164 = t165->scope.
      t163 = t164.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t166.
      DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t167.
      DATA(t168) = abap_true.
      IF t168 = abap_true.
        DATA(t169) = t151.
        DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t170->has = abap_true.
        t170->value = t169.
        t167 = t170.
      ELSE.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t171.
        t167 = t171.
      ENDIF.
      t166 = t167.
      DATA t172 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t172.
      DATA(t173) = VALUE abap_bool( ).
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t175) = CAST zlnt_runtime_opti_4ba3bdccd169( t166 ).
      t174 = t175.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      t176 = t177.
      DATA(t178) = VALUE abap_bool( ).
      DATA(t179) = CAST zlnt_runtime_opti_4ba3bdccd169( t174 ).
      IF t179 IS INITIAL.
        t178 = abap_true.
      ELSEIF t179->has = abap_false.
        t178 = abap_true.
      ENDIF.
      t173 = t178.
      IF t173 = abap_true.
        DATA t180 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t180.
        t172 = t180.
      ELSE.
        DATA t181 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t181.
        DATA t182 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t182.
        DATA t183 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t183.
        DATA t184 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t185 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t186) = CAST zcl_lnt_current_scope( t163 ).
        t185 = t186->current.
        t184 = t185.
        DATA t187 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t187.
        DATA(t188) = VALUE abap_bool( ).
        DATA(t189) = CAST zcl_lnt_spaghetti_scope_node( t184 ).
        IF t189 IS INITIAL.
          t188 = abap_true.
        ENDIF.
        IF t188 = abap_true.
          DATA t190 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t190.
          t187 = t190.
        ELSE.
          DATA t191 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t192 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t193) = CAST zcl_lnt_spaghetti_scope_node( t184 ).
          t192 = t193.
          DATA t194 TYPE string.
          DATA(t195) = CAST zlnt_runtime_opti_4ba3bdccd169( t166 ).
          t194 = t195->value.
          t191 = t192->find_variable( i_name = t194 ).
          t187 = t191.
        ENDIF.
        t183 = t187.
        t182 = t183.
        DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t196.
        DATA t197 TYPE abap_bool.
        DATA(t198) = CAST zcl_lnt_typed_identifier( t182 ).
        t197 = xsdbool( t198 IS BOUND ).
        IF t197 = abap_true.
          DATA t199 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t199.
          DATA(t200) = abap_true.
          IF t200 = abap_true.
            DATA t201 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t202) = CAST zcl_lnt_typed_identifier( t182 ).
            t201 = t202.
            t199 = t201.
          ELSE.
            DATA t203 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t203.
            t199 = t203.
          ENDIF.
          t196 = t199.
        ELSE.
          DATA t204 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t204.
          DATA(t205) = CAST zcl_lnt_current_scope( t163 ).
          DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t206.
          DATA(t207) = abap_true.
          IF t207 = abap_true.
            DATA t208 TYPE string.
            DATA(t209) = CAST zlnt_runtime_opti_4ba3bdccd169( t166 ).
            t208 = t209->value.
            DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t210->has = abap_true.
            t210->value = t208.
            t206 = t210.
          ELSE.
            DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t211.
            t206 = t211.
          ENDIF.
          t204 = t205->find_type_pool_constant( i_name = t206 ).
          t196 = t204.
        ENDIF.
        t181 = t196.
        t172 = t181.
      ENDIF.
      t162 = t172.
      t161 = t162.
      DATA t212 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t212.
      DATA t213 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t213.
      DATA t214 TYPE REF TO zcl_lnt_current_scope.
      DATA t215 TYPE REF TO zcl_lnt_current_scope.
      DATA(t216) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      t215 = t216->scope.
      t214 = t215.
      DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t217.
      DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t218.
      DATA(t219) = abap_true.
      IF t219 = abap_true.
        DATA(t220) = t81.
        DATA(t221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t221->has = abap_true.
        t221->value = t220.
        t218 = t221.
      ELSE.
        DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t222.
        t218 = t222.
      ENDIF.
      t217 = t218.
      DATA t223 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t223.
      DATA(t224) = VALUE abap_bool( ).
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t226) = CAST zlnt_runtime_opti_4ba3bdccd169( t217 ).
      t225 = t226.
      DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t228.
      t227 = t228.
      DATA(t229) = VALUE abap_bool( ).
      DATA(t230) = CAST zlnt_runtime_opti_4ba3bdccd169( t225 ).
      IF t230 IS INITIAL.
        t229 = abap_true.
      ELSEIF t230->has = abap_false.
        t229 = abap_true.
      ENDIF.
      t224 = t229.
      IF t224 = abap_true.
        DATA t231 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t231.
        t223 = t231.
      ELSE.
        DATA t232 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t232.
        DATA t233 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t233.
        DATA t234 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t234.
        DATA t235 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t236 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t237) = CAST zcl_lnt_current_scope( t214 ).
        t236 = t237->current.
        t235 = t236.
        DATA t238 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t238.
        DATA(t239) = VALUE abap_bool( ).
        DATA(t240) = CAST zcl_lnt_spaghetti_scope_node( t235 ).
        IF t240 IS INITIAL.
          t239 = abap_true.
        ENDIF.
        IF t239 = abap_true.
          DATA t241 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t241.
          t238 = t241.
        ELSE.
          DATA t242 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t243 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t244) = CAST zcl_lnt_spaghetti_scope_node( t235 ).
          t243 = t244.
          DATA t245 TYPE string.
          DATA(t246) = CAST zlnt_runtime_opti_4ba3bdccd169( t217 ).
          t245 = t246->value.
          t242 = t243->find_variable( i_name = t245 ).
          t238 = t242.
        ENDIF.
        t234 = t238.
        t233 = t234.
        DATA t247 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t247.
        DATA t248 TYPE abap_bool.
        DATA(t249) = CAST zcl_lnt_typed_identifier( t233 ).
        t248 = xsdbool( t249 IS BOUND ).
        IF t248 = abap_true.
          DATA t250 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t250.
          DATA(t251) = abap_true.
          IF t251 = abap_true.
            DATA t252 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t253) = CAST zcl_lnt_typed_identifier( t233 ).
            t252 = t253.
            t250 = t252.
          ELSE.
            DATA t254 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t254.
            t250 = t254.
          ENDIF.
          t247 = t250.
        ELSE.
          DATA t255 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t255.
          DATA(t256) = CAST zcl_lnt_current_scope( t214 ).
          DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t257.
          DATA(t258) = abap_true.
          IF t258 = abap_true.
            DATA t259 TYPE string.
            DATA(t260) = CAST zlnt_runtime_opti_4ba3bdccd169( t217 ).
            t259 = t260->value.
            DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t261->has = abap_true.
            t261->value = t259.
            t257 = t261.
          ELSE.
            DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t262.
            t257 = t262.
          ENDIF.
          t255 = t256->find_type_pool_constant( i_name = t257 ).
          t247 = t255.
        ENDIF.
        t232 = t247.
        t223 = t232.
      ENDIF.
      t213 = t223.
      t212 = t213.
      DATA t263 TYPE abap_bool.
      DATA(t264) = CAST zcl_lnt_typed_identifier( t212 ).
      t263 = xsdbool( t264 IS BOUND ).
      IF t263 = abap_true.
        DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t265.
        t85 = t265.
        DATA t266 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t266.
        DATA(t267) = abap_true.
        IF t267 = abap_true.
          DATA t268 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t269) = CAST zcl_lnt_typed_identifier( t212 ).
          t268 = t269.
          t266 = t268.
        ELSE.
          DATA t270 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t270.
          t266 = t270.
        ENDIF.
        t161 = t266.
      ENDIF.
      DATA t271 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t271.
      DATA t272 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t273) = CAST zcl_lnt_typed_identifier( t161 ).
      t272 = t273.
      DATA t274 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t274.
      DATA(t275) = VALUE abap_bool( ).
      DATA(t276) = CAST zcl_lnt_typed_identifier( t272 ).
      IF t276 IS INITIAL.
        t275 = abap_true.
      ENDIF.
      IF t275 = abap_true.
        DATA t277 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t277.
        t274 = t277.
      ELSE.
        DATA t278 TYPE REF TO zcl_lnt_abstract_type.
        DATA t279 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t281) = CAST zcl_lnt_typed_identifier( t272 ).
        t280 = t281.
        t279 = t280.
        DATA t282 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t283) = CAST zcl_lnt_typed_identifier( t279 ).
        t282 = t283->type_cba0.
        t278 = t282.
        t274 = t278.
      ENDIF.
      t271 = t274.
      t113 = t271.
      DATA(t284) = VALUE abap_bool( ).
      DATA t285 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t286) = CAST zcl_lnt_typed_identifier( t161 ).
      t285 = t286.
      DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t288.
      t287 = t288.
      DATA(t289) = VALUE abap_bool( ).
      DATA(t290) = CAST zcl_lnt_typed_identifier( t285 ).
      IF t290 IS INITIAL.
        t289 = abap_true.
      ENDIF.
      t284 = t289.
      IF t284 = abap_true.
        DATA t291 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t291.
        DATA t292 TYPE REF TO zcl_lnt_current_scope.
        DATA(t293) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t292 = t293->scope.
        DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t294.
        DATA(t295) = abap_true.
        IF t295 = abap_true.
          DATA(t296) = t151.
          DATA(t297) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t297->has = abap_true.
          t297->value = t296.
          t294 = t297.
        ELSE.
          DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t298.
          t294 = t298.
        ENDIF.
        t291 = t292->find_extra_like_type( i_name = t294 ).
        t161 = t291.
        DATA t299 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t299.
        DATA t300 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t301) = CAST zcl_lnt_typed_identifier( t161 ).
        t300 = t301.
        DATA t302 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t302.
        DATA(t303) = VALUE abap_bool( ).
        DATA(t304) = CAST zcl_lnt_typed_identifier( t300 ).
        IF t304 IS INITIAL.
          t303 = abap_true.
        ENDIF.
        IF t303 = abap_true.
          DATA t305 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t305.
          t302 = t305.
        ELSE.
          DATA t306 TYPE REF TO zcl_lnt_abstract_type.
          DATA t307 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t308 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t309) = CAST zcl_lnt_typed_identifier( t300 ).
          t308 = t309.
          t307 = t308.
          DATA t310 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t311) = CAST zcl_lnt_typed_identifier( t307 ).
          t310 = t311->type_cba0.
          t306 = t310.
          t302 = t306.
        ENDIF.
        t299 = t302.
        t113 = t299.
      ENDIF.
      DATA t312 TYPE abap_bool.
      DATA(t313) = CAST zcl_lnt_typed_identifier( t161 ).
      t312 = xsdbool( t313 IS BOUND ).
      IF t312 = abap_true.
        DATA t314 TYPE REF TO zcl_lnt_current_scope.
        DATA(t315) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t314 = t315->scope.
        DATA t316 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t316.
        DATA t317 TYPE REF TO zcl_lnt_expression_node.
        DATA t318 TYPE REF TO zcl_lnt_expression_node.
        DATA(t319) = CAST zcl_lnt_expression_node( t18 ).
        t318 = t319.
        t317 = t318.
        DATA t320 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t320.
        DATA(t321) = VALUE abap_bool( ).
        DATA(t322) = CAST zcl_lnt_expression_node( t317 ).
        IF t322 IS INITIAL.
          t321 = abap_true.
        ENDIF.
        IF t321 = abap_true.
          DATA t323 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t323.
          t320 = t323.
        ELSE.
          DATA t324 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t325) = CAST zcl_lnt_expression_node( t317 ).
          t324 = t325->get_first_token( ).
          t320 = t324.
        ENDIF.
        t316 = t320.
        DATA t326 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t327) = CAST zcl_lnt_typed_identifier( t161 ).
        t326 = t327.
        DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t329) = |Type|.
        CREATE OBJECT t328.
        t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t328->sval = t329.
        DATA t330 TYPE string.
        DATA(t331) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t330 = t331->filename.
        DATA t332 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t332.
        t314->add_reference( i_usage = t316 i_referencing = t326 i_type_9913 = t328 i_filename = t330 i_extra = t332 ).
      ENDIF.
      DATA(t333) = VALUE abap_bool( ).
      DATA t334 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t335) = CAST zcl_lnt_abstract_type( t113 ).
      t334 = t335.
      DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t337.
      t336 = t337.
      DATA(t338) = VALUE abap_bool( ).
      DATA(t339) = CAST zcl_lnt_abstract_type( t334 ).
      IF t339 IS INITIAL.
        t338 = abap_true.
      ENDIF.
      t333 = t338.
      IF t333 = abap_true.
        DATA t340 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t341 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t342 TYPE REF TO zcl_lnt_ddic.
        DATA t343 TYPE REF TO zcl_lnt_current_scope.
        DATA t344 TYPE REF TO zcl_lnt_current_scope.
        DATA(t345) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t344 = t345->scope.
        t343 = t344.
        DATA t346 TYPE REF TO zcl_lnt_ddic.
        DATA t347 TYPE REF TO zif_lnt_registry.
        DATA(t348) = CAST zcl_lnt_current_scope( t343 ).
        t347 = t348->reg.
        t346 = NEW zcl_lnt_ddic( i_reg_f149 = t347 ).
        t342 = t346.
        DATA(t349) = t151.
        t341 = t342->lookup_no_void( i_name = t349 ).
        t340 = t341.
        DATA(t350) = VALUE abap_bool( ).
        DATA t351 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t352) = CAST zcl_lnt_ilookup_result( t340 ).
        t351 = t352.
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        t353 = t354.
        DATA(t355) = VALUE abap_bool( ).
        DATA(t356) = VALUE abap_bool( ).
        DATA(t357) = CAST zcl_lnt_ilookup_result( t351 ).
        IF t357 IS INITIAL.
          t356 = abap_true.
        ENDIF.
        t355 = xsdbool( t356 = abap_false ).
        t350 = t355.
        IF t350 = abap_true.
          DATA t358 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t358.
          DATA t359 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t359.
          DATA t360 TYPE REF TO zif_lnt_object.
          DATA t361 TYPE REF TO zcl_lnt_ilookup_result.
          DATA(t362) = CAST zcl_lnt_ilookup_result( t340 ).
          t361 = t362.
          t360 = t361->object_a393.
          DATA t363 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t363.
          DATA(t364) = abap_true.
          IF t364 = abap_true.
            DATA t365 TYPE REF TO zcl_lnt_abstract_token.
            DATA t366 TYPE REF TO zcl_lnt_expression_node.
            DATA(t367) = CAST zcl_lnt_expression_node( t18 ).
            t366 = t367.
            t365 = t366->get_first_token( ).
            t363 = t365.
          ELSE.
            DATA t368 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t368.
            t363 = t368.
          ENDIF.
          DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t369.
          DATA(t370) = abap_true.
          IF t370 = abap_true.
            DATA t371 TYPE string.
            DATA(t372) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t371 = t372->filename.
            DATA(t373) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t373->has = abap_true.
            t373->value = t371.
            t369 = t373.
          ELSE.
            DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t374.
            t369 = t374.
          ENDIF.
          t359 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t360 i_token = t363 i_filename = t369 ).
          t358 = t359.
          DATA t375 TYPE REF TO zif_lnt_ddic_references.
          DATA t376 TYPE REF TO zcl_lnt_current_scope.
          DATA t377 TYPE REF TO zcl_lnt_current_scope.
          DATA(t378) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t377 = t378->scope.
          t376 = t377.
          DATA t379 TYPE REF TO zif_lnt_ddic_references.
          DATA t380 TYPE REF TO zif_lnt_registry.
          DATA(t381) = CAST zcl_lnt_current_scope( t376 ).
          t380 = t381->reg.
          t379 = t380->get_ddic_references( ).
          t375 = t379.
          DATA t382 TYPE REF TO zif_lnt_object.
          DATA t383 TYPE REF TO zcl_lnt_current_scope.
          DATA t384 TYPE REF TO zcl_lnt_current_scope.
          DATA(t385) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t384 = t385->scope.
          t383 = t384.
          DATA t386 TYPE REF TO zif_lnt_object.
          DATA(t387) = CAST zcl_lnt_current_scope( t383 ).
          t386 = t387->parent_obj.
          t382 = t386.
          DATA t388 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t388.
          DATA(t389) = abap_true.
          IF t389 = abap_true.
            DATA(t390) = CAST zcl_lnt_iobject_and_token( t358 ).
            t388 = t390.
          ELSE.
            DATA t391 TYPE REF TO zcl_lnt_iobject_and_token.
            CLEAR t391.
            t388 = t391.
          ENDIF.
          t375->add_using( i_obj_1ed0 = t382 i_using = t388 ).
        ENDIF.
        DATA t392 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t392.
        DATA t393 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t394) = CAST zcl_lnt_ilookup_result( t340 ).
        t393 = t394.
        DATA t395 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t395.
        DATA(t396) = VALUE abap_bool( ).
        DATA(t397) = CAST zcl_lnt_ilookup_result( t393 ).
        IF t397 IS INITIAL.
          t396 = abap_true.
        ENDIF.
        IF t396 = abap_true.
          DATA t398 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t398.
          t395 = t398.
        ELSE.
          DATA t399 TYPE REF TO zcl_lnt_abstract_type.
          DATA t400 TYPE REF TO zcl_lnt_ilookup_result.
          DATA(t401) = CAST zcl_lnt_ilookup_result( t393 ).
          t400 = t401.
          t399 = t400->type_cba0.
          t395 = t399.
        ENDIF.
        t392 = t395.
        t113 = t392.
      ENDIF.
      DATA(t402) = VALUE abap_bool( ).
      DATA(t403) = VALUE abap_bool( ).
      DATA(t404) = VALUE abap_bool( ).
      DATA t405 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t406) = CAST zcl_lnt_abstract_type( t113 ).
      t405 = t406.
      DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t408.
      t407 = t408.
      DATA(t409) = VALUE abap_bool( ).
      DATA(t410) = CAST zcl_lnt_abstract_type( t405 ).
      IF t410 IS INITIAL.
        t409 = abap_true.
      ENDIF.
      t404 = t409.
      t403 = t404.
      IF t404 = abap_true.
        DATA t411 TYPE abap_bool.
        DATA t412 TYPE abap_bool.
        DATA t413 TYPE REF TO zcl_lnt_current_scope.
        DATA(t414) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t413 = t414->scope.
        t412 = t413->is_any_oo( ).
        DATA(t415) = abap_false.
        t411 = xsdbool( t412 = t415 ).
        t403 = t411.
      ENDIF.
      t402 = t403.
      IF t403 = abap_true.
        DATA(t416) = VALUE abap_bool( ).
        DATA(t417) = VALUE abap_bool( ).
        DATA t418 TYPE REF TO zcl_lnt_ddic.
        DATA t419 TYPE REF TO zcl_lnt_ddic.
        DATA t420 TYPE REF TO zcl_lnt_current_scope.
        DATA t421 TYPE REF TO zcl_lnt_current_scope.
        DATA(t422) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t421 = t422->scope.
        t420 = t421.
        DATA t423 TYPE REF TO zcl_lnt_ddic.
        DATA t424 TYPE REF TO zif_lnt_registry.
        DATA(t425) = CAST zcl_lnt_current_scope( t420 ).
        t424 = t425->reg.
        t423 = NEW zcl_lnt_ddic( i_reg_f149 = t424 ).
        t419 = t423.
        t418 = t419.
        DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t426.
        DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t427.
        DATA(t428) = abap_true.
        IF t428 = abap_true.
          DATA(t429) = t151.
          DATA(t430) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t430->has = abap_true.
          t430->value = t429.
          t427 = t430.
        ELSE.
          DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t431.
          t427 = t431.
        ENDIF.
        t426 = t427.
        DATA(t432) = VALUE abap_bool( ).
        DATA(t433) = VALUE abap_bool( ).
        DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t435) = CAST zlnt_runtime_opti_4ba3bdccd169( t426 ).
        t434 = t435.
        DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t437.
        t436 = t437.
        DATA(t438) = VALUE abap_bool( ).
        DATA(t439) = CAST zlnt_runtime_opti_4ba3bdccd169( t434 ).
        IF t439 IS INITIAL.
          t438 = abap_true.
        ELSEIF t439->has = abap_false.
          t438 = abap_true.
        ENDIF.
        t433 = t438.
        IF t433 = abap_true.
          DATA(t440) = abap_true.
          t432 = t440.
        ELSE.
          DATA t441 TYPE abap_bool.
          DATA t442 TYPE REF TO zif_lnt_registry.
          DATA(t443) = CAST zcl_lnt_ddic( t418 ).
          t442 = t443->reg.
          DATA t444 TYPE string.
          DATA(t445) = CAST zlnt_runtime_opti_4ba3bdccd169( t426 ).
          t444 = t445->value.
          t441 = t442->in_error_namespace( i_name = t444 ).
          t432 = t441.
        ENDIF.
        t417 = t432.
        DATA(t446) = abap_false.
        t416 = xsdbool( t417 = t446 ).
        t402 = t416.
      ENDIF.
      IF t402 = abap_true.
        DATA t447 TYPE REF TO zcl_lnt_current_scope.
        DATA(t448) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t447 = t448->scope.
        DATA t449 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t449.
        DATA(t450) = abap_true.
        IF t450 = abap_true.
          DATA t451 TYPE REF TO zcl_lnt_abstract_token.
          DATA t452 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA t453 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t454 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t455 TYPE REF TO zcl_lnt_abstract_node.
          DATA t456 TYPE REF TO zcl_lnt_expression_node.
          DATA(t457) = CAST zcl_lnt_expression_node( t18 ).
          t456 = t457.
          t455 = t456.
          DATA t458 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t459) = CAST zcl_lnt_abstract_node( t455 ).
          t458 = t459->children.
          t454 = t458.
          t453 ?= t454.
          DATA t460 TYPE REF TO object.
          CLEAR t460.
          READ TABLE t453->items INDEX 1 INTO t460.
          t452 ?= t460.
          t451 = t452->get_first_token( ).
          t449 = t451.
        ELSE.
          DATA t461 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t461.
          t449 = t461.
        ENDIF.
        DATA t462 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t462.
        DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t464) = |Type (Void)|.
        CREATE OBJECT t463.
        t463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t463->sval = t464.
        DATA t465 TYPE string.
        DATA(t466) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t465 = t466->filename.
        DATA t467 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t467.
        t447->add_reference( i_usage = t449 i_referencing = t462 i_type_9913 = t463 i_filename = t465 i_extra = t467 ).
        DATA t468 TYPE REF TO zcl_lnt_void_type.
        CLEAR t468.
        DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t469.
        DATA(t470) = abap_true.
        IF t470 = abap_true.
          DATA(t471) = t151.
          DATA(t472) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t472->has = abap_true.
          t472->value = t471.
          t469 = t472.
        ELSE.
          DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t473.
          t469 = t473.
        ENDIF.
        DATA t474 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t474.
        t468 = zcl_lnt_void_type=>get_db65( i_voided = t469 i_qualified_name = t474 ).
        result = t468.
        RETURN.
      ENDIF.
      DO.
        DATA t475 TYPE abap_bool.
        DATA t476 TYPE i.
        DATA(t477) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
        t476 = lines( t477->items ).
        DATA(t478) = 0.
        t475 = xsdbool( t476 > t478 ).
        IF t475 = abap_false.
          EXIT.
        ENDIF.
        DATA t479 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t480 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t481 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t482) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
        DATA t483 TYPE REF TO object.
        t483 = t482->shift( ).
        t481 ?= t483.
        t480 = t481.
        t479 = t480.
        DATA t484 TYPE abap_bool.
        DATA t485 TYPE string.
        DATA t486 TYPE REF TO zcl_lnt_abstract_token.
        DATA t487 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t488) = CAST zif_lnt_union_4cf1d054( t479 ).
        t487 = t488->get_first_token( ).
        t486 = t487.
        DATA t489 TYPE string.
        DATA(t490) = CAST zcl_lnt_abstract_token( t486 ).
        t489 = t490->str.
        t485 = t489.
        DATA(t491) = |-|.
        t484 = xsdbool( t485 = t491 ).
        IF t484 = abap_true.
          DATA t492 TYPE abap_bool.
          DATA(t493) = CAST zcl_lnt_abstract_type( t113 ).
          t492 = xsdbool( t493 IS BOUND AND t493 IS INSTANCE OF zcl_lnt_void_type ).
          IF t492 = abap_true.
            DATA t494 TYPE REF TO zcl_lnt_void_type.
            DATA(t495) = CAST zcl_lnt_abstract_type( t113 ).
            t494 ?= t495.
            result = t494.
            RETURN.
          ENDIF.
        ELSE.
          DATA t496 TYPE abap_bool.
          DATA t497 TYPE string.
          DATA(t498) = CAST zif_lnt_union_4cf1d054( t479 ).
          t497 = t498->concat_tokens( ).
          DATA(t499) = |[]|.
          t496 = xsdbool( t497 = t499 ).
          IF t496 = abap_true.
            DATA t500 TYPE abap_bool.
            DATA(t501) = CAST zcl_lnt_abstract_type( t113 ).
            t500 = xsdbool( t501 IS BOUND AND t501 IS INSTANCE OF zcl_lnt_ty_table_type ).
            IF t500 = abap_true.
              DATA t502 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t503 TYPE REF TO zcl_lnt_abstract_type.
              DATA t504 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t505 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t506) = CAST zcl_lnt_abstract_type( t113 ).
              t505 ?= t506.
              t504 = t505.
              DATA t507 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t508) = CAST zcl_lnt_ty_table_type( t504 ).
              t507 = t508->row_type.
              t503 = t507.
              DATA t509 TYPE REF TO zcl_lnt_itable_options.
              DATA(t510) = abap_false.
              DATA(t511) = |DEFAULT|.
              DATA t512 TYPE REF TO zcl_lnt_itable_key.
              CLEAR t512.
              DATA t513 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t513.
              t509 = NEW zcl_lnt_itable_options( i_with_header = t510 i_key_type = t511 i_primary_key = t512 i_secondary = t513 ).
              DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t514.
              DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t515.
              t502 = NEW zcl_lnt_ty_table_type( i_row_type = t503 i_options = t509 i_qualified_name = t514 i_description = t515 ).
              t113 = t502.
            ENDIF.
          ELSE.
            DATA t516 TYPE abap_bool.
            DATA t517 TYPE abap_bool.
            DATA(t518) = CAST zif_lnt_union_4cf1d054( t479 ).
            t517 = xsdbool( t518 IS BOUND AND t518 IS INSTANCE OF zcl_lnt_expression_node ).
            t516 = t517.
            IF t517 = abap_true.
              DATA t519 TYPE abap_bool.
              DATA t520 TYPE REF TO zif_lnt_statement_runnable.
              DATA t521 TYPE REF TO zcl_lnt_expression_node.
              DATA(t522) = CAST zif_lnt_union_4cf1d054( t479 ).
              DATA t523 TYPE REF TO object.
              t523 = t522.
              t521 ?= t523.
              t520 = t521->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t519 = xsdbool( t520 IS BOUND AND t520 IS INSTANCE OF zcl_lnt_st_field_length ).
              t516 = t519.
            ENDIF.
            IF t516 = abap_true.
              DATA(t524) = VALUE int8( ).
              DATA(t525) = VALUE int8( ).
              DATA t526 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
              CLEAR t526.
              DATA t527 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
              CLEAR t527.
              DATA t528 TYPE string.
              DATA t529 TYPE string.
              DATA t530 TYPE string.
              DATA t531 TYPE REF TO zcl_lnt_expression_node.
              DATA(t532) = CAST zif_lnt_union_4cf1d054( t479 ).
              DATA t533 TYPE REF TO object.
              t533 = t532.
              t531 ?= t533.
              t530 = t531->concat_tokens( ).
              DATA(t534) = |(|.
              DATA(t535) = ||.
              DATA(t536) = strlen( t530 ).
              t529 = t530.
              REPLACE ALL OCCURRENCES OF t534 IN t529 WITH t535.
              DATA(t537) = |)|.
              DATA(t538) = ||.
              DATA(t539) = strlen( t529 ).
              t528 = t529.
              REPLACE ALL OCCURRENCES OF t537 IN t528 WITH t538.
              DATA(t540) = strlen( t528 ).
              DATA t541 TYPE i.
              DATA t542 TYPE i.
              t541 = 0.
              t542 = t540.
              DATA(t543) = VALUE i( ).
              DATA(t544) = VALUE i( ).
              DATA(t545) = VALUE string( ).
              WHILE t541 < t542.
                t544 = t541.
                t545 = t528+t544(1).
                DATA t546 TYPE c LENGTH 1.
                CLEAR t546.
                DATA(t547) = VALUE xstring( ).
                DATA t548 TYPE x LENGTH 1.
                CLEAR t548.
                DATA t549 TYPE x LENGTH 1.
                CLEAR t549.
                DATA(t550) = VALUE i( ).
                t546 = t545.
                t543 = cl_abap_conv_out_ce=>uccpi( t546 ).
                IF t543 >= 255.
                  IF zlnt_builtin_code_bb79b741c1de IS NOT BOUND.
                    zlnt_builtin_code_bb79b741c1de = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                  ENDIF.
                  zlnt_builtin_code_bb79b741c1de->convert( EXPORTING data = t545 IMPORTING buffer = t547 ).
                  t548 = t547(1).
                  t549 = t547+1(1).
                  t543 = t548.
                  t550 = t549.
                  t543 = t543 + t550 * 256.
                ENDIF.
                IF t543 = 9 OR t543 = 10 OR t543 = 11 OR t543 = 12 OR t543 = 13 OR t543 = 32 OR t543 = 160 OR t543 = 5760 OR t543 = 8232 OR t543 = 8233 OR t543 = 8239 OR t543 = 8287 OR t543 = 12288 OR t543 = 65279 OR t543 >= 8192 AND t543 <= 8202.
                  t541 = t541 + 1.
                ELSE.
                  EXIT.
                ENDIF.
              ENDWHILE.
              DATA t551 TYPE f.
              DATA t552 TYPE f.
              DATA t553 TYPE i.
              DATA(t554) = VALUE string( ).
              t551 = 1.
              t552 = 0.
              t553 = 0.
              IF t541 < t542.
                t554 = t528+t541(1).
                IF t554 = '-'.
                  t551 = -1.
                  t541 = t541 + 1.
                ELSEIF t554 = '+'.
                  t541 = t541 + 1.
                ENDIF.
              ENDIF.
              WHILE t541 < t542.
                t554 = t528+t541(1).
                IF t554 CA '0123456789' AND t554 <> ` `.
                  t552 = t552 * 10 + t554.
                  t553 = t553 + 1.
                  t541 = t541 + 1.
                ELSE.
                  EXIT.
                ENDIF.
              ENDWHILE.
              IF t553 = 0.
                CLEAR t527.
              ELSE.
                t527 = NEW #( ).
                t527->has = abap_true.
                t527->value = t551 * t552.
              ENDIF.
              t526 = t527.
              DATA(t555) = VALUE abap_bool( ).
              DATA(t556) = CAST zlnt_runtime_opti_4a236cd5714d( t526 ).
              IF t556 IS INITIAL.
                t555 = abap_true.
              ELSEIF t556->has = abap_false.
                t555 = abap_true.
              ENDIF.
              IF t555 = abap_true.
                DATA(t557) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t558) = |src/abap/5_syntax/basic_types.ts:184:23|.
                t557->source_location = t558.
                RAISE EXCEPTION t557.
              ENDIF.
              DATA t559 TYPE int8.
              DATA(t560) = CAST zlnt_runtime_opti_4a236cd5714d( t526 ).
              t559 = t560->value.
              t525 = t559.
              t524 = t525.
              DATA(t561) = t524.
              DATA t562 TYPE abap_bool.
              DATA(t563) = CAST zcl_lnt_abstract_type( t113 ).
              t562 = xsdbool( t563 IS BOUND AND t563 IS INSTANCE OF zcl_lnt_date_type ).
              IF t562 = abap_true.
                DATA t564 TYPE abap_bool.
                DATA(t565) = t524.
                DATA(t566) = CONV int8( 8 ).
                t564 = xsdbool( t565 > t566 ).
                IF t564 = abap_true.
                  DATA t567 TYPE REF TO zcl_lnt_unknown_type.
                  DATA(t568) = |Type error, offset too long|.
                  DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t569.
                  t567 = NEW zcl_lnt_unknown_type( i_error = t568 i_qualified_name = t569 ).
                  t113 = t567.
                ELSE.
                  DATA t570 TYPE REF TO zcl_lnt_character_type.
                  DATA(t571) = t524.
                  DATA t572 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t572.
                  t570 = NEW zcl_lnt_character_type( i_length = t571 i_extra = t572 ).
                  t113 = t570.
                ENDIF.
              ELSE.
                DATA t573 TYPE abap_bool.
                DATA(t574) = CAST zcl_lnt_abstract_type( t113 ).
                t573 = xsdbool( t574 IS BOUND AND t574 IS INSTANCE OF zcl_lnt_character_type ).
                IF t573 = abap_true.
                  DATA t575 TYPE abap_bool.
                  DATA(t576) = t524.
                  DATA t577 TYPE int8.
                  DATA t578 TYPE REF TO zcl_lnt_character_type.
                  DATA t579 TYPE REF TO zcl_lnt_character_type.
                  DATA(t580) = CAST zcl_lnt_abstract_type( t113 ).
                  t579 ?= t580.
                  t578 = t579.
                  DATA t581 TYPE int8.
                  DATA(t582) = CAST zcl_lnt_character_type( t578 ).
                  t581 = t582->length.
                  t577 = t581.
                  t575 = xsdbool( t576 <= t577 ).
                  IF t575 = abap_true.
                    DATA t583 TYPE REF TO zcl_lnt_character_type.
                    DATA(t584) = t524.
                    DATA t585 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t585.
                    t583 = NEW zcl_lnt_character_type( i_length = t584 i_extra = t585 ).
                    t113 = t583.
                  ELSE.
                    DATA t586 TYPE REF TO zcl_lnt_unknown_type.
                    DATA(t587) = |Type error, offset too long|.
                    DATA t588 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t588.
                    t586 = NEW zcl_lnt_unknown_type( i_error = t587 i_qualified_name = t588 ).
                    t113 = t586.
                  ENDIF.
                ENDIF.
              ENDIF.
            ELSE.
              DATA t589 TYPE abap_bool.
              DATA(t590) = CAST zcl_lnt_abstract_type( t113 ).
              t589 = xsdbool( t590 IS BOUND AND t590 IS INSTANCE OF zcl_lnt_ty_table_type ).
              IF t589 = abap_true.
                DATA t591 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t591.
                DATA(t592) = abap_true.
                IF t592 = abap_true.
                  DATA t593 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t594 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t595 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA(t596) = CAST zcl_lnt_abstract_type( t113 ).
                  t595 ?= t596.
                  t594 = t595.
                  DATA t597 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t598) = CAST zcl_lnt_ty_table_type( t594 ).
                  t597 = t598->row_type.
                  t593 = t597.
                  t591 = t593.
                ELSE.
                  DATA t599 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t599.
                  t591 = t599.
                ENDIF.
                t113 = t591.
              ENDIF.
              DATA t600 TYPE abap_bool.
              DATA(t601) = CAST zcl_lnt_abstract_type( t113 ).
              t600 = xsdbool( t601 IS BOUND AND t601 IS INSTANCE OF zcl_lnt_structure_type ).
              IF t600 = abap_true.
                DATA t602 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t602.
                DATA t603 TYPE REF TO zcl_lnt_structure_type.
                DATA t604 TYPE REF TO zcl_lnt_structure_type.
                DATA(t605) = CAST zcl_lnt_abstract_type( t113 ).
                t604 ?= t605.
                t603 = t604.
                DATA t606 TYPE string.
                DATA t607 TYPE string.
                DATA t608 TYPE REF TO zcl_lnt_abstract_token.
                DATA t609 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t610) = CAST zif_lnt_union_4cf1d054( t479 ).
                t609 = t610->get_first_token( ).
                t608 = t609.
                DATA t611 TYPE string.
                DATA(t612) = CAST zcl_lnt_abstract_token( t608 ).
                t611 = t612->str.
                t607 = t611.
                t606 = t607.
                DATA t613 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t613.
                DATA t614 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
                DATA(t615) = CAST zcl_lnt_structure_type( t603 ).
                t614 = t615->indexed.
                DATA t616 TYPE string.
                DATA(t617) = t606.
                DATA(t618) = strlen( t617 ).
                t616 = t617.
                IF t616 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t616 TO UPPER CASE.
                ELSE.
                  t616 = zlnt_runtime_uppe_91169605024d=>full( t616 ).
                ENDIF.
                t613 = t614->get( p0 = t616 ).
                t602 = t613.
                t113 = t602.
                DATA(t619) = VALUE abap_bool( ).
                DATA t620 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t621) = CAST zcl_lnt_abstract_type( t113 ).
                t620 = t621.
                DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t623.
                t622 = t623.
                DATA(t624) = VALUE abap_bool( ).
                DATA(t625) = CAST zcl_lnt_abstract_type( t620 ).
                IF t625 IS INITIAL.
                  t624 = abap_true.
                ENDIF.
                t619 = t624.
                IF t619 = abap_true.
                  DATA t626 TYPE REF TO zcl_lnt_unknown_type.
                  DATA t627 TYPE string.
                  DATA(t628) = |Type error, field not part of structure |.
                  DATA(t629) = t81.
                  DATA(t630) = strlen( t628 ).
                  t627 = |{ t628 }{ t629 }|.
                  DATA t631 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t631.
                  t626 = NEW zcl_lnt_unknown_type( i_error = t627 i_qualified_name = t631 ).
                  result = t626.
                  RETURN.
                ENDIF.
              ELSE.
                DATA t632 TYPE abap_bool.
                DATA t633 TYPE abap_bool.
                DATA(t634) = CAST zcl_lnt_abstract_type( t113 ).
                t633 = xsdbool( t634 IS BOUND AND t634 IS INSTANCE OF zcl_lnt_void_type ).
                t632 = xsdbool( t633 = abap_false ).
                IF t632 = abap_true.
                  DATA t635 TYPE REF TO zcl_lnt_unknown_type.
                  DATA t636 TYPE string.
                  DATA(t637) = |Type error, field not part of structure |.
                  DATA(t638) = t81.
                  DATA(t639) = strlen( t637 ).
                  t636 = |{ t637 }{ t638 }|.
                  DATA t640 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t640.
                  t635 = NEW zcl_lnt_unknown_type( i_error = t636 i_qualified_name = t640 ).
                  result = t635.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
      DATA t641 TYPE abap_bool.
      DATA(t642) = CAST zcl_lnt_abstract_type( t113 ).
      t641 = xsdbool( t642 IS BOUND AND t642 IS INSTANCE OF zcl_lnt_void_type ).
      IF t641 = abap_true.
        DATA t643 TYPE REF TO zcl_lnt_void_type.
        DATA(t644) = CAST zcl_lnt_abstract_type( t113 ).
        t643 ?= t644.
        result = t643.
        RETURN.
      ELSE.
        DATA(t645) = VALUE abap_bool( ).
        DATA t646 TYPE abap_bool.
        DATA t647 TYPE abap_bool.
        DATA(t648) = CAST zcl_lnt_abstract_type( t113 ).
        t647 = xsdbool( t648 IS BOUND AND t648 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t646 = t647.
        IF t647 = abap_true.
          DATA t649 TYPE abap_bool.
          DATA t650 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t651 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t652) = CAST zcl_lnt_abstract_type( t113 ).
          t651 ?= t652.
          t650 = t651.
          DATA t653 TYPE abap_bool.
          DATA t654 TYPE REF TO zcl_lnt_itable_options.
          DATA(t655) = CAST zcl_lnt_ty_table_type( t650 ).
          t654 = t655->options.
          t653 = t654->with_header.
          t649 = t653.
          t646 = t649.
        ENDIF.
        t645 = t646.
        IF t646 = abap_true.
          DATA t656 TYPE abap_bool.
          DATA t657 TYPE abap_bool.
          DATA(t658) = CAST zlnt_runtime_opti_7f2541396f43( t2 ).
          t657 = t658->value.
          DATA(t659) = abap_true.
          t656 = xsdbool( t657 = t659 ).
          t645 = t656.
        ENDIF.
        IF t645 = abap_true.
          DATA t660 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t660.
          DATA(t661) = abap_true.
          IF t661 = abap_true.
            DATA t662 TYPE REF TO zcl_lnt_abstract_type.
            DATA t663 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t664 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t665) = CAST zcl_lnt_abstract_type( t113 ).
            t664 ?= t665.
            t663 = t664.
            DATA t666 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t667) = CAST zcl_lnt_ty_table_type( t663 ).
            t666 = t667->row_type.
            t662 = t666.
            t660 = t662.
          ELSE.
            DATA t668 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t668.
            t660 = t668.
          ENDIF.
          t113 = t660.
        ELSE.
          DATA(t669) = VALUE abap_bool( ).
          DATA t670 TYPE abap_bool.
          DATA t671 TYPE abap_bool.
          DATA(t672) = CAST zcl_lnt_abstract_type( t113 ).
          t671 = xsdbool( t672 IS BOUND AND t672 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t670 = t671.
          IF t671 = abap_true.
            DATA t673 TYPE abap_bool.
            DATA t674 TYPE abap_bool.
            DATA t675 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t676 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t677) = CAST zcl_lnt_abstract_type( t113 ).
            t676 ?= t677.
            t675 = t676.
            DATA t678 TYPE abap_bool.
            DATA t679 TYPE REF TO zcl_lnt_itable_options.
            DATA(t680) = CAST zcl_lnt_ty_table_type( t675 ).
            t679 = t680->options.
            t678 = t679->with_header.
            t674 = t678.
            DATA(t681) = abap_true.
            t673 = xsdbool( t674 = t681 ).
            t670 = t673.
          ENDIF.
          t669 = t670.
          IF t670 = abap_true.
            DATA t682 TYPE abap_bool.
            DATA t683 TYPE REF TO zcl_lnt_abstract_type.
            DATA t684 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t685 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t686) = CAST zcl_lnt_abstract_type( t113 ).
            t685 ?= t686.
            t684 = t685.
            DATA t687 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t688) = CAST zcl_lnt_ty_table_type( t684 ).
            t687 = t688->row_type.
            t683 = t687.
            t682 = xsdbool( t683 IS BOUND AND t683 IS INSTANCE OF zcl_lnt_void_type ).
            t669 = t682.
          ENDIF.
          IF t669 = abap_true.
            DATA t689 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t689.
            DATA(t690) = abap_true.
            IF t690 = abap_true.
              DATA t691 TYPE REF TO zcl_lnt_abstract_type.
              DATA t692 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t693 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t694) = CAST zcl_lnt_abstract_type( t113 ).
              t693 ?= t694.
              t692 = t693.
              DATA t695 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t696) = CAST zcl_lnt_ty_table_type( t692 ).
              t695 = t696->row_type.
              t691 = t695.
              t689 = t691.
            ELSE.
              DATA t697 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t697.
              t689 = t697.
            ENDIF.
            result = t689.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t698 TYPE abap_bool.
    DATA t699 TYPE abap_bool.
    DATA(t700) = CAST zcl_lnt_abstract_type( t113 ).
    t699 = xsdbool( t700 IS BOUND ).
    t698 = xsdbool( t699 = abap_false ).
    IF t698 = abap_true.
      DATA t701 TYPE REF TO zcl_lnt_unknown_type.
      DATA t702 TYPE string.
      DATA t703 TYPE string.
      DATA(t704) = |Type error, could not resolve "|.
      DATA(t705) = t81.
      DATA(t706) = strlen( t704 ).
      t703 = |{ t704 }{ t705 }|.
      DATA(t707) = |", resolveLikeName2|.
      DATA(t708) = strlen( t703 ).
      t702 = |{ t703 }{ t707 }|.
      DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t709.
      t701 = NEW zcl_lnt_unknown_type( i_error = t702 i_qualified_name = t709 ).
      result = t701.
      RETURN.
    ENDIF.
    DATA t710 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t710.
    DATA(t711) = abap_true.
    IF t711 = abap_true.
      DATA t712 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t713) = CAST zcl_lnt_abstract_type( t113 ).
      t712 = t713.
      t710 = t712.
    ELSE.
      DATA t714 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t714.
      t710 = t714.
    ENDIF.
    result = t710.

  ENDMETHOD.
  METHOD clone_type.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_qualified_name ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = CAST zcl_lnt_abstract_type( t1 ).
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_character_type ).
    t4 = t5.
    IF t5 = abap_true.
      DATA(t7) = VALUE abap_bool( ).
      DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
      IF t8 IS BOUND.
        IF t8->has = abap_true.
          t7 = xsdbool( strlen( t8->value ) > 0 ).
        ENDIF.
      ENDIF.
      t4 = t7.
    ENDIF.
    t3 = t4.
    IF t4 = abap_true.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE i( ).
      DATA t12 TYPE string.
      DATA(t13) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
      t12 = t13->value.
      DATA(t14) = |-|.
      DATA(t15) = strlen( t12 ).
      IF t14 IS INITIAL.
        t11 = 0.
      ELSE.
        FIND t14 IN t12 MATCH OFFSET t11.
        IF sy-subrc <> 0.
          t11 = -1.
        ENDIF.
      ENDIF.
      DATA(t16) = 0.
      t10 = xsdbool( t11 >= t16 ).
      DATA(t17) = abap_false.
      t9 = xsdbool( t10 = t17 ).
      t3 = t9.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_character_type.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_character_type.
      DATA t20 TYPE REF TO zcl_lnt_character_type.
      DATA(t21) = CAST zcl_lnt_abstract_type( t1 ).
      t20 ?= t21.
      t19 = t20.
      DATA t22 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t22.
      DATA t23 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA(t25) = abap_true.
      IF t25 = abap_true.
        DATA t26 TYPE string.
        DATA(t27) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
        t26 = t27->value.
        DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t28->has = abap_true.
        t28->value = t26.
        t24 = t28.
      ELSE.
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        t24 = t29.
      ENDIF.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      t23 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t24 i_conversion_exit = t30 i_derived_from_constant = t31 i_ddic_name = t32 i_rtti_name = t33 i_description = t34 ).
      t22 = t23.
      DATA t35 TYPE REF TO zcl_lnt_character_type.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t40 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t41) = CAST zcl_lnt_character_type( t19 ).
      t40 = t41.
      DATA t42 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t43) = CAST zcl_lnt_abstract_type( t40 ).
      t42 = t43->data_56cc.
      t39 = t42.
      t38 = t39.
      DATA t44 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = CAST zcl_lnt_abstract_type_data( t38 ).
      IF t47 IS INITIAL.
        t46 = abap_true.
      ENDIF.
      IF t46 = abap_true.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        t45 = t48.
      ELSE.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t50 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t51) = CAST zcl_lnt_abstract_type_data( t38 ).
        t50 = t51.
        t49 = t50->qualified_name.
        t45 = t49.
      ENDIF.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = CAST zcl_lnt_abstract_type_data( t38 ).
      IF t54 IS INITIAL.
        t53 = abap_true.
      ENDIF.
      IF t53 = abap_true.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        t52 = t55.
      ELSE.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t57 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t58) = CAST zcl_lnt_abstract_type_data( t38 ).
        t57 = t58.
        t56 = t57->conversion_exit.
        t52 = t56.
      ENDIF.
      DATA t59 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = CAST zcl_lnt_abstract_type_data( t38 ).
      IF t61 IS INITIAL.
        t60 = abap_true.
      ENDIF.
      IF t60 = abap_true.
        DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t62.
        t59 = t62.
      ELSE.
        DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t64 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t65) = CAST zcl_lnt_abstract_type_data( t38 ).
        t64 = t65.
        t63 = t64->derived_from_constant.
        t59 = t63.
      ENDIF.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = CAST zcl_lnt_abstract_type_data( t38 ).
      IF t68 IS INITIAL.
        t67 = abap_true.
      ENDIF.
      IF t67 = abap_true.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        t66 = t69.
      ELSE.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t71 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t72) = CAST zcl_lnt_abstract_type_data( t38 ).
        t71 = t72.
        t70 = t71->ddic_name.
        t66 = t70.
      ENDIF.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = CAST zcl_lnt_abstract_type_data( t38 ).
      IF t75 IS INITIAL.
        t74 = abap_true.
      ENDIF.
      IF t74 = abap_true.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        t73 = t76.
      ELSE.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t78 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t79) = CAST zcl_lnt_abstract_type_data( t38 ).
        t78 = t79.
        t77 = t78->rtti_name.
        t73 = t77.
      ENDIF.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = CAST zcl_lnt_abstract_type_data( t38 ).
      IF t82 IS INITIAL.
        t81 = abap_true.
      ENDIF.
      IF t81 = abap_true.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        t80 = t83.
      ELSE.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t85 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t86) = CAST zcl_lnt_abstract_type_data( t38 ).
        t85 = t86.
        t84 = t85->description.
        t80 = t84.
      ENDIF.
      t44 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t45 i_conversion_exit = t52 i_derived_from_constant = t59 i_ddic_name = t66 i_rtti_name = t73 i_description = t80 ).
      t37 = t44.
      t36 = t37.
      DATA(t87) = VALUE abap_bool( ).
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t89) = CAST zcl_lnt_abstract_type_data( t22 ).
      t88 = t89->qualified_name.
      IF t88 IS BOUND.
        IF t88->has = abap_true.
          t87 = xsdbool( strlen( t88->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t87 = abap_true.
        DATA(t90) = CAST zcl_lnt_abstract_type_data( t36 ).
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        DATA(t92) = abap_true.
        IF t92 = abap_true.
          DATA t93 TYPE string.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t95) = CAST zcl_lnt_abstract_type_data( t22 ).
          t94 = t95->qualified_name.
          t93 = t94->value.
          DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t96->has = abap_true.
          t96->value = t93.
          t91 = t96.
        ELSE.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          t91 = t97.
        ENDIF.
        t90->qualified_name = t91.
      ENDIF.
      DATA(t98) = VALUE abap_bool( ).
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t100) = CAST zcl_lnt_abstract_type_data( t22 ).
      t99 = t100->ddic_name.
      IF t99 IS BOUND.
        IF t99->has = abap_true.
          t98 = xsdbool( strlen( t99->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t98 = abap_true.
        DATA(t101) = CAST zcl_lnt_abstract_type_data( t36 ).
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        DATA(t103) = abap_true.
        IF t103 = abap_true.
          DATA t104 TYPE string.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t106) = CAST zcl_lnt_abstract_type_data( t22 ).
          t105 = t106->ddic_name.
          t104 = t105->value.
          DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t107->has = abap_true.
          t107->value = t104.
          t102 = t107.
        ELSE.
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          t102 = t108.
        ENDIF.
        t101->ddic_name = t102.
      ENDIF.
      DATA(t109) = VALUE abap_bool( ).
      DATA t110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t111) = CAST zcl_lnt_abstract_type_data( t22 ).
      t110 = t111->derived_from_constant.
      IF t110 IS BOUND.
        IF t110->has = abap_true.
          t109 = xsdbool( t110->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t109 = abap_true.
        DATA(t112) = CAST zcl_lnt_abstract_type_data( t36 ).
        DATA t113 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t113.
        DATA(t114) = abap_true.
        IF t114 = abap_true.
          DATA t115 TYPE abap_bool.
          DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t117) = CAST zcl_lnt_abstract_type_data( t22 ).
          t116 = t117->derived_from_constant.
          t115 = t116->value.
          DATA(t118) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t118->has = abap_true.
          t118->value = t115.
          t113 = t118.
        ELSE.
          DATA t119 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t119.
          t113 = t119.
        ENDIF.
        t112->derived_from_constant = t113.
      ENDIF.
      DATA t120 TYPE REF TO zcl_lnt_character_type.
      CLEAR t120.
      DATA t121 TYPE int8.
      DATA(t122) = CAST zcl_lnt_character_type( t19 ).
      t121 = t122->length.
      DATA t123 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t123.
      DATA(t124) = abap_true.
      IF t124 = abap_true.
        DATA(t125) = CAST zcl_lnt_abstract_type_data( t36 ).
        t123 = t125.
      ELSE.
        DATA t126 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t126.
        t123 = t126.
      ENDIF.
      t120 = NEW zcl_lnt_character_type( i_length = t121 i_extra = t123 ).
      t35 = t120.
      t18 = t35.
      t1 = t18.
    ENDIF.
    DATA(t127) = CAST zcl_lnt_abstract_type( t1 ).
    result = t127.

  ENDMETHOD.
  METHOD resolve_type_name.
    DATA(t1) = CAST zcl_lnt_expression_node( i_type_name ).
    DATA(t2) = CAST zlnt_runtime_opti_4a236cd5714d( i_length ).
    DATA(t3) = CAST zlnt_runtime_opti_4a236cd5714d( i_decimals_2eed ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_qualified_name ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = CAST zcl_lnt_expression_node( t1 ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = CAST zcl_lnt_expression_node( t6 ).
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    IF t5 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t12.
      result = t12.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zcl_lnt_abstract_type.
    DATA t14 TYPE REF TO zcl_lnt_abstract_type.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = CAST zcl_lnt_expression_node( t1 ).
    t15 = t16.
    t14 = me->resolve_type_chain( i_expr = t15 ).
    t13 = t14.
    DATA t17 TYPE abap_bool.
    DATA(t18) = CAST zcl_lnt_abstract_type( t13 ).
    t17 = xsdbool( t18 IS BOUND ).
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t21.
        DATA t22 TYPE REF TO zcl_lnt_abstract_type.
        DATA t23 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t24) = CAST zcl_lnt_abstract_type( t13 ).
        t23 = t24.
        t22 = t23.
        DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t26) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
        t25 = t26.
        DATA t27 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t27.
        DATA(t28) = VALUE abap_bool( ).
        DATA t29 TYPE abap_bool.
        DATA t30 TYPE abap_bool.
        DATA(t31) = CAST zcl_lnt_abstract_type( t22 ).
        t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_character_type ).
        t29 = t30.
        IF t30 = abap_true.
          DATA(t32) = VALUE abap_bool( ).
          DATA(t33) = CAST zlnt_runtime_opti_4ba3bdccd169( t25 ).
          IF t33 IS BOUND.
            IF t33->has = abap_true.
              t32 = xsdbool( strlen( t33->value ) > 0 ).
            ENDIF.
          ENDIF.
          t29 = t32.
        ENDIF.
        t28 = t29.
        IF t29 = abap_true.
          DATA(t34) = VALUE abap_bool( ).
          DATA(t35) = VALUE abap_bool( ).
          DATA(t36) = VALUE i( ).
          DATA t37 TYPE string.
          DATA(t38) = CAST zlnt_runtime_opti_4ba3bdccd169( t25 ).
          t37 = t38->value.
          DATA(t39) = |-|.
          DATA(t40) = strlen( t37 ).
          IF t39 IS INITIAL.
            t36 = 0.
          ELSE.
            FIND t39 IN t37 MATCH OFFSET t36.
            IF sy-subrc <> 0.
              t36 = -1.
            ENDIF.
          ENDIF.
          DATA(t41) = 0.
          t35 = xsdbool( t36 >= t41 ).
          DATA(t42) = abap_false.
          t34 = xsdbool( t35 = t42 ).
          t28 = t34.
        ENDIF.
        IF t28 = abap_true.
          DATA t43 TYPE REF TO zcl_lnt_character_type.
          CLEAR t43.
          DATA t44 TYPE REF TO zcl_lnt_character_type.
          DATA t45 TYPE REF TO zcl_lnt_character_type.
          DATA(t46) = CAST zcl_lnt_abstract_type( t22 ).
          t45 ?= t46.
          t44 = t45.
          DATA t47 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t47.
          DATA t48 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t48.
          DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t49.
          DATA(t50) = abap_true.
          IF t50 = abap_true.
            DATA t51 TYPE string.
            DATA(t52) = CAST zlnt_runtime_opti_4ba3bdccd169( t25 ).
            t51 = t52->value.
            DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t53->has = abap_true.
            t53->value = t51.
            t49 = t53.
          ELSE.
            DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t54.
            t49 = t54.
          ENDIF.
          DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t55.
          DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t56.
          DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t57.
          DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t58.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          t48 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t49 i_conversion_exit = t55 i_derived_from_constant = t56 i_ddic_name = t57 i_rtti_name = t58 i_description = t59 ).
          t47 = t48.
          DATA t60 TYPE REF TO zcl_lnt_character_type.
          CLEAR t60.
          DATA t61 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t61.
          DATA t62 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t62.
          DATA t63 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t64 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t65 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t66) = CAST zcl_lnt_character_type( t44 ).
          t65 = t66.
          DATA t67 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA(t68) = CAST zcl_lnt_abstract_type( t65 ).
          t67 = t68->data_56cc.
          t64 = t67.
          t63 = t64.
          DATA t69 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t69.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t70.
          DATA(t71) = VALUE abap_bool( ).
          DATA(t72) = CAST zcl_lnt_abstract_type_data( t63 ).
          IF t72 IS INITIAL.
            t71 = abap_true.
          ENDIF.
          IF t71 = abap_true.
            DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t73.
            t70 = t73.
          ELSE.
            DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t75 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t76) = CAST zcl_lnt_abstract_type_data( t63 ).
            t75 = t76.
            t74 = t75->qualified_name.
            t70 = t74.
          ENDIF.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          DATA(t78) = VALUE abap_bool( ).
          DATA(t79) = CAST zcl_lnt_abstract_type_data( t63 ).
          IF t79 IS INITIAL.
            t78 = abap_true.
          ENDIF.
          IF t78 = abap_true.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            t77 = t80.
          ELSE.
            DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t82 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t83) = CAST zcl_lnt_abstract_type_data( t63 ).
            t82 = t83.
            t81 = t82->conversion_exit.
            t77 = t81.
          ENDIF.
          DATA t84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t84.
          DATA(t85) = VALUE abap_bool( ).
          DATA(t86) = CAST zcl_lnt_abstract_type_data( t63 ).
          IF t86 IS INITIAL.
            t85 = abap_true.
          ENDIF.
          IF t85 = abap_true.
            DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t87.
            t84 = t87.
          ELSE.
            DATA t88 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t89 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t90) = CAST zcl_lnt_abstract_type_data( t63 ).
            t89 = t90.
            t88 = t89->derived_from_constant.
            t84 = t88.
          ENDIF.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA(t92) = VALUE abap_bool( ).
          DATA(t93) = CAST zcl_lnt_abstract_type_data( t63 ).
          IF t93 IS INITIAL.
            t92 = abap_true.
          ENDIF.
          IF t92 = abap_true.
            DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t94.
            t91 = t94.
          ELSE.
            DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t96 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t97) = CAST zcl_lnt_abstract_type_data( t63 ).
            t96 = t97.
            t95 = t96->ddic_name.
            t91 = t95.
          ENDIF.
          DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t98.
          DATA(t99) = VALUE abap_bool( ).
          DATA(t100) = CAST zcl_lnt_abstract_type_data( t63 ).
          IF t100 IS INITIAL.
            t99 = abap_true.
          ENDIF.
          IF t99 = abap_true.
            DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t101.
            t98 = t101.
          ELSE.
            DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t103 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t104) = CAST zcl_lnt_abstract_type_data( t63 ).
            t103 = t104.
            t102 = t103->rtti_name.
            t98 = t102.
          ENDIF.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          DATA(t106) = VALUE abap_bool( ).
          DATA(t107) = CAST zcl_lnt_abstract_type_data( t63 ).
          IF t107 IS INITIAL.
            t106 = abap_true.
          ENDIF.
          IF t106 = abap_true.
            DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t108.
            t105 = t108.
          ELSE.
            DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t110 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t111) = CAST zcl_lnt_abstract_type_data( t63 ).
            t110 = t111.
            t109 = t110->description.
            t105 = t109.
          ENDIF.
          t69 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t70 i_conversion_exit = t77 i_derived_from_constant = t84 i_ddic_name = t91 i_rtti_name = t98 i_description = t105 ).
          t62 = t69.
          t61 = t62.
          DATA(t112) = VALUE abap_bool( ).
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t114) = CAST zcl_lnt_abstract_type_data( t47 ).
          t113 = t114->qualified_name.
          IF t113 IS BOUND.
            IF t113->has = abap_true.
              t112 = xsdbool( strlen( t113->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t112 = abap_true.
            DATA(t115) = CAST zcl_lnt_abstract_type_data( t61 ).
            DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t116.
            DATA(t117) = abap_true.
            IF t117 = abap_true.
              DATA t118 TYPE string.
              DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t120) = CAST zcl_lnt_abstract_type_data( t47 ).
              t119 = t120->qualified_name.
              t118 = t119->value.
              DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t121->has = abap_true.
              t121->value = t118.
              t116 = t121.
            ELSE.
              DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t122.
              t116 = t122.
            ENDIF.
            t115->qualified_name = t116.
          ENDIF.
          DATA(t123) = VALUE abap_bool( ).
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t125) = CAST zcl_lnt_abstract_type_data( t47 ).
          t124 = t125->ddic_name.
          IF t124 IS BOUND.
            IF t124->has = abap_true.
              t123 = xsdbool( strlen( t124->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t123 = abap_true.
            DATA(t126) = CAST zcl_lnt_abstract_type_data( t61 ).
            DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t127.
            DATA(t128) = abap_true.
            IF t128 = abap_true.
              DATA t129 TYPE string.
              DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t131) = CAST zcl_lnt_abstract_type_data( t47 ).
              t130 = t131->ddic_name.
              t129 = t130->value.
              DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t132->has = abap_true.
              t132->value = t129.
              t127 = t132.
            ELSE.
              DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t133.
              t127 = t133.
            ENDIF.
            t126->ddic_name = t127.
          ENDIF.
          DATA(t134) = VALUE abap_bool( ).
          DATA t135 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t136) = CAST zcl_lnt_abstract_type_data( t47 ).
          t135 = t136->derived_from_constant.
          IF t135 IS BOUND.
            IF t135->has = abap_true.
              t134 = xsdbool( t135->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          IF t134 = abap_true.
            DATA(t137) = CAST zcl_lnt_abstract_type_data( t61 ).
            DATA t138 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t138.
            DATA(t139) = abap_true.
            IF t139 = abap_true.
              DATA t140 TYPE abap_bool.
              DATA t141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA(t142) = CAST zcl_lnt_abstract_type_data( t47 ).
              t141 = t142->derived_from_constant.
              t140 = t141->value.
              DATA(t143) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t143->has = abap_true.
              t143->value = t140.
              t138 = t143.
            ELSE.
              DATA t144 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t144.
              t138 = t144.
            ENDIF.
            t137->derived_from_constant = t138.
          ENDIF.
          DATA t145 TYPE REF TO zcl_lnt_character_type.
          CLEAR t145.
          DATA t146 TYPE int8.
          DATA(t147) = CAST zcl_lnt_character_type( t44 ).
          t146 = t147->length.
          DATA t148 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t148.
          DATA(t149) = abap_true.
          IF t149 = abap_true.
            DATA(t150) = CAST zcl_lnt_abstract_type_data( t61 ).
            t148 = t150.
          ELSE.
            DATA t151 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t151.
            t148 = t151.
          ENDIF.
          t145 = NEW zcl_lnt_character_type( i_length = t146 i_extra = t148 ).
          t60 = t145.
          t43 = t60.
          t22 = t43.
        ENDIF.
        DATA(t152) = CAST zcl_lnt_abstract_type( t22 ).
        t27 = t152.
        t21 = t27.
        t19 = t21.
      ELSE.
        DATA t153 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t153.
        t19 = t153.
      ENDIF.
      result = t19.
      RETURN.
    ENDIF.
    DATA(t154) = VALUE string( ).
    DATA t155 TYPE string.
    DATA t156 TYPE string.
    DATA t157 TYPE REF TO zcl_lnt_expression_node.
    DATA(t158) = CAST zcl_lnt_expression_node( t1 ).
    t157 = t158.
    t156 = t157->concat_tokens( ).
    DATA(t159) = strlen( t156 ).
    t155 = t156.
    IF t155 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t155 TO UPPER CASE.
    ELSE.
      t155 = zlnt_runtime_uppe_91169605024d=>full( t155 ).
    ENDIF.
    t154 = t155.
    DATA t160 TYPE REF TO zcl_lnt_abstract_type.
    DATA t161 TYPE REF TO zcl_lnt_abstract_type.
    DATA t162 TYPE REF TO zcl_lnt_ddic.
    DATA t163 TYPE REF TO zcl_lnt_current_scope.
    DATA t164 TYPE REF TO zcl_lnt_current_scope.
    DATA(t165) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
    t164 = t165->scope.
    t163 = t164.
    DATA t166 TYPE REF TO zcl_lnt_ddic.
    DATA t167 TYPE REF TO zif_lnt_registry.
    DATA(t168) = CAST zcl_lnt_current_scope( t163 ).
    t167 = t168->reg.
    t166 = NEW zcl_lnt_ddic( i_reg_f149 = t167 ).
    t162 = t166.
    DATA(t169) = t154.
    DATA(t170) = CAST zlnt_runtime_opti_4a236cd5714d( t2 ).
    DATA(t171) = CAST zlnt_runtime_opti_4a236cd5714d( t3 ).
    DATA(t172) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
    t161 = t162->lookup_builtin_type( i_name = t169 i_length = t170 i_decimals_2eed = t171 i_qualified_name = t172 ).
    t160 = t161.
    DATA(t173) = VALUE abap_bool( ).
    DATA t174 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t175) = CAST zcl_lnt_abstract_type( t160 ).
    t174 = t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    t176 = t177.
    DATA(t178) = VALUE abap_bool( ).
    DATA(t179) = VALUE abap_bool( ).
    DATA(t180) = CAST zcl_lnt_abstract_type( t174 ).
    IF t180 IS INITIAL.
      t179 = abap_true.
    ENDIF.
    t178 = xsdbool( t179 = abap_false ).
    t173 = t178.
    IF t173 = abap_true.
      DATA t181 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t181.
      DATA(t182) = abap_true.
      IF t182 = abap_true.
        DATA t183 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t184) = CAST zcl_lnt_abstract_type( t160 ).
        t183 = t184.
        t181 = t183.
      ELSE.
        DATA t185 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t185.
        t181 = t185.
      ENDIF.
      result = t181.
      RETURN.
    ENDIF.
    DATA t186 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t186.
    DATA t187 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t187.
    DATA t188 TYPE REF TO zcl_lnt_current_scope.
    DATA t189 TYPE REF TO zcl_lnt_current_scope.
    DATA(t190) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
    t189 = t190->scope.
    t188 = t189.
    DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t192.
    DATA(t193) = abap_true.
    IF t193 = abap_true.
      DATA(t194) = t154.
      DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t195->has = abap_true.
      t195->value = t194.
      t192 = t195.
    ELSE.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t196.
      t192 = t196.
    ENDIF.
    t191 = t192.
    DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t197.
    DATA(t198) = VALUE abap_bool( ).
    DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t200) = CAST zlnt_runtime_opti_4ba3bdccd169( t191 ).
    t199 = t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    t201 = t202.
    DATA(t203) = VALUE abap_bool( ).
    DATA(t204) = CAST zlnt_runtime_opti_4ba3bdccd169( t199 ).
    IF t204 IS INITIAL.
      t203 = abap_true.
    ELSEIF t204->has = abap_false.
      t203 = abap_true.
    ENDIF.
    t198 = t203.
    IF t198 = abap_true.
      DATA t205 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t205.
      t197 = t205.
    ELSE.
      DATA t206 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t206.
      DATA t207 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t208 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t209) = CAST zcl_lnt_current_scope( t188 ).
      t208 = t209->current.
      t207 = t208.
      DATA t210 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t210.
      DATA(t211) = VALUE abap_bool( ).
      DATA(t212) = CAST zcl_lnt_spaghetti_scope_node( t207 ).
      IF t212 IS INITIAL.
        t211 = abap_true.
      ENDIF.
      IF t211 = abap_true.
        DATA t213 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t213.
        t210 = t213.
      ELSE.
        DATA t214 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t215 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t216) = CAST zcl_lnt_spaghetti_scope_node( t207 ).
        t215 = t216.
        DATA t217 TYPE string.
        DATA(t218) = CAST zlnt_runtime_opti_4ba3bdccd169( t191 ).
        t217 = t218->value.
        t214 = t215->find_type( i_name = t217 ).
        t210 = t214.
      ENDIF.
      t206 = t210.
      t197 = t206.
    ENDIF.
    t187 = t197.
    t186 = t187.
    DATA t219 TYPE abap_bool.
    DATA(t220) = CAST zcl_lnt_typed_identifier( t186 ).
    t219 = xsdbool( t220 IS BOUND ).
    IF t219 = abap_true.
      DATA t221 TYPE REF TO zcl_lnt_abstract_token.
      DATA t222 TYPE REF TO zcl_lnt_abstract_token.
      DATA t223 TYPE REF TO zcl_lnt_expression_node.
      DATA(t224) = CAST zcl_lnt_expression_node( t1 ).
      t223 = t224.
      t222 = t223->get_first_token( ).
      t221 = t222.
      DATA(t225) = VALUE abap_bool( ).
      DATA(t226) = VALUE i( ).
      DATA(t227) = t154.
      DATA(t228) = |~|.
      DATA(t229) = strlen( t227 ).
      IF t228 IS INITIAL.
        t226 = 0.
      ELSE.
        FIND t228 IN t227 MATCH OFFSET t226.
        IF sy-subrc <> 0.
          t226 = -1.
        ENDIF.
      ENDIF.
      DATA(t230) = 0.
      t225 = xsdbool( t226 >= t230 ).
      IF t225 = abap_true.
        DATA(t231) = VALUE string( ).
        DATA(t232) = VALUE string( ).
        DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t234) = t154.
        DATA(t235) = |~|.
        DATA(t236) = strlen( t234 ).
        DATA t237 TYPE i.
        DATA(t238) = VALUE i( ).
        DATA(t239) = VALUE i( ).
        DATA t240 TYPE i.
        DATA(t241) = VALUE string( ).
        CREATE OBJECT t233.
        t240 = strlen( t235 ).
        t237 = 0.
        IF t240 = 0.
          WHILE t237 < t236.
            t241 = t234+t237(1).
            APPEND t241 TO t233->items.
            t237 = t237 + 1.
          ENDWHILE.
        ELSE.
          WHILE t237 <= t236.
            FIND FIRST OCCURRENCE OF t235 IN SECTION OFFSET t237 OF t234 MATCH OFFSET t238.
            IF sy-subrc = 0.
              t239 = t238 - t237.
            ELSE.
              t238 = -1.
              t239 = t236 - t237.
            ENDIF.
            CLEAR t241.
            IF t239 > 0.
              t241 = t234+t237(t239).
            ENDIF.
            APPEND t241 TO t233->items.
            IF t238 < 0.
              EXIT.
            ENDIF.
            t237 = t238 + t240.
          ENDWHILE.
        ENDIF.
        READ TABLE t233->items INDEX 1 INTO t232.
        t231 = t232.
        DATA t242 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t242.
        DATA t243 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t243.
        DATA t244 TYPE REF TO zcl_lnt_current_scope.
        DATA t245 TYPE REF TO zcl_lnt_current_scope.
        DATA(t246) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t245 = t246->scope.
        t244 = t245.
        DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t247.
        DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t248.
        DATA(t249) = abap_true.
        IF t249 = abap_true.
          DATA(t250) = t231.
          DATA(t251) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t251->has = abap_true.
          t251->value = t250.
          t248 = t251.
        ELSE.
          DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t252.
          t248 = t252.
        ENDIF.
        t247 = t248.
        DATA t253 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t253.
        DATA(t254) = VALUE abap_bool( ).
        DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t256) = CAST zlnt_runtime_opti_4ba3bdccd169( t247 ).
        t255 = t256.
        DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t258.
        t257 = t258.
        DATA(t259) = VALUE abap_bool( ).
        DATA(t260) = CAST zlnt_runtime_opti_4ba3bdccd169( t255 ).
        IF t260 IS INITIAL.
          t259 = abap_true.
        ELSEIF t260->has = abap_false.
          t259 = abap_true.
        ENDIF.
        t254 = t259.
        IF t254 = abap_true.
          DATA t261 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t261.
          t253 = t261.
        ELSE.
          DATA t262 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t262.
          DATA t263 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t263.
          DATA t264 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t264.
          DATA t265 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t266 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t267) = CAST zcl_lnt_current_scope( t244 ).
          t266 = t267->current.
          t265 = t266.
          DATA t268 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t268.
          DATA(t269) = VALUE abap_bool( ).
          DATA(t270) = CAST zcl_lnt_spaghetti_scope_node( t265 ).
          IF t270 IS INITIAL.
            t269 = abap_true.
          ENDIF.
          IF t269 = abap_true.
            DATA t271 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t271.
            t268 = t271.
          ELSE.
            DATA t272 TYPE REF TO zif_lnt_interface_definition.
            DATA t273 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t274) = CAST zcl_lnt_spaghetti_scope_node( t265 ).
            t273 = t274.
            DATA t275 TYPE string.
            DATA(t276) = CAST zlnt_runtime_opti_4ba3bdccd169( t247 ).
            t275 = t276->value.
            t272 = t273->find_interface_definition( i_name = t275 ).
            t268 = t272.
          ENDIF.
          t264 = t268.
          t263 = t264.
          DATA t277 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t277.
          DATA t278 TYPE abap_bool.
          DATA(t279) = CAST zif_lnt_interface_definition( t263 ).
          t278 = xsdbool( t279 IS BOUND ).
          IF t278 = abap_true.
            DATA t280 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t280.
            DATA(t281) = abap_true.
            IF t281 = abap_true.
              DATA t282 TYPE REF TO zif_lnt_interface_definition.
              DATA(t283) = CAST zif_lnt_interface_definition( t263 ).
              t282 = t283.
              t280 = t282.
            ELSE.
              DATA t284 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t284.
              t280 = t284.
            ENDIF.
            t277 = t280.
          ELSE.
            DATA t285 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t285.
            DATA t286 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t286.
            DATA t287 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t287.
            DATA t288 TYPE REF TO zif_lnt_object.
            CLEAR t288.
            DATA t289 TYPE REF TO zif_lnt_registry.
            DATA(t290) = CAST zcl_lnt_current_scope( t244 ).
            t289 = t290->reg.
            DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t291.
            DATA(t292) = abap_true.
            IF t292 = abap_true.
              DATA(t293) = |INTF|.
              DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t294->has = abap_true.
              t294->value = t293.
              t291 = t294.
            ELSE.
              DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t295.
              t291 = t295.
            ENDIF.
            DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t296.
            DATA(t297) = abap_true.
            IF t297 = abap_true.
              DATA t298 TYPE string.
              DATA(t299) = CAST zlnt_runtime_opti_4ba3bdccd169( t247 ).
              t298 = t299->value.
              DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t300->has = abap_true.
              t300->value = t298.
              t296 = t300.
            ELSE.
              DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t301.
              t296 = t301.
            ENDIF.
            t288 = t289->get_object( i_type_9913 = t291 i_name = t296 ).
            DATA t302 TYPE REF TO object.
            t302 = t288.
            t287 ?= t302.
            t286 = t287.
            DATA t303 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t303.
            DATA t304 TYPE abap_bool.
            DATA(t305) = CAST zcl_lnt_ob_interface( t286 ).
            t304 = xsdbool( t305 IS BOUND ).
            IF t304 = abap_true.
              DATA t306 TYPE REF TO zif_lnt_interface_definition.
              DATA t307 TYPE REF TO zcl_lnt_ob_interface.
              DATA t308 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t309) = CAST zcl_lnt_ob_interface( t286 ).
              t308 = t309.
              t307 = t308.
              DATA t310 TYPE REF TO zif_lnt_interface_definition.
              DATA(t311) = CAST zcl_lnt_ob_interface( t307 ).
              t310 = t311->def.
              t306 = t310.
              t303 = t306.
            ELSE.
              DATA t312 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t312.
              t303 = t312.
            ENDIF.
            t285 = t303.
            t277 = t285.
          ENDIF.
          t262 = t277.
          t253 = t262.
        ENDIF.
        t243 = t253.
        t242 = t243.
        DATA t313 TYPE abap_bool.
        DATA(t314) = CAST zif_lnt_interface_definition( t242 ).
        t313 = xsdbool( t314 IS BOUND ).
        IF t313 = abap_true.
          DATA t315 TYPE REF TO zcl_lnt_current_scope.
          DATA(t316) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t315 = t316->scope.
          DATA t317 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t317.
          DATA(t318) = abap_true.
          IF t318 = abap_true.
            DATA(t319) = CAST zcl_lnt_abstract_token( t221 ).
            t317 = t319.
          ELSE.
            DATA t320 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t320.
            t317 = t320.
          ENDIF.
          DATA t321 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t321.
          DATA(t322) = abap_true.
          IF t322 = abap_true.
            DATA t323 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t324 TYPE REF TO zif_lnt_interface_definition.
            DATA(t325) = CAST zif_lnt_interface_definition( t242 ).
            t324 = t325.
            t323 ?= t324.
            t321 = t323.
          ELSE.
            DATA t326 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t326.
            t321 = t326.
          ENDIF.
          DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t328) = |Object|.
          CREATE OBJECT t327.
          t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t327->sval = t328.
          DATA t329 TYPE string.
          DATA(t330) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t329 = t330->filename.
          DATA t331 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t331.
          DATA(t332) = abap_true.
          IF t332 = abap_true.
            DATA t333 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t333.
            DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t334.
            DATA(t335) = abap_true.
            IF t335 = abap_true.
              DATA(t336) = t231.
              DATA(t337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t337->has = abap_true.
              t337->value = t336.
              t334 = t337.
            ELSE.
              DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t338.
              t334 = t338.
            ENDIF.
            DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t339.
            DATA(t340) = abap_true.
            IF t340 = abap_true.
              DATA(t341) = |INTF|.
              DATA(t342) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t342->has = abap_true.
              t342->value = t341.
              t339 = t342.
            ELSE.
              DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t343.
              t339 = t343.
            ENDIF.
            DATA t344 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t344.
            t333 = NEW zcl_lnt_ireference_extras( i_oo_name = t334 i_oo_type = t339 i_found_qualified = t344 ).
            t331 = t333.
          ELSE.
            DATA t345 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t345.
            t331 = t345.
          ENDIF.
          t315->add_reference( i_usage = t317 i_referencing = t321 i_type_9913 = t327 i_filename = t329 i_extra = t331 ).
        ENDIF.
      ENDIF.
      DATA t346 TYPE REF TO zcl_lnt_current_scope.
      DATA(t347) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      t346 = t347->scope.
      DATA t348 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t348.
      DATA(t349) = abap_true.
      IF t349 = abap_true.
        DATA(t350) = CAST zcl_lnt_abstract_token( t221 ).
        t348 = t350.
      ELSE.
        DATA t351 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t351.
        t348 = t351.
      ENDIF.
      DATA t352 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t353) = CAST zcl_lnt_typed_identifier( t186 ).
      t352 = t353.
      DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t355) = |Type|.
      CREATE OBJECT t354.
      t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t354->sval = t355.
      DATA t356 TYPE string.
      DATA(t357) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      t356 = t357->filename.
      DATA t358 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t358.
      t346->add_reference( i_usage = t348 i_referencing = t352 i_type_9913 = t354 i_filename = t356 i_extra = t358 ).
      DATA t359 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t359.
      DATA(t360) = abap_true.
      IF t360 = abap_true.
        DATA t361 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t361.
        DATA t362 TYPE REF TO zcl_lnt_abstract_type.
        DATA t363 TYPE REF TO zcl_lnt_abstract_type.
        DATA t364 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t365 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t366) = CAST zcl_lnt_typed_identifier( t186 ).
        t365 = t366.
        t364 = t365.
        DATA t367 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t368) = CAST zcl_lnt_typed_identifier( t364 ).
        t367 = t368->type_cba0.
        t363 = t367.
        t362 = t363.
        DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t370) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
        t369 = t370.
        DATA t371 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t371.
        DATA(t372) = VALUE abap_bool( ).
        DATA t373 TYPE abap_bool.
        DATA t374 TYPE abap_bool.
        DATA(t375) = CAST zcl_lnt_abstract_type( t362 ).
        t374 = xsdbool( t375 IS BOUND AND t375 IS INSTANCE OF zcl_lnt_character_type ).
        t373 = t374.
        IF t374 = abap_true.
          DATA(t376) = VALUE abap_bool( ).
          DATA(t377) = CAST zlnt_runtime_opti_4ba3bdccd169( t369 ).
          IF t377 IS BOUND.
            IF t377->has = abap_true.
              t376 = xsdbool( strlen( t377->value ) > 0 ).
            ENDIF.
          ENDIF.
          t373 = t376.
        ENDIF.
        t372 = t373.
        IF t373 = abap_true.
          DATA(t378) = VALUE abap_bool( ).
          DATA(t379) = VALUE abap_bool( ).
          DATA(t380) = VALUE i( ).
          DATA t381 TYPE string.
          DATA(t382) = CAST zlnt_runtime_opti_4ba3bdccd169( t369 ).
          t381 = t382->value.
          DATA(t383) = |-|.
          DATA(t384) = strlen( t381 ).
          IF t383 IS INITIAL.
            t380 = 0.
          ELSE.
            FIND t383 IN t381 MATCH OFFSET t380.
            IF sy-subrc <> 0.
              t380 = -1.
            ENDIF.
          ENDIF.
          DATA(t385) = 0.
          t379 = xsdbool( t380 >= t385 ).
          DATA(t386) = abap_false.
          t378 = xsdbool( t379 = t386 ).
          t372 = t378.
        ENDIF.
        IF t372 = abap_true.
          DATA t387 TYPE REF TO zcl_lnt_character_type.
          CLEAR t387.
          DATA t388 TYPE REF TO zcl_lnt_character_type.
          DATA t389 TYPE REF TO zcl_lnt_character_type.
          DATA(t390) = CAST zcl_lnt_abstract_type( t362 ).
          t389 ?= t390.
          t388 = t389.
          DATA t391 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t391.
          DATA t392 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t392.
          DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t393.
          DATA(t394) = abap_true.
          IF t394 = abap_true.
            DATA t395 TYPE string.
            DATA(t396) = CAST zlnt_runtime_opti_4ba3bdccd169( t369 ).
            t395 = t396->value.
            DATA(t397) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t397->has = abap_true.
            t397->value = t395.
            t393 = t397.
          ELSE.
            DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t398.
            t393 = t398.
          ENDIF.
          DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t399.
          DATA t400 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t400.
          DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t401.
          DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t402.
          DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t403.
          t392 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t393 i_conversion_exit = t399 i_derived_from_constant = t400 i_ddic_name = t401 i_rtti_name = t402 i_description = t403 ).
          t391 = t392.
          DATA t404 TYPE REF TO zcl_lnt_character_type.
          CLEAR t404.
          DATA t405 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t405.
          DATA t406 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t406.
          DATA t407 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t408 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t409 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t410) = CAST zcl_lnt_character_type( t388 ).
          t409 = t410.
          DATA t411 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA(t412) = CAST zcl_lnt_abstract_type( t409 ).
          t411 = t412->data_56cc.
          t408 = t411.
          t407 = t408.
          DATA t413 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t413.
          DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t414.
          DATA(t415) = VALUE abap_bool( ).
          DATA(t416) = CAST zcl_lnt_abstract_type_data( t407 ).
          IF t416 IS INITIAL.
            t415 = abap_true.
          ENDIF.
          IF t415 = abap_true.
            DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t417.
            t414 = t417.
          ELSE.
            DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t419 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t420) = CAST zcl_lnt_abstract_type_data( t407 ).
            t419 = t420.
            t418 = t419->qualified_name.
            t414 = t418.
          ENDIF.
          DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t421.
          DATA(t422) = VALUE abap_bool( ).
          DATA(t423) = CAST zcl_lnt_abstract_type_data( t407 ).
          IF t423 IS INITIAL.
            t422 = abap_true.
          ENDIF.
          IF t422 = abap_true.
            DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t424.
            t421 = t424.
          ELSE.
            DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t426 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t427) = CAST zcl_lnt_abstract_type_data( t407 ).
            t426 = t427.
            t425 = t426->conversion_exit.
            t421 = t425.
          ENDIF.
          DATA t428 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t428.
          DATA(t429) = VALUE abap_bool( ).
          DATA(t430) = CAST zcl_lnt_abstract_type_data( t407 ).
          IF t430 IS INITIAL.
            t429 = abap_true.
          ENDIF.
          IF t429 = abap_true.
            DATA t431 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t431.
            t428 = t431.
          ELSE.
            DATA t432 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t433 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t434) = CAST zcl_lnt_abstract_type_data( t407 ).
            t433 = t434.
            t432 = t433->derived_from_constant.
            t428 = t432.
          ENDIF.
          DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t435.
          DATA(t436) = VALUE abap_bool( ).
          DATA(t437) = CAST zcl_lnt_abstract_type_data( t407 ).
          IF t437 IS INITIAL.
            t436 = abap_true.
          ENDIF.
          IF t436 = abap_true.
            DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t438.
            t435 = t438.
          ELSE.
            DATA t439 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t440 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t441) = CAST zcl_lnt_abstract_type_data( t407 ).
            t440 = t441.
            t439 = t440->ddic_name.
            t435 = t439.
          ENDIF.
          DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t442.
          DATA(t443) = VALUE abap_bool( ).
          DATA(t444) = CAST zcl_lnt_abstract_type_data( t407 ).
          IF t444 IS INITIAL.
            t443 = abap_true.
          ENDIF.
          IF t443 = abap_true.
            DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t445.
            t442 = t445.
          ELSE.
            DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t447 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t448) = CAST zcl_lnt_abstract_type_data( t407 ).
            t447 = t448.
            t446 = t447->rtti_name.
            t442 = t446.
          ENDIF.
          DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t449.
          DATA(t450) = VALUE abap_bool( ).
          DATA(t451) = CAST zcl_lnt_abstract_type_data( t407 ).
          IF t451 IS INITIAL.
            t450 = abap_true.
          ENDIF.
          IF t450 = abap_true.
            DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t452.
            t449 = t452.
          ELSE.
            DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t454 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t455) = CAST zcl_lnt_abstract_type_data( t407 ).
            t454 = t455.
            t453 = t454->description.
            t449 = t453.
          ENDIF.
          t413 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t414 i_conversion_exit = t421 i_derived_from_constant = t428 i_ddic_name = t435 i_rtti_name = t442 i_description = t449 ).
          t406 = t413.
          t405 = t406.
          DATA(t456) = VALUE abap_bool( ).
          DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t458) = CAST zcl_lnt_abstract_type_data( t391 ).
          t457 = t458->qualified_name.
          IF t457 IS BOUND.
            IF t457->has = abap_true.
              t456 = xsdbool( strlen( t457->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t456 = abap_true.
            DATA(t459) = CAST zcl_lnt_abstract_type_data( t405 ).
            DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t460.
            DATA(t461) = abap_true.
            IF t461 = abap_true.
              DATA t462 TYPE string.
              DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t464) = CAST zcl_lnt_abstract_type_data( t391 ).
              t463 = t464->qualified_name.
              t462 = t463->value.
              DATA(t465) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t465->has = abap_true.
              t465->value = t462.
              t460 = t465.
            ELSE.
              DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t466.
              t460 = t466.
            ENDIF.
            t459->qualified_name = t460.
          ENDIF.
          DATA(t467) = VALUE abap_bool( ).
          DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t469) = CAST zcl_lnt_abstract_type_data( t391 ).
          t468 = t469->ddic_name.
          IF t468 IS BOUND.
            IF t468->has = abap_true.
              t467 = xsdbool( strlen( t468->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t467 = abap_true.
            DATA(t470) = CAST zcl_lnt_abstract_type_data( t405 ).
            DATA t471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t471.
            DATA(t472) = abap_true.
            IF t472 = abap_true.
              DATA t473 TYPE string.
              DATA t474 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t475) = CAST zcl_lnt_abstract_type_data( t391 ).
              t474 = t475->ddic_name.
              t473 = t474->value.
              DATA(t476) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t476->has = abap_true.
              t476->value = t473.
              t471 = t476.
            ELSE.
              DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t477.
              t471 = t477.
            ENDIF.
            t470->ddic_name = t471.
          ENDIF.
          DATA(t478) = VALUE abap_bool( ).
          DATA t479 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t480) = CAST zcl_lnt_abstract_type_data( t391 ).
          t479 = t480->derived_from_constant.
          IF t479 IS BOUND.
            IF t479->has = abap_true.
              t478 = xsdbool( t479->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          IF t478 = abap_true.
            DATA(t481) = CAST zcl_lnt_abstract_type_data( t405 ).
            DATA t482 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t482.
            DATA(t483) = abap_true.
            IF t483 = abap_true.
              DATA t484 TYPE abap_bool.
              DATA t485 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA(t486) = CAST zcl_lnt_abstract_type_data( t391 ).
              t485 = t486->derived_from_constant.
              t484 = t485->value.
              DATA(t487) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t487->has = abap_true.
              t487->value = t484.
              t482 = t487.
            ELSE.
              DATA t488 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t488.
              t482 = t488.
            ENDIF.
            t481->derived_from_constant = t482.
          ENDIF.
          DATA t489 TYPE REF TO zcl_lnt_character_type.
          CLEAR t489.
          DATA t490 TYPE int8.
          DATA(t491) = CAST zcl_lnt_character_type( t388 ).
          t490 = t491->length.
          DATA t492 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t492.
          DATA(t493) = abap_true.
          IF t493 = abap_true.
            DATA(t494) = CAST zcl_lnt_abstract_type_data( t405 ).
            t492 = t494.
          ELSE.
            DATA t495 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t495.
            t492 = t495.
          ENDIF.
          t489 = NEW zcl_lnt_character_type( i_length = t490 i_extra = t492 ).
          t404 = t489.
          t387 = t404.
          t362 = t387.
        ENDIF.
        DATA(t496) = CAST zcl_lnt_abstract_type( t362 ).
        t371 = t496.
        t361 = t371.
        t359 = t361.
      ELSE.
        DATA t497 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t497.
        t359 = t497.
      ENDIF.
      result = t359.
      RETURN.
    ENDIF.
    DATA t498 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t498.
    DATA t499 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t499.
    DATA t500 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t501 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t502 TYPE REF TO zcl_lnt_current_scope.
    DATA(t503) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
    t502 = t503->scope.
    DATA(t504) = t154.
    t501 = t502->find_type_pool_type( i_name = t504 ).
    t500 = t501.
    DATA t505 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t505.
    DATA(t506) = VALUE abap_bool( ).
    DATA(t507) = CAST zcl_lnt_typed_identifier( t500 ).
    IF t507 IS INITIAL.
      t506 = abap_true.
    ENDIF.
    IF t506 = abap_true.
      DATA t508 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t508.
      t505 = t508.
    ELSE.
      DATA t509 TYPE REF TO zcl_lnt_abstract_type.
      DATA t510 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t511 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t512) = CAST zcl_lnt_typed_identifier( t500 ).
      t511 = t512.
      t510 = t511.
      DATA t513 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t514) = CAST zcl_lnt_typed_identifier( t510 ).
      t513 = t514->type_cba0.
      t509 = t513.
      t505 = t509.
    ENDIF.
    t499 = t505.
    t498 = t499.
    DATA t515 TYPE abap_bool.
    DATA(t516) = CAST zcl_lnt_abstract_type( t498 ).
    t515 = xsdbool( t516 IS BOUND ).
    IF t515 = abap_true.
      DATA t517 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t517.
      DATA(t518) = abap_true.
      IF t518 = abap_true.
        DATA t519 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t520) = CAST zcl_lnt_abstract_type( t498 ).
        t519 = t520.
        t517 = t519.
      ELSE.
        DATA t521 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t521.
        t517 = t521.
      ENDIF.
      result = t517.
      RETURN.
    ENDIF.
    DATA t522 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t522.
    DATA t523 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t523.
    DATA t524 TYPE REF TO zcl_lnt_ddic.
    DATA t525 TYPE REF TO zcl_lnt_ddic.
    DATA t526 TYPE REF TO zcl_lnt_current_scope.
    DATA t527 TYPE REF TO zcl_lnt_current_scope.
    DATA(t528) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
    t527 = t528->scope.
    t526 = t527.
    DATA t529 TYPE REF TO zcl_lnt_ddic.
    DATA t530 TYPE REF TO zif_lnt_registry.
    DATA(t531) = CAST zcl_lnt_current_scope( t526 ).
    t530 = t531->reg.
    t529 = NEW zcl_lnt_ddic( i_reg_f149 = t530 ).
    t525 = t529.
    t524 = t525.
    DATA t532 TYPE string.
    DATA(t533) = t154.
    t532 = t533.
    DATA t534 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t534.
    DATA t535 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t536 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t537) = CAST zcl_lnt_ddic( t524 ).
    DATA(t538) = t532.
    t536 = t537->lookup_no_void( i_name = t538 ).
    t535 = t536.
    DATA t539 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t539.
    DATA t540 TYPE abap_bool.
    DATA(t541) = CAST zcl_lnt_ilookup_result( t535 ).
    t540 = xsdbool( t541 IS BOUND ).
    IF t540 = abap_true.
      DATA t542 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t543) = CAST zcl_lnt_ilookup_result( t535 ).
      t542 = t543.
      t539 = t542.
    ELSE.
      DATA t544 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t544.
      DATA t545 TYPE abap_bool.
      DATA t546 TYPE REF TO zif_lnt_registry.
      DATA(t547) = CAST zcl_lnt_ddic( t524 ).
      t546 = t547->reg.
      DATA(t548) = t532.
      t545 = t546->in_error_namespace( i_name = t548 ).
      IF t545 = abap_true.
        DATA t549 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t550 TYPE REF TO zcl_lnt_unknown_type.
        DATA t551 TYPE string.
        DATA(t552) = t532.
        DATA(t553) = | not found, lookup|.
        DATA(t554) = strlen( t552 ).
        t551 = |{ t552 }{ t553 }|.
        DATA t555 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t555.
        t550 = NEW zcl_lnt_unknown_type( i_error = t551 i_qualified_name = t555 ).
        DATA t556 TYPE REF TO zif_lnt_object.
        CLEAR t556.
        t549 = NEW zcl_lnt_ilookup_result( i_type_9913 = t550 i_object_19cd = t556 ).
        t544 = t549.
      ELSE.
        DATA t557 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t557.
        DATA t558 TYPE REF TO zcl_lnt_void_type.
        CLEAR t558.
        DATA t559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t559.
        DATA(t560) = abap_true.
        IF t560 = abap_true.
          DATA(t561) = t532.
          DATA(t562) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t562->has = abap_true.
          t562->value = t561.
          t559 = t562.
        ELSE.
          DATA t563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t563.
          t559 = t563.
        ENDIF.
        DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t564.
        t558 = zcl_lnt_void_type=>get_db65( i_voided = t559 i_qualified_name = t564 ).
        DATA t565 TYPE REF TO zif_lnt_object.
        CLEAR t565.
        t557 = NEW zcl_lnt_ilookup_result( i_type_9913 = t558 i_object_19cd = t565 ).
        t544 = t557.
      ENDIF.
      t539 = t544.
    ENDIF.
    t534 = t539.
    t523 = t534.
    t522 = t523.
    DATA t566 TYPE abap_bool.
    DATA(t567) = CAST zcl_lnt_ilookup_result( t522 ).
    t566 = xsdbool( t567 IS BOUND ).
    IF t566 = abap_true.
      DATA t568 TYPE REF TO zif_lnt_ddic_references.
      DATA t569 TYPE REF TO zcl_lnt_current_scope.
      DATA t570 TYPE REF TO zcl_lnt_current_scope.
      DATA(t571) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      t570 = t571->scope.
      t569 = t570.
      DATA t572 TYPE REF TO zif_lnt_ddic_references.
      DATA t573 TYPE REF TO zif_lnt_registry.
      DATA(t574) = CAST zcl_lnt_current_scope( t569 ).
      t573 = t574->reg.
      t572 = t573->get_ddic_references( ).
      t568 = t572.
      DATA t575 TYPE REF TO zif_lnt_object.
      DATA t576 TYPE REF TO zcl_lnt_current_scope.
      DATA t577 TYPE REF TO zcl_lnt_current_scope.
      DATA(t578) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      t577 = t578->scope.
      t576 = t577.
      DATA t579 TYPE REF TO zif_lnt_object.
      DATA(t580) = CAST zcl_lnt_current_scope( t576 ).
      t579 = t580->parent_obj.
      t575 = t579.
      DATA t581 TYPE REF TO zcl_lnt_iobject_and_token.
      CLEAR t581.
      DATA(t582) = abap_true.
      IF t582 = abap_true.
        DATA t583 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t583.
        DATA t584 TYPE REF TO zif_lnt_object.
        DATA(t585) = CAST zcl_lnt_ilookup_result( t522 ).
        t584 = t585->object_a393.
        DATA t586 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t586.
        DATA(t587) = abap_true.
        IF t587 = abap_true.
          DATA t588 TYPE REF TO zcl_lnt_abstract_token.
          DATA t589 TYPE REF TO zcl_lnt_expression_node.
          DATA(t590) = CAST zcl_lnt_expression_node( t1 ).
          t589 = t590.
          t588 = t589->get_first_token( ).
          t586 = t588.
        ELSE.
          DATA t591 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t591.
          t586 = t591.
        ENDIF.
        DATA t592 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t592.
        DATA(t593) = abap_true.
        IF t593 = abap_true.
          DATA t594 TYPE string.
          DATA(t595) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t594 = t595->filename.
          DATA(t596) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t596->has = abap_true.
          t596->value = t594.
          t592 = t596.
        ELSE.
          DATA t597 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t597.
          t592 = t597.
        ENDIF.
        t583 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t584 i_token = t586 i_filename = t592 ).
        t581 = t583.
      ELSE.
        DATA t598 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t598.
        t581 = t598.
      ENDIF.
      t568->add_using( i_obj_1ed0 = t575 i_using = t581 ).
      DATA t599 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t600) = CAST zcl_lnt_ilookup_result( t522 ).
      t599 = t600->type_cba0.
      DATA t601 TYPE abap_bool.
      DATA t602 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t603) = CAST zcl_lnt_ilookup_result( t522 ).
      t602 = t603->type_cba0.
      t601 = xsdbool( t602 IS BOUND AND t602 IS INSTANCE OF zcl_lnt_void_type ).
      IF t601 = abap_true.
        DATA t604 TYPE REF TO zcl_lnt_current_scope.
        DATA(t605) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t604 = t605->scope.
        DATA t606 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t606.
        DATA(t607) = abap_true.
        IF t607 = abap_true.
          DATA t608 TYPE REF TO zcl_lnt_abstract_token.
          DATA t609 TYPE REF TO zcl_lnt_expression_node.
          DATA(t610) = CAST zcl_lnt_expression_node( t1 ).
          t609 = t610.
          t608 = t609->get_first_token( ).
          t606 = t608.
        ELSE.
          DATA t611 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t611.
          t606 = t611.
        ENDIF.
        DATA t612 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t612.
        DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t614) = |Type (Void)|.
        CREATE OBJECT t613.
        t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t613->sval = t614.
        DATA t615 TYPE string.
        DATA(t616) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t615 = t616->filename.
        DATA t617 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t617.
        t604->add_reference( i_usage = t606 i_referencing = t612 i_type_9913 = t613 i_filename = t615 i_extra = t617 ).
      ENDIF.
      DATA t618 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t618.
      DATA(t619) = abap_true.
      IF t619 = abap_true.
        DATA t620 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t620.
        DATA t621 TYPE REF TO zcl_lnt_abstract_type.
        DATA t622 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t623) = CAST zcl_lnt_ilookup_result( t522 ).
        t622 = t623->type_cba0.
        t621 = t622.
        DATA t624 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t625) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
        t624 = t625.
        DATA t626 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t626.
        DATA(t627) = VALUE abap_bool( ).
        DATA t628 TYPE abap_bool.
        DATA t629 TYPE abap_bool.
        DATA(t630) = CAST zcl_lnt_abstract_type( t621 ).
        t629 = xsdbool( t630 IS BOUND AND t630 IS INSTANCE OF zcl_lnt_character_type ).
        t628 = t629.
        IF t629 = abap_true.
          DATA(t631) = VALUE abap_bool( ).
          DATA(t632) = CAST zlnt_runtime_opti_4ba3bdccd169( t624 ).
          IF t632 IS BOUND.
            IF t632->has = abap_true.
              t631 = xsdbool( strlen( t632->value ) > 0 ).
            ENDIF.
          ENDIF.
          t628 = t631.
        ENDIF.
        t627 = t628.
        IF t628 = abap_true.
          DATA(t633) = VALUE abap_bool( ).
          DATA(t634) = VALUE abap_bool( ).
          DATA(t635) = VALUE i( ).
          DATA t636 TYPE string.
          DATA(t637) = CAST zlnt_runtime_opti_4ba3bdccd169( t624 ).
          t636 = t637->value.
          DATA(t638) = |-|.
          DATA(t639) = strlen( t636 ).
          IF t638 IS INITIAL.
            t635 = 0.
          ELSE.
            FIND t638 IN t636 MATCH OFFSET t635.
            IF sy-subrc <> 0.
              t635 = -1.
            ENDIF.
          ENDIF.
          DATA(t640) = 0.
          t634 = xsdbool( t635 >= t640 ).
          DATA(t641) = abap_false.
          t633 = xsdbool( t634 = t641 ).
          t627 = t633.
        ENDIF.
        IF t627 = abap_true.
          DATA t642 TYPE REF TO zcl_lnt_character_type.
          CLEAR t642.
          DATA t643 TYPE REF TO zcl_lnt_character_type.
          DATA t644 TYPE REF TO zcl_lnt_character_type.
          DATA(t645) = CAST zcl_lnt_abstract_type( t621 ).
          t644 ?= t645.
          t643 = t644.
          DATA t646 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t646.
          DATA t647 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t647.
          DATA t648 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t648.
          DATA(t649) = abap_true.
          IF t649 = abap_true.
            DATA t650 TYPE string.
            DATA(t651) = CAST zlnt_runtime_opti_4ba3bdccd169( t624 ).
            t650 = t651->value.
            DATA(t652) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t652->has = abap_true.
            t652->value = t650.
            t648 = t652.
          ELSE.
            DATA t653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t653.
            t648 = t653.
          ENDIF.
          DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t654.
          DATA t655 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t655.
          DATA t656 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t656.
          DATA t657 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t657.
          DATA t658 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t658.
          t647 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t648 i_conversion_exit = t654 i_derived_from_constant = t655 i_ddic_name = t656 i_rtti_name = t657 i_description = t658 ).
          t646 = t647.
          DATA t659 TYPE REF TO zcl_lnt_character_type.
          CLEAR t659.
          DATA t660 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t660.
          DATA t661 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t661.
          DATA t662 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t663 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t664 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t665) = CAST zcl_lnt_character_type( t643 ).
          t664 = t665.
          DATA t666 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA(t667) = CAST zcl_lnt_abstract_type( t664 ).
          t666 = t667->data_56cc.
          t663 = t666.
          t662 = t663.
          DATA t668 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t668.
          DATA t669 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t669.
          DATA(t670) = VALUE abap_bool( ).
          DATA(t671) = CAST zcl_lnt_abstract_type_data( t662 ).
          IF t671 IS INITIAL.
            t670 = abap_true.
          ENDIF.
          IF t670 = abap_true.
            DATA t672 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t672.
            t669 = t672.
          ELSE.
            DATA t673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t674 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t675) = CAST zcl_lnt_abstract_type_data( t662 ).
            t674 = t675.
            t673 = t674->qualified_name.
            t669 = t673.
          ENDIF.
          DATA t676 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t676.
          DATA(t677) = VALUE abap_bool( ).
          DATA(t678) = CAST zcl_lnt_abstract_type_data( t662 ).
          IF t678 IS INITIAL.
            t677 = abap_true.
          ENDIF.
          IF t677 = abap_true.
            DATA t679 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t679.
            t676 = t679.
          ELSE.
            DATA t680 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t681 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t682) = CAST zcl_lnt_abstract_type_data( t662 ).
            t681 = t682.
            t680 = t681->conversion_exit.
            t676 = t680.
          ENDIF.
          DATA t683 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t683.
          DATA(t684) = VALUE abap_bool( ).
          DATA(t685) = CAST zcl_lnt_abstract_type_data( t662 ).
          IF t685 IS INITIAL.
            t684 = abap_true.
          ENDIF.
          IF t684 = abap_true.
            DATA t686 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t686.
            t683 = t686.
          ELSE.
            DATA t687 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t688 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t689) = CAST zcl_lnt_abstract_type_data( t662 ).
            t688 = t689.
            t687 = t688->derived_from_constant.
            t683 = t687.
          ENDIF.
          DATA t690 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t690.
          DATA(t691) = VALUE abap_bool( ).
          DATA(t692) = CAST zcl_lnt_abstract_type_data( t662 ).
          IF t692 IS INITIAL.
            t691 = abap_true.
          ENDIF.
          IF t691 = abap_true.
            DATA t693 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t693.
            t690 = t693.
          ELSE.
            DATA t694 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t695 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t696) = CAST zcl_lnt_abstract_type_data( t662 ).
            t695 = t696.
            t694 = t695->ddic_name.
            t690 = t694.
          ENDIF.
          DATA t697 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t697.
          DATA(t698) = VALUE abap_bool( ).
          DATA(t699) = CAST zcl_lnt_abstract_type_data( t662 ).
          IF t699 IS INITIAL.
            t698 = abap_true.
          ENDIF.
          IF t698 = abap_true.
            DATA t700 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t700.
            t697 = t700.
          ELSE.
            DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t702 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t703) = CAST zcl_lnt_abstract_type_data( t662 ).
            t702 = t703.
            t701 = t702->rtti_name.
            t697 = t701.
          ENDIF.
          DATA t704 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t704.
          DATA(t705) = VALUE abap_bool( ).
          DATA(t706) = CAST zcl_lnt_abstract_type_data( t662 ).
          IF t706 IS INITIAL.
            t705 = abap_true.
          ENDIF.
          IF t705 = abap_true.
            DATA t707 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t707.
            t704 = t707.
          ELSE.
            DATA t708 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t709 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t710) = CAST zcl_lnt_abstract_type_data( t662 ).
            t709 = t710.
            t708 = t709->description.
            t704 = t708.
          ENDIF.
          t668 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t669 i_conversion_exit = t676 i_derived_from_constant = t683 i_ddic_name = t690 i_rtti_name = t697 i_description = t704 ).
          t661 = t668.
          t660 = t661.
          DATA(t711) = VALUE abap_bool( ).
          DATA t712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t713) = CAST zcl_lnt_abstract_type_data( t646 ).
          t712 = t713->qualified_name.
          IF t712 IS BOUND.
            IF t712->has = abap_true.
              t711 = xsdbool( strlen( t712->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t711 = abap_true.
            DATA(t714) = CAST zcl_lnt_abstract_type_data( t660 ).
            DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t715.
            DATA(t716) = abap_true.
            IF t716 = abap_true.
              DATA t717 TYPE string.
              DATA t718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t719) = CAST zcl_lnt_abstract_type_data( t646 ).
              t718 = t719->qualified_name.
              t717 = t718->value.
              DATA(t720) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t720->has = abap_true.
              t720->value = t717.
              t715 = t720.
            ELSE.
              DATA t721 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t721.
              t715 = t721.
            ENDIF.
            t714->qualified_name = t715.
          ENDIF.
          DATA(t722) = VALUE abap_bool( ).
          DATA t723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t724) = CAST zcl_lnt_abstract_type_data( t646 ).
          t723 = t724->ddic_name.
          IF t723 IS BOUND.
            IF t723->has = abap_true.
              t722 = xsdbool( strlen( t723->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t722 = abap_true.
            DATA(t725) = CAST zcl_lnt_abstract_type_data( t660 ).
            DATA t726 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t726.
            DATA(t727) = abap_true.
            IF t727 = abap_true.
              DATA t728 TYPE string.
              DATA t729 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t730) = CAST zcl_lnt_abstract_type_data( t646 ).
              t729 = t730->ddic_name.
              t728 = t729->value.
              DATA(t731) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t731->has = abap_true.
              t731->value = t728.
              t726 = t731.
            ELSE.
              DATA t732 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t732.
              t726 = t732.
            ENDIF.
            t725->ddic_name = t726.
          ENDIF.
          DATA(t733) = VALUE abap_bool( ).
          DATA t734 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t735) = CAST zcl_lnt_abstract_type_data( t646 ).
          t734 = t735->derived_from_constant.
          IF t734 IS BOUND.
            IF t734->has = abap_true.
              t733 = xsdbool( t734->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          IF t733 = abap_true.
            DATA(t736) = CAST zcl_lnt_abstract_type_data( t660 ).
            DATA t737 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t737.
            DATA(t738) = abap_true.
            IF t738 = abap_true.
              DATA t739 TYPE abap_bool.
              DATA t740 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA(t741) = CAST zcl_lnt_abstract_type_data( t646 ).
              t740 = t741->derived_from_constant.
              t739 = t740->value.
              DATA(t742) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t742->has = abap_true.
              t742->value = t739.
              t737 = t742.
            ELSE.
              DATA t743 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t743.
              t737 = t743.
            ENDIF.
            t736->derived_from_constant = t737.
          ENDIF.
          DATA t744 TYPE REF TO zcl_lnt_character_type.
          CLEAR t744.
          DATA t745 TYPE int8.
          DATA(t746) = CAST zcl_lnt_character_type( t643 ).
          t745 = t746->length.
          DATA t747 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t747.
          DATA(t748) = abap_true.
          IF t748 = abap_true.
            DATA(t749) = CAST zcl_lnt_abstract_type_data( t660 ).
            t747 = t749.
          ELSE.
            DATA t750 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t750.
            t747 = t750.
          ENDIF.
          t744 = NEW zcl_lnt_character_type( i_length = t745 i_extra = t747 ).
          t659 = t744.
          t642 = t659.
          t621 = t642.
        ENDIF.
        DATA(t751) = CAST zcl_lnt_abstract_type( t621 ).
        t626 = t751.
        t620 = t626.
        t618 = t620.
      ELSE.
        DATA t752 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t752.
        t618 = t752.
      ENDIF.
      result = t618.
      RETURN.
    ENDIF.
    DATA t753 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t753.
    result = t753.

  ENDMETHOD.
  METHOD simple_type.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_qualified_name_prefix ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = CAST zcl_lnt_expression_node( t3 ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_expression_node( t8 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
      t14 = t15->find_first_expression( i_type_9913 = t16 ).
      t3 = t14.
    ENDIF.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA(t19) = CAST zcl_lnt_expression_node( t3 ).
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = CAST zcl_lnt_expression_node( t18 ).
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    t17 = t22.
    IF t17 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t24.
      result = t24.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_abstract_token.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = CAST zcl_lnt_expression_node( t3 ).
    t27 = t28.
    t26 = t27->get_first_token( ).
    t25 = t26.
    DATA t29 TYPE abap_bool.
    DATA t30 TYPE int8.
    DATA t31 TYPE REF TO zcl_lnt_expression_node.
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    DATA(t33) = CAST zcl_lnt_expression_node( t3 ).
    t32 = t33.
    t31 = t32.
    DATA t34 TYPE int8.
    DATA(t35) = CAST zcl_lnt_expression_node( t31 ).
    t34 = t35->token_count.
    t30 = t34.
    DATA(t36) = CONV int8( 1 ).
    t29 = xsdbool( t30 > t36 ).
    IF t29 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t38 TYPE REF TO zcl_lnt_position.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t40) = CAST zcl_lnt_abstract_token( t25 ).
      t39 = t40.
      DATA t41 TYPE REF TO zcl_lnt_position.
      DATA(t42) = CAST zcl_lnt_abstract_token( t39 ).
      t41 = t42->start.
      t38 = t41.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_expression_node.
      DATA(t45) = CAST zcl_lnt_expression_node( t3 ).
      t44 = t45.
      t43 = t44->concat_tokens( ).
      t37 = NEW zcl_lnt_lx_identifier( i_start = t38 i_str = t43 ).
      t25 = t37.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    t46 = t47.
    DATA t48 TYPE abap_bool.
    DATA t49 TYPE REF TO object.
    DATA(t50) = CAST zif_lnt_union_bb14dc41( t1 ).
    t49 = t50->get_db65( ).
    t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_st_statem_type ).
    IF t48 = abap_true.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE abap_bool( ).
      DATA t53 TYPE REF TO zcl_lnt_current_scope.
      DATA t54 TYPE REF TO zcl_lnt_current_scope.
      DATA(t55) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      t54 = t55->scope.
      t53 = t54.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA t61 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t62.
      DATA t63 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t65) = CAST zcl_lnt_current_scope( t53 ).
      t64 = t65->current.
      t63 = t64.
      DATA t66 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t66.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = CAST zcl_lnt_spaghetti_scope_node( t63 ).
      IF t68 IS INITIAL.
        t67 = abap_true.
      ENDIF.
      IF t67 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t69.
        t66 = t69.
      ELSE.
        DATA t70 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t71 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t72 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t73) = CAST zcl_lnt_spaghetti_scope_node( t63 ).
        t72 = t73.
        t71 = t72.
        DATA t74 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA(t75) = CAST zcl_lnt_spaghetti_scope_node( t71 ).
        t74 = t75->identifier.
        t70 = t74.
        t66 = t70.
      ENDIF.
      t62 = t66.
      t61 = t62.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = CAST zcl_lnt_iscope_identifier( t61 ).
      IF t78 IS INITIAL.
        t77 = abap_true.
      ENDIF.
      IF t77 = abap_true.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        t76 = t79.
      ELSE.
        DATA t80 TYPE string.
        DATA t81 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA(t82) = CAST zcl_lnt_iscope_identifier( t61 ).
        t81 = t82.
        t80 = t81->filename.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t80.
        t76 = t83.
      ENDIF.
      t60 = t76.
      t59 = t60.
      DATA t84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t84.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = CAST zlnt_runtime_opti_4ba3bdccd169( t59 ).
      IF t86 IS INITIAL.
        t85 = abap_true.
      ELSEIF t86->has = abap_false.
        t85 = abap_true.
      ENDIF.
      IF t85 = abap_true.
        DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t87.
        t84 = t87.
      ELSE.
        DATA(t88) = VALUE abap_bool( ).
        DATA t89 TYPE string.
        DATA(t90) = CAST zlnt_runtime_opti_4ba3bdccd169( t59 ).
        t89 = t90->value.
        DATA(t91) = |.type.abap|.
        DATA(t92) = strlen( t89 ).
        DATA t93 TYPE i.
        DATA(t94) = VALUE i( ).
        DATA(t95) = VALUE string( ).
        t93 = strlen( t91 ).
        IF t93 = 0.
          t88 = abap_true.
        ELSEIF t93 <= t92.
          t94 = 0.
          t94 = t92 - t93.
          t95 = t89+t94(t93).
          IF t95 = t91.
            t88 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t96) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t96->has = abap_true.
        t96->value = t88.
        t84 = t96.
      ENDIF.
      t58 = t84.
      DATA t97 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t97.
      DATA(t98) = abap_true.
      IF t98 = abap_true.
        DATA(t99) = abap_true.
        DATA(t100) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t100->has = abap_true.
        t100->value = t99.
        t97 = t100.
      ELSE.
        DATA t101 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t101.
        t97 = t101.
      ENDIF.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = VALUE abap_bool( ).
      IF t58 IS BOUND.
        t102 = t58->has.
      ENDIF.
      IF t97 IS BOUND.
        t103 = t97->has.
      ENDIF.
      IF t102 = t103.
        IF t102 = abap_false.
          t57 = abap_true.
        ELSEIF t58->value = t97->value.
          t57 = abap_true.
        ENDIF.
      ENDIF.
      t56 = t57.
      IF t57 = abap_false.
        DATA(t104) = abap_false.
        t56 = t104.
      ENDIF.
      t52 = t56.
      DATA(t105) = abap_true.
      t51 = xsdbool( t52 = t105 ).
      IF t51 = abap_true.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA(t107) = abap_true.
        IF t107 = abap_true.
          DATA t108 TYPE string.
          DATA t109 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t110) = CAST zcl_lnt_abstract_token( t25 ).
          t109 = t110.
          DATA t111 TYPE string.
          DATA(t112) = CAST zcl_lnt_abstract_token( t109 ).
          t111 = t112->str.
          t108 = t111.
          DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t113->has = abap_true.
          t113->value = t108.
          t106 = t113.
        ELSE.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t114.
          t106 = t114.
        ENDIF.
        t46 = t106.
      ELSE.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        DATA(t116) = abap_true.
        IF t116 = abap_true.
          DATA(t117) = VALUE string( ).
          DATA(t118) = VALUE string( ).
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t120) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
          t119 = t120.
          DATA(t121) = VALUE string( ).
          DATA(t122) = VALUE abap_bool( ).
          DATA(t123) = CAST zlnt_runtime_opti_4ba3bdccd169( t119 ).
          IF t123 IS BOUND.
            IF t123->has = abap_true.
              t122 = xsdbool( strlen( t123->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t122 = abap_true.
            DATA t124 TYPE string.
            DATA(t125) = CAST zlnt_runtime_opti_4ba3bdccd169( t119 ).
            t124 = t125->value.
            t121 = t124.
          ELSE.
            DATA(t126) = ||.
            t121 = t126.
          ENDIF.
          t118 = t121.
          DATA t127 TYPE string.
          DATA t128 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t129) = CAST zcl_lnt_abstract_token( t25 ).
          t128 = t129.
          DATA t130 TYPE string.
          DATA(t131) = CAST zcl_lnt_abstract_token( t128 ).
          t130 = t131->str.
          t127 = t130.
          DATA(t132) = strlen( t118 ).
          t117 = |{ t118 }{ t127 }|.
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t117.
          t115 = t133.
        ELSE.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          t115 = t134.
        ENDIF.
        t46 = t115.
        DATA t135 TYPE abap_bool.
        DATA t136 TYPE abap_bool.
        DATA t137 TYPE string.
        DATA t138 TYPE REF TO zcl_lnt_current_scope.
        DATA(t139) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t138 = t139->scope.
        t137 = t138->get_type( ).
        DATA(t140) = |class_definition|.
        t136 = xsdbool( t137 = t140 ).
        t135 = t136.
        IF t136 = abap_false.
          DATA t141 TYPE abap_bool.
          DATA t142 TYPE string.
          DATA t143 TYPE REF TO zcl_lnt_current_scope.
          DATA(t144) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t143 = t144->scope.
          t142 = t143->get_type( ).
          DATA(t145) = |interface|.
          t141 = xsdbool( t142 = t145 ).
          t135 = t141.
        ENDIF.
        IF t135 = abap_true.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          DATA(t147) = abap_true.
          IF t147 = abap_true.
            DATA t148 TYPE string.
            DATA t149 TYPE string.
            DATA t150 TYPE string.
            DATA t151 TYPE REF TO zcl_lnt_current_scope.
            DATA(t152) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t151 = t152->scope.
            t150 = t151->get_name( ).
            DATA(t153) = |=>|.
            DATA(t154) = strlen( t150 ).
            t149 = |{ t150 }{ t153 }|.
            DATA t155 TYPE string.
            DATA(t156) = CAST zlnt_runtime_opti_4ba3bdccd169( t46 ).
            t155 = t156->value.
            DATA(t157) = strlen( t149 ).
            t148 = |{ t149 }{ t155 }|.
            DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t158->has = abap_true.
            t158->value = t148.
            t146 = t158.
          ELSE.
            DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t159.
            t146 = t159.
          ENDIF.
          t46 = t146.
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t160) = VALUE abap_bool( ).
      DATA(t161) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
      IF t161 IS BOUND.
        IF t161->has = abap_true.
          t160 = xsdbool( strlen( t161->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t160 = abap_true.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t162.
        DATA(t163) = abap_true.
        IF t163 = abap_true.
          DATA(t164) = VALUE string( ).
          DATA t165 TYPE string.
          DATA(t166) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
          t165 = t166->value.
          DATA(t167) = VALUE string( ).
          DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t169) = CAST zlnt_runtime_opti_4ba3bdccd169( t46 ).
          t168 = t169.
          DATA(t170) = VALUE string( ).
          DATA(t171) = VALUE abap_bool( ).
          DATA(t172) = CAST zlnt_runtime_opti_4ba3bdccd169( t168 ).
          IF t172 IS INITIAL.
            t171 = abap_true.
          ELSEIF t172->has = abap_false.
            t171 = abap_true.
          ENDIF.
          IF t171 = abap_true.
            DATA(t173) = |undefined|.
            t170 = t173.
          ELSE.
            DATA t174 TYPE string.
            DATA(t175) = CAST zlnt_runtime_opti_4ba3bdccd169( t168 ).
            t174 = t175->value.
            t170 = t174.
          ENDIF.
          t167 = t170.
          DATA(t176) = strlen( t165 ).
          t164 = |{ t165 }{ t167 }|.
          DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t177->has = abap_true.
          t177->value = t164.
          t162 = t177.
        ELSE.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          t162 = t178.
        ENDIF.
        t46 = t162.
      ENDIF.
    ENDIF.
    DATA t179 TYPE REF TO zcl_lnt_abstract_type.
    DATA t180 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t181) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t182) = CAST zlnt_runtime_opti_4ba3bdccd169( t46 ).
    t180 = me->parse_type( i_node = t181 i_qualified_name = t182 ).
    t179 = t180.
    DATA t183 TYPE abap_bool.
    DATA(t184) = CAST zcl_lnt_abstract_type( t179 ).
    t183 = xsdbool( t184 IS BOUND ).
    IF t183 = abap_true.
      DATA t185 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t185.
      DATA(t186) = abap_true.
      IF t186 = abap_true.
        DATA t187 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t188) = CAST zcl_lnt_abstract_token( t25 ).
        DATA t189 TYPE string.
        DATA(t190) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t189 = t190->filename.
        DATA t191 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t192) = CAST zcl_lnt_abstract_type( t179 ).
        t191 = t192.
        DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t193.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        t187 = NEW zcl_lnt_typed_identifier( i_token = t188 i_filename = t189 i_type_9913 = t191 i_meta = t193 i_value = t194 ).
        t185 = t187.
      ELSE.
        DATA t195 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t195.
        t185 = t195.
      ENDIF.
      result = t185.
      RETURN.
    ENDIF.
    DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t196.
    result = t196.

  ENDMETHOD.
  METHOD parse_table.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t9.
    DATA t10 TYPE abap_bool.
    DATA(t11) = CAST zcl_lnt_expression_node( t5 ).
    t10 = xsdbool( t11 IS BOUND ).
    IF t10 = abap_true.
      DATA(t12) = CAST zcl_lnt_expression_node( t5 ).
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f ).
      t13 = t14->find_first_expression( i_type_9913 = t15 ).
      t9 = t13.
    ENDIF.
    t4 = t9.
    t3 = t4.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t23) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396 ).
    t21 = t22->find_first_expression( i_type_9913 = t23 ).
    t20 = t21.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = CAST zcl_lnt_expression_node( t20 ).
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t24 = t27.
    ELSE.
      DATA t28 TYPE string.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      DATA(t30) = CAST zcl_lnt_expression_node( t20 ).
      t29 = t30.
      t28 = t29->concat_tokens( ).
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t28.
      t24 = t31.
    ENDIF.
    t19 = t24.
    t18 = t19.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t18 ).
    IF t34 IS INITIAL.
      t33 = abap_true.
    ELSEIF t34->has = abap_false.
      t33 = abap_true.
    ENDIF.
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t32 = t35.
    ELSE.
      DATA t36 TYPE string.
      DATA t37 TYPE string.
      DATA(t38) = CAST zlnt_runtime_opti_4ba3bdccd169( t18 ).
      t37 = t38->value.
      DATA(t39) = strlen( t37 ).
      t36 = t37.
      IF t36 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t36 TO UPPER CASE.
      ELSE.
        t36 = zlnt_runtime_uppe_91169605024d=>full( t36 ).
      ENDIF.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t36.
      t32 = t40.
    ENDIF.
    t17 = t32.
    t16 = t17.
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t43) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    t44 = t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = CAST zlnt_runtime_opti_4ba3bdccd169( t42 ).
    IF t47 IS INITIAL.
      t46 = abap_true.
    ELSEIF t47->has = abap_false.
      t46 = abap_true.
    ENDIF.
    t41 = t46.
    IF t41 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t48.
      result = t48.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t50.
    t49 = t50.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = VALUE abap_bool( ).
    DATA t55 TYPE string.
    DATA(t56) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
    t55 = t56->value.
    DATA(t57) = |TYPE STANDARD TABLE |.
    DATA(t58) = strlen( t55 ).
    DATA t59 TYPE i.
    DATA(t60) = VALUE i( ).
    DATA(t61) = VALUE string( ).
    t59 = strlen( t57 ).
    IF t59 = 0.
      t54 = abap_true.
    ELSEIF t59 <= t58.
      t60 = 0.
      t61 = t55+t60(t59).
      IF t61 = t57.
        t54 = abap_true.
      ENDIF.
    ENDIF.
    t53 = t54.
    IF t54 = abap_false.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE string.
      DATA(t64) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
      t63 = t64->value.
      DATA(t65) = |TYPE TABLE |.
      DATA(t66) = strlen( t63 ).
      DATA t67 TYPE i.
      DATA(t68) = VALUE i( ).
      DATA(t69) = VALUE string( ).
      t67 = strlen( t65 ).
      IF t67 = 0.
        t62 = abap_true.
      ELSEIF t67 <= t66.
        t68 = 0.
        t69 = t63+t68(t67).
        IF t69 = t65.
          t62 = abap_true.
        ENDIF.
      ENDIF.
      t53 = t62.
    ENDIF.
    t52 = t53.
    IF t53 = abap_false.
      DATA(t70) = VALUE abap_bool( ).
      DATA t71 TYPE string.
      DATA(t72) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
      t71 = t72->value.
      DATA(t73) = |LIKE TABLE |.
      DATA(t74) = strlen( t71 ).
      DATA t75 TYPE i.
      DATA(t76) = VALUE i( ).
      DATA(t77) = VALUE string( ).
      t75 = strlen( t73 ).
      IF t75 = 0.
        t70 = abap_true.
      ELSEIF t75 <= t74.
        t76 = 0.
        t77 = t71+t76(t75).
        IF t77 = t73.
          t70 = abap_true.
        ENDIF.
      ENDIF.
      t52 = t70.
    ENDIF.
    t51 = t52.
    IF t52 = abap_false.
      DATA(t78) = VALUE abap_bool( ).
      DATA t79 TYPE string.
      DATA(t80) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
      t79 = t80->value.
      DATA(t81) = |LIKE STANDARD TABLE |.
      DATA(t82) = strlen( t79 ).
      DATA t83 TYPE i.
      DATA(t84) = VALUE i( ).
      DATA(t85) = VALUE string( ).
      t83 = strlen( t81 ).
      IF t83 = 0.
        t78 = abap_true.
      ELSEIF t83 <= t82.
        t84 = 0.
        t85 = t79+t84(t83).
        IF t85 = t81.
          t78 = abap_true.
        ENDIF.
      ENDIF.
      t51 = t78.
    ENDIF.
    IF t51 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      DATA(t87) = abap_true.
      IF t87 = abap_true.
        DATA(t88) = |STANDARD|.
        DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t89->has = abap_true.
        t89->value = t88.
        t86 = t89.
      ELSE.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        t86 = t90.
      ENDIF.
      t49 = t86.
    ELSE.
      DATA(t91) = VALUE abap_bool( ).
      DATA(t92) = VALUE abap_bool( ).
      DATA t93 TYPE string.
      DATA(t94) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
      t93 = t94->value.
      DATA(t95) = |TYPE SORTED TABLE |.
      DATA(t96) = strlen( t93 ).
      DATA t97 TYPE i.
      DATA(t98) = VALUE i( ).
      DATA(t99) = VALUE string( ).
      t97 = strlen( t95 ).
      IF t97 = 0.
        t92 = abap_true.
      ELSEIF t97 <= t96.
        t98 = 0.
        t99 = t93+t98(t97).
        IF t99 = t95.
          t92 = abap_true.
        ENDIF.
      ENDIF.
      t91 = t92.
      IF t92 = abap_false.
        DATA(t100) = VALUE abap_bool( ).
        DATA t101 TYPE string.
        DATA(t102) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
        t101 = t102->value.
        DATA(t103) = |LIKE SORTED TABLE |.
        DATA(t104) = strlen( t101 ).
        DATA t105 TYPE i.
        DATA(t106) = VALUE i( ).
        DATA(t107) = VALUE string( ).
        t105 = strlen( t103 ).
        IF t105 = 0.
          t100 = abap_true.
        ELSEIF t105 <= t104.
          t106 = 0.
          t107 = t101+t106(t105).
          IF t107 = t103.
            t100 = abap_true.
          ENDIF.
        ENDIF.
        t91 = t100.
      ENDIF.
      IF t91 = abap_true.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA(t109) = abap_true.
        IF t109 = abap_true.
          DATA(t110) = |SORTED|.
          DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t111->has = abap_true.
          t111->value = t110.
          t108 = t111.
        ELSE.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          t108 = t112.
        ENDIF.
        t49 = t108.
      ELSE.
        DATA(t113) = VALUE abap_bool( ).
        DATA(t114) = VALUE abap_bool( ).
        DATA t115 TYPE string.
        DATA(t116) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
        t115 = t116->value.
        DATA(t117) = |TYPE HASHED TABLE |.
        DATA(t118) = strlen( t115 ).
        DATA t119 TYPE i.
        DATA(t120) = VALUE i( ).
        DATA(t121) = VALUE string( ).
        t119 = strlen( t117 ).
        IF t119 = 0.
          t114 = abap_true.
        ELSEIF t119 <= t118.
          t120 = 0.
          t121 = t115+t120(t119).
          IF t121 = t117.
            t114 = abap_true.
          ENDIF.
        ENDIF.
        t113 = t114.
        IF t114 = abap_false.
          DATA(t122) = VALUE abap_bool( ).
          DATA t123 TYPE string.
          DATA(t124) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
          t123 = t124->value.
          DATA(t125) = |LIKE HASHED TABLE |.
          DATA(t126) = strlen( t123 ).
          DATA t127 TYPE i.
          DATA(t128) = VALUE i( ).
          DATA(t129) = VALUE string( ).
          t127 = strlen( t125 ).
          IF t127 = 0.
            t122 = abap_true.
          ELSEIF t127 <= t126.
            t128 = 0.
            t129 = t123+t128(t127).
            IF t129 = t125.
              t122 = abap_true.
            ENDIF.
          ENDIF.
          t113 = t122.
        ENDIF.
        IF t113 = abap_true.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA(t131) = abap_true.
          IF t131 = abap_true.
            DATA(t132) = |HASHED|.
            DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t133->has = abap_true.
            t133->value = t132.
            t130 = t133.
          ELSE.
            DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t134.
            t130 = t134.
          ENDIF.
          t49 = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t137) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t138) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d336_e416d8dcf33c ).
    t136 = t137->find_all_expressions( i_type_9913 = t138 ).
    t135 = t136.
    DATA t139 TYPE REF TO zcl_lnt_expression_node.
    DATA t140 TYPE REF TO zcl_lnt_expression_node.
    DATA(t141) = CAST zlnt_runtime_arra_c22708faf2e3( t135 ).
    DATA t142 TYPE REF TO object.
    CLEAR t142.
    READ TABLE t141->items INDEX 1 INTO t142.
    t140 ?= t142.
    t139 = t140.
    DATA(t143) = VALUE abap_bool( ).
    DATA(t144) = VALUE abap_bool( ).
    DATA(t145) = VALUE abap_bool( ).
    DATA t146 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t146.
    DATA t147 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t147.
    DATA t148 TYPE REF TO zcl_lnt_expression_node.
    DATA(t149) = CAST zcl_lnt_expression_node( t139 ).
    t148 = t149.
    DATA t150 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t150.
    DATA(t151) = VALUE abap_bool( ).
    DATA(t152) = CAST zcl_lnt_expression_node( t148 ).
    IF t152 IS INITIAL.
      t151 = abap_true.
    ENDIF.
    IF t151 = abap_true.
      DATA t153 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t153.
      t150 = t153.
    ELSE.
      DATA t154 TYPE REF TO zcl_lnt_expression_node.
      DATA(t155) = CAST zcl_lnt_expression_node( t148 ).
      DATA(t156) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
      t154 = t155->find_direct_expression( i_type_9913 = t156 ).
      t150 = t154.
    ENDIF.
    t147 = t150.
    t146 = t147.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    t157 = t158.
    DATA(t159) = VALUE abap_bool( ).
    DATA(t160) = VALUE abap_bool( ).
    DATA(t161) = CAST zcl_lnt_expression_node( t146 ).
    IF t161 IS INITIAL.
      t160 = abap_true.
    ENDIF.
    t159 = xsdbool( t160 = abap_false ).
    t145 = t159.
    t144 = t145.
    IF t145 = abap_true.
      DATA(t162) = VALUE abap_bool( ).
      DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t163.
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t164.
      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t165.
      DATA t166 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t166.
      DATA t167 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t167.
      DATA t168 TYPE REF TO zcl_lnt_expression_node.
      DATA(t169) = CAST zcl_lnt_expression_node( t139 ).
      t168 = t169.
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t170.
      DATA(t171) = VALUE abap_bool( ).
      DATA(t172) = CAST zcl_lnt_expression_node( t168 ).
      IF t172 IS INITIAL.
        t171 = abap_true.
      ENDIF.
      IF t171 = abap_true.
        DATA t173 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t173.
        t170 = t173.
      ELSE.
        DATA t174 TYPE REF TO zcl_lnt_expression_node.
        DATA(t175) = CAST zcl_lnt_expression_node( t168 ).
        DATA(t176) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
        t174 = t175->find_direct_expression( i_type_9913 = t176 ).
        t170 = t174.
      ENDIF.
      t167 = t170.
      t166 = t167.
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t177.
      DATA(t178) = VALUE abap_bool( ).
      DATA(t179) = CAST zcl_lnt_expression_node( t166 ).
      IF t179 IS INITIAL.
        t178 = abap_true.
      ENDIF.
      IF t178 = abap_true.
        DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t180.
        t177 = t180.
      ELSE.
        DATA t181 TYPE string.
        DATA t182 TYPE REF TO zcl_lnt_expression_node.
        DATA(t183) = CAST zcl_lnt_expression_node( t166 ).
        t182 = t183.
        t181 = t182->concat_tokens( ).
        DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t184->has = abap_true.
        t184->value = t181.
        t177 = t184.
      ENDIF.
      t165 = t177.
      t164 = t165.
      DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t185.
      DATA(t186) = VALUE abap_bool( ).
      DATA(t187) = CAST zlnt_runtime_opti_4ba3bdccd169( t164 ).
      IF t187 IS INITIAL.
        t186 = abap_true.
      ELSEIF t187->has = abap_false.
        t186 = abap_true.
      ENDIF.
      IF t186 = abap_true.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        t185 = t188.
      ELSE.
        DATA t189 TYPE string.
        DATA t190 TYPE string.
        DATA(t191) = CAST zlnt_runtime_opti_4ba3bdccd169( t164 ).
        t190 = t191->value.
        DATA(t192) = strlen( t190 ).
        t189 = t190.
        IF t189 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t189 TO UPPER CASE.
        ELSE.
          t189 = zlnt_runtime_uppe_91169605024d=>full( t189 ).
        ENDIF.
        DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t193->has = abap_true.
        t193->value = t189.
        t185 = t193.
      ENDIF.
      t163 = t185.
      DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t194.
      DATA(t195) = abap_true.
      IF t195 = abap_true.
        DATA(t196) = |PRIMARY_KEY|.
        DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t197->has = abap_true.
        t197->value = t196.
        t194 = t197.
      ELSE.
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t198.
        t194 = t198.
      ENDIF.
      DATA(t199) = VALUE abap_bool( ).
      DATA(t200) = VALUE abap_bool( ).
      IF t163 IS BOUND.
        t199 = t163->has.
      ENDIF.
      IF t194 IS BOUND.
        t200 = t194->has.
      ENDIF.
      IF t199 = t200.
        IF t199 = abap_false.
          t162 = abap_true.
        ELSEIF t163->value = t194->value.
          t162 = abap_true.
        ENDIF.
      ENDIF.
      IF t162 = abap_true.
        t162 = abap_false.
      ELSE.
        t162 = abap_true.
      ENDIF.
      t144 = t162.
    ENDIF.
    t143 = t144.
    DATA t201 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t201.
    DATA t202 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t202.
    DATA(t203) = |primary_key|.
    DATA(t204) = VALUE string( ).
    DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t206) = CAST zlnt_runtime_opti_4ba3bdccd169( t49 ).
    t205 = t206.
    DATA(t207) = VALUE string( ).
    DATA(t208) = VALUE abap_bool( ).
    DATA(t209) = CAST zlnt_runtime_opti_4ba3bdccd169( t205 ).
    IF t209 IS BOUND.
      IF t209->has = abap_true.
        t208 = xsdbool( strlen( t209->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t208 = abap_true.
      DATA t210 TYPE string.
      DATA(t211) = CAST zlnt_runtime_opti_4ba3bdccd169( t205 ).
      t210 = t211->value.
      t207 = t210.
    ELSE.
      DATA(t212) = |STANDARD|.
      t207 = t212.
    ENDIF.
    t204 = t207.
    DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t213.
    DATA(t214) = VALUE abap_bool( ).
    DATA(t215) = t143.
    IF t215 = abap_true.
      DATA(t216) = abap_false.
      t214 = t216.
    ELSE.
      DATA(t217) = VALUE abap_bool( ).
      DATA t218 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t218.
      DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t219.
      DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t220.
      DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t221.
      DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t222.
      DATA t223 TYPE REF TO zcl_lnt_expression_node.
      DATA(t224) = CAST zcl_lnt_expression_node( t139 ).
      t223 = t224.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t225.
      DATA(t226) = VALUE abap_bool( ).
      DATA(t227) = CAST zcl_lnt_expression_node( t223 ).
      IF t227 IS INITIAL.
        t226 = abap_true.
      ENDIF.
      IF t226 = abap_true.
        DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t228.
        t225 = t228.
      ELSE.
        DATA t229 TYPE string.
        DATA(t230) = CAST zcl_lnt_expression_node( t223 ).
        t229 = t230->concat_tokens( ).
        DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t231->has = abap_true.
        t231->value = t229.
        t225 = t231.
      ENDIF.
      t222 = t225.
      t221 = t222.
      DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t232.
      DATA(t233) = VALUE abap_bool( ).
      DATA(t234) = CAST zlnt_runtime_opti_4ba3bdccd169( t221 ).
      IF t234 IS INITIAL.
        t233 = abap_true.
      ELSEIF t234->has = abap_false.
        t233 = abap_true.
      ENDIF.
      IF t233 = abap_true.
        DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t235.
        t232 = t235.
      ELSE.
        DATA t236 TYPE string.
        DATA t237 TYPE string.
        DATA(t238) = CAST zlnt_runtime_opti_4ba3bdccd169( t221 ).
        t237 = t238->value.
        DATA(t239) = strlen( t237 ).
        t236 = t237.
        IF t236 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t236 TO UPPER CASE.
        ELSE.
          t236 = zlnt_runtime_uppe_91169605024d=>full( t236 ).
        ENDIF.
        DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t240->has = abap_true.
        t240->value = t236.
        t232 = t240.
      ENDIF.
      t220 = t232.
      t219 = t220.
      DATA t241 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t241.
      DATA(t242) = VALUE abap_bool( ).
      DATA(t243) = CAST zlnt_runtime_opti_4ba3bdccd169( t219 ).
      IF t243 IS INITIAL.
        t242 = abap_true.
      ELSEIF t243->has = abap_false.
        t242 = abap_true.
      ENDIF.
      IF t242 = abap_true.
        DATA t244 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t244.
        t241 = t244.
      ELSE.
        DATA(t245) = VALUE abap_bool( ).
        DATA(t246) = VALUE i( ).
        DATA t247 TYPE string.
        DATA(t248) = CAST zlnt_runtime_opti_4ba3bdccd169( t219 ).
        t247 = t248->value.
        DATA(t249) = |WITH UNIQUE |.
        DATA(t250) = strlen( t247 ).
        IF t249 IS INITIAL.
          t246 = 0.
        ELSE.
          FIND t249 IN t247 MATCH OFFSET t246.
          IF sy-subrc <> 0.
            t246 = -1.
          ENDIF.
        ENDIF.
        DATA(t251) = 0.
        t245 = xsdbool( t246 >= t251 ).
        DATA(t252) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t252->has = abap_true.
        t252->value = t245.
        t241 = t252.
      ENDIF.
      t218 = t241.
      DATA t253 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t253.
      DATA(t254) = abap_true.
      IF t254 = abap_true.
        DATA(t255) = abap_true.
        DATA(t256) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t256->has = abap_true.
        t256->value = t255.
        t253 = t256.
      ELSE.
        DATA t257 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t257.
        t253 = t257.
      ENDIF.
      DATA(t258) = VALUE abap_bool( ).
      DATA(t259) = VALUE abap_bool( ).
      IF t218 IS BOUND.
        t258 = t218->has.
      ENDIF.
      IF t253 IS BOUND.
        t259 = t253->has.
      ENDIF.
      IF t258 = t259.
        IF t258 = abap_false.
          t217 = abap_true.
        ELSEIF t218->value = t253->value.
          t217 = abap_true.
        ENDIF.
      ENDIF.
      t214 = t217.
    ENDIF.
    t202 = NEW zcl_lnt_itable_key( i_name = t203 i_type_9913 = t204 i_key_fields = t213 i_is_unique = t214 ).
    t201 = t202.
    DATA t260 TYPE i.
    DATA(t261) = 1.
    t260 = t261.
    DATA t262 TYPE abap_bool.
    DATA(t263) = t143.
    DATA(t264) = abap_false.
    t262 = xsdbool( t263 = t264 ).
    IF t262 = abap_true.
      DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t265.
      DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t266.
      DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t267.
      DATA t268 TYPE REF TO zcl_lnt_expression_node.
      DATA(t269) = CAST zcl_lnt_expression_node( t139 ).
      t268 = t269.
      DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t270.
      DATA(t271) = VALUE abap_bool( ).
      DATA(t272) = CAST zcl_lnt_expression_node( t268 ).
      IF t272 IS INITIAL.
        t271 = abap_true.
      ENDIF.
      IF t271 = abap_true.
        DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t273.
        t270 = t273.
      ELSE.
        DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t275) = CAST zcl_lnt_expression_node( t268 ).
        DATA(t276) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
        t274 = t275->find_direct_expressions( i_type_9913 = t276 ).
        t270 = t274.
      ENDIF.
      t267 = t270.
      t266 = t267.
      DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t277.
      DATA t278 TYPE abap_bool.
      DATA(t279) = CAST zlnt_runtime_arra_c22708faf2e3( t266 ).
      t278 = xsdbool( t279 IS BOUND ).
      IF t278 = abap_true.
        DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t281) = CAST zlnt_runtime_arra_c22708faf2e3( t266 ).
        t280 = t281.
        t277 = t280.
      ELSE.
        DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t282.
        t277 = t282.
      ENDIF.
      t265 = t277.
      DATA t283 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t283.
      DATA t284 TYPE REF TO object.
      CLEAR t284.
      LOOP AT t265->items INTO t284.
        t283 ?= t284.
        DATA t285 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t286) = CAST zcl_lnt_itable_key( t201 ).
        t285 = t286->key_fields.
        DATA t287 TYPE string.
        DATA t288 TYPE string.
        DATA(t289) = CAST zcl_lnt_expression_node( t283 ).
        t288 = t289->concat_tokens( ).
        DATA(t290) = strlen( t288 ).
        t287 = t288.
        IF t287 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t287 TO UPPER CASE.
        ELSE.
          t287 = zlnt_runtime_uppe_91169605024d=>full( t287 ).
        ENDIF.
        APPEND t287 TO t285->items.
      ENDLOOP.
    ELSE.
      DATA(t291) = 0.
      t260 = t291.
    ENDIF.
    DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t293.
    t292 = t293.
    DATA t294 TYPE i.
    DATA(t295) = t260.
    t294 = t295.
    DO.
      DATA t296 TYPE abap_bool.
      DATA(t297) = t294.
      DATA t298 TYPE i.
      DATA(t299) = CAST zlnt_runtime_arra_c22708faf2e3( t135 ).
      t298 = lines( t299->items ).
      t296 = xsdbool( t297 < t298 ).
      IF t296 = abap_false.
        EXIT.
      ENDIF.
      DATA t300 TYPE REF TO zcl_lnt_expression_node.
      DATA t301 TYPE REF TO zcl_lnt_expression_node.
      DATA(t302) = CAST zlnt_runtime_arra_c22708faf2e3( t135 ).
      DATA(t303) = t294.
      t303 = t303 + 1.
      DATA t304 TYPE REF TO object.
      CLEAR t304.
      READ TABLE t302->items INDEX t303 INTO t304.
      t301 ?= t304.
      t300 = t301.
      DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t305.
      DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t306.
      DATA t307 TYPE REF TO zcl_lnt_expression_node.
      DATA t308 TYPE REF TO zcl_lnt_expression_node.
      DATA(t309) = CAST zcl_lnt_expression_node( t300 ).
      DATA(t310) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
      t308 = t309->find_direct_expression( i_type_9913 = t310 ).
      t307 = t308.
      DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t311.
      DATA(t312) = VALUE abap_bool( ).
      DATA(t313) = CAST zcl_lnt_expression_node( t307 ).
      IF t313 IS INITIAL.
        t312 = abap_true.
      ENDIF.
      IF t312 = abap_true.
        DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t314.
        t311 = t314.
      ELSE.
        DATA t315 TYPE string.
        DATA t316 TYPE REF TO zcl_lnt_expression_node.
        DATA(t317) = CAST zcl_lnt_expression_node( t307 ).
        t316 = t317.
        t315 = t316->concat_tokens( ).
        DATA(t318) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t318->has = abap_true.
        t318->value = t315.
        t311 = t318.
      ENDIF.
      t306 = t311.
      t305 = t306.
      DATA(t319) = VALUE abap_bool( ).
      DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t321) = CAST zlnt_runtime_opti_4ba3bdccd169( t305 ).
      t320 = t321.
      DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t323.
      t322 = t323.
      DATA(t324) = VALUE abap_bool( ).
      DATA(t325) = CAST zlnt_runtime_opti_4ba3bdccd169( t320 ).
      IF t325 IS INITIAL.
        t324 = abap_true.
      ELSEIF t325->has = abap_false.
        t324 = abap_true.
      ENDIF.
      t319 = t324.
      IF t319 = abap_true.
        DATA t326 TYPE i.
        DATA(t327) = t294.
        DATA(t328) = 1.
        t326 = t327 + t328.
        t294 = t326.
        CONTINUE.
      ENDIF.
      DATA t329 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t329.
      DATA t330 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t330.
      DATA t331 TYPE string.
      DATA(t332) = CAST zlnt_runtime_opti_4ba3bdccd169( t305 ).
      t331 = t332->value.
      DATA(t333) = VALUE string( ).
      DATA t334 TYPE abap_bool.
      DATA t335 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t336) = CAST zcl_lnt_expression_node( t300 ).
      DATA(t337) = |SORTED|.
      t335 = t336->find_direct_token_by_text( i_text = t337 ).
      t334 = xsdbool( t335 IS BOUND ).
      IF t334 = abap_true.
        DATA(t338) = |SORTED|.
        t333 = t338.
      ELSE.
        DATA(t339) = |HASHED|.
        t333 = t339.
      ENDIF.
      DATA t340 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t340.
      DATA(t341) = VALUE abap_bool( ).
      DATA t342 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t342.
      DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t343.
      DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t344.
      DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t345.
      DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t346.
      DATA t347 TYPE REF TO zcl_lnt_expression_node.
      DATA(t348) = CAST zcl_lnt_expression_node( t300 ).
      t347 = t348.
      DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t349.
      DATA(t350) = VALUE abap_bool( ).
      DATA(t351) = CAST zcl_lnt_expression_node( t347 ).
      IF t351 IS INITIAL.
        t350 = abap_true.
      ENDIF.
      IF t350 = abap_true.
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t352.
        t349 = t352.
      ELSE.
        DATA t353 TYPE string.
        DATA(t354) = CAST zcl_lnt_expression_node( t347 ).
        t353 = t354->concat_tokens( ).
        DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t355->has = abap_true.
        t355->value = t353.
        t349 = t355.
      ENDIF.
      t346 = t349.
      t345 = t346.
      DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t356.
      DATA(t357) = VALUE abap_bool( ).
      DATA(t358) = CAST zlnt_runtime_opti_4ba3bdccd169( t345 ).
      IF t358 IS INITIAL.
        t357 = abap_true.
      ELSEIF t358->has = abap_false.
        t357 = abap_true.
      ENDIF.
      IF t357 = abap_true.
        DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t359.
        t356 = t359.
      ELSE.
        DATA t360 TYPE string.
        DATA t361 TYPE string.
        DATA(t362) = CAST zlnt_runtime_opti_4ba3bdccd169( t345 ).
        t361 = t362->value.
        DATA(t363) = strlen( t361 ).
        t360 = t361.
        IF t360 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t360 TO UPPER CASE.
        ELSE.
          t360 = zlnt_runtime_uppe_91169605024d=>full( t360 ).
        ENDIF.
        DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t364->has = abap_true.
        t364->value = t360.
        t356 = t364.
      ENDIF.
      t344 = t356.
      t343 = t344.
      DATA t365 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t365.
      DATA(t366) = VALUE abap_bool( ).
      DATA(t367) = CAST zlnt_runtime_opti_4ba3bdccd169( t343 ).
      IF t367 IS INITIAL.
        t366 = abap_true.
      ELSEIF t367->has = abap_false.
        t366 = abap_true.
      ENDIF.
      IF t366 = abap_true.
        DATA t368 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t368.
        t365 = t368.
      ELSE.
        DATA(t369) = VALUE abap_bool( ).
        DATA(t370) = VALUE i( ).
        DATA t371 TYPE string.
        DATA(t372) = CAST zlnt_runtime_opti_4ba3bdccd169( t343 ).
        t371 = t372->value.
        DATA(t373) = |WITH UNIQUE |.
        DATA(t374) = strlen( t371 ).
        IF t373 IS INITIAL.
          t370 = 0.
        ELSE.
          FIND t373 IN t371 MATCH OFFSET t370.
          IF sy-subrc <> 0.
            t370 = -1.
          ENDIF.
        ENDIF.
        DATA(t375) = 0.
        t369 = xsdbool( t370 >= t375 ).
        DATA(t376) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t376->has = abap_true.
        t376->value = t369.
        t365 = t376.
      ENDIF.
      t342 = t365.
      DATA t377 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t377.
      DATA(t378) = abap_true.
      IF t378 = abap_true.
        DATA(t379) = abap_true.
        DATA(t380) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t380->has = abap_true.
        t380->value = t379.
        t377 = t380.
      ELSE.
        DATA t381 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t381.
        t377 = t381.
      ENDIF.
      DATA(t382) = VALUE abap_bool( ).
      DATA(t383) = VALUE abap_bool( ).
      IF t342 IS BOUND.
        t382 = t342->has.
      ENDIF.
      IF t377 IS BOUND.
        t383 = t377->has.
      ENDIF.
      IF t382 = t383.
        IF t382 = abap_false.
          t341 = abap_true.
        ELSEIF t342->value = t377->value.
          t341 = abap_true.
        ENDIF.
      ENDIF.
      t330 = NEW zcl_lnt_itable_key( i_name = t331 i_type_9913 = t333 i_key_fields = t340 i_is_unique = t341 ).
      t329 = t330.
      DATA t384 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t384.
      DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t385.
      DATA t386 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t386.
      DATA t387 TYPE REF TO zcl_lnt_expression_node.
      DATA(t388) = CAST zcl_lnt_expression_node( t300 ).
      t387 = t388.
      DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t389.
      DATA(t390) = VALUE abap_bool( ).
      DATA(t391) = CAST zcl_lnt_expression_node( t387 ).
      IF t391 IS INITIAL.
        t390 = abap_true.
      ENDIF.
      IF t390 = abap_true.
        DATA t392 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t392.
        t389 = t392.
      ELSE.
        DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t394) = CAST zcl_lnt_expression_node( t387 ).
        DATA(t395) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
        t393 = t394->find_direct_expressions( i_type_9913 = t395 ).
        t389 = t393.
      ENDIF.
      t386 = t389.
      t385 = t386.
      DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t396.
      DATA t397 TYPE abap_bool.
      DATA(t398) = CAST zlnt_runtime_arra_c22708faf2e3( t385 ).
      t397 = xsdbool( t398 IS BOUND ).
      IF t397 = abap_true.
        DATA t399 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t400) = CAST zlnt_runtime_arra_c22708faf2e3( t385 ).
        t399 = t400.
        t396 = t399.
      ELSE.
        DATA t401 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t401.
        t396 = t401.
      ENDIF.
      t384 = t396.
      DATA t402 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t402.
      DATA t403 TYPE REF TO object.
      CLEAR t403.
      LOOP AT t384->items INTO t403.
        t402 ?= t403.
        DATA t404 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t405) = CAST zcl_lnt_itable_key( t329 ).
        t404 = t405->key_fields.
        DATA t406 TYPE string.
        DATA t407 TYPE string.
        DATA(t408) = CAST zcl_lnt_expression_node( t402 ).
        t407 = t408->concat_tokens( ).
        DATA(t409) = strlen( t407 ).
        t406 = t407.
        IF t406 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t406 TO UPPER CASE.
        ELSE.
          t406 = zlnt_runtime_uppe_91169605024d=>full( t406 ).
        ENDIF.
        APPEND t406 TO t404->items.
      ENDLOOP.
      DATA(t410) = CAST zlnt_runtime_arra_c22708faf2e3( t292 ).
      DATA(t411) = CAST zcl_lnt_itable_key( t329 ).
      APPEND t411 TO t410->items.
      DATA t412 TYPE i.
      DATA(t413) = t294.
      DATA(t414) = 1.
      t412 = t413 + t414.
      t294 = t412.
    ENDDO.
    DATA t415 TYPE string.
    DATA(t416) = |USER|.
    t415 = t416.
    DATA(t417) = VALUE abap_bool( ).
    DATA(t418) = VALUE i( ).
    DATA t419 TYPE string.
    DATA(t420) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
    t419 = t420->value.
    DATA(t421) = | EMPTY KEY|.
    DATA(t422) = strlen( t419 ).
    IF t421 IS INITIAL.
      t418 = 0.
    ELSE.
      FIND t421 IN t419 MATCH OFFSET t418.
      IF sy-subrc <> 0.
        t418 = -1.
      ENDIF.
    ENDIF.
    DATA(t423) = 0.
    t417 = xsdbool( t418 >= t423 ).
    IF t417 = abap_true.
      DATA(t424) = |EMPTY|.
      t415 = t424.
    ELSE.
      DATA(t425) = VALUE abap_bool( ).
      DATA(t426) = VALUE i( ).
      DATA t427 TYPE string.
      DATA(t428) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
      t427 = t428->value.
      DATA(t429) = | DEFAULT KEY|.
      DATA(t430) = strlen( t427 ).
      IF t429 IS INITIAL.
        t426 = 0.
      ELSE.
        FIND t429 IN t427 MATCH OFFSET t426.
        IF sy-subrc <> 0.
          t426 = -1.
        ENDIF.
      ENDIF.
      DATA(t431) = 0.
      t425 = xsdbool( t426 >= t431 ).
      IF t425 = abap_true.
        DATA(t432) = |DEFAULT|.
        t415 = t432.
      ENDIF.
    ENDIF.
    DATA t433 TYPE REF TO zcl_lnt_itable_options.
    CLEAR t433.
    DATA t434 TYPE REF TO zcl_lnt_itable_options.
    CLEAR t434.
    DATA(t435) = VALUE abap_bool( ).
    DATA(t436) = VALUE i( ).
    DATA t437 TYPE string.
    DATA(t438) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
    t437 = t438->value.
    DATA(t439) = | WITH HEADER LINE|.
    DATA(t440) = strlen( t437 ).
    IF t439 IS INITIAL.
      t436 = 0.
    ELSE.
      FIND t439 IN t437 MATCH OFFSET t436.
      IF sy-subrc <> 0.
        t436 = -1.
      ENDIF.
    ENDIF.
    DATA(t441) = 0.
    t435 = xsdbool( t436 >= t441 ).
    DATA(t442) = t415.
    DATA t443 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t443.
    DATA(t444) = abap_true.
    IF t444 = abap_true.
      DATA(t445) = CAST zcl_lnt_itable_key( t201 ).
      t443 = t445.
    ELSE.
      DATA t446 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t446.
      t443 = t446.
    ENDIF.
    DATA t447 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t447.
    DATA(t448) = abap_true.
    IF t448 = abap_true.
      DATA(t449) = CAST zlnt_runtime_arra_c22708faf2e3( t292 ).
      t447 = t449.
    ELSE.
      DATA t450 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t450.
      t447 = t450.
    ENDIF.
    t434 = NEW zcl_lnt_itable_options( i_with_header = t435 i_key_type = t442 i_primary_key = t443 i_secondary = t447 ).
    t433 = t434.
    DATA t451 TYPE REF TO zcl_lnt_abstract_type.
    DATA t452 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t452.
    t451 = t452.
    DATA(t453) = VALUE abap_bool( ).
    DATA(t454) = VALUE abap_bool( ).
    DATA(t455) = VALUE abap_bool( ).
    DATA(t456) = VALUE abap_bool( ).
    DATA t457 TYPE string.
    DATA(t458) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
    t457 = t458->value.
    DATA(t459) = |TYPE TABLE OF REF TO |.
    DATA(t460) = strlen( t457 ).
    DATA t461 TYPE i.
    DATA(t462) = VALUE i( ).
    DATA(t463) = VALUE string( ).
    t461 = strlen( t459 ).
    IF t461 = 0.
      t456 = abap_true.
    ELSEIF t461 <= t460.
      t462 = 0.
      t463 = t457+t462(t461).
      IF t463 = t459.
        t456 = abap_true.
      ENDIF.
    ENDIF.
    t455 = t456.
    IF t456 = abap_false.
      DATA(t464) = VALUE abap_bool( ).
      DATA t465 TYPE string.
      DATA(t466) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
      t465 = t466->value.
      DATA(t467) = |TYPE STANDARD TABLE OF REF TO |.
      DATA(t468) = strlen( t465 ).
      DATA t469 TYPE i.
      DATA(t470) = VALUE i( ).
      DATA(t471) = VALUE string( ).
      t469 = strlen( t467 ).
      IF t469 = 0.
        t464 = abap_true.
      ELSEIF t469 <= t468.
        t470 = 0.
        t471 = t465+t470(t469).
        IF t471 = t467.
          t464 = abap_true.
        ENDIF.
      ENDIF.
      t455 = t464.
    ENDIF.
    t454 = t455.
    IF t455 = abap_false.
      DATA(t472) = VALUE abap_bool( ).
      DATA t473 TYPE string.
      DATA(t474) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
      t473 = t474->value.
      DATA(t475) = |TYPE SORTED TABLE OF REF TO |.
      DATA(t476) = strlen( t473 ).
      DATA t477 TYPE i.
      DATA(t478) = VALUE i( ).
      DATA(t479) = VALUE string( ).
      t477 = strlen( t475 ).
      IF t477 = 0.
        t472 = abap_true.
      ELSEIF t477 <= t476.
        t478 = 0.
        t479 = t473+t478(t477).
        IF t479 = t475.
          t472 = abap_true.
        ENDIF.
      ENDIF.
      t454 = t472.
    ENDIF.
    t453 = t454.
    IF t454 = abap_false.
      DATA(t480) = VALUE abap_bool( ).
      DATA t481 TYPE string.
      DATA(t482) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
      t481 = t482->value.
      DATA(t483) = |TYPE HASHED TABLE OF REF TO |.
      DATA(t484) = strlen( t481 ).
      DATA t485 TYPE i.
      DATA(t486) = VALUE i( ).
      DATA(t487) = VALUE string( ).
      t485 = strlen( t483 ).
      IF t485 = 0.
        t480 = abap_true.
      ELSEIF t485 <= t484.
        t486 = 0.
        t487 = t481+t486(t485).
        IF t487 = t483.
          t480 = abap_true.
        ENDIF.
      ENDIF.
      t453 = t480.
    ENDIF.
    IF t453 = abap_true.
      DATA t488 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t489) = CAST zcl_lnt_expression_node( t3 ).
      t488 = me->resolve_type_ref( i_chain_8ed6 = t489 ).
      t451 = t488.
      DATA t490 TYPE abap_bool.
      DATA(t491) = CAST zcl_lnt_abstract_type( t451 ).
      t490 = xsdbool( t491 IS BOUND ).
      IF t490 = abap_true.
        DATA t492 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t493 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t494) = CAST zcl_lnt_abstract_type( t451 ).
        t493 = t494.
        DATA(t495) = CAST zcl_lnt_itable_options( t433 ).
        DATA(t496) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
        DATA t497 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t497.
        t492 = NEW zcl_lnt_ty_table_type( i_row_type = t493 i_options = t495 i_qualified_name = t496 i_description = t497 ).
        result = t492.
        RETURN.
      ENDIF.
    ELSE.
      DATA(t498) = VALUE abap_bool( ).
      DATA(t499) = VALUE abap_bool( ).
      DATA(t500) = VALUE abap_bool( ).
      DATA(t501) = VALUE abap_bool( ).
      DATA t502 TYPE string.
      DATA(t503) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
      t502 = t503->value.
      DATA(t504) = |TYPE TABLE OF |.
      DATA(t505) = strlen( t502 ).
      DATA t506 TYPE i.
      DATA(t507) = VALUE i( ).
      DATA(t508) = VALUE string( ).
      t506 = strlen( t504 ).
      IF t506 = 0.
        t501 = abap_true.
      ELSEIF t506 <= t505.
        t507 = 0.
        t508 = t502+t507(t506).
        IF t508 = t504.
          t501 = abap_true.
        ENDIF.
      ENDIF.
      t500 = t501.
      IF t501 = abap_false.
        DATA(t509) = VALUE abap_bool( ).
        DATA t510 TYPE string.
        DATA(t511) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
        t510 = t511->value.
        DATA(t512) = |TYPE STANDARD TABLE OF |.
        DATA(t513) = strlen( t510 ).
        DATA t514 TYPE i.
        DATA(t515) = VALUE i( ).
        DATA(t516) = VALUE string( ).
        t514 = strlen( t512 ).
        IF t514 = 0.
          t509 = abap_true.
        ELSEIF t514 <= t513.
          t515 = 0.
          t516 = t510+t515(t514).
          IF t516 = t512.
            t509 = abap_true.
          ENDIF.
        ENDIF.
        t500 = t509.
      ENDIF.
      t499 = t500.
      IF t500 = abap_false.
        DATA(t517) = VALUE abap_bool( ).
        DATA t518 TYPE string.
        DATA(t519) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
        t518 = t519->value.
        DATA(t520) = |TYPE SORTED TABLE OF |.
        DATA(t521) = strlen( t518 ).
        DATA t522 TYPE i.
        DATA(t523) = VALUE i( ).
        DATA(t524) = VALUE string( ).
        t522 = strlen( t520 ).
        IF t522 = 0.
          t517 = abap_true.
        ELSEIF t522 <= t521.
          t523 = 0.
          t524 = t518+t523(t522).
          IF t524 = t520.
            t517 = abap_true.
          ENDIF.
        ENDIF.
        t499 = t517.
      ENDIF.
      t498 = t499.
      IF t499 = abap_false.
        DATA(t525) = VALUE abap_bool( ).
        DATA t526 TYPE string.
        DATA(t527) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
        t526 = t527->value.
        DATA(t528) = |TYPE HASHED TABLE OF |.
        DATA(t529) = strlen( t526 ).
        DATA t530 TYPE i.
        DATA(t531) = VALUE i( ).
        DATA(t532) = VALUE string( ).
        t530 = strlen( t528 ).
        IF t530 = 0.
          t525 = abap_true.
        ELSEIF t530 <= t529.
          t531 = 0.
          t532 = t526+t531(t530).
          IF t532 = t528.
            t525 = abap_true.
          ENDIF.
        ENDIF.
        t498 = t525.
      ENDIF.
      IF t498 = abap_true.
        DATA t533 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t534) = CAST zcl_lnt_expression_node( t3 ).
        DATA t535 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t535.
        DATA t536 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t536.
        DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t537.
        t533 = me->resolve_type_name( i_type_name = t534 i_length = t535 i_decimals_2eed = t536 i_qualified_name = t537 ).
        t451 = t533.
        DATA t538 TYPE abap_bool.
        DATA(t539) = CAST zcl_lnt_abstract_type( t451 ).
        t538 = xsdbool( t539 IS BOUND ).
        IF t538 = abap_true.
          DATA t540 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t541 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t542) = CAST zcl_lnt_abstract_type( t451 ).
          t541 = t542.
          DATA(t543) = CAST zcl_lnt_itable_options( t433 ).
          DATA(t544) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
          DATA t545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t545.
          t540 = NEW zcl_lnt_ty_table_type( i_row_type = t541 i_options = t543 i_qualified_name = t544 i_description = t545 ).
          result = t540.
          RETURN.
        ENDIF.
      ELSE.
        DATA(t546) = VALUE abap_bool( ).
        DATA(t547) = VALUE abap_bool( ).
        DATA(t548) = VALUE abap_bool( ).
        DATA(t549) = VALUE abap_bool( ).
        DATA t550 TYPE string.
        DATA(t551) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
        t550 = t551->value.
        DATA(t552) = |LIKE TABLE OF |.
        DATA(t553) = strlen( t550 ).
        DATA t554 TYPE i.
        DATA(t555) = VALUE i( ).
        DATA(t556) = VALUE string( ).
        t554 = strlen( t552 ).
        IF t554 = 0.
          t549 = abap_true.
        ELSEIF t554 <= t553.
          t555 = 0.
          t556 = t550+t555(t554).
          IF t556 = t552.
            t549 = abap_true.
          ENDIF.
        ENDIF.
        t548 = t549.
        IF t549 = abap_false.
          DATA(t557) = VALUE abap_bool( ).
          DATA t558 TYPE string.
          DATA(t559) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
          t558 = t559->value.
          DATA(t560) = |LIKE STANDARD TABLE OF |.
          DATA(t561) = strlen( t558 ).
          DATA t562 TYPE i.
          DATA(t563) = VALUE i( ).
          DATA(t564) = VALUE string( ).
          t562 = strlen( t560 ).
          IF t562 = 0.
            t557 = abap_true.
          ELSEIF t562 <= t561.
            t563 = 0.
            t564 = t558+t563(t562).
            IF t564 = t560.
              t557 = abap_true.
            ENDIF.
          ENDIF.
          t548 = t557.
        ENDIF.
        t547 = t548.
        IF t548 = abap_false.
          DATA(t565) = VALUE abap_bool( ).
          DATA t566 TYPE string.
          DATA(t567) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
          t566 = t567->value.
          DATA(t568) = |LIKE SORTED TABLE OF |.
          DATA(t569) = strlen( t566 ).
          DATA t570 TYPE i.
          DATA(t571) = VALUE i( ).
          DATA(t572) = VALUE string( ).
          t570 = strlen( t568 ).
          IF t570 = 0.
            t565 = abap_true.
          ELSEIF t570 <= t569.
            t571 = 0.
            t572 = t566+t571(t570).
            IF t572 = t568.
              t565 = abap_true.
            ENDIF.
          ENDIF.
          t547 = t565.
        ENDIF.
        t546 = t547.
        IF t547 = abap_false.
          DATA(t573) = VALUE abap_bool( ).
          DATA t574 TYPE string.
          DATA(t575) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
          t574 = t575->value.
          DATA(t576) = |LIKE HASHED TABLE OF |.
          DATA(t577) = strlen( t574 ).
          DATA t578 TYPE i.
          DATA(t579) = VALUE i( ).
          DATA(t580) = VALUE string( ).
          t578 = strlen( t576 ).
          IF t578 = 0.
            t573 = abap_true.
          ELSEIF t578 <= t577.
            t579 = 0.
            t580 = t574+t579(t578).
            IF t580 = t576.
              t573 = abap_true.
            ENDIF.
          ENDIF.
          t546 = t573.
        ENDIF.
        IF t546 = abap_true.
          DATA t581 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t581.
          DATA t582 TYPE REF TO zif_lnt_union_bb14dc41.
          CLEAR t582.
          DATA(t583) = abap_true.
          IF t583 = abap_true.
            DATA(t584) = CAST zif_lnt_union_bb14dc41( t1 ).
            t582 = t584.
          ELSE.
            DATA t585 TYPE REF TO zif_lnt_union_bb14dc41.
            CLEAR t585.
            t582 = t585.
          ENDIF.
          DATA t586 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t586.
          t581 = me->resolve_like_name( i_node = t582 i_header_logic = t586 ).
          t451 = t581.
          DATA t587 TYPE abap_bool.
          DATA(t588) = CAST zcl_lnt_abstract_type( t451 ).
          t587 = xsdbool( t588 IS BOUND ).
          IF t587 = abap_true.
            DATA t589 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t590 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t591) = CAST zcl_lnt_abstract_type( t451 ).
            t590 = t591.
            DATA(t592) = CAST zcl_lnt_itable_options( t433 ).
            DATA(t593) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
            DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t594.
            t589 = NEW zcl_lnt_ty_table_type( i_row_type = t590 i_options = t592 i_qualified_name = t593 i_description = t594 ).
            result = t589.
            RETURN.
          ENDIF.
        ELSE.
          DATA(t595) = VALUE abap_bool( ).
          DATA(t596) = VALUE abap_bool( ).
          DATA(t597) = VALUE abap_bool( ).
          DATA t598 TYPE abap_bool.
          DATA t599 TYPE abap_bool.
          DATA t600 TYPE string.
          DATA(t601) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
          t600 = t601->value.
          DATA(t602) = |TYPE STANDARD TABLE|.
          t599 = xsdbool( t600 = t602 ).
          t598 = t599.
          IF t599 = abap_false.
            DATA t603 TYPE abap_bool.
            DATA t604 TYPE string.
            DATA(t605) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
            t604 = t605->value.
            DATA(t606) = |TYPE SORTED TABLE|.
            t603 = xsdbool( t604 = t606 ).
            t598 = t603.
          ENDIF.
          t597 = t598.
          IF t598 = abap_false.
            DATA t607 TYPE abap_bool.
            DATA t608 TYPE string.
            DATA(t609) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
            t608 = t609->value.
            DATA(t610) = |TYPE HASHED TABLE|.
            t607 = xsdbool( t608 = t610 ).
            t597 = t607.
          ENDIF.
          t596 = t597.
          IF t597 = abap_false.
            DATA t611 TYPE abap_bool.
            DATA t612 TYPE string.
            DATA(t613) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
            t612 = t613->value.
            DATA(t614) = |TYPE INDEX TABLE|.
            t611 = xsdbool( t612 = t614 ).
            t596 = t611.
          ENDIF.
          t595 = t596.
          IF t596 = abap_false.
            DATA t615 TYPE abap_bool.
            DATA t616 TYPE string.
            DATA(t617) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
            t616 = t617->value.
            DATA(t618) = |TYPE ANY TABLE|.
            t615 = xsdbool( t616 = t618 ).
            t595 = t615.
          ENDIF.
          IF t595 = abap_true.
            DATA t619 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t620 TYPE REF TO zcl_lnt_any_type.
            DATA t621 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t621.
            t620 = zcl_lnt_any_type=>get_db65( i_input_967e = t621 ).
            DATA(t622) = CAST zcl_lnt_itable_options( t433 ).
            DATA t623 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t623.
            DATA t624 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t624.
            t619 = NEW zcl_lnt_ty_table_type( i_row_type = t620 i_options = t622 i_qualified_name = t623 i_description = t624 ).
            result = t619.
            RETURN.
          ELSE.
            DATA(t625) = VALUE abap_bool( ).
            DATA t626 TYPE string.
            DATA(t627) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
            t626 = t627->value.
            DATA(t628) = |TYPE RANGE OF |.
            DATA(t629) = strlen( t626 ).
            DATA t630 TYPE i.
            DATA(t631) = VALUE i( ).
            DATA(t632) = VALUE string( ).
            t630 = strlen( t628 ).
            IF t630 = 0.
              t625 = abap_true.
            ELSEIF t630 <= t629.
              t631 = 0.
              t632 = t626+t631(t630).
              IF t632 = t628.
                t625 = abap_true.
              ENDIF.
            ENDIF.
            IF t625 = abap_true.
              DATA t633 TYPE REF TO zcl_lnt_expression_node.
              DATA t634 TYPE REF TO zcl_lnt_expression_node.
              DATA(t635) = CAST zif_lnt_union_bb14dc41( t1 ).
              DATA(t636) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
              t634 = t635->find_first_expression( i_type_9913 = t636 ).
              t633 = t634.
              DATA t637 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t638) = CAST zcl_lnt_expression_node( t633 ).
              DATA t639 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
              CLEAR t639.
              DATA t640 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
              CLEAR t640.
              DATA t641 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t641.
              t637 = me->resolve_type_name( i_type_name = t638 i_length = t639 i_decimals_2eed = t640 i_qualified_name = t641 ).
              t451 = t637.
              DATA(t642) = VALUE abap_bool( ).
              DATA t643 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t644) = CAST zcl_lnt_abstract_type( t451 ).
              t643 = t644.
              DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t646.
              t645 = t646.
              DATA(t647) = VALUE abap_bool( ).
              DATA(t648) = CAST zcl_lnt_abstract_type( t643 ).
              IF t648 IS INITIAL.
                t647 = abap_true.
              ENDIF.
              t642 = t647.
              IF t642 = abap_true.
                DATA t649 TYPE REF TO zcl_lnt_unknown_type.
                DATA(t650) = |TYPE RANGE OF, could not resolve type|.
                DATA t651 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t651.
                t649 = NEW zcl_lnt_unknown_type( i_error = t650 i_qualified_name = t651 ).
                result = t649.
                RETURN.
              ENDIF.
              DATA t652 TYPE REF TO zcl_lnt_structure_type.
              DATA t653 TYPE REF TO zcl_lnt_structure_type.
              DATA t654 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t655 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t656 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t656.
              t655 = t656.
              DATA(t657) = CAST zlnt_runtime_arra_c22708faf2e3( t655 ).
              DATA t658 TYPE REF TO zcl_lnt_istructure_component.
              DATA(t659) = |sign|.
              DATA t660 TYPE REF TO zcl_lnt_character_type.
              DATA(t661) = CONV int8( 1 ).
              DATA t662 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t662.
              t660 = NEW zcl_lnt_character_type( i_length = t661 i_extra = t662 ).
              DATA t663 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t663.
              DATA t664 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t664.
              t658 = NEW zcl_lnt_istructure_component( i_name = t659 i_type_9913 = t660 i_as_include = t663 i_suffix = t664 ).
              APPEND t658 TO t657->items.
              DATA(t665) = CAST zlnt_runtime_arra_c22708faf2e3( t655 ).
              DATA t666 TYPE REF TO zcl_lnt_istructure_component.
              DATA(t667) = |option|.
              DATA t668 TYPE REF TO zcl_lnt_character_type.
              DATA(t669) = CONV int8( 2 ).
              DATA t670 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t670.
              t668 = NEW zcl_lnt_character_type( i_length = t669 i_extra = t670 ).
              DATA t671 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t671.
              DATA t672 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t672.
              t666 = NEW zcl_lnt_istructure_component( i_name = t667 i_type_9913 = t668 i_as_include = t671 i_suffix = t672 ).
              APPEND t666 TO t665->items.
              DATA(t673) = CAST zlnt_runtime_arra_c22708faf2e3( t655 ).
              DATA t674 TYPE REF TO zcl_lnt_istructure_component.
              DATA(t675) = |low|.
              DATA t676 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t677) = CAST zcl_lnt_abstract_type( t451 ).
              t676 = t677.
              DATA t678 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t678.
              DATA t679 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t679.
              t674 = NEW zcl_lnt_istructure_component( i_name = t675 i_type_9913 = t676 i_as_include = t678 i_suffix = t679 ).
              APPEND t674 TO t673->items.
              DATA(t680) = CAST zlnt_runtime_arra_c22708faf2e3( t655 ).
              DATA t681 TYPE REF TO zcl_lnt_istructure_component.
              DATA(t682) = |high|.
              DATA t683 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t684) = CAST zcl_lnt_abstract_type( t451 ).
              t683 = t684.
              DATA t685 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t685.
              DATA t686 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t686.
              t681 = NEW zcl_lnt_istructure_component( i_name = t682 i_type_9913 = t683 i_as_include = t685 i_suffix = t686 ).
              APPEND t681 TO t680->items.
              DATA(t687) = CAST zlnt_runtime_arra_c22708faf2e3( t655 ).
              t654 = t687.
              DATA t688 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t688.
              DATA t689 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t689.
              DATA t690 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t690.
              t653 = NEW zcl_lnt_structure_type( i_components = t654 i_qualified_name = t688 i_ddic_name = t689 i_description = t690 ).
              t652 = t653.
              DATA t691 TYPE REF TO zcl_lnt_itable_key.
              DATA t692 TYPE REF TO zcl_lnt_itable_key.
              DATA(t693) = CAST zcl_lnt_itable_options( t433 ).
              t692 = t693->primary_key.
              t691 = t692.
              DATA(t694) = |STANDARD|.
              t691->type_cba0 = t694.
              DATA t695 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t696) = CAST zcl_lnt_structure_type( t652 ).
              DATA(t697) = CAST zcl_lnt_itable_options( t433 ).
              DATA(t698) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
              DATA t699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t699.
              t695 = NEW zcl_lnt_ty_table_type( i_row_type = t696 i_options = t697 i_qualified_name = t698 i_description = t699 ).
              result = t695.
              RETURN.
            ELSE.
              DATA(t700) = VALUE abap_bool( ).
              DATA t701 TYPE string.
              DATA(t702) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
              t701 = t702->value.
              DATA(t703) = |LIKE RANGE OF |.
              DATA(t704) = strlen( t701 ).
              DATA t705 TYPE i.
              DATA(t706) = VALUE i( ).
              DATA(t707) = VALUE string( ).
              t705 = strlen( t703 ).
              IF t705 = 0.
                t700 = abap_true.
              ELSEIF t705 <= t704.
                t706 = 0.
                t707 = t701+t706(t705).
                IF t707 = t703.
                  t700 = abap_true.
                ENDIF.
              ENDIF.
              IF t700 = abap_true.
                DATA t708 TYPE REF TO zcl_lnt_expression_node.
                DATA t709 TYPE REF TO zcl_lnt_expression_node.
                DATA(t710) = CAST zif_lnt_union_bb14dc41( t1 ).
                DATA(t711) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
                t709 = t710->find_first_expression( i_type_9913 = t711 ).
                t708 = t709.
                DATA t712 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t713) = CAST zcl_lnt_expression_node( t708 ).
                DATA t714 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t714.
                t712 = me->resolve_like_name( i_node = t713 i_header_logic = t714 ).
                t451 = t712.
                DATA(t715) = VALUE abap_bool( ).
                DATA t716 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t717) = CAST zcl_lnt_abstract_type( t451 ).
                t716 = t717.
                DATA t718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t719.
                t718 = t719.
                DATA(t720) = VALUE abap_bool( ).
                DATA(t721) = CAST zcl_lnt_abstract_type( t716 ).
                IF t721 IS INITIAL.
                  t720 = abap_true.
                ENDIF.
                t715 = t720.
                IF t715 = abap_true.
                  DATA t722 TYPE REF TO zcl_lnt_unknown_type.
                  DATA(t723) = |LIKE RANGE OF, could not resolve type|.
                  DATA t724 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t724.
                  t722 = NEW zcl_lnt_unknown_type( i_error = t723 i_qualified_name = t724 ).
                  result = t722.
                  RETURN.
                ENDIF.
                DATA t725 TYPE REF TO zcl_lnt_structure_type.
                DATA t726 TYPE REF TO zcl_lnt_structure_type.
                DATA t727 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t728 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t729 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CREATE OBJECT t729.
                t728 = t729.
                DATA(t730) = CAST zlnt_runtime_arra_c22708faf2e3( t728 ).
                DATA t731 TYPE REF TO zcl_lnt_istructure_component.
                DATA(t732) = |sign|.
                DATA t733 TYPE REF TO zcl_lnt_character_type.
                DATA(t734) = CONV int8( 1 ).
                DATA t735 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t735.
                t733 = NEW zcl_lnt_character_type( i_length = t734 i_extra = t735 ).
                DATA t736 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t736.
                DATA t737 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t737.
                t731 = NEW zcl_lnt_istructure_component( i_name = t732 i_type_9913 = t733 i_as_include = t736 i_suffix = t737 ).
                APPEND t731 TO t730->items.
                DATA(t738) = CAST zlnt_runtime_arra_c22708faf2e3( t728 ).
                DATA t739 TYPE REF TO zcl_lnt_istructure_component.
                DATA(t740) = |option|.
                DATA t741 TYPE REF TO zcl_lnt_character_type.
                DATA(t742) = CONV int8( 2 ).
                DATA t743 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t743.
                t741 = NEW zcl_lnt_character_type( i_length = t742 i_extra = t743 ).
                DATA t744 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t744.
                DATA t745 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t745.
                t739 = NEW zcl_lnt_istructure_component( i_name = t740 i_type_9913 = t741 i_as_include = t744 i_suffix = t745 ).
                APPEND t739 TO t738->items.
                DATA(t746) = CAST zlnt_runtime_arra_c22708faf2e3( t728 ).
                DATA t747 TYPE REF TO zcl_lnt_istructure_component.
                DATA(t748) = |low|.
                DATA t749 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t750) = CAST zcl_lnt_abstract_type( t451 ).
                t749 = t750.
                DATA t751 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t751.
                DATA t752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t752.
                t747 = NEW zcl_lnt_istructure_component( i_name = t748 i_type_9913 = t749 i_as_include = t751 i_suffix = t752 ).
                APPEND t747 TO t746->items.
                DATA(t753) = CAST zlnt_runtime_arra_c22708faf2e3( t728 ).
                DATA t754 TYPE REF TO zcl_lnt_istructure_component.
                DATA(t755) = |high|.
                DATA t756 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t757) = CAST zcl_lnt_abstract_type( t451 ).
                t756 = t757.
                DATA t758 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t758.
                DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t759.
                t754 = NEW zcl_lnt_istructure_component( i_name = t755 i_type_9913 = t756 i_as_include = t758 i_suffix = t759 ).
                APPEND t754 TO t753->items.
                DATA(t760) = CAST zlnt_runtime_arra_c22708faf2e3( t728 ).
                t727 = t760.
                DATA(t761) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
                DATA t762 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t762.
                DATA t763 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t763.
                t726 = NEW zcl_lnt_structure_type( i_components = t727 i_qualified_name = t761 i_ddic_name = t762 i_description = t763 ).
                t725 = t726.
                DATA t764 TYPE REF TO zcl_lnt_itable_key.
                DATA t765 TYPE REF TO zcl_lnt_itable_key.
                DATA(t766) = CAST zcl_lnt_itable_options( t433 ).
                t765 = t766->primary_key.
                t764 = t765.
                DATA(t767) = |STANDARD|.
                t764->type_cba0 = t767.
                DATA t768 TYPE REF TO zcl_lnt_ty_table_type.
                DATA(t769) = CAST zcl_lnt_structure_type( t725 ).
                DATA(t770) = CAST zcl_lnt_itable_options( t433 ).
                DATA t771 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t771.
                DATA t772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t772.
                t768 = NEW zcl_lnt_ty_table_type( i_row_type = t769 i_options = t770 i_qualified_name = t771 i_description = t772 ).
                result = t768.
                RETURN.
              ELSE.
                DATA t773 TYPE abap_bool.
                DATA t774 TYPE abap_bool.
                DATA(t775) = CAST zcl_lnt_expression_node( t3 ).
                t774 = xsdbool( t775 IS BOUND ).
                t773 = t774.
                IF t774 = abap_true.
                  DATA t776 TYPE abap_bool.
                  DATA t777 TYPE string.
                  DATA(t778) = CAST zlnt_runtime_opti_4ba3bdccd169( t16 ).
                  t777 = t778->value.
                  t776 = me->is_rap_table_for( i_text = t777 ).
                  t773 = t776.
                ENDIF.
                IF t773 = abap_true.
                  DATA t779 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t779.
                  DATA(t780) = abap_true.
                  IF t780 = abap_true.
                    DATA t781 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t781.
                    DATA t782 TYPE string.
                    DATA t783 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t784) = CAST zcl_lnt_expression_node( t3 ).
                    t783 = t784.
                    t782 = t783->concat_tokens( ).
                    DATA t785 TYPE REF TO zcl_lnt_itable_options.
                    CLEAR t785.
                    DATA(t786) = abap_true.
                    IF t786 = abap_true.
                      DATA(t787) = CAST zcl_lnt_itable_options( t433 ).
                      t785 = t787.
                    ELSE.
                      DATA t788 TYPE REF TO zcl_lnt_itable_options.
                      CLEAR t788.
                      t785 = t788.
                    ENDIF.
                    t781 = me->rap_table_for( i_entity_name = t782 i_options = t785 ).
                    t779 = t781.
                  ELSE.
                    DATA t789 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t789.
                    t779 = t789.
                  ENDIF.
                  result = t779.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t790 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t791) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t792) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    t790 = me->parse_type( i_node = t791 i_qualified_name = t792 ).
    result = t790.

  ENDMETHOD.
  METHOD rap_table_for.
    DATA(t1) = i_entity_name.
    DATA(t2) = CAST zcl_lnt_itable_options( i_options ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/5_syntax/basic_types.ts:486|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD parse_type.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_qualified_name ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA(t13) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924 ).
    t12 = t13->find_first_expression( i_type_9913 = t14 ).
    t11 = t12.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = CAST zcl_lnt_expression_node( t11 ).
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE string.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = CAST zcl_lnt_expression_node( t11 ).
      t20 = t21.
      t19 = t20->concat_tokens( ).
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t19.
      t15 = t22.
    ENDIF.
    t10 = t15.
    t9 = t10.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = CAST zlnt_runtime_opti_4ba3bdccd169( t9 ).
    IF t25 IS INITIAL.
      t24 = abap_true.
    ELSEIF t25->has = abap_false.
      t24 = abap_true.
    ENDIF.
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t23 = t26.
    ELSE.
      DATA t27 TYPE string.
      DATA t28 TYPE string.
      DATA(t29) = CAST zlnt_runtime_opti_4ba3bdccd169( t9 ).
      t28 = t29->value.
      DATA(t30) = strlen( t28 ).
      t27 = t28.
      IF t27 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t27 TO UPPER CASE.
      ELSE.
        t27 = zlnt_runtime_uppe_91169605024d=>full( t27 ).
      ENDIF.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t27.
      t23 = t31.
    ENDIF.
    t8 = t23.
    t7 = t8.
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    t35 = t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = CAST zlnt_runtime_opti_4ba3bdccd169( t33 ).
    IF t38 IS INITIAL.
      t37 = abap_true.
    ELSEIF t38->has = abap_false.
      t37 = abap_true.
    ENDIF.
    t32 = t37.
    IF t32 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA(t44) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429 ).
      t43 = t44->find_first_expression( i_type_9913 = t45 ).
      t42 = t43.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = CAST zcl_lnt_expression_node( t42 ).
      IF t48 IS INITIAL.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t46 = t49.
      ELSE.
        DATA t50 TYPE string.
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        DATA(t52) = CAST zcl_lnt_expression_node( t42 ).
        t51 = t52.
        t50 = t51->concat_tokens( ).
        DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t53->has = abap_true.
        t53->value = t50.
        t46 = t53.
      ENDIF.
      t41 = t46.
      t40 = t41.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = CAST zlnt_runtime_opti_4ba3bdccd169( t40 ).
      IF t56 IS INITIAL.
        t55 = abap_true.
      ELSEIF t56->has = abap_false.
        t55 = abap_true.
      ENDIF.
      IF t55 = abap_true.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        t54 = t57.
      ELSE.
        DATA t58 TYPE string.
        DATA t59 TYPE string.
        DATA(t60) = CAST zlnt_runtime_opti_4ba3bdccd169( t40 ).
        t59 = t60->value.
        DATA(t61) = strlen( t59 ).
        t58 = t59.
        IF t58 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t58 TO UPPER CASE.
        ELSE.
          t58 = zlnt_runtime_uppe_91169605024d=>full( t58 ).
        ENDIF.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t58.
        t54 = t62.
      ENDIF.
      t39 = t54.
      t7 = t39.
    ENDIF.
    DATA(t63) = VALUE abap_bool( ).
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t65) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    t64 = t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    t66 = t67.
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = CAST zlnt_runtime_opti_4ba3bdccd169( t64 ).
    IF t69 IS INITIAL.
      t68 = abap_true.
    ELSEIF t69->has = abap_false.
      t68 = abap_true.
    ENDIF.
    t63 = t68.
    IF t63 = abap_true.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t71.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_expression_node.
      DATA t74 TYPE REF TO zcl_lnt_expression_node.
      DATA(t75) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t76) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396 ).
      t74 = t75->find_first_expression( i_type_9913 = t76 ).
      t73 = t74.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = CAST zcl_lnt_expression_node( t73 ).
      IF t79 IS INITIAL.
        t78 = abap_true.
      ENDIF.
      IF t78 = abap_true.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        t77 = t80.
      ELSE.
        DATA t81 TYPE string.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        DATA(t83) = CAST zcl_lnt_expression_node( t73 ).
        t82 = t83.
        t81 = t82->concat_tokens( ).
        DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t84->has = abap_true.
        t84->value = t81.
        t77 = t84.
      ENDIF.
      t72 = t77.
      t71 = t72.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = CAST zlnt_runtime_opti_4ba3bdccd169( t71 ).
      IF t87 IS INITIAL.
        t86 = abap_true.
      ELSEIF t87->has = abap_false.
        t86 = abap_true.
      ENDIF.
      IF t86 = abap_true.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        t85 = t88.
      ELSE.
        DATA t89 TYPE string.
        DATA t90 TYPE string.
        DATA(t91) = CAST zlnt_runtime_opti_4ba3bdccd169( t71 ).
        t90 = t91->value.
        DATA(t92) = strlen( t90 ).
        t89 = t90.
        IF t89 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t89 TO UPPER CASE.
        ELSE.
          t89 = zlnt_runtime_uppe_91169605024d=>full( t89 ).
        ENDIF.
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = t89.
        t85 = t93.
      ENDIF.
      t70 = t85.
      t7 = t70.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = VALUE abap_bool( ).
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t96.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t98) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
      t97 = t98.
      DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t99.
      DATA(t100) = VALUE abap_bool( ).
      DATA(t101) = CAST zlnt_runtime_opti_4ba3bdccd169( t97 ).
      IF t101 IS INITIAL.
        t100 = abap_true.
      ELSEIF t101->has = abap_false.
        t100 = abap_true.
      ENDIF.
      IF t100 = abap_true.
        DATA t102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t102.
        t99 = t102.
      ELSE.
        DATA(t103) = VALUE abap_bool( ).
        DATA t104 TYPE string.
        DATA(t105) = CAST zlnt_runtime_opti_4ba3bdccd169( t97 ).
        t104 = t105->value.
        DATA(t106) = |TYPE|.
        DATA(t107) = strlen( t104 ).
        DATA t108 TYPE i.
        DATA(t109) = VALUE i( ).
        DATA(t110) = VALUE string( ).
        t108 = strlen( t106 ).
        IF t108 = 0.
          t103 = abap_true.
        ELSEIF t108 <= t107.
          t109 = 0.
          t110 = t104+t109(t108).
          IF t110 = t106.
            t103 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t111) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t111->has = abap_true.
        t111->value = t103.
        t99 = t111.
      ENDIF.
      t96 = t99.
      DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t112.
      DATA(t113) = abap_true.
      IF t113 = abap_true.
        DATA(t114) = abap_false.
        DATA(t115) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t115->has = abap_true.
        t115->value = t114.
        t112 = t115.
      ELSE.
        DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t116.
        t112 = t116.
      ENDIF.
      DATA(t117) = VALUE abap_bool( ).
      DATA(t118) = VALUE abap_bool( ).
      IF t96 IS BOUND.
        t117 = t96->has.
      ENDIF.
      IF t112 IS BOUND.
        t118 = t112->has.
      ENDIF.
      IF t117 = t118.
        IF t117 = abap_false.
          t95 = abap_true.
        ELSEIF t96->value = t112->value.
          t95 = abap_true.
        ENDIF.
      ENDIF.
      t94 = t95.
      IF t95 = abap_true.
        DATA(t119) = VALUE abap_bool( ).
        DATA(t120) = VALUE abap_bool( ).
        DATA t121 TYPE string.
        DATA(t122) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
        t121 = t122->value.
        DATA(t123) = |LIKE|.
        DATA(t124) = strlen( t121 ).
        DATA t125 TYPE i.
        DATA(t126) = VALUE i( ).
        DATA(t127) = VALUE string( ).
        t125 = strlen( t123 ).
        IF t125 = 0.
          t120 = abap_true.
        ELSEIF t125 <= t124.
          t126 = 0.
          t127 = t121+t126(t125).
          IF t127 = t123.
            t120 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t128) = abap_false.
        t119 = xsdbool( t120 = t128 ).
        t94 = t119.
      ENDIF.
      IF t94 = abap_true.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA(t131) = |TYPE|.
          DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t132->has = abap_true.
          t132->value = t131.
          t129 = t132.
        ELSE.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          t129 = t133.
        ENDIF.
        t7 = t129.
      ENDIF.
    ENDIF.
    DATA(t134) = VALUE abap_bool( ).
    DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t136) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    t135 = t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    t137 = t138.
    DATA(t139) = VALUE abap_bool( ).
    DATA(t140) = CAST zlnt_runtime_opti_4ba3bdccd169( t135 ).
    IF t140 IS INITIAL.
      t139 = abap_true.
    ELSEIF t140->has = abap_false.
      t139 = abap_true.
    ENDIF.
    t134 = t139.
    IF t134 = abap_true.
      DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t141.
      DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t142.
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t143.
      DATA t144 TYPE REF TO zcl_lnt_expression_node.
      DATA t145 TYPE REF TO zcl_lnt_expression_node.
      DATA(t146) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t147) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03 ).
      t145 = t146->find_first_expression( i_type_9913 = t147 ).
      t144 = t145.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t148.
      DATA(t149) = VALUE abap_bool( ).
      DATA(t150) = CAST zcl_lnt_expression_node( t144 ).
      IF t150 IS INITIAL.
        t149 = abap_true.
      ENDIF.
      IF t149 = abap_true.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        t148 = t151.
      ELSE.
        DATA t152 TYPE string.
        DATA t153 TYPE REF TO zcl_lnt_expression_node.
        DATA(t154) = CAST zcl_lnt_expression_node( t144 ).
        t153 = t154.
        t152 = t153->concat_tokens( ).
        DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t155->has = abap_true.
        t155->value = t152.
        t148 = t155.
      ENDIF.
      t143 = t148.
      t142 = t143.
      DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t156.
      DATA(t157) = VALUE abap_bool( ).
      DATA(t158) = CAST zlnt_runtime_opti_4ba3bdccd169( t142 ).
      IF t158 IS INITIAL.
        t157 = abap_true.
      ELSEIF t158->has = abap_false.
        t157 = abap_true.
      ENDIF.
      IF t157 = abap_true.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t159.
        t156 = t159.
      ELSE.
        DATA t160 TYPE string.
        DATA t161 TYPE string.
        DATA(t162) = CAST zlnt_runtime_opti_4ba3bdccd169( t142 ).
        t161 = t162->value.
        DATA(t163) = strlen( t161 ).
        t160 = t161.
        IF t160 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t160 TO UPPER CASE.
        ELSE.
          t160 = zlnt_runtime_uppe_91169605024d=>full( t160 ).
        ENDIF.
        DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t164->has = abap_true.
        t164->value = t160.
        t156 = t164.
      ENDIF.
      t141 = t156.
      t7 = t141.
    ENDIF.
    DATA(t165) = VALUE abap_bool( ).
    DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t167) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    t166 = t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    t168 = t169.
    DATA(t170) = VALUE abap_bool( ).
    DATA(t171) = CAST zlnt_runtime_opti_4ba3bdccd169( t166 ).
    IF t171 IS INITIAL.
      t170 = abap_true.
    ELSEIF t171->has = abap_false.
      t170 = abap_true.
    ENDIF.
    t165 = t170.
    IF t165 = abap_true.
      DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t172.
      DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t173.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t174.
      DATA t175 TYPE REF TO zcl_lnt_expression_node.
      DATA t176 TYPE REF TO zcl_lnt_expression_node.
      DATA(t177) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t178) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b ).
      t176 = t177->find_first_expression( i_type_9913 = t178 ).
      t175 = t176.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t179.
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = CAST zcl_lnt_expression_node( t175 ).
      IF t181 IS INITIAL.
        t180 = abap_true.
      ENDIF.
      IF t180 = abap_true.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        t179 = t182.
      ELSE.
        DATA t183 TYPE string.
        DATA t184 TYPE REF TO zcl_lnt_expression_node.
        DATA(t185) = CAST zcl_lnt_expression_node( t175 ).
        t184 = t185.
        t183 = t184->concat_tokens( ).
        DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t186->has = abap_true.
        t186->value = t183.
        t179 = t186.
      ENDIF.
      t174 = t179.
      t173 = t174.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t187.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = CAST zlnt_runtime_opti_4ba3bdccd169( t173 ).
      IF t189 IS INITIAL.
        t188 = abap_true.
      ELSEIF t189->has = abap_false.
        t188 = abap_true.
      ENDIF.
      IF t188 = abap_true.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        t187 = t190.
      ELSE.
        DATA t191 TYPE string.
        DATA t192 TYPE string.
        DATA(t193) = CAST zlnt_runtime_opti_4ba3bdccd169( t173 ).
        t192 = t193->value.
        DATA(t194) = strlen( t192 ).
        t191 = t192.
        IF t191 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t191 TO UPPER CASE.
        ELSE.
          t191 = zlnt_runtime_uppe_91169605024d=>full( t191 ).
        ENDIF.
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t191.
        t187 = t195.
      ENDIF.
      t172 = t187.
      t7 = t172.
    ENDIF.
    DATA(t196) = VALUE abap_bool( ).
    DATA(t197) = VALUE abap_bool( ).
    DATA(t198) = VALUE abap_bool( ).
    DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t200) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    t199 = t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    t201 = t202.
    DATA(t203) = VALUE abap_bool( ).
    DATA(t204) = CAST zlnt_runtime_opti_4ba3bdccd169( t199 ).
    IF t204 IS INITIAL.
      t203 = abap_true.
    ELSEIF t204->has = abap_false.
      t203 = abap_true.
    ENDIF.
    t198 = t203.
    t197 = t198.
    IF t198 = abap_true.
      DATA t205 TYPE abap_bool.
      DATA t206 TYPE REF TO object.
      DATA(t207) = CAST zif_lnt_union_bb14dc41( t1 ).
      t206 = t207->get_db65( ).
      t205 = xsdbool( t206 IS BOUND AND t206 IS INSTANCE OF zcl_lnt_st_parameter ).
      t197 = t205.
    ENDIF.
    t196 = t197.
    IF t197 = abap_true.
      DATA t208 TYPE abap_bool.
      DATA t209 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t210) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t211) = |LIKE|.
      t209 = t210->find_direct_token_by_text( i_text = t211 ).
      t208 = xsdbool( t209 IS BOUND ).
      t196 = t208.
    ENDIF.
    IF t196 = abap_true.
      DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t212.
      DATA(t213) = abap_true.
      IF t213 = abap_true.
        DATA(t214) = VALUE string( ).
        DATA(t215) = |LIKE |.
        DATA(t216) = VALUE string( ).
        DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t217.
        DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t218.
        DATA t219 TYPE REF TO zcl_lnt_expression_node.
        DATA(t220) = CAST zcl_lnt_expression_node( t3 ).
        t219 = t220.
        DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t221.
        DATA(t222) = VALUE abap_bool( ).
        DATA(t223) = CAST zcl_lnt_expression_node( t219 ).
        IF t223 IS INITIAL.
          t222 = abap_true.
        ENDIF.
        IF t222 = abap_true.
          DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t224.
          t221 = t224.
        ELSE.
          DATA t225 TYPE string.
          DATA t226 TYPE REF TO zcl_lnt_expression_node.
          DATA(t227) = CAST zcl_lnt_expression_node( t219 ).
          t226 = t227.
          t225 = t226->concat_tokens( ).
          DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t228->has = abap_true.
          t228->value = t225.
          t221 = t228.
        ENDIF.
        t218 = t221.
        t217 = t218.
        DATA(t229) = VALUE string( ).
        DATA(t230) = VALUE abap_bool( ).
        DATA(t231) = CAST zlnt_runtime_opti_4ba3bdccd169( t217 ).
        IF t231 IS INITIAL.
          t230 = abap_true.
        ELSEIF t231->has = abap_false.
          t230 = abap_true.
        ENDIF.
        IF t230 = abap_true.
          DATA(t232) = |undefined|.
          t229 = t232.
        ELSE.
          DATA t233 TYPE string.
          DATA(t234) = CAST zlnt_runtime_opti_4ba3bdccd169( t217 ).
          t233 = t234->value.
          t229 = t233.
        ENDIF.
        t216 = t229.
        DATA(t235) = strlen( t215 ).
        t214 = |{ t215 }{ t216 }|.
        DATA(t236) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t236->has = abap_true.
        t236->value = t214.
        t212 = t236.
      ELSE.
        DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t237.
        t212 = t237.
      ENDIF.
      t7 = t212.
    ENDIF.
    DATA(t238) = VALUE abap_bool( ).
    DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t240) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    t239 = t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    t241 = t242.
    DATA(t243) = VALUE abap_bool( ).
    DATA(t244) = CAST zlnt_runtime_opti_4ba3bdccd169( t239 ).
    IF t244 IS INITIAL.
      t243 = abap_true.
    ELSEIF t244->has = abap_false.
      t243 = abap_true.
    ENDIF.
    t238 = t243.
    IF t238 = abap_true.
      DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t245.
      DATA(t246) = abap_true.
      IF t246 = abap_true.
        DATA(t247) = |TYPE|.
        DATA(t248) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t248->has = abap_true.
        t248->value = t247.
        t245 = t248.
      ELSE.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t249.
        t245 = t249.
      ENDIF.
      t7 = t245.
    ENDIF.
    DATA t250 TYPE REF TO zcl_lnt_abstract_type.
    DATA t251 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t251.
    t250 = t251.
    DATA(t252) = VALUE abap_bool( ).
    DATA t253 TYPE string.
    DATA t254 TYPE string.
    DATA(t255) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    t254 = t255->value.
    t253 = t254.
    DATA(t256) = VALUE abap_bool( ).
    DATA(t257) = VALUE abap_bool( ).
    DATA(t258) = VALUE abap_bool( ).
    DATA(t259) = t253.
    DATA(t260) = |TYPE STRUCTURE FOR |.
    DATA(t261) = strlen( t259 ).
    DATA t262 TYPE i.
    DATA(t263) = VALUE i( ).
    DATA(t264) = VALUE string( ).
    t262 = strlen( t260 ).
    IF t262 = 0.
      t258 = abap_true.
    ELSEIF t262 <= t261.
      t263 = 0.
      t264 = t259+t263(t262).
      IF t264 = t260.
        t258 = abap_true.
      ENDIF.
    ENDIF.
    t257 = t258.
    IF t258 = abap_false.
      DATA(t265) = VALUE abap_bool( ).
      DATA(t266) = t253.
      DATA(t267) = |TYPE RESPONSE FOR |.
      DATA(t268) = strlen( t266 ).
      DATA t269 TYPE i.
      DATA(t270) = VALUE i( ).
      DATA(t271) = VALUE string( ).
      t269 = strlen( t267 ).
      IF t269 = 0.
        t265 = abap_true.
      ELSEIF t269 <= t268.
        t270 = 0.
        t271 = t266+t270(t269).
        IF t271 = t267.
          t265 = abap_true.
        ENDIF.
      ENDIF.
      t257 = t265.
    ENDIF.
    t256 = t257.
    IF t257 = abap_false.
      DATA(t272) = VALUE abap_bool( ).
      DATA(t273) = t253.
      DATA(t274) = |TYPE REQUEST FOR |.
      DATA(t275) = strlen( t273 ).
      DATA t276 TYPE i.
      DATA(t277) = VALUE i( ).
      DATA(t278) = VALUE string( ).
      t276 = strlen( t274 ).
      IF t276 = 0.
        t272 = abap_true.
      ELSEIF t276 <= t275.
        t277 = 0.
        t278 = t273+t277(t276).
        IF t278 = t274.
          t272 = abap_true.
        ENDIF.
      ENDIF.
      t256 = t272.
    ENDIF.
    t252 = t256.
    IF t252 = abap_true.
      DATA t279 TYPE REF TO zcl_lnt_void_type.
      CLEAR t279.
      DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t280.
      DATA t281 TYPE REF TO zcl_lnt_expression_node.
      DATA t282 TYPE REF TO zcl_lnt_expression_node.
      DATA(t283) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t284) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03 ).
      t282 = t283->find_first_expression( i_type_9913 = t284 ).
      t281 = t282.
      DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t285.
      DATA(t286) = VALUE abap_bool( ).
      DATA(t287) = CAST zcl_lnt_expression_node( t281 ).
      IF t287 IS INITIAL.
        t286 = abap_true.
      ENDIF.
      IF t286 = abap_true.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t288.
        t285 = t288.
      ELSE.
        DATA t289 TYPE string.
        DATA t290 TYPE REF TO zcl_lnt_expression_node.
        DATA(t291) = CAST zcl_lnt_expression_node( t281 ).
        t290 = t291.
        t289 = t290->concat_tokens( ).
        DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t292->has = abap_true.
        t292->value = t289.
        t285 = t292.
      ENDIF.
      t280 = t285.
      DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t293.
      t279 = zcl_lnt_void_type=>get_db65( i_voided = t280 i_qualified_name = t293 ).
      result = t279.
      RETURN.
    ELSE.
      DATA(t294) = VALUE abap_bool( ).
      DATA t295 TYPE string.
      DATA(t296) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
      t295 = t296->value.
      DATA(t297) = |LIKE LINE OF |.
      DATA(t298) = strlen( t295 ).
      DATA t299 TYPE i.
      DATA(t300) = VALUE i( ).
      DATA(t301) = VALUE string( ).
      t299 = strlen( t297 ).
      IF t299 = 0.
        t294 = abap_true.
      ELSEIF t299 <= t298.
        t300 = 0.
        t301 = t295+t300(t299).
        IF t301 = t297.
          t294 = abap_true.
        ENDIF.
      ENDIF.
      IF t294 = abap_true.
        DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t302.
        DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t303.
        DATA t304 TYPE REF TO zcl_lnt_expression_node.
        DATA t305 TYPE REF TO zcl_lnt_expression_node.
        DATA(t306) = CAST zif_lnt_union_bb14dc41( t1 ).
        DATA(t307) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
        t305 = t306->find_first_expression( i_type_9913 = t307 ).
        t304 = t305.
        DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t308.
        DATA(t309) = VALUE abap_bool( ).
        DATA(t310) = CAST zcl_lnt_expression_node( t304 ).
        IF t310 IS INITIAL.
          t309 = abap_true.
        ENDIF.
        IF t309 = abap_true.
          DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t311.
          t308 = t311.
        ELSE.
          DATA t312 TYPE string.
          DATA t313 TYPE REF TO zcl_lnt_expression_node.
          DATA(t314) = CAST zcl_lnt_expression_node( t304 ).
          t313 = t314.
          t312 = t313->concat_tokens( ).
          DATA(t315) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t315->has = abap_true.
          t315->value = t312.
          t308 = t315.
        ENDIF.
        t303 = t308.
        t302 = t303.
        DATA t316 TYPE REF TO zcl_lnt_expression_node.
        DATA t317 TYPE REF TO zcl_lnt_expression_node.
        DATA(t318) = CAST zif_lnt_union_bb14dc41( t1 ).
        DATA(t319) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924 ).
        t317 = t318->find_first_expression( i_type_9913 = t319 ).
        t316 = t317.
        DATA(t320) = VALUE abap_bool( ).
        DATA t321 TYPE REF TO zcl_lnt_expression_node.
        DATA(t322) = CAST zcl_lnt_expression_node( t316 ).
        t321 = t322.
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t324.
        t323 = t324.
        DATA(t325) = VALUE abap_bool( ).
        DATA(t326) = CAST zcl_lnt_expression_node( t321 ).
        IF t326 IS INITIAL.
          t325 = abap_true.
        ENDIF.
        t320 = t325.
        IF t320 = abap_true.
          DATA t327 TYPE REF TO zcl_lnt_expression_node.
          DATA(t328) = CAST zif_lnt_union_bb14dc41( t1 ).
          DATA(t329) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b ).
          t327 = t328->find_first_expression( i_type_9913 = t329 ).
          t316 = t327.
        ENDIF.
        DATA(t330) = VALUE abap_bool( ).
        DATA t331 TYPE REF TO zcl_lnt_expression_node.
        DATA(t332) = CAST zcl_lnt_expression_node( t316 ).
        t331 = t332.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t334.
        t333 = t334.
        DATA(t335) = VALUE abap_bool( ).
        DATA(t336) = CAST zcl_lnt_expression_node( t331 ).
        IF t336 IS INITIAL.
          t335 = abap_true.
        ENDIF.
        t330 = t335.
        IF t330 = abap_true.
          DATA t337 TYPE REF TO zcl_lnt_expression_node.
          DATA(t338) = CAST zif_lnt_union_bb14dc41( t1 ).
          DATA(t339) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
          t337 = t338->find_first_expression( i_type_9913 = t339 ).
          t316 = t337.
        ENDIF.
        DATA(t340) = VALUE abap_bool( ).
        DATA t341 TYPE REF TO zcl_lnt_expression_node.
        DATA(t342) = CAST zcl_lnt_expression_node( t316 ).
        t341 = t342.
        DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t344.
        t343 = t344.
        DATA(t345) = VALUE abap_bool( ).
        DATA(t346) = CAST zcl_lnt_expression_node( t341 ).
        IF t346 IS INITIAL.
          t345 = abap_true.
        ENDIF.
        t340 = t345.
        IF t340 = abap_true.
          DATA(t347) = CAST zcl_lnt_expression_node( t3 ).
          t316 = t347.
          DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t348.
          DATA t349 TYPE REF TO zcl_lnt_expression_node.
          DATA(t350) = CAST zcl_lnt_expression_node( t3 ).
          t349 = t350.
          DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t351.
          DATA(t352) = VALUE abap_bool( ).
          DATA(t353) = CAST zcl_lnt_expression_node( t349 ).
          IF t353 IS INITIAL.
            t352 = abap_true.
          ENDIF.
          IF t352 = abap_true.
            DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t354.
            t351 = t354.
          ELSE.
            DATA t355 TYPE string.
            DATA t356 TYPE REF TO zcl_lnt_expression_node.
            DATA(t357) = CAST zcl_lnt_expression_node( t349 ).
            t356 = t357.
            t355 = t356->concat_tokens( ).
            DATA(t358) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t358->has = abap_true.
            t358->value = t355.
            t351 = t358.
          ENDIF.
          t348 = t351.
          t302 = t348.
        ENDIF.
        DATA t359 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t359.
        DATA t360 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t360.
        DATA(t361) = CAST zcl_lnt_expression_node( t316 ).
        DATA t362 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t362.
        DATA(t363) = abap_true.
        IF t363 = abap_true.
          DATA(t364) = abap_false.
          DATA(t365) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t365->has = abap_true.
          t365->value = t364.
          t362 = t365.
        ELSE.
          DATA t366 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t366.
          t362 = t366.
        ENDIF.
        t360 = me->resolve_like_name( i_node = t361 i_header_logic = t362 ).
        t359 = t360.
        DATA t367 TYPE REF TO zcl_lnt_abstract_type.
        DATA t368 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t368.
        t367 = t368.
        DATA(t369) = VALUE abap_bool( ).
        DATA t370 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t371) = CAST zcl_lnt_abstract_type( t359 ).
        t370 = t371.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        t372 = t373.
        DATA(t374) = VALUE abap_bool( ).
        DATA(t375) = CAST zcl_lnt_abstract_type( t370 ).
        IF t375 IS INITIAL.
          t374 = abap_true.
        ENDIF.
        t369 = t374.
        IF t369 = abap_true.
          DATA t376 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t376.
          DATA(t377) = VALUE string( ).
          DATA(t378) = VALUE string( ).
          DATA(t379) = |Type error, could not resolve "|.
          DATA(t380) = VALUE string( ).
          DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t382) = CAST zlnt_runtime_opti_4ba3bdccd169( t302 ).
          t381 = t382.
          DATA(t383) = VALUE string( ).
          DATA(t384) = VALUE abap_bool( ).
          DATA(t385) = CAST zlnt_runtime_opti_4ba3bdccd169( t381 ).
          IF t385 IS INITIAL.
            t384 = abap_true.
          ELSEIF t385->has = abap_false.
            t384 = abap_true.
          ENDIF.
          IF t384 = abap_true.
            DATA(t386) = |undefined|.
            t383 = t386.
          ELSE.
            DATA t387 TYPE string.
            DATA(t388) = CAST zlnt_runtime_opti_4ba3bdccd169( t381 ).
            t387 = t388->value.
            t383 = t387.
          ENDIF.
          t380 = t383.
          DATA(t389) = strlen( t379 ).
          t378 = |{ t379 }{ t380 }|.
          DATA(t390) = |", parseType|.
          DATA(t391) = strlen( t378 ).
          t377 = |{ t378 }{ t390 }|.
          DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t392.
          t376 = NEW zcl_lnt_unknown_type( i_error = t377 i_qualified_name = t392 ).
          result = t376.
          RETURN.
        ELSE.
          DATA t393 TYPE abap_bool.
          DATA(t394) = CAST zcl_lnt_abstract_type( t359 ).
          t393 = xsdbool( t394 IS BOUND AND t394 IS INSTANCE OF zcl_lnt_ty_table_type ).
          IF t393 = abap_true.
            DATA t395 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t395.
            DATA(t396) = abap_true.
            IF t396 = abap_true.
              DATA t397 TYPE REF TO zcl_lnt_abstract_type.
              DATA t398 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t399 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t400) = CAST zcl_lnt_abstract_type( t359 ).
              t399 ?= t400.
              t398 = t399.
              DATA t401 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t402) = CAST zcl_lnt_ty_table_type( t398 ).
              t401 = t402->row_type.
              t397 = t401.
              t395 = t397.
            ELSE.
              DATA t403 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t403.
              t395 = t403.
            ENDIF.
            t367 = t395.
          ELSE.
            DATA t404 TYPE abap_bool.
            DATA(t405) = CAST zcl_lnt_abstract_type( t359 ).
            t404 = xsdbool( t405 IS BOUND AND t405 IS INSTANCE OF zcl_lnt_void_type ).
            IF t404 = abap_true.
              DATA t406 TYPE REF TO zcl_lnt_void_type.
              DATA(t407) = CAST zcl_lnt_abstract_type( t359 ).
              t406 ?= t407.
              t367 = t406.
            ELSE.
              DATA t408 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t408.
              DATA(t409) = VALUE string( ).
              DATA(t410) = |Type error, not a table type |.
              DATA(t411) = VALUE string( ).
              DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t413) = CAST zlnt_runtime_opti_4ba3bdccd169( t302 ).
              t412 = t413.
              DATA(t414) = VALUE string( ).
              DATA(t415) = VALUE abap_bool( ).
              DATA(t416) = CAST zlnt_runtime_opti_4ba3bdccd169( t412 ).
              IF t416 IS INITIAL.
                t415 = abap_true.
              ELSEIF t416->has = abap_false.
                t415 = abap_true.
              ENDIF.
              IF t415 = abap_true.
                DATA(t417) = |undefined|.
                t414 = t417.
              ELSE.
                DATA t418 TYPE string.
                DATA(t419) = CAST zlnt_runtime_opti_4ba3bdccd169( t412 ).
                t418 = t419->value.
                t414 = t418.
              ENDIF.
              t411 = t414.
              DATA(t420) = strlen( t410 ).
              t409 = |{ t410 }{ t411 }|.
              DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t421.
              t408 = NEW zcl_lnt_unknown_type( i_error = t409 i_qualified_name = t421 ).
              result = t408.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA(t422) = VALUE abap_bool( ).
        DATA t423 TYPE REF TO zif_lnt_union_bb14dc41.
        DATA(t424) = CAST zif_lnt_union_bb14dc41( t1 ).
        t423 = t424.
        DATA(t425) = VALUE abap_bool( ).
        DATA t426 TYPE abap_bool.
        DATA t427 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t428) = CAST zif_lnt_union_bb14dc41( t423 ).
        DATA(t429) = |OCCURS|.
        t427 = t428->find_direct_token_by_text( i_text = t429 ).
        t426 = xsdbool( t427 IS BOUND ).
        IF t426 = abap_true.
          DATA(t430) = abap_true.
          t425 = t430.
        ELSE.
          DATA(t431) = VALUE abap_bool( ).
          DATA(t432) = VALUE abap_bool( ).
          DATA t433 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t433.
          DATA t434 TYPE REF TO zcl_lnt_expression_node.
          DATA t435 TYPE REF TO zcl_lnt_expression_node.
          DATA(t436) = CAST zif_lnt_union_bb14dc41( t423 ).
          DATA(t437) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396 ).
          t435 = t436->find_first_expression( i_type_9913 = t437 ).
          t434 = t435.
          DATA t438 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t438.
          DATA(t439) = VALUE abap_bool( ).
          DATA(t440) = CAST zcl_lnt_expression_node( t434 ).
          IF t440 IS INITIAL.
            t439 = abap_true.
          ENDIF.
          IF t439 = abap_true.
            DATA t441 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t441.
            t438 = t441.
          ELSE.
            DATA t442 TYPE REF TO zcl_lnt_abstract_token.
            DATA t443 TYPE REF TO zcl_lnt_expression_node.
            DATA(t444) = CAST zcl_lnt_expression_node( t434 ).
            t443 = t444.
            DATA(t445) = |OCCURS|.
            t442 = t443->find_direct_token_by_text( i_text = t445 ).
            t438 = t442.
          ENDIF.
          t433 = t438.
          t432 = xsdbool( t433 IS BOUND ).
          IF t432 = abap_true.
            DATA(t446) = abap_true.
            t431 = t446.
          ELSE.
            DATA(t447) = abap_false.
            t431 = t447.
          ENDIF.
          t425 = t431.
        ENDIF.
        t422 = t425.
        IF t422 = abap_true.
          DATA t448 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t448.
          DATA t449 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t450) = CAST zcl_lnt_abstract_type( t367 ).
          t449 = t450.
          DATA t451 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t451.
          DATA(t452) = VALUE abap_bool( ).
          DATA(t453) = VALUE i( ).
          DATA t454 TYPE string.
          DATA(t455) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
          t454 = t455->value.
          DATA(t456) = | WITH HEADER LINE|.
          DATA(t457) = strlen( t454 ).
          IF t456 IS INITIAL.
            t453 = 0.
          ELSE.
            FIND t456 IN t454 MATCH OFFSET t453.
            IF sy-subrc <> 0.
              t453 = -1.
            ENDIF.
          ENDIF.
          DATA(t458) = 0.
          t452 = xsdbool( t453 >= t458 ).
          DATA(t459) = |DEFAULT|.
          DATA t460 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t460.
          DATA t461 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t461.
          t451 = NEW zcl_lnt_itable_options( i_with_header = t452 i_key_type = t459 i_primary_key = t460 i_secondary = t461 ).
          DATA(t462) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
          DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t463.
          t448 = NEW zcl_lnt_ty_table_type( i_row_type = t449 i_options = t451 i_qualified_name = t462 i_description = t463 ).
          result = t448.
          RETURN.
        ENDIF.
        DATA t464 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t464.
        DATA(t465) = abap_true.
        IF t465 = abap_true.
          DATA t466 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t467) = CAST zcl_lnt_abstract_type( t367 ).
          t466 = t467.
          t464 = t466.
        ELSE.
          DATA t468 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t468.
          t464 = t468.
        ENDIF.
        result = t464.
        RETURN.
      ELSE.
        DATA(t469) = VALUE abap_bool( ).
        DATA t470 TYPE string.
        DATA(t471) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
        t470 = t471->value.
        DATA(t472) = |LIKE REF TO |.
        DATA(t473) = strlen( t470 ).
        DATA t474 TYPE i.
        DATA(t475) = VALUE i( ).
        DATA(t476) = VALUE string( ).
        t474 = strlen( t472 ).
        IF t474 = 0.
          t469 = abap_true.
        ELSEIF t474 <= t473.
          t475 = 0.
          t476 = t470+t475(t474).
          IF t476 = t472.
            t469 = abap_true.
          ENDIF.
        ENDIF.
        IF t469 = abap_true.
          DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t477.
          DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t478.
          DATA t479 TYPE REF TO zcl_lnt_expression_node.
          DATA t480 TYPE REF TO zcl_lnt_expression_node.
          DATA(t481) = CAST zif_lnt_union_bb14dc41( t1 ).
          DATA(t482) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
          t480 = t481->find_first_expression( i_type_9913 = t482 ).
          t479 = t480.
          DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t483.
          DATA(t484) = VALUE abap_bool( ).
          DATA(t485) = CAST zcl_lnt_expression_node( t479 ).
          IF t485 IS INITIAL.
            t484 = abap_true.
          ENDIF.
          IF t484 = abap_true.
            DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t486.
            t483 = t486.
          ELSE.
            DATA t487 TYPE string.
            DATA t488 TYPE REF TO zcl_lnt_expression_node.
            DATA(t489) = CAST zcl_lnt_expression_node( t479 ).
            t488 = t489.
            t487 = t488->concat_tokens( ).
            DATA(t490) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t490->has = abap_true.
            t490->value = t487.
            t483 = t490.
          ENDIF.
          t478 = t483.
          t477 = t478.
          DATA t491 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t491.
          DATA t492 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t492.
          DATA t493 TYPE REF TO zcl_lnt_expression_node.
          DATA(t494) = CAST zif_lnt_union_bb14dc41( t1 ).
          DATA(t495) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924 ).
          t493 = t494->find_first_expression( i_type_9913 = t495 ).
          DATA t496 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t496.
          DATA(t497) = abap_true.
          IF t497 = abap_true.
            DATA(t498) = abap_false.
            DATA(t499) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t499->has = abap_true.
            t499->value = t498.
            t496 = t499.
          ELSE.
            DATA t500 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t500.
            t496 = t500.
          ENDIF.
          t492 = me->resolve_like_name( i_node = t493 i_header_logic = t496 ).
          t491 = t492.
          DATA(t501) = VALUE abap_bool( ).
          DATA t502 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t503) = CAST zcl_lnt_abstract_type( t491 ).
          t502 = t503.
          DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t505.
          t504 = t505.
          DATA(t506) = VALUE abap_bool( ).
          DATA(t507) = CAST zcl_lnt_abstract_type( t502 ).
          IF t507 IS INITIAL.
            t506 = abap_true.
          ENDIF.
          t501 = t506.
          IF t501 = abap_true.
            DATA t508 TYPE REF TO zcl_lnt_unknown_type.
            CLEAR t508.
            DATA(t509) = VALUE string( ).
            DATA(t510) = VALUE string( ).
            DATA(t511) = |Type error, could not resolve "|.
            DATA(t512) = VALUE string( ).
            DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t514) = CAST zlnt_runtime_opti_4ba3bdccd169( t477 ).
            t513 = t514.
            DATA(t515) = VALUE string( ).
            DATA(t516) = VALUE abap_bool( ).
            DATA(t517) = CAST zlnt_runtime_opti_4ba3bdccd169( t513 ).
            IF t517 IS INITIAL.
              t516 = abap_true.
            ELSEIF t517->has = abap_false.
              t516 = abap_true.
            ENDIF.
            IF t516 = abap_true.
              DATA(t518) = |undefined|.
              t515 = t518.
            ELSE.
              DATA t519 TYPE string.
              DATA(t520) = CAST zlnt_runtime_opti_4ba3bdccd169( t513 ).
              t519 = t520->value.
              t515 = t519.
            ENDIF.
            t512 = t515.
            DATA(t521) = strlen( t511 ).
            t510 = |{ t511 }{ t512 }|.
            DATA(t522) = |", parseType|.
            DATA(t523) = strlen( t510 ).
            t509 = |{ t510 }{ t522 }|.
            DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t524.
            t508 = NEW zcl_lnt_unknown_type( i_error = t509 i_qualified_name = t524 ).
            result = t508.
            RETURN.
          ENDIF.
          DATA t525 TYPE REF TO zcl_lnt_data_reference.
          DATA t526 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t527) = CAST zcl_lnt_abstract_type( t491 ).
          t526 = t527.
          DATA(t528) = CAST zlnt_runtime_opti_4ba3bdccd169( t477 ).
          t525 = NEW zcl_lnt_data_reference( i_type_9913 = t526 i_qualified_name = t528 ).
          result = t525.
          RETURN.
        ELSE.
          DATA(t529) = VALUE abap_bool( ).
          DATA(t530) = VALUE abap_bool( ).
          DATA(t531) = VALUE abap_bool( ).
          DATA t532 TYPE abap_bool.
          DATA t533 TYPE abap_bool.
          DATA t534 TYPE string.
          DATA(t535) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
          t534 = t535->value.
          DATA(t536) = |TYPE STANDARD TABLE|.
          t533 = xsdbool( t534 = t536 ).
          t532 = t533.
          IF t533 = abap_false.
            DATA t537 TYPE abap_bool.
            DATA t538 TYPE string.
            DATA(t539) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
            t538 = t539->value.
            DATA(t540) = |TYPE SORTED TABLE|.
            t537 = xsdbool( t538 = t540 ).
            t532 = t537.
          ENDIF.
          t531 = t532.
          IF t532 = abap_false.
            DATA t541 TYPE abap_bool.
            DATA t542 TYPE string.
            DATA(t543) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
            t542 = t543->value.
            DATA(t544) = |TYPE HASHED TABLE|.
            t541 = xsdbool( t542 = t544 ).
            t531 = t541.
          ENDIF.
          t530 = t531.
          IF t531 = abap_false.
            DATA t545 TYPE abap_bool.
            DATA t546 TYPE string.
            DATA(t547) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
            t546 = t547->value.
            DATA(t548) = |TYPE INDEX TABLE|.
            t545 = xsdbool( t546 = t548 ).
            t530 = t545.
          ENDIF.
          t529 = t530.
          IF t530 = abap_false.
            DATA t549 TYPE abap_bool.
            DATA t550 TYPE string.
            DATA(t551) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
            t550 = t551->value.
            DATA(t552) = |TYPE ANY TABLE|.
            t549 = xsdbool( t550 = t552 ).
            t529 = t549.
          ENDIF.
          IF t529 = abap_true.
            DATA t553 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t553.
            DATA t554 TYPE REF TO zcl_lnt_any_type.
            DATA t555 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t555.
            t554 = zcl_lnt_any_type=>get_db65( i_input_967e = t555 ).
            DATA t556 TYPE REF TO zcl_lnt_itable_options.
            CLEAR t556.
            DATA(t557) = VALUE abap_bool( ).
            DATA(t558) = VALUE i( ).
            DATA t559 TYPE string.
            DATA t560 TYPE string.
            DATA(t561) = CAST zif_lnt_union_bb14dc41( t1 ).
            t560 = t561->concat_tokens( ).
            DATA(t562) = strlen( t560 ).
            t559 = t560.
            IF t559 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t559 TO UPPER CASE.
            ELSE.
              t559 = zlnt_runtime_uppe_91169605024d=>full( t559 ).
            ENDIF.
            DATA(t563) = |WITH HEADER LINE|.
            DATA(t564) = strlen( t559 ).
            IF t563 IS INITIAL.
              t558 = 0.
            ELSE.
              FIND t563 IN t559 MATCH OFFSET t558.
              IF sy-subrc <> 0.
                t558 = -1.
              ENDIF.
            ENDIF.
            DATA(t565) = 0.
            t557 = xsdbool( t558 >= t565 ).
            DATA(t566) = |USER|.
            DATA t567 TYPE REF TO zcl_lnt_itable_key.
            CLEAR t567.
            DATA t568 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t568.
            t556 = NEW zcl_lnt_itable_options( i_with_header = t557 i_key_type = t566 i_primary_key = t567 i_secondary = t568 ).
            DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t569.
            DATA t570 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t570.
            t553 = NEW zcl_lnt_ty_table_type( i_row_type = t554 i_options = t556 i_qualified_name = t569 i_description = t570 ).
            result = t553.
            RETURN.
          ELSE.
            DATA(t571) = VALUE abap_bool( ).
            DATA t572 TYPE string.
            DATA(t573) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
            t572 = t573->value.
            DATA(t574) = |LIKE |.
            DATA(t575) = strlen( t572 ).
            DATA t576 TYPE i.
            DATA(t577) = VALUE i( ).
            DATA(t578) = VALUE string( ).
            t576 = strlen( t574 ).
            IF t576 = 0.
              t571 = abap_true.
            ELSEIF t576 <= t575.
              t577 = 0.
              t578 = t572+t577(t576).
              IF t578 = t574.
                t571 = abap_true.
              ENDIF.
            ENDIF.
            IF t571 = abap_true.
              DATA t579 TYPE REF TO zcl_lnt_expression_node.
              DATA t580 TYPE REF TO zcl_lnt_expression_node.
              DATA(t581) = CAST zif_lnt_union_bb14dc41( t1 ).
              DATA(t582) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924 ).
              t580 = t581->find_first_expression( i_type_9913 = t582 ).
              t579 = t580.
              DATA(t583) = VALUE abap_bool( ).
              DATA t584 TYPE REF TO zcl_lnt_expression_node.
              DATA(t585) = CAST zcl_lnt_expression_node( t579 ).
              t584 = t585.
              DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t587.
              t586 = t587.
              DATA(t588) = VALUE abap_bool( ).
              DATA(t589) = CAST zcl_lnt_expression_node( t584 ).
              IF t589 IS INITIAL.
                t588 = abap_true.
              ENDIF.
              t583 = t588.
              IF t583 = abap_true.
                DATA t590 TYPE REF TO zcl_lnt_expression_node.
                DATA(t591) = CAST zif_lnt_union_bb14dc41( t1 ).
                DATA(t592) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b ).
                t590 = t591->find_first_expression( i_type_9913 = t592 ).
                t579 = t590.
              ENDIF.
              DATA(t593) = VALUE abap_bool( ).
              DATA t594 TYPE REF TO zcl_lnt_expression_node.
              DATA(t595) = CAST zcl_lnt_expression_node( t579 ).
              t594 = t595.
              DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t597.
              t596 = t597.
              DATA(t598) = VALUE abap_bool( ).
              DATA(t599) = CAST zcl_lnt_expression_node( t594 ).
              IF t599 IS INITIAL.
                t598 = abap_true.
              ENDIF.
              t593 = t598.
              IF t593 = abap_true.
                DATA t600 TYPE REF TO zcl_lnt_expression_node.
                DATA(t601) = CAST zif_lnt_union_bb14dc41( t1 ).
                DATA(t602) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429 ).
                t600 = t601->find_first_expression( i_type_9913 = t602 ).
                t579 = t600.
              ENDIF.
              DATA(t603) = VALUE abap_bool( ).
              DATA t604 TYPE REF TO zcl_lnt_expression_node.
              DATA(t605) = CAST zcl_lnt_expression_node( t579 ).
              t604 = t605.
              DATA t606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t607.
              t606 = t607.
              DATA(t608) = VALUE abap_bool( ).
              DATA(t609) = CAST zcl_lnt_expression_node( t604 ).
              IF t609 IS INITIAL.
                t608 = abap_true.
              ENDIF.
              t603 = t608.
              IF t603 = abap_true.
                DATA t610 TYPE REF TO zcl_lnt_expression_node.
                DATA(t611) = CAST zif_lnt_union_bb14dc41( t1 ).
                DATA(t612) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
                t610 = t611->find_first_expression( i_type_9913 = t612 ).
                t579 = t610.
              ENDIF.
              DATA(t613) = VALUE abap_bool( ).
              DATA t614 TYPE REF TO zcl_lnt_expression_node.
              DATA(t615) = CAST zcl_lnt_expression_node( t579 ).
              t614 = t615.
              DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t617.
              t616 = t617.
              DATA(t618) = VALUE abap_bool( ).
              DATA(t619) = CAST zcl_lnt_expression_node( t614 ).
              IF t619 IS INITIAL.
                t618 = abap_true.
              ENDIF.
              t613 = t618.
              IF t613 = abap_true.
                DATA t620 TYPE REF TO zcl_lnt_expression_node.
                DATA(t621) = CAST zif_lnt_union_bb14dc41( t1 ).
                DATA(t622) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
                t620 = t621->find_first_expression( i_type_9913 = t622 ).
                t579 = t620.
              ENDIF.
              DATA t623 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t624) = CAST zcl_lnt_expression_node( t579 ).
              DATA t625 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t625.
              t623 = me->resolve_like_name( i_node = t624 i_header_logic = t625 ).
              t250 = t623.
              DATA t626 TYPE abap_bool.
              DATA t627 TYPE abap_bool.
              DATA(t628) = CAST zcl_lnt_abstract_type( t250 ).
              t627 = xsdbool( t628 IS BOUND ).
              t626 = t627.
              IF t627 = abap_true.
                DATA(t629) = VALUE abap_bool( ).
                DATA t630 TYPE REF TO zif_lnt_union_bb14dc41.
                DATA(t631) = CAST zif_lnt_union_bb14dc41( t1 ).
                t630 = t631.
                DATA(t632) = VALUE abap_bool( ).
                DATA t633 TYPE abap_bool.
                DATA t634 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t635) = CAST zif_lnt_union_bb14dc41( t630 ).
                DATA(t636) = |OCCURS|.
                t634 = t635->find_direct_token_by_text( i_text = t636 ).
                t633 = xsdbool( t634 IS BOUND ).
                IF t633 = abap_true.
                  DATA(t637) = abap_true.
                  t632 = t637.
                ELSE.
                  DATA(t638) = VALUE abap_bool( ).
                  DATA(t639) = VALUE abap_bool( ).
                  DATA t640 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t640.
                  DATA t641 TYPE REF TO zcl_lnt_expression_node.
                  DATA t642 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t643) = CAST zif_lnt_union_bb14dc41( t630 ).
                  DATA(t644) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396 ).
                  t642 = t643->find_first_expression( i_type_9913 = t644 ).
                  t641 = t642.
                  DATA t645 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t645.
                  DATA(t646) = VALUE abap_bool( ).
                  DATA(t647) = CAST zcl_lnt_expression_node( t641 ).
                  IF t647 IS INITIAL.
                    t646 = abap_true.
                  ENDIF.
                  IF t646 = abap_true.
                    DATA t648 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t648.
                    t645 = t648.
                  ELSE.
                    DATA t649 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t650 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t651) = CAST zcl_lnt_expression_node( t641 ).
                    t650 = t651.
                    DATA(t652) = |OCCURS|.
                    t649 = t650->find_direct_token_by_text( i_text = t652 ).
                    t645 = t649.
                  ENDIF.
                  t640 = t645.
                  t639 = xsdbool( t640 IS BOUND ).
                  IF t639 = abap_true.
                    DATA(t653) = abap_true.
                    t638 = t653.
                  ELSE.
                    DATA(t654) = abap_false.
                    t638 = t654.
                  ENDIF.
                  t632 = t638.
                ENDIF.
                t629 = t632.
                t626 = t629.
              ENDIF.
              IF t626 = abap_true.
                DATA t655 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t655.
                DATA t656 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t657) = CAST zcl_lnt_abstract_type( t250 ).
                t656 = t657.
                DATA t658 TYPE REF TO zcl_lnt_itable_options.
                CLEAR t658.
                DATA(t659) = VALUE abap_bool( ).
                DATA(t660) = VALUE i( ).
                DATA t661 TYPE string.
                DATA(t662) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
                t661 = t662->value.
                DATA(t663) = |WITH HEADER LINE|.
                DATA(t664) = strlen( t661 ).
                IF t663 IS INITIAL.
                  t660 = 0.
                ELSE.
                  FIND t663 IN t661 MATCH OFFSET t660.
                  IF sy-subrc <> 0.
                    t660 = -1.
                  ENDIF.
                ENDIF.
                DATA(t665) = 0.
                t659 = xsdbool( t660 >= t665 ).
                DATA(t666) = |DEFAULT|.
                DATA t667 TYPE REF TO zcl_lnt_itable_key.
                CLEAR t667.
                DATA t668 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t668.
                t658 = NEW zcl_lnt_itable_options( i_with_header = t659 i_key_type = t666 i_primary_key = t667 i_secondary = t668 ).
                DATA(t669) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
                DATA t670 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t670.
                t655 = NEW zcl_lnt_ty_table_type( i_row_type = t656 i_options = t658 i_qualified_name = t669 i_description = t670 ).
                t250 = t655.
              ELSE.
                DATA(t671) = VALUE abap_bool( ).
                DATA(t672) = VALUE abap_bool( ).
                DATA t673 TYPE string.
                DATA(t674) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
                t673 = t674->value.
                DATA(t675) = | WITH HEADER LINE|.
                DATA(t676) = strlen( t673 ).
                DATA t677 TYPE i.
                DATA(t678) = VALUE i( ).
                DATA(t679) = VALUE string( ).
                t677 = strlen( t675 ).
                IF t677 = 0.
                  t672 = abap_true.
                ELSEIF t677 <= t676.
                  t678 = 0.
                  t678 = t676 - t677.
                  t679 = t673+t678(t677).
                  IF t679 = t675.
                    t672 = abap_true.
                  ENDIF.
                ENDIF.
                t671 = t672.
                IF t672 = abap_true.
                  DATA t680 TYPE abap_bool.
                  DATA(t681) = CAST zcl_lnt_abstract_type( t250 ).
                  t680 = xsdbool( t681 IS BOUND AND t681 IS INSTANCE OF zcl_lnt_ty_table_type ).
                  t671 = t680.
                ENDIF.
                IF t671 = abap_true.
                  DATA t682 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t683 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t684 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t685 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA(t686) = CAST zcl_lnt_abstract_type( t250 ).
                  t685 ?= t686.
                  t684 = t685.
                  DATA t687 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t688) = CAST zcl_lnt_ty_table_type( t684 ).
                  t687 = t688->row_type.
                  t683 = t687.
                  DATA t689 TYPE REF TO zcl_lnt_itable_options.
                  DATA(t690) = abap_true.
                  DATA(t691) = |DEFAULT|.
                  DATA t692 TYPE REF TO zcl_lnt_itable_key.
                  CLEAR t692.
                  DATA t693 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t693.
                  t689 = NEW zcl_lnt_itable_options( i_with_header = t690 i_key_type = t691 i_primary_key = t692 i_secondary = t693 ).
                  DATA(t694) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
                  DATA t695 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t695.
                  t682 = NEW zcl_lnt_ty_table_type( i_row_type = t683 i_options = t689 i_qualified_name = t694 i_description = t695 ).
                  t250 = t682.
                ENDIF.
              ENDIF.
            ELSE.
              DATA(t696) = VALUE abap_bool( ).
              DATA t697 TYPE string.
              DATA(t698) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
              t697 = t698->value.
              DATA(t699) = |TYPE LINE OF |.
              DATA(t700) = strlen( t697 ).
              DATA t701 TYPE i.
              DATA(t702) = VALUE i( ).
              DATA(t703) = VALUE string( ).
              t701 = strlen( t699 ).
              IF t701 = 0.
                t696 = abap_true.
              ELSEIF t701 <= t700.
                t702 = 0.
                t703 = t697+t702(t701).
                IF t703 = t699.
                  t696 = abap_true.
                ENDIF.
              ENDIF.
              IF t696 = abap_true.
                DATA t704 TYPE REF TO zcl_lnt_expression_node.
                DATA t705 TYPE REF TO zcl_lnt_expression_node.
                DATA(t706) = CAST zif_lnt_union_bb14dc41( t1 ).
                DATA(t707) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
                t705 = t706->find_first_expression( i_type_9913 = t707 ).
                t704 = t705.
                DATA t708 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t709) = CAST zcl_lnt_expression_node( t704 ).
                DATA t710 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                CLEAR t710.
                DATA t711 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                CLEAR t711.
                DATA t712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t712.
                t708 = me->resolve_type_name( i_type_name = t709 i_length = t710 i_decimals_2eed = t711 i_qualified_name = t712 ).
                t250 = t708.
                DATA(t713) = CAST zcl_lnt_abstract_type( t250 ).
                DATA t714 TYPE abap_bool.
                DATA(t715) = CAST zcl_lnt_abstract_type( t250 ).
                t714 = xsdbool( t715 IS BOUND AND t715 IS INSTANCE OF zcl_lnt_ty_table_type ).
                IF t714 = abap_true.
                  DATA t716 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t716.
                  DATA(t717) = abap_true.
                  IF t717 = abap_true.
                    DATA t718 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t719 TYPE REF TO zcl_lnt_ty_table_type.
                    DATA t720 TYPE REF TO zcl_lnt_ty_table_type.
                    DATA(t721) = CAST zcl_lnt_abstract_type( t250 ).
                    t720 ?= t721.
                    t719 = t720.
                    DATA t722 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t723) = CAST zcl_lnt_ty_table_type( t719 ).
                    t722 = t723->row_type.
                    t718 = t722.
                    t716 = t718.
                  ELSE.
                    DATA t724 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t724.
                    t716 = t724.
                  ENDIF.
                  result = t716.
                  RETURN.
                ELSE.
                  DATA t725 TYPE abap_bool.
                  DATA(t726) = CAST zcl_lnt_abstract_type( t250 ).
                  t725 = xsdbool( t726 IS BOUND AND t726 IS INSTANCE OF zcl_lnt_void_type ).
                  IF t725 = abap_true.
                    DATA t727 TYPE REF TO zcl_lnt_void_type.
                    DATA(t728) = CAST zcl_lnt_abstract_type( t250 ).
                    t727 ?= t728.
                    result = t727.
                    RETURN.
                  ELSE.
                    DATA t729 TYPE abap_bool.
                    DATA(t730) = CAST zcl_lnt_abstract_type( t250 ).
                    t729 = xsdbool( t730 IS BOUND AND t730 IS INSTANCE OF zcl_lnt_unknown_type ).
                    IF t729 = abap_true.
                      DATA t731 TYPE REF TO zcl_lnt_unknown_type.
                      DATA t732 TYPE string.
                      DATA(t733) = |TYPE LINE OF, unknown type, |.
                      DATA t734 TYPE string.
                      DATA t735 TYPE REF TO zcl_lnt_unknown_type.
                      DATA t736 TYPE REF TO zcl_lnt_unknown_type.
                      DATA(t737) = CAST zcl_lnt_abstract_type( t250 ).
                      t736 ?= t737.
                      t735 = t736.
                      DATA t738 TYPE string.
                      DATA(t739) = CAST zcl_lnt_unknown_type( t735 ).
                      t738 = t739->error.
                      t734 = t738.
                      DATA(t740) = strlen( t733 ).
                      t732 = |{ t733 }{ t734 }|.
                      DATA t741 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t741.
                      t731 = NEW zcl_lnt_unknown_type( i_error = t732 i_qualified_name = t741 ).
                      result = t731.
                      RETURN.
                    ELSE.
                      DATA t742 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t742.
                      DATA(t743) = VALUE string( ).
                      DATA(t744) = |TYPE LINE OF, unexpected type, |.
                      DATA(t745) = VALUE string( ).
                      DATA t746 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t746.
                      DATA t747 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t747.
                      DATA t748 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                      CLEAR t748.
                      DATA t749 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                      CLEAR t749.
                      DATA t750 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t751) = CAST zcl_lnt_abstract_type( t250 ).
                      t750 = t751.
                      DATA t752 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                      CLEAR t752.
                      DATA(t753) = VALUE abap_bool( ).
                      DATA(t754) = CAST zcl_lnt_abstract_type( t750 ).
                      IF t754 IS INITIAL.
                        t753 = abap_true.
                      ENDIF.
                      IF t753 = abap_true.
                        DATA t755 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                        CLEAR t755.
                        t752 = t755.
                      ELSE.
                        DATA t756 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                        DATA t757 TYPE REF TO zcl_lnt_abstract_type.
                        DATA(t758) = CAST zcl_lnt_abstract_type( t750 ).
                        t757 = t758.
                        t756 = t757->zlnt_builtin_clas_3f891b097658( ).
                        t752 = t756.
                      ENDIF.
                      t749 = t752.
                      t748 = t749.
                      DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t759.
                      DATA(t760) = VALUE abap_bool( ).
                      DATA(t761) = CAST zlnt_runtime_clas_a39833db3295( t748 ).
                      IF t761 IS INITIAL.
                        t760 = abap_true.
                      ENDIF.
                      IF t760 = abap_true.
                        DATA t762 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t762.
                        t759 = t762.
                      ELSE.
                        DATA t763 TYPE string.
                        DATA t764 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                        DATA(t765) = CAST zlnt_runtime_clas_a39833db3295( t748 ).
                        t764 = t765.
                        t763 = t764->name.
                        DATA(t766) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t766->has = abap_true.
                        t766->value = t763.
                        t759 = t766.
                      ENDIF.
                      t747 = t759.
                      t746 = t747.
                      DATA(t767) = VALUE string( ).
                      DATA(t768) = VALUE abap_bool( ).
                      DATA(t769) = CAST zlnt_runtime_opti_4ba3bdccd169( t746 ).
                      IF t769 IS INITIAL.
                        t768 = abap_true.
                      ELSEIF t769->has = abap_false.
                        t768 = abap_true.
                      ENDIF.
                      IF t768 = abap_true.
                        DATA(t770) = |undefined|.
                        t767 = t770.
                      ELSE.
                        DATA t771 TYPE string.
                        DATA(t772) = CAST zlnt_runtime_opti_4ba3bdccd169( t746 ).
                        t771 = t772->value.
                        t767 = t771.
                      ENDIF.
                      t745 = t767.
                      DATA(t773) = strlen( t744 ).
                      t743 = |{ t744 }{ t745 }|.
                      DATA t774 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t774.
                      t742 = NEW zcl_lnt_unknown_type( i_error = t743 i_qualified_name = t774 ).
                      result = t742.
                      RETURN.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ELSE.
                DATA(t775) = VALUE abap_bool( ).
                DATA t776 TYPE string.
                DATA(t777) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
                t776 = t777->value.
                DATA(t778) = |TYPE REF TO |.
                DATA(t779) = strlen( t776 ).
                DATA t780 TYPE i.
                DATA(t781) = VALUE i( ).
                DATA(t782) = VALUE string( ).
                t780 = strlen( t778 ).
                IF t780 = 0.
                  t775 = abap_true.
                ELSEIF t780 <= t779.
                  t781 = 0.
                  t782 = t776+t781(t780).
                  IF t782 = t778.
                    t775 = abap_true.
                  ENDIF.
                ENDIF.
                IF t775 = abap_true.
                  DATA t783 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t784) = CAST zcl_lnt_expression_node( t3 ).
                  t783 = me->resolve_type_ref( i_chain_8ed6 = t784 ).
                  t250 = t783.
                ELSE.
                  DATA(t785) = VALUE abap_bool( ).
                  DATA t786 TYPE string.
                  DATA(t787) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
                  t786 = t787->value.
                  DATA(t788) = |TYPE|.
                  DATA(t789) = strlen( t786 ).
                  DATA t790 TYPE i.
                  DATA(t791) = VALUE i( ).
                  DATA(t792) = VALUE string( ).
                  t790 = strlen( t788 ).
                  IF t790 = 0.
                    t785 = abap_true.
                  ELSEIF t790 <= t789.
                    t791 = 0.
                    t792 = t786+t791(t790).
                    IF t792 = t788.
                      t785 = abap_true.
                    ENDIF.
                  ENDIF.
                  IF t785 = abap_true.
                    DATA t793 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t794) = CAST zcl_lnt_expression_node( t3 ).
                    DATA t795 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                    DATA(t796) = CAST zif_lnt_union_bb14dc41( t1 ).
                    t795 = me->find_length( i_node = t796 ).
                    DATA t797 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                    DATA(t798) = CAST zif_lnt_union_bb14dc41( t1 ).
                    t797 = me->find_decimals( i_node = t798 ).
                    DATA(t799) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
                    t793 = me->resolve_type_name( i_type_name = t794 i_length = t795 i_decimals_2eed = t797 i_qualified_name = t799 ).
                    t250 = t793.
                    DATA(t800) = VALUE string( ).
                    DATA t801 TYPE string.
                    DATA t802 TYPE string.
                    DATA(t803) = CAST zif_lnt_union_bb14dc41( t1 ).
                    t802 = t803->concat_tokens( ).
                    DATA(t804) = strlen( t802 ).
                    t801 = t802.
                    IF t801 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                      TRANSLATE t801 TO UPPER CASE.
                    ELSE.
                      t801 = zlnt_runtime_uppe_91169605024d=>full( t801 ).
                    ENDIF.
                    t800 = t801.
                    DATA t805 TYPE abap_bool.
                    DATA t806 TYPE abap_bool.
                    DATA(t807) = CAST zcl_lnt_abstract_type( t250 ).
                    t806 = xsdbool( t807 IS BOUND ).
                    t805 = t806.
                    IF t806 = abap_true.
                      DATA(t808) = VALUE abap_bool( ).
                      DATA t809 TYPE REF TO zif_lnt_union_bb14dc41.
                      DATA(t810) = CAST zif_lnt_union_bb14dc41( t1 ).
                      t809 = t810.
                      DATA(t811) = VALUE abap_bool( ).
                      DATA t812 TYPE abap_bool.
                      DATA t813 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t814) = CAST zif_lnt_union_bb14dc41( t809 ).
                      DATA(t815) = |OCCURS|.
                      t813 = t814->find_direct_token_by_text( i_text = t815 ).
                      t812 = xsdbool( t813 IS BOUND ).
                      IF t812 = abap_true.
                        DATA(t816) = abap_true.
                        t811 = t816.
                      ELSE.
                        DATA(t817) = VALUE abap_bool( ).
                        DATA(t818) = VALUE abap_bool( ).
                        DATA t819 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t819.
                        DATA t820 TYPE REF TO zcl_lnt_expression_node.
                        DATA t821 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t822) = CAST zif_lnt_union_bb14dc41( t809 ).
                        DATA(t823) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396 ).
                        t821 = t822->find_first_expression( i_type_9913 = t823 ).
                        t820 = t821.
                        DATA t824 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t824.
                        DATA(t825) = VALUE abap_bool( ).
                        DATA(t826) = CAST zcl_lnt_expression_node( t820 ).
                        IF t826 IS INITIAL.
                          t825 = abap_true.
                        ENDIF.
                        IF t825 = abap_true.
                          DATA t827 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t827.
                          t824 = t827.
                        ELSE.
                          DATA t828 TYPE REF TO zcl_lnt_abstract_token.
                          DATA t829 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t830) = CAST zcl_lnt_expression_node( t820 ).
                          t829 = t830.
                          DATA(t831) = |OCCURS|.
                          t828 = t829->find_direct_token_by_text( i_text = t831 ).
                          t824 = t828.
                        ENDIF.
                        t819 = t824.
                        t818 = xsdbool( t819 IS BOUND ).
                        IF t818 = abap_true.
                          DATA(t832) = abap_true.
                          t817 = t832.
                        ELSE.
                          DATA(t833) = abap_false.
                          t817 = t833.
                        ENDIF.
                        t811 = t817.
                      ENDIF.
                      t808 = t811.
                      t805 = t808.
                    ENDIF.
                    IF t805 = abap_true.
                      DATA t834 TYPE REF TO zcl_lnt_ty_table_type.
                      CLEAR t834.
                      DATA t835 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t836) = CAST zcl_lnt_abstract_type( t250 ).
                      t835 = t836.
                      DATA t837 TYPE REF TO zcl_lnt_itable_options.
                      CLEAR t837.
                      DATA(t838) = VALUE abap_bool( ).
                      DATA(t839) = VALUE i( ).
                      DATA(t840) = t800.
                      DATA(t841) = | WITH HEADER LINE|.
                      DATA(t842) = strlen( t840 ).
                      IF t841 IS INITIAL.
                        t839 = 0.
                      ELSE.
                        FIND t841 IN t840 MATCH OFFSET t839.
                        IF sy-subrc <> 0.
                          t839 = -1.
                        ENDIF.
                      ENDIF.
                      DATA(t843) = 0.
                      t838 = xsdbool( t839 >= t843 ).
                      DATA(t844) = |DEFAULT|.
                      DATA t845 TYPE REF TO zcl_lnt_itable_key.
                      CLEAR t845.
                      DATA t846 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      CLEAR t846.
                      t837 = NEW zcl_lnt_itable_options( i_with_header = t838 i_key_type = t844 i_primary_key = t845 i_secondary = t846 ).
                      DATA(t847) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
                      DATA t848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t848.
                      t834 = NEW zcl_lnt_ty_table_type( i_row_type = t835 i_options = t837 i_qualified_name = t847 i_description = t848 ).
                      t250 = t834.
                    ELSE.
                      DATA t849 TYPE abap_bool.
                      DATA t850 TYPE abap_bool.
                      DATA(t851) = CAST zcl_lnt_abstract_type( t250 ).
                      t850 = xsdbool( t851 IS BOUND ).
                      t849 = t850.
                      IF t850 = abap_true.
                        DATA(t852) = VALUE abap_bool( ).
                        DATA(t853) = VALUE i( ).
                        DATA(t854) = t800.
                        DATA(t855) = | WITH HEADER LINE|.
                        DATA(t856) = strlen( t854 ).
                        IF t855 IS INITIAL.
                          t853 = 0.
                        ELSE.
                          FIND t855 IN t854 MATCH OFFSET t853.
                          IF sy-subrc <> 0.
                            t853 = -1.
                          ENDIF.
                        ENDIF.
                        DATA(t857) = 0.
                        t852 = xsdbool( t853 >= t857 ).
                        t849 = t852.
                      ENDIF.
                      IF t849 = abap_true.
                        DATA t858 TYPE abap_bool.
                        DATA(t859) = CAST zcl_lnt_abstract_type( t250 ).
                        t858 = xsdbool( t859 IS BOUND AND t859 IS INSTANCE OF zcl_lnt_void_type ).
                        IF t858 = abap_true.
                          DATA t860 TYPE REF TO zcl_lnt_ty_table_type.
                          DATA t861 TYPE REF TO zcl_lnt_void_type.
                          DATA(t862) = CAST zcl_lnt_abstract_type( t250 ).
                          t861 ?= t862.
                          DATA t863 TYPE REF TO zcl_lnt_itable_options.
                          DATA(t864) = abap_true.
                          DATA(t865) = |DEFAULT|.
                          DATA t866 TYPE REF TO zcl_lnt_itable_key.
                          CLEAR t866.
                          DATA t867 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          CLEAR t867.
                          t863 = NEW zcl_lnt_itable_options( i_with_header = t864 i_key_type = t865 i_primary_key = t866 i_secondary = t867 ).
                          DATA t868 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t868.
                          DATA t869 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t869.
                          t860 = NEW zcl_lnt_ty_table_type( i_row_type = t861 i_options = t863 i_qualified_name = t868 i_description = t869 ).
                          t250 = t860.
                        ELSE.
                          DATA t870 TYPE abap_bool.
                          DATA t871 TYPE abap_bool.
                          DATA(t872) = CAST zcl_lnt_abstract_type( t250 ).
                          t871 = xsdbool( t872 IS BOUND AND t872 IS INSTANCE OF zcl_lnt_ty_table_type ).
                          t870 = xsdbool( t871 = abap_false ).
                          IF t870 = abap_true.
                            DATA t873 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                            CLEAR t873.
                            DATA t874 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                            CLEAR t874.
                            DATA t875 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t875.
                            DATA(t876) = abap_true.
                            IF t876 = abap_true.
                              DATA(t877) = |WITH HEADER LINE can only be used with internal table|.
                              DATA(t878) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t878->has = abap_true.
                              t878->value = t877.
                              t875 = t878.
                            ELSE.
                              DATA t879 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t879.
                              t875 = t879.
                            ENDIF.
                            t874 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t875 ).
                            t873 = NEW #( ).
                            t873->payload = t874.
                            RAISE EXCEPTION t873.
                          ELSE.
                            DATA t880 TYPE REF TO zcl_lnt_ty_table_type.
                            DATA t881 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t882 TYPE REF TO zcl_lnt_ty_table_type.
                            DATA t883 TYPE REF TO zcl_lnt_ty_table_type.
                            DATA(t884) = CAST zcl_lnt_abstract_type( t250 ).
                            t883 ?= t884.
                            t882 = t883.
                            DATA t885 TYPE REF TO zcl_lnt_abstract_type.
                            DATA(t886) = CAST zcl_lnt_ty_table_type( t882 ).
                            t885 = t886->row_type.
                            t881 = t885.
                            DATA t887 TYPE REF TO zcl_lnt_itable_options.
                            DATA(t888) = abap_true.
                            DATA(t889) = |DEFAULT|.
                            DATA t890 TYPE REF TO zcl_lnt_itable_key.
                            CLEAR t890.
                            DATA t891 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            CLEAR t891.
                            t887 = NEW zcl_lnt_itable_options( i_with_header = t888 i_key_type = t889 i_primary_key = t890 i_secondary = t891 ).
                            DATA t892 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t892.
                            DATA t893 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t893.
                            t880 = NEW zcl_lnt_ty_table_type( i_row_type = t881 i_options = t887 i_qualified_name = t892 i_description = t893 ).
                            t250 = t880.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                    DATA(t894) = VALUE abap_bool( ).
                    DATA(t895) = VALUE abap_bool( ).
                    DATA t896 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t897) = CAST zcl_lnt_abstract_type( t250 ).
                    t896 = t897.
                    DATA t898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t899.
                    t898 = t899.
                    DATA(t900) = VALUE abap_bool( ).
                    DATA(t901) = CAST zcl_lnt_abstract_type( t896 ).
                    IF t901 IS INITIAL.
                      t900 = abap_true.
                    ENDIF.
                    t895 = t900.
                    t894 = t895.
                    IF t895 = abap_true.
                      DATA(t902) = VALUE abap_bool( ).
                      DATA t903 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t904) = CAST zcl_lnt_expression_node( t3 ).
                      t903 = t904.
                      DATA t905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA t906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t906.
                      t905 = t906.
                      DATA(t907) = VALUE abap_bool( ).
                      DATA(t908) = CAST zcl_lnt_expression_node( t903 ).
                      IF t908 IS INITIAL.
                        t907 = abap_true.
                      ENDIF.
                      t902 = t907.
                      t894 = t902.
                    ENDIF.
                    IF t894 = abap_true.
                      DATA t909 TYPE int8.
                      DATA(t910) = CONV int8( 1 ).
                      t909 = t910.
                      DATA t911 TYPE REF TO zcl_lnt_expression_node.
                      DATA t912 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t913) = CAST zif_lnt_union_bb14dc41( t1 ).
                      DATA(t914) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d139_249fe3e5ef12 ).
                      t912 = t913->find_direct_expression( i_type_9913 = t914 ).
                      t911 = t912.
                      DATA t915 TYPE abap_bool.
                      DATA(t916) = CAST zcl_lnt_expression_node( t911 ).
                      t915 = xsdbool( t916 IS BOUND ).
                      IF t915 = abap_true.
                        DATA t917 TYPE REF TO zcl_lnt_expression_node.
                        DATA t918 TYPE REF TO zcl_lnt_expression_node.
                        DATA t919 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t920) = CAST zcl_lnt_expression_node( t911 ).
                        t919 = t920.
                        DATA(t921) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
                        t918 = t919->find_direct_expression( i_type_9913 = t921 ).
                        t917 = t918.
                        DATA t922 TYPE abap_bool.
                        DATA(t923) = CAST zcl_lnt_expression_node( t917 ).
                        t922 = xsdbool( t923 IS BOUND ).
                        IF t922 = abap_true.
                          DATA(t924) = VALUE int8( ).
                          DATA t925 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                          CLEAR t925.
                          DATA t926 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                          CLEAR t926.
                          DATA t927 TYPE string.
                          DATA t928 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t929) = CAST zcl_lnt_expression_node( t917 ).
                          t928 = t929.
                          t927 = t928->concat_tokens( ).
                          DATA(t930) = strlen( t927 ).
                          DATA t931 TYPE i.
                          DATA t932 TYPE i.
                          t931 = 0.
                          t932 = t930.
                          DATA(t933) = VALUE i( ).
                          DATA(t934) = VALUE i( ).
                          DATA(t935) = VALUE string( ).
                          WHILE t931 < t932.
                            t934 = t931.
                            t935 = t927+t934(1).
                            DATA t936 TYPE c LENGTH 1.
                            CLEAR t936.
                            DATA(t937) = VALUE xstring( ).
                            DATA t938 TYPE x LENGTH 1.
                            CLEAR t938.
                            DATA t939 TYPE x LENGTH 1.
                            CLEAR t939.
                            DATA(t940) = VALUE i( ).
                            t936 = t935.
                            t933 = cl_abap_conv_out_ce=>uccpi( t936 ).
                            IF t933 >= 255.
                              IF zlnt_builtin_code_bb79b741c1de IS NOT BOUND.
                                zlnt_builtin_code_bb79b741c1de = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                              ENDIF.
                              zlnt_builtin_code_bb79b741c1de->convert( EXPORTING data = t935 IMPORTING buffer = t937 ).
                              t938 = t937(1).
                              t939 = t937+1(1).
                              t933 = t938.
                              t940 = t939.
                              t933 = t933 + t940 * 256.
                            ENDIF.
                            IF t933 = 9 OR t933 = 10 OR t933 = 11 OR t933 = 12 OR t933 = 13 OR t933 = 32 OR t933 = 160 OR t933 = 5760 OR t933 = 8232 OR t933 = 8233 OR t933 = 8239 OR t933 = 8287 OR t933 = 12288 OR t933 = 65279 OR t933 >=
                            8192 AND t933 <= 8202.
                              t931 = t931 + 1.
                            ELSE.
                              EXIT.
                            ENDIF.
                          ENDWHILE.
                          DATA t941 TYPE f.
                          DATA t942 TYPE f.
                          DATA t943 TYPE i.
                          DATA(t944) = VALUE string( ).
                          t941 = 1.
                          t942 = 0.
                          t943 = 0.
                          IF t931 < t932.
                            t944 = t927+t931(1).
                            IF t944 = '-'.
                              t941 = -1.
                              t931 = t931 + 1.
                            ELSEIF t944 = '+'.
                              t931 = t931 + 1.
                            ENDIF.
                          ENDIF.
                          WHILE t931 < t932.
                            t944 = t927+t931(1).
                            IF t944 CA '0123456789' AND t944 <> ` `.
                              t942 = t942 * 10 + t944.
                              t943 = t943 + 1.
                              t931 = t931 + 1.
                            ELSE.
                              EXIT.
                            ENDIF.
                          ENDWHILE.
                          IF t943 = 0.
                            CLEAR t926.
                          ELSE.
                            t926 = NEW #( ).
                            t926->has = abap_true.
                            t926->value = t941 * t942.
                          ENDIF.
                          t925 = t926.
                          DATA(t945) = VALUE abap_bool( ).
                          DATA(t946) = CAST zlnt_runtime_opti_4a236cd5714d( t925 ).
                          IF t946 IS INITIAL.
                            t945 = abap_true.
                          ELSEIF t946->has = abap_false.
                            t945 = abap_true.
                          ENDIF.
                          IF t945 = abap_true.
                            DATA(t947) = NEW zlnt_exception_un_5f2d02892fe8( ).
                            DATA(t948) = |src/abap/5_syntax/basic_types.ts:643:22|.
                            t947->source_location = t948.
                            RAISE EXCEPTION t947.
                          ENDIF.
                          DATA t949 TYPE int8.
                          DATA(t950) = CAST zlnt_runtime_opti_4a236cd5714d( t925 ).
                          t949 = t950->value.
                          t924 = t949.
                          t909 = t924.
                        ENDIF.
                      ENDIF.
                      DATA t951 TYPE REF TO zcl_lnt_character_type.
                      CLEAR t951.
                      DATA(t952) = t909.
                      DATA t953 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t953.
                      DATA(t954) = abap_true.
                      IF t954 = abap_true.
                        DATA t955 TYPE REF TO zcl_lnt_abstract_type_data.
                        DATA(t956) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
                        DATA t957 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t957.
                        DATA t958 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t958.
                        DATA t959 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t959.
                        DATA t960 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t960.
                        DATA t961 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t961.
                        t955 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t956 i_conversion_exit = t957 i_derived_from_constant = t958 i_ddic_name = t959 i_rtti_name = t960 i_description = t961 ).
                        t953 = t955.
                      ELSE.
                        DATA t962 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t962.
                        t953 = t962.
                      ENDIF.
                      t951 = NEW zcl_lnt_character_type( i_length = t952 i_extra = t953 ).
                      t250 = t951.
                      DATA(t963) = VALUE abap_bool( ).
                      DATA t964 TYPE REF TO zif_lnt_union_bb14dc41.
                      DATA(t965) = CAST zif_lnt_union_bb14dc41( t1 ).
                      t964 = t965.
                      DATA(t966) = VALUE abap_bool( ).
                      DATA t967 TYPE abap_bool.
                      DATA t968 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t969) = CAST zif_lnt_union_bb14dc41( t964 ).
                      DATA(t970) = |OCCURS|.
                      t968 = t969->find_direct_token_by_text( i_text = t970 ).
                      t967 = xsdbool( t968 IS BOUND ).
                      IF t967 = abap_true.
                        DATA(t971) = abap_true.
                        t966 = t971.
                      ELSE.
                        DATA(t972) = VALUE abap_bool( ).
                        DATA(t973) = VALUE abap_bool( ).
                        DATA t974 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t974.
                        DATA t975 TYPE REF TO zcl_lnt_expression_node.
                        DATA t976 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t977) = CAST zif_lnt_union_bb14dc41( t964 ).
                        DATA(t978) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396 ).
                        t976 = t977->find_first_expression( i_type_9913 = t978 ).
                        t975 = t976.
                        DATA t979 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t979.
                        DATA(t980) = VALUE abap_bool( ).
                        DATA(t981) = CAST zcl_lnt_expression_node( t975 ).
                        IF t981 IS INITIAL.
                          t980 = abap_true.
                        ENDIF.
                        IF t980 = abap_true.
                          DATA t982 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t982.
                          t979 = t982.
                        ELSE.
                          DATA t983 TYPE REF TO zcl_lnt_abstract_token.
                          DATA t984 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t985) = CAST zcl_lnt_expression_node( t975 ).
                          t984 = t985.
                          DATA(t986) = |OCCURS|.
                          t983 = t984->find_direct_token_by_text( i_text = t986 ).
                          t979 = t983.
                        ENDIF.
                        t974 = t979.
                        t973 = xsdbool( t974 IS BOUND ).
                        IF t973 = abap_true.
                          DATA(t987) = abap_true.
                          t972 = t987.
                        ELSE.
                          DATA(t988) = abap_false.
                          t972 = t988.
                        ENDIF.
                        t966 = t972.
                      ENDIF.
                      t963 = t966.
                      IF t963 = abap_true.
                        DATA t989 TYPE REF TO zcl_lnt_ty_table_type.
                        CLEAR t989.
                        DATA t990 TYPE REF TO zcl_lnt_abstract_type.
                        DATA(t991) = CAST zcl_lnt_abstract_type( t250 ).
                        t990 = t991.
                        DATA t992 TYPE REF TO zcl_lnt_itable_options.
                        CLEAR t992.
                        DATA(t993) = VALUE abap_bool( ).
                        DATA(t994) = VALUE i( ).
                        DATA(t995) = t800.
                        DATA(t996) = | WITH HEADER LINE|.
                        DATA(t997) = strlen( t995 ).
                        IF t996 IS INITIAL.
                          t994 = 0.
                        ELSE.
                          FIND t996 IN t995 MATCH OFFSET t994.
                          IF sy-subrc <> 0.
                            t994 = -1.
                          ENDIF.
                        ENDIF.
                        DATA(t998) = 0.
                        t993 = xsdbool( t994 >= t998 ).
                        DATA(t999) = |DEFAULT|.
                        DATA t1000 TYPE REF TO zcl_lnt_itable_key.
                        CLEAR t1000.
                        DATA t1001 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        CLEAR t1001.
                        t992 = NEW zcl_lnt_itable_options( i_with_header = t993 i_key_type = t999 i_primary_key = t1000 i_secondary = t1001 ).
                        DATA(t1002) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
                        DATA t1003 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1003.
                        t989 = NEW zcl_lnt_ty_table_type( i_row_type = t990 i_options = t992 i_qualified_name = t1002 i_description = t1003 ).
                        t250 = t989.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t1004) = VALUE abap_bool( ).
    DATA(t1005) = VALUE i( ).
    DATA t1006 TYPE string.
    DATA(t1007) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    t1006 = t1007->value.
    DATA(t1008) = | WITH INDICATORS |.
    DATA(t1009) = strlen( t1006 ).
    IF t1008 IS INITIAL.
      t1005 = 0.
    ELSE.
      FIND t1008 IN t1006 MATCH OFFSET t1005.
      IF sy-subrc <> 0.
        t1005 = -1.
      ENDIF.
    ENDIF.
    DATA(t1010) = 0.
    t1004 = xsdbool( t1005 >= t1010 ).
    IF t1004 = abap_true.
      DATA t1011 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1011.
      DATA t1012 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1012.
      DATA t1013 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1013.
      DATA t1014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1014.
      DATA t1015 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t1015.
      DATA t1016 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t1016.
      DATA t1017 TYPE REF TO zcl_lnt_expression_node.
      DATA t1018 TYPE REF TO zcl_lnt_expression_node.
      DATA(t1019) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t1020) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924 ).
      t1018 = t1019->find_first_expression( i_type_9913 = t1020 ).
      t1017 = t1018.
      DATA t1021 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t1021.
      DATA(t1022) = VALUE abap_bool( ).
      DATA(t1023) = CAST zcl_lnt_expression_node( t1017 ).
      IF t1023 IS INITIAL.
        t1022 = abap_true.
      ENDIF.
      IF t1022 = abap_true.
        DATA t1024 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1024.
        t1021 = t1024.
      ELSE.
        DATA t1025 TYPE REF TO zcl_lnt_expression_node.
        DATA t1026 TYPE REF TO zcl_lnt_expression_node.
        DATA(t1027) = CAST zcl_lnt_expression_node( t1017 ).
        t1026 = t1027.
        DATA(t1028) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca ).
        t1025 = t1026->find_direct_expression( i_type_9913 = t1028 ).
        t1021 = t1025.
      ENDIF.
      t1016 = t1021.
      t1015 = t1016.
      DATA t1029 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1029.
      DATA(t1030) = VALUE abap_bool( ).
      DATA(t1031) = CAST zcl_lnt_expression_node( t1015 ).
      IF t1031 IS INITIAL.
        t1030 = abap_true.
      ENDIF.
      IF t1030 = abap_true.
        DATA t1032 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1032.
        t1029 = t1032.
      ELSE.
        DATA t1033 TYPE string.
        DATA t1034 TYPE REF TO zcl_lnt_expression_node.
        DATA(t1035) = CAST zcl_lnt_expression_node( t1015 ).
        t1034 = t1035.
        t1033 = t1034->concat_tokens( ).
        DATA(t1036) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1036->has = abap_true.
        t1036->value = t1033.
        t1029 = t1036.
      ENDIF.
      t1014 = t1029.
      t1013 = t1014.
      DATA t1037 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1037.
      DATA(t1038) = VALUE abap_bool( ).
      DATA(t1039) = CAST zlnt_runtime_opti_4ba3bdccd169( t1013 ).
      IF t1039 IS INITIAL.
        t1038 = abap_true.
      ELSEIF t1039->has = abap_false.
        t1038 = abap_true.
      ENDIF.
      IF t1038 = abap_true.
        DATA t1040 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1040.
        t1037 = t1040.
      ELSE.
        DATA t1041 TYPE string.
        DATA t1042 TYPE string.
        DATA(t1043) = CAST zlnt_runtime_opti_4ba3bdccd169( t1013 ).
        t1042 = t1043->value.
        DATA(t1044) = strlen( t1042 ).
        t1041 = t1042.
        IF t1041 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t1041 TO UPPER CASE.
        ELSE.
          t1041 = zlnt_runtime_uppe_91169605024d=>full( t1041 ).
        ENDIF.
        DATA(t1045) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1045->has = abap_true.
        t1045->value = t1041.
        t1037 = t1045.
      ENDIF.
      t1012 = t1037.
      t1011 = t1012.
      DATA(t1046) = VALUE abap_bool( ).
      DATA t1047 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1048) = CAST zlnt_runtime_opti_4ba3bdccd169( t1011 ).
      t1047 = t1048.
      DATA t1049 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1050.
      t1049 = t1050.
      DATA(t1051) = VALUE abap_bool( ).
      DATA(t1052) = CAST zlnt_runtime_opti_4ba3bdccd169( t1047 ).
      IF t1052 IS INITIAL.
        t1051 = abap_true.
      ELSEIF t1052->has = abap_false.
        t1051 = abap_true.
      ENDIF.
      t1046 = t1051.
      IF t1046 = abap_true.
        DATA t1053 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t1053.
        DATA t1054 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t1054.
        DATA t1055 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1055.
        DATA(t1056) = abap_true.
        IF t1056 = abap_true.
          DATA(t1057) = |parseType, componentName expected|.
          DATA(t1058) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1058->has = abap_true.
          t1058->value = t1057.
          t1055 = t1058.
        ELSE.
          DATA t1059 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1059.
          t1055 = t1059.
        ENDIF.
        t1054 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t1055 ).
        t1053 = NEW #( ).
        t1053->payload = t1054.
        RAISE EXCEPTION t1053.
      ENDIF.
      DATA t1060 TYPE abap_bool.
      DATA(t1061) = CAST zcl_lnt_abstract_type( t250 ).
      t1060 = xsdbool( t1061 IS BOUND AND t1061 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t1060 = abap_true.
        DATA t1062 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t1063 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t1064 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t1065 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t1065.
        t1064 = t1065.
        DATA t1066 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t1067 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t1068) = CAST zlnt_runtime_arra_c22708faf2e3( t1064 ).
        DATA t1069 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t1070 TYPE REF TO zcl_lnt_structure_type.
        DATA t1071 TYPE REF TO zcl_lnt_structure_type.
        DATA(t1072) = CAST zcl_lnt_abstract_type( t250 ).
        t1071 ?= t1072.
        t1070 = t1071.
        DATA t1073 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t1074) = CAST zcl_lnt_structure_type( t1070 ).
        t1073 = t1074->components.
        t1069 = t1073.
        t1067 = t1068->concat( p0 = t1069 ).
        t1066 = t1067.
        DATA(t1075) = CAST zlnt_runtime_arra_c22708faf2e3( t1066 ).
        t1063 = t1075.
        t1062 = t1063.
        DATA(t1076) = CAST zlnt_runtime_arra_c22708faf2e3( t1062 ).
        DATA t1077 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t1077.
        DATA t1078 TYPE string.
        DATA(t1079) = CAST zlnt_runtime_opti_4ba3bdccd169( t1011 ).
        t1078 = t1079->value.
        DATA t1080 TYPE REF TO zcl_lnt_void_type.
        CLEAR t1080.
        DATA t1081 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1081.
        DATA(t1082) = abap_true.
        IF t1082 = abap_true.
          DATA(t1083) = |INDICATORStodo|.
          DATA(t1084) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1084->has = abap_true.
          t1084->value = t1083.
          t1081 = t1084.
        ELSE.
          DATA t1085 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1085.
          t1081 = t1085.
        ENDIF.
        DATA t1086 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1086.
        t1080 = zcl_lnt_void_type=>get_db65( i_voided = t1081 i_qualified_name = t1086 ).
        DATA t1087 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t1087.
        DATA t1088 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1088.
        t1077 = NEW zcl_lnt_istructure_component( i_name = t1078 i_type_9913 = t1080 i_as_include = t1087 i_suffix = t1088 ).
        APPEND t1077 TO t1076->items.
        DATA t1089 TYPE REF TO zcl_lnt_structure_type.
        DATA(t1090) = CAST zlnt_runtime_arra_c22708faf2e3( t1062 ).
        DATA(t1091) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
        DATA t1092 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1092.
        DATA t1093 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1093.
        t1089 = NEW zcl_lnt_structure_type( i_components = t1090 i_qualified_name = t1091 i_ddic_name = t1092 i_description = t1093 ).
        t250 = t1089.
      ENDIF.
    ENDIF.
    DATA(t1094) = CAST zcl_lnt_abstract_type( t250 ).
    result = t1094.

  ENDMETHOD.
  METHOD is_occurs.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t4) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t5) = |OCCURS|.
    t3 = t4->find_direct_token_by_text( i_text = t5 ).
    t2 = xsdbool( t3 IS BOUND ).
    IF t2 = abap_true.
      DATA(t6) = abap_true.
      result = t6.
      RETURN.
    ELSE.
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396 ).
      t10 = t11->find_first_expression( i_type_9913 = t12 ).
      t9 = t10.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t13.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = CAST zcl_lnt_expression_node( t9 ).
      IF t15 IS INITIAL.
        t14 = abap_true.
      ENDIF.
      IF t14 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t16.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        DATA t18 TYPE REF TO zcl_lnt_expression_node.
        DATA(t19) = CAST zcl_lnt_expression_node( t9 ).
        t18 = t19.
        DATA(t20) = |OCCURS|.
        t17 = t18->find_direct_token_by_text( i_text = t20 ).
        t13 = t17.
      ENDIF.
      t8 = t13.
      t7 = xsdbool( t8 IS BOUND ).
      IF t7 = abap_true.
        DATA(t21) = abap_true.
        result = t21.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t22) = abap_false.
    result = t22.

  ENDMETHOD.
  METHOD get_rap_base_entity_name.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/basic_types.ts:682|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD resolve_rap_alias.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/basic_types.ts:696|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_rap_derived_entity_name.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/basic_types.ts:700|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_rap_table_for.
    DATA(t1) = i_text.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/basic_types.ts:704|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_rap_type_structure.
    DATA(t1) = i_text.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = t1.
    DATA(t6) = |TYPE STRUCTURE FOR |.
    DATA(t7) = strlen( t5 ).
    DATA t8 TYPE i.
    DATA(t9) = VALUE i( ).
    DATA(t10) = VALUE string( ).
    t8 = strlen( t6 ).
    IF t8 = 0.
      t4 = abap_true.
    ELSEIF t8 <= t7.
      t9 = 0.
      t10 = t5+t9(t8).
      IF t10 = t6.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = t1.
      DATA(t13) = |TYPE RESPONSE FOR |.
      DATA(t14) = strlen( t12 ).
      DATA t15 TYPE i.
      DATA(t16) = VALUE i( ).
      DATA(t17) = VALUE string( ).
      t15 = strlen( t13 ).
      IF t15 = 0.
        t11 = abap_true.
      ELSEIF t15 <= t14.
        t16 = 0.
        t17 = t12+t16(t15).
        IF t17 = t13.
          t11 = abap_true.
        ENDIF.
      ENDIF.
      t3 = t11.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t1.
      DATA(t20) = |TYPE REQUEST FOR |.
      DATA(t21) = strlen( t19 ).
      DATA t22 TYPE i.
      DATA(t23) = VALUE i( ).
      DATA(t24) = VALUE string( ).
      t22 = strlen( t20 ).
      IF t22 = 0.
        t18 = abap_true.
      ELSEIF t22 <= t21.
        t23 = 0.
        t24 = t19+t23(t22).
        IF t24 = t20.
          t18 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t18.
    ENDIF.
    result = t2.

  ENDMETHOD.
  METHOD resolve_type_chain.
    DATA(t1) = CAST zcl_lnt_expression_node( i_expr ).
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    t4 = t5->concat_tokens( ).
    DATA(t6) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE i( ).
    DATA(t9) = t2.
    DATA(t10) = |-|.
    DATA(t11) = strlen( t9 ).
    IF t10 IS INITIAL.
      t8 = 0.
    ELSE.
      FIND t10 IN t9 MATCH OFFSET t8.
      IF sy-subrc <> 0.
        t8 = -1.
      ENDIF.
    ENDIF.
    DATA(t12) = 0.
    t7 = xsdbool( t8 >= t12 ).
    IF t7 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_current_scope.
      DATA t16 TYPE REF TO zcl_lnt_current_scope.
      DATA(t17) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      t16 = t17->scope.
      t15 = t16.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA(t21) = t2.
        DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t22->has = abap_true.
        t22->value = t21.
        t19 = t22.
      ELSE.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        t19 = t23.
      ENDIF.
      t18 = t19.
      DATA t24 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t24.
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t27) = CAST zlnt_runtime_opti_4ba3bdccd169( t18 ).
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      t28 = t29.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = CAST zlnt_runtime_opti_4ba3bdccd169( t26 ).
      IF t31 IS INITIAL.
        t30 = abap_true.
      ELSEIF t31->has = abap_false.
        t30 = abap_true.
      ENDIF.
      t25 = t30.
      IF t25 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t32.
        t24 = t32.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t36) = CAST zcl_lnt_current_scope( t15 ).
        t35 = t36->current.
        t34 = t35.
        DATA t37 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t37.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = CAST zcl_lnt_spaghetti_scope_node( t34 ).
        IF t39 IS INITIAL.
          t38 = abap_true.
        ENDIF.
        IF t38 = abap_true.
          DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t40.
          t37 = t40.
        ELSE.
          DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t43) = CAST zcl_lnt_spaghetti_scope_node( t34 ).
          t42 = t43.
          DATA t44 TYPE string.
          DATA(t45) = CAST zlnt_runtime_opti_4ba3bdccd169( t18 ).
          t44 = t45->value.
          t41 = t42->find_type( i_name = t44 ).
          t37 = t41.
        ENDIF.
        t33 = t37.
        t24 = t33.
      ENDIF.
      t14 = t24.
      t13 = t14.
      DATA t46 TYPE abap_bool.
      DATA(t47) = CAST zcl_lnt_typed_identifier( t13 ).
      t46 = xsdbool( t47 IS BOUND ).
      IF t46 = abap_true.
        DATA t48 TYPE REF TO zcl_lnt_current_scope.
        DATA(t49) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t48 = t49->scope.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA t52 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t53) = CAST zcl_lnt_expression_node( t1 ).
          t52 = t53->get_first_token( ).
          t50 = t52.
        ELSE.
          DATA t54 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t54.
          t50 = t54.
        ENDIF.
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t56) = CAST zcl_lnt_typed_identifier( t13 ).
        t55 = t56.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t58) = |Type|.
        CREATE OBJECT t57.
        t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t57->sval = t58.
        DATA t59 TYPE string.
        DATA(t60) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t59 = t60->filename.
        DATA t61 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t61.
        t48->add_reference( i_usage = t50 i_referencing = t55 i_type_9913 = t57 i_filename = t59 i_extra = t61 ).
        DATA t62 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t62.
        DATA(t63) = abap_true.
        IF t63 = abap_true.
          DATA t64 TYPE REF TO zcl_lnt_abstract_type.
          DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t66 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t67) = CAST zcl_lnt_typed_identifier( t13 ).
          t66 = t67.
          t65 = t66.
          DATA t68 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t69) = CAST zcl_lnt_typed_identifier( t65 ).
          t68 = t69->type_cba0.
          t64 = t68.
          t62 = t64.
        ELSE.
          DATA t70 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t70.
          t62 = t70.
        ENDIF.
        result = t62.
        RETURN.
      ENDIF.
    ELSE.
      DATA(t71) = VALUE abap_bool( ).
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = VALUE i( ).
      DATA(t75) = t2.
      DATA(t76) = |=>|.
      DATA(t77) = strlen( t75 ).
      IF t76 IS INITIAL.
        t74 = 0.
      ELSE.
        FIND t76 IN t75 MATCH OFFSET t74.
        IF sy-subrc <> 0.
          t74 = -1.
        ENDIF.
      ENDIF.
      DATA(t78) = 0.
      t73 = xsdbool( t74 >= t78 ).
      DATA(t79) = abap_false.
      t72 = xsdbool( t73 = t79 ).
      t71 = t72.
      IF t72 = abap_true.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = VALUE i( ).
        DATA(t83) = t2.
        DATA(t84) = |-|.
        DATA(t85) = strlen( t83 ).
        IF t84 IS INITIAL.
          t82 = 0.
        ELSE.
          FIND t84 IN t83 MATCH OFFSET t82.
          IF sy-subrc <> 0.
            t82 = -1.
          ENDIF.
        ENDIF.
        DATA(t86) = 0.
        t81 = xsdbool( t82 >= t86 ).
        DATA(t87) = abap_false.
        t80 = xsdbool( t81 = t87 ).
        t71 = t80.
      ENDIF.
      IF t71 = abap_true.
        DATA t88 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t88.
        result = t88.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t89.
    DATA t90 TYPE string.
    DATA(t91) = t2.
    t90 = t91.
    DATA(t92) = VALUE abap_bool( ).
    DATA(t93) = VALUE i( ).
    DATA(t94) = t2.
    DATA(t95) = |=>|.
    DATA(t96) = strlen( t94 ).
    IF t95 IS INITIAL.
      t93 = 0.
    ELSE.
      FIND t95 IN t94 MATCH OFFSET t93.
      IF sy-subrc <> 0.
        t93 = -1.
      ENDIF.
    ENDIF.
    DATA(t97) = 0.
    t92 = xsdbool( t93 >= t97 ).
    IF t92 = abap_true.
      DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t98.
      DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t100) = t2.
      DATA(t101) = |=>|.
      DATA(t102) = strlen( t100 ).
      DATA t103 TYPE i.
      DATA(t104) = VALUE i( ).
      DATA(t105) = VALUE i( ).
      DATA t106 TYPE i.
      DATA(t107) = VALUE string( ).
      CREATE OBJECT t99.
      t106 = strlen( t101 ).
      t103 = 0.
      IF t106 = 0.
        WHILE t103 < t102.
          t107 = t100+t103(1).
          APPEND t107 TO t99->items.
          t103 = t103 + 1.
        ENDWHILE.
      ELSE.
        WHILE t103 <= t102.
          FIND FIRST OCCURRENCE OF t101 IN SECTION OFFSET t103 OF t100 MATCH OFFSET t104.
          IF sy-subrc = 0.
            t105 = t104 - t103.
          ELSE.
            t104 = -1.
            t105 = t102 - t103.
          ENDIF.
          CLEAR t107.
          IF t105 > 0.
            t107 = t100+t103(t105).
          ENDIF.
          APPEND t107 TO t99->items.
          IF t104 < 0.
            EXIT.
          ENDIF.
          t103 = t104 + t106.
        ENDWHILE.
      ENDIF.
      t98 = t99.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t108.
      DATA(t109) = abap_true.
      IF t109 = abap_true.
        DATA(t110) = VALUE string( ).
        DATA(t111) = CAST zlnt_runtime_arra_8ecd6afe19e0( t98 ).
        READ TABLE t111->items INDEX 1 INTO t110.
        DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t112->has = abap_true.
        t112->value = t110.
        t108 = t112.
      ELSE.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        t108 = t113.
      ENDIF.
      t89 = t108.
      DATA(t114) = VALUE string( ).
      DATA(t115) = CAST zlnt_runtime_arra_8ecd6afe19e0( t98 ).
      READ TABLE t115->items INDEX 2 INTO t114.
      t90 = t114.
    ELSE.
      DATA(t116) = VALUE abap_bool( ).
      DATA(t117) = VALUE i( ).
      DATA(t118) = t2.
      DATA(t119) = |->|.
      DATA(t120) = strlen( t118 ).
      IF t119 IS INITIAL.
        t117 = 0.
      ELSE.
        FIND t119 IN t118 MATCH OFFSET t117.
        IF sy-subrc <> 0.
          t117 = -1.
        ENDIF.
      ENDIF.
      DATA(t121) = 0.
      t116 = xsdbool( t117 >= t121 ).
      IF t116 = abap_true.
        DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t122.
        DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t124) = t2.
        DATA(t125) = |->|.
        DATA(t126) = strlen( t124 ).
        DATA t127 TYPE i.
        DATA(t128) = VALUE i( ).
        DATA(t129) = VALUE i( ).
        DATA t130 TYPE i.
        DATA(t131) = VALUE string( ).
        CREATE OBJECT t123.
        t130 = strlen( t125 ).
        t127 = 0.
        IF t130 = 0.
          WHILE t127 < t126.
            t131 = t124+t127(1).
            APPEND t131 TO t123->items.
            t127 = t127 + 1.
          ENDWHILE.
        ELSE.
          WHILE t127 <= t126.
            FIND FIRST OCCURRENCE OF t125 IN SECTION OFFSET t127 OF t124 MATCH OFFSET t128.
            IF sy-subrc = 0.
              t129 = t128 - t127.
            ELSE.
              t128 = -1.
              t129 = t126 - t127.
            ENDIF.
            CLEAR t131.
            IF t129 > 0.
              t131 = t124+t127(t129).
            ENDIF.
            APPEND t131 TO t123->items.
            IF t128 < 0.
              EXIT.
            ENDIF.
            t127 = t128 + t130.
          ENDWHILE.
        ENDIF.
        t122 = t123.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t132.
        DATA(t133) = abap_true.
        IF t133 = abap_true.
          DATA(t134) = VALUE string( ).
          DATA(t135) = CAST zlnt_runtime_arra_8ecd6afe19e0( t122 ).
          READ TABLE t135->items INDEX 1 INTO t134.
          DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t136->has = abap_true.
          t136->value = t134.
          t132 = t136.
        ELSE.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          t132 = t137.
        ENDIF.
        t89 = t132.
        DATA(t138) = VALUE string( ).
        DATA(t139) = CAST zlnt_runtime_arra_8ecd6afe19e0( t122 ).
        READ TABLE t139->items INDEX 2 INTO t138.
        t90 = t138.
      ENDIF.
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t142) = t90.
    DATA(t143) = |-|.
    DATA(t144) = strlen( t142 ).
    DATA t145 TYPE i.
    DATA(t146) = VALUE i( ).
    DATA(t147) = VALUE i( ).
    DATA t148 TYPE i.
    DATA(t149) = VALUE string( ).
    CREATE OBJECT t141.
    t148 = strlen( t143 ).
    t145 = 0.
    IF t148 = 0.
      WHILE t145 < t144.
        t149 = t142+t145(1).
        APPEND t149 TO t141->items.
        t145 = t145 + 1.
      ENDWHILE.
    ELSE.
      WHILE t145 <= t144.
        FIND FIRST OCCURRENCE OF t143 IN SECTION OFFSET t145 OF t142 MATCH OFFSET t146.
        IF sy-subrc = 0.
          t147 = t146 - t145.
        ELSE.
          t146 = -1.
          t147 = t144 - t145.
        ENDIF.
        CLEAR t149.
        IF t147 > 0.
          t149 = t142+t145(t147).
        ENDIF.
        APPEND t149 TO t141->items.
        IF t146 < 0.
          EXIT.
        ENDIF.
        t145 = t146 + t148.
      ENDWHILE.
    ENDIF.
    t140 = t141.
    DATA t150 TYPE REF TO zcl_lnt_abstract_type.
    DATA t151 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t151.
    t150 = t151.
    DATA(t152) = VALUE abap_bool( ).
    DATA(t153) = VALUE abap_bool( ).
    DATA(t154) = CAST zlnt_runtime_opti_4ba3bdccd169( t89 ).
    IF t154 IS BOUND.
      IF t154->has = abap_true.
        t153 = xsdbool( strlen( t154->value ) > 0 ).
      ENDIF.
    ENDIF.
    t152 = t153.
    IF t153 = abap_true.
      DATA(t155) = VALUE abap_bool( ).
      DATA(t156) = VALUE i( ).
      DATA(t157) = t2.
      DATA(t158) = |=>|.
      DATA(t159) = strlen( t157 ).
      IF t158 IS INITIAL.
        t156 = 0.
      ELSE.
        FIND t158 IN t157 MATCH OFFSET t156.
        IF sy-subrc <> 0.
          t156 = -1.
        ENDIF.
      ENDIF.
      DATA(t160) = 0.
      t155 = xsdbool( t156 >= t160 ).
      t152 = t155.
    ENDIF.
    IF t152 = abap_true.
      DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t161.
      DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t163) = t2.
      DATA(t164) = |=>|.
      DATA(t165) = strlen( t163 ).
      DATA t166 TYPE i.
      DATA(t167) = VALUE i( ).
      DATA(t168) = VALUE i( ).
      DATA t169 TYPE i.
      DATA(t170) = VALUE string( ).
      CREATE OBJECT t162.
      t169 = strlen( t164 ).
      t166 = 0.
      IF t169 = 0.
        WHILE t166 < t165.
          t170 = t163+t166(1).
          APPEND t170 TO t162->items.
          t166 = t166 + 1.
        ENDWHILE.
      ELSE.
        WHILE t166 <= t165.
          FIND FIRST OCCURRENCE OF t164 IN SECTION OFFSET t166 OF t163 MATCH OFFSET t167.
          IF sy-subrc = 0.
            t168 = t167 - t166.
          ELSE.
            t167 = -1.
            t168 = t165 - t166.
          ENDIF.
          CLEAR t170.
          IF t168 > 0.
            t170 = t163+t166(t168).
          ENDIF.
          APPEND t170 TO t162->items.
          IF t167 < 0.
            EXIT.
          ENDIF.
          t166 = t167 + t169.
        ENDWHILE.
      ENDIF.
      t161 = t162.
      DATA t171 TYPE string.
      DATA(t172) = VALUE string( ).
      DATA(t173) = CAST zlnt_runtime_arra_8ecd6afe19e0( t161 ).
      READ TABLE t173->items INDEX 1 INTO t172.
      t171 = t172.
      DATA(t174) = VALUE abap_bool( ).
      DATA t175 TYPE abap_bool.
      DATA t176 TYPE abap_bool.
      DATA t177 TYPE string.
      DATA t178 TYPE REF TO zcl_lnt_current_scope.
      DATA(t179) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      t178 = t179->scope.
      t177 = t178->get_type( ).
      DATA(t180) = |interface|.
      t176 = xsdbool( t177 = t180 ).
      t175 = t176.
      IF t176 = abap_false.
        DATA t181 TYPE abap_bool.
        DATA t182 TYPE string.
        DATA t183 TYPE REF TO zcl_lnt_current_scope.
        DATA(t184) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t183 = t184->scope.
        t182 = t183->get_type( ).
        DATA(t185) = |class_definition|.
        t181 = xsdbool( t182 = t185 ).
        t175 = t181.
      ENDIF.
      t174 = t175.
      IF t175 = abap_true.
        DATA(t186) = VALUE abap_bool( ).
        DATA t187 TYPE string.
        DATA t188 TYPE string.
        DATA t189 TYPE REF TO zcl_lnt_current_scope.
        DATA(t190) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t189 = t190->scope.
        t188 = t189->get_name( ).
        DATA(t191) = strlen( t188 ).
        t187 = t188.
        IF t187 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t187 TO UPPER CASE.
        ELSE.
          t187 = zlnt_runtime_uppe_91169605024d=>full( t187 ).
        ENDIF.
        DATA t192 TYPE string.
        DATA(t193) = t171.
        DATA(t194) = strlen( t193 ).
        t192 = t193.
        IF t192 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t192 TO UPPER CASE.
        ELSE.
          t192 = zlnt_runtime_uppe_91169605024d=>full( t192 ).
        ENDIF.
        t186 = xsdbool( t187 = t192 ).
        t174 = t186.
      ENDIF.
      IF t174 = abap_true.
        DATA t195 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t195.
        DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t196.
        DATA t197 TYPE REF TO zcl_lnt_current_scope.
        DATA t198 TYPE REF TO zcl_lnt_current_scope.
        DATA(t199) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t198 = t199->scope.
        t197 = t198.
        DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t200.
        DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t201.
        DATA(t202) = abap_true.
        IF t202 = abap_true.
          DATA(t203) = VALUE string( ).
          DATA(t204) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
          READ TABLE t204->items INDEX 1 INTO t203.
          DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t205->has = abap_true.
          t205->value = t203.
          t201 = t205.
        ELSE.
          DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t206.
          t201 = t206.
        ENDIF.
        t200 = t201.
        DATA t207 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t207.
        DATA(t208) = VALUE abap_bool( ).
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t210) = CAST zlnt_runtime_opti_4ba3bdccd169( t200 ).
        t209 = t210.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t212.
        t211 = t212.
        DATA(t213) = VALUE abap_bool( ).
        DATA(t214) = CAST zlnt_runtime_opti_4ba3bdccd169( t209 ).
        IF t214 IS INITIAL.
          t213 = abap_true.
        ELSEIF t214->has = abap_false.
          t213 = abap_true.
        ENDIF.
        t208 = t213.
        IF t208 = abap_true.
          DATA t215 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t215.
          t207 = t215.
        ELSE.
          DATA t216 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t216.
          DATA t217 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t218 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t219) = CAST zcl_lnt_current_scope( t197 ).
          t218 = t219->current.
          t217 = t218.
          DATA t220 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t220.
          DATA(t221) = VALUE abap_bool( ).
          DATA(t222) = CAST zcl_lnt_spaghetti_scope_node( t217 ).
          IF t222 IS INITIAL.
            t221 = abap_true.
          ENDIF.
          IF t221 = abap_true.
            DATA t223 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t223.
            t220 = t223.
          ELSE.
            DATA t224 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t225 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t226) = CAST zcl_lnt_spaghetti_scope_node( t217 ).
            t225 = t226.
            DATA t227 TYPE string.
            DATA(t228) = CAST zlnt_runtime_opti_4ba3bdccd169( t200 ).
            t227 = t228->value.
            t224 = t225->find_type( i_name = t227 ).
            t220 = t224.
          ENDIF.
          t216 = t220.
          t207 = t216.
        ENDIF.
        t196 = t207.
        t195 = t196.
        DATA t229 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t229.
        DATA t230 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t231) = CAST zcl_lnt_typed_identifier( t195 ).
        t230 = t231.
        DATA t232 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t232.
        DATA(t233) = VALUE abap_bool( ).
        DATA(t234) = CAST zcl_lnt_typed_identifier( t230 ).
        IF t234 IS INITIAL.
          t233 = abap_true.
        ENDIF.
        IF t233 = abap_true.
          DATA t235 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t235.
          t232 = t235.
        ELSE.
          DATA t236 TYPE REF TO zcl_lnt_abstract_type.
          DATA t237 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t238 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t239) = CAST zcl_lnt_typed_identifier( t230 ).
          t238 = t239.
          t237 = t238.
          DATA t240 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t241) = CAST zcl_lnt_typed_identifier( t237 ).
          t240 = t241->type_cba0.
          t236 = t240.
          t232 = t236.
        ENDIF.
        t229 = t232.
        t150 = t229.
        DATA(t242) = VALUE abap_bool( ).
        DATA t243 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t244) = CAST zcl_lnt_abstract_type( t150 ).
        t243 = t244.
        DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        t245 = t246.
        DATA(t247) = VALUE abap_bool( ).
        DATA(t248) = CAST zcl_lnt_abstract_type( t243 ).
        IF t248 IS INITIAL.
          t247 = abap_true.
        ENDIF.
        t242 = t247.
        IF t242 = abap_true.
          DATA t249 TYPE REF TO zcl_lnt_unknown_type.
          DATA t250 TYPE string.
          DATA(t251) = |Could not resolve type |.
          DATA(t252) = t2.
          DATA(t253) = strlen( t251 ).
          t250 = |{ t251 }{ t252 }|.
          DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t254.
          t249 = NEW zcl_lnt_unknown_type( i_error = t250 i_qualified_name = t254 ).
          result = t249.
          RETURN.
        ENDIF.
        DATA t255 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t255.
        DATA t256 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t256.
        DATA t257 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t258 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t261 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t262) = CAST zcl_lnt_expression_node( t1 ).
        t261 = t262.
        DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t264) = CAST zcl_lnt_abstract_node( t261 ).
        t263 = t264->children.
        t260 = t263.
        t259 ?= t260.
        DATA(t265) = 2.
        DATA t266 TYPE REF TO object.
        t266 = t259->get( p0 = t265 ).
        t258 ?= t266.
        t257 = t258.
        DATA t267 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t267.
        DATA(t268) = VALUE abap_bool( ).
        DATA(t269) = CAST zif_lnt_union_4cf1d054( t257 ).
        IF t269 IS INITIAL.
          t268 = abap_true.
        ENDIF.
        IF t268 = abap_true.
          DATA t270 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t270.
          t267 = t270.
        ELSE.
          DATA t271 TYPE REF TO zcl_lnt_abstract_token.
          DATA t272 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t273) = CAST zif_lnt_union_4cf1d054( t257 ).
          t272 = t273.
          t271 = t272->get_first_token( ).
          t267 = t271.
        ENDIF.
        t256 = t267.
        t255 = t256.
        DATA t274 TYPE abap_bool.
        DATA t275 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t276) = CAST zcl_lnt_abstract_token( t255 ).
        t275 = t276.
        t274 = xsdbool( t275 IS BOUND ).
        IF t274 = abap_true.
          DATA t277 TYPE REF TO zcl_lnt_current_scope.
          DATA(t278) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t277 = t278->scope.
          DATA t279 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t279.
          DATA(t280) = abap_true.
          IF t280 = abap_true.
            DATA t281 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t282) = CAST zcl_lnt_abstract_token( t255 ).
            t281 = t282.
            t279 = t281.
          ELSE.
            DATA t283 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t283.
            t279 = t283.
          ENDIF.
          DATA(t284) = CAST zcl_lnt_typed_identifier( t195 ).
          DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t286) = |Type|.
          CREATE OBJECT t285.
          t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t285->sval = t286.
          DATA t287 TYPE string.
          DATA(t288) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t287 = t288->filename.
          DATA t289 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t289.
          t277->add_reference( i_usage = t279 i_referencing = t284 i_type_9913 = t285 i_filename = t287 i_extra = t289 ).
        ENDIF.
      ELSE.
        DATA t290 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t290.
        DATA t291 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t291.
        DATA t292 TYPE REF TO zcl_lnt_current_scope.
        DATA t293 TYPE REF TO zcl_lnt_current_scope.
        DATA(t294) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t293 = t294->scope.
        t292 = t293.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t296.
        DATA(t297) = abap_true.
        IF t297 = abap_true.
          DATA(t298) = t171.
          DATA(t299) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t299->has = abap_true.
          t299->value = t298.
          t296 = t299.
        ELSE.
          DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t300.
          t296 = t300.
        ENDIF.
        t295 = t296.
        DATA t301 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t301.
        DATA(t302) = VALUE abap_bool( ).
        DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t304) = CAST zlnt_runtime_opti_4ba3bdccd169( t295 ).
        t303 = t304.
        DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t306.
        t305 = t306.
        DATA(t307) = VALUE abap_bool( ).
        DATA(t308) = CAST zlnt_runtime_opti_4ba3bdccd169( t303 ).
        IF t308 IS INITIAL.
          t307 = abap_true.
        ELSEIF t308->has = abap_false.
          t307 = abap_true.
        ENDIF.
        t302 = t307.
        IF t302 = abap_true.
          DATA t309 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t309.
          t301 = t309.
        ELSE.
          DATA t310 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t310.
          DATA t311 TYPE REF TO zif_lnt_class_definition.
          CLEAR t311.
          DATA t312 TYPE REF TO zif_lnt_class_definition.
          CLEAR t312.
          DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t313.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t314.
          DATA(t315) = abap_true.
          IF t315 = abap_true.
            DATA t316 TYPE string.
            DATA(t317) = CAST zlnt_runtime_opti_4ba3bdccd169( t295 ).
            t316 = t317->value.
            DATA(t318) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t318->has = abap_true.
            t318->value = t316.
            t314 = t318.
          ELSE.
            DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t319.
            t314 = t319.
          ENDIF.
          t313 = t314.
          DATA t320 TYPE REF TO zif_lnt_class_definition.
          CLEAR t320.
          DATA(t321) = VALUE abap_bool( ).
          DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t323) = CAST zlnt_runtime_opti_4ba3bdccd169( t313 ).
          t322 = t323.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t325.
          t324 = t325.
          DATA(t326) = VALUE abap_bool( ).
          DATA(t327) = CAST zlnt_runtime_opti_4ba3bdccd169( t322 ).
          IF t327 IS INITIAL.
            t326 = abap_true.
          ELSEIF t327->has = abap_false.
            t326 = abap_true.
          ENDIF.
          t321 = t326.
          IF t321 = abap_true.
            DATA t328 TYPE REF TO zif_lnt_class_definition.
            CLEAR t328.
            t320 = t328.
          ELSE.
            DATA t329 TYPE REF TO zif_lnt_class_definition.
            CLEAR t329.
            DATA t330 TYPE REF TO zif_lnt_class_definition.
            CLEAR t330.
            DATA t331 TYPE REF TO zif_lnt_class_definition.
            CLEAR t331.
            DATA t332 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t333 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t334) = CAST zcl_lnt_current_scope( t292 ).
            t333 = t334->current.
            t332 = t333.
            DATA t335 TYPE REF TO zif_lnt_class_definition.
            CLEAR t335.
            DATA(t336) = VALUE abap_bool( ).
            DATA(t337) = CAST zcl_lnt_spaghetti_scope_node( t332 ).
            IF t337 IS INITIAL.
              t336 = abap_true.
            ENDIF.
            IF t336 = abap_true.
              DATA t338 TYPE REF TO zif_lnt_class_definition.
              CLEAR t338.
              t335 = t338.
            ELSE.
              DATA t339 TYPE REF TO zif_lnt_class_definition.
              DATA t340 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t341) = CAST zcl_lnt_spaghetti_scope_node( t332 ).
              t340 = t341.
              DATA t342 TYPE string.
              DATA(t343) = CAST zlnt_runtime_opti_4ba3bdccd169( t313 ).
              t342 = t343->value.
              t339 = t340->find_class_definition( i_name = t342 ).
              t335 = t339.
            ENDIF.
            t331 = t335.
            t330 = t331.
            DATA t344 TYPE REF TO zif_lnt_class_definition.
            CLEAR t344.
            DATA t345 TYPE abap_bool.
            DATA(t346) = CAST zif_lnt_class_definition( t330 ).
            t345 = xsdbool( t346 IS BOUND ).
            IF t345 = abap_true.
              DATA t347 TYPE REF TO zif_lnt_class_definition.
              CLEAR t347.
              DATA(t348) = abap_true.
              IF t348 = abap_true.
                DATA t349 TYPE REF TO zif_lnt_class_definition.
                DATA(t350) = CAST zif_lnt_class_definition( t330 ).
                t349 = t350.
                t347 = t349.
              ELSE.
                DATA t351 TYPE REF TO zif_lnt_class_definition.
                CLEAR t351.
                t347 = t351.
              ENDIF.
              t344 = t347.
            ELSE.
              DATA t352 TYPE REF TO zif_lnt_class_definition.
              CLEAR t352.
              DATA t353 TYPE REF TO zcl_lnt_class.
              CLEAR t353.
              DATA t354 TYPE REF TO zcl_lnt_class.
              CLEAR t354.
              DATA t355 TYPE REF TO zif_lnt_object.
              CLEAR t355.
              DATA t356 TYPE REF TO zif_lnt_registry.
              DATA(t357) = CAST zcl_lnt_current_scope( t292 ).
              t356 = t357->reg.
              DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t358.
              DATA(t359) = abap_true.
              IF t359 = abap_true.
                DATA(t360) = |CLAS|.
                DATA(t361) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t361->has = abap_true.
                t361->value = t360.
                t358 = t361.
              ELSE.
                DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t362.
                t358 = t362.
              ENDIF.
              DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t363.
              DATA(t364) = abap_true.
              IF t364 = abap_true.
                DATA t365 TYPE string.
                DATA(t366) = CAST zlnt_runtime_opti_4ba3bdccd169( t313 ).
                t365 = t366->value.
                DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t367->has = abap_true.
                t367->value = t365.
                t363 = t367.
              ELSE.
                DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t368.
                t363 = t368.
              ENDIF.
              t355 = t356->get_object( i_type_9913 = t358 i_name = t363 ).
              DATA t369 TYPE REF TO object.
              t369 = t355.
              t354 ?= t369.
              t353 = t354.
              DATA t370 TYPE REF TO zif_lnt_class_definition.
              CLEAR t370.
              DATA t371 TYPE abap_bool.
              DATA(t372) = CAST zcl_lnt_class( t353 ).
              t371 = xsdbool( t372 IS BOUND ).
              IF t371 = abap_true.
                DATA t373 TYPE REF TO zif_lnt_class_definition.
                DATA t374 TYPE REF TO zcl_lnt_class.
                DATA(t375) = CAST zcl_lnt_class( t353 ).
                t374 = t375.
                t373 = t374->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t370 = t373.
              ELSE.
                DATA t376 TYPE REF TO zif_lnt_class_definition.
                CLEAR t376.
                t370 = t376.
              ENDIF.
              t352 = t370.
              t344 = t352.
            ENDIF.
            t329 = t344.
            t320 = t329.
          ENDIF.
          t312 = t320.
          t311 = t312.
          DATA t377 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t377.
          DATA t378 TYPE abap_bool.
          DATA(t379) = CAST zif_lnt_class_definition( t311 ).
          t378 = xsdbool( t379 IS BOUND ).
          IF t378 = abap_true.
            DATA t380 TYPE REF TO zif_lnt_interface_definition.
            DATA t381 TYPE REF TO zif_lnt_class_definition.
            DATA(t382) = CAST zif_lnt_class_definition( t311 ).
            t381 = t382.
            t380 ?= t381.
            t377 = t380.
          ELSE.
            DATA t383 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t383.
            DATA t384 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t384.
            DATA t385 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t385.
            DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t386.
            DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t387.
            DATA(t388) = abap_true.
            IF t388 = abap_true.
              DATA t389 TYPE string.
              DATA(t390) = CAST zlnt_runtime_opti_4ba3bdccd169( t295 ).
              t389 = t390->value.
              DATA(t391) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t391->has = abap_true.
              t391->value = t389.
              t387 = t391.
            ELSE.
              DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t392.
              t387 = t392.
            ENDIF.
            t386 = t387.
            DATA t393 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t393.
            DATA(t394) = VALUE abap_bool( ).
            DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t396) = CAST zlnt_runtime_opti_4ba3bdccd169( t386 ).
            t395 = t396.
            DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t398.
            t397 = t398.
            DATA(t399) = VALUE abap_bool( ).
            DATA(t400) = CAST zlnt_runtime_opti_4ba3bdccd169( t395 ).
            IF t400 IS INITIAL.
              t399 = abap_true.
            ELSEIF t400->has = abap_false.
              t399 = abap_true.
            ENDIF.
            t394 = t399.
            IF t394 = abap_true.
              DATA t401 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t401.
              t393 = t401.
            ELSE.
              DATA t402 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t402.
              DATA t403 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t403.
              DATA t404 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t404.
              DATA t405 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t406 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t407) = CAST zcl_lnt_current_scope( t292 ).
              t406 = t407->current.
              t405 = t406.
              DATA t408 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t408.
              DATA(t409) = VALUE abap_bool( ).
              DATA(t410) = CAST zcl_lnt_spaghetti_scope_node( t405 ).
              IF t410 IS INITIAL.
                t409 = abap_true.
              ENDIF.
              IF t409 = abap_true.
                DATA t411 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t411.
                t408 = t411.
              ELSE.
                DATA t412 TYPE REF TO zif_lnt_interface_definition.
                DATA t413 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t414) = CAST zcl_lnt_spaghetti_scope_node( t405 ).
                t413 = t414.
                DATA t415 TYPE string.
                DATA(t416) = CAST zlnt_runtime_opti_4ba3bdccd169( t386 ).
                t415 = t416->value.
                t412 = t413->find_interface_definition( i_name = t415 ).
                t408 = t412.
              ENDIF.
              t404 = t408.
              t403 = t404.
              DATA t417 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t417.
              DATA t418 TYPE abap_bool.
              DATA(t419) = CAST zif_lnt_interface_definition( t403 ).
              t418 = xsdbool( t419 IS BOUND ).
              IF t418 = abap_true.
                DATA t420 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t420.
                DATA(t421) = abap_true.
                IF t421 = abap_true.
                  DATA t422 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t423) = CAST zif_lnt_interface_definition( t403 ).
                  t422 = t423.
                  t420 = t422.
                ELSE.
                  DATA t424 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t424.
                  t420 = t424.
                ENDIF.
                t417 = t420.
              ELSE.
                DATA t425 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t425.
                DATA t426 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t426.
                DATA t427 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t427.
                DATA t428 TYPE REF TO zif_lnt_object.
                CLEAR t428.
                DATA t429 TYPE REF TO zif_lnt_registry.
                DATA(t430) = CAST zcl_lnt_current_scope( t292 ).
                t429 = t430->reg.
                DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t431.
                DATA(t432) = abap_true.
                IF t432 = abap_true.
                  DATA(t433) = |INTF|.
                  DATA(t434) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t434->has = abap_true.
                  t434->value = t433.
                  t431 = t434.
                ELSE.
                  DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t435.
                  t431 = t435.
                ENDIF.
                DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t436.
                DATA(t437) = abap_true.
                IF t437 = abap_true.
                  DATA t438 TYPE string.
                  DATA(t439) = CAST zlnt_runtime_opti_4ba3bdccd169( t386 ).
                  t438 = t439->value.
                  DATA(t440) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t440->has = abap_true.
                  t440->value = t438.
                  t436 = t440.
                ELSE.
                  DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t441.
                  t436 = t441.
                ENDIF.
                t428 = t429->get_object( i_type_9913 = t431 i_name = t436 ).
                DATA t442 TYPE REF TO object.
                t442 = t428.
                t427 ?= t442.
                t426 = t427.
                DATA t443 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t443.
                DATA t444 TYPE abap_bool.
                DATA(t445) = CAST zcl_lnt_ob_interface( t426 ).
                t444 = xsdbool( t445 IS BOUND ).
                IF t444 = abap_true.
                  DATA t446 TYPE REF TO zif_lnt_interface_definition.
                  DATA t447 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t448 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t449) = CAST zcl_lnt_ob_interface( t426 ).
                  t448 = t449.
                  t447 = t448.
                  DATA t450 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t451) = CAST zcl_lnt_ob_interface( t447 ).
                  t450 = t451->def.
                  t446 = t450.
                  t443 = t446.
                ELSE.
                  DATA t452 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t452.
                  t443 = t452.
                ENDIF.
                t425 = t443.
                t417 = t425.
              ENDIF.
              t402 = t417.
              t393 = t402.
            ENDIF.
            t385 = t393.
            t384 = t385.
            DATA t453 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t453.
            DATA t454 TYPE abap_bool.
            DATA(t455) = CAST zif_lnt_interface_definition( t384 ).
            t454 = xsdbool( t455 IS BOUND ).
            IF t454 = abap_true.
              DATA t456 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t456.
              DATA(t457) = abap_true.
              IF t457 = abap_true.
                DATA t458 TYPE REF TO zif_lnt_interface_definition.
                DATA(t459) = CAST zif_lnt_interface_definition( t384 ).
                t458 = t459.
                t456 = t458.
              ELSE.
                DATA t460 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t460.
                t456 = t460.
              ENDIF.
              t453 = t456.
            ELSE.
              DATA t461 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t461.
              t453 = t461.
            ENDIF.
            t383 = t453.
            t377 = t383.
          ENDIF.
          t310 = t377.
          t301 = t310.
        ENDIF.
        t291 = t301.
        t290 = t291.
        DATA(t462) = VALUE abap_bool( ).
        DATA(t463) = VALUE abap_bool( ).
        DATA t464 TYPE REF TO zif_lnt_interface_definition.
        DATA(t465) = CAST zif_lnt_interface_definition( t290 ).
        t464 = t465.
        DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t467.
        t466 = t467.
        DATA(t468) = VALUE abap_bool( ).
        DATA(t469) = CAST zif_lnt_interface_definition( t464 ).
        IF t469 IS INITIAL.
          t468 = abap_true.
        ENDIF.
        t463 = t468.
        t462 = t463.
        IF t463 = abap_true.
          DATA(t470) = VALUE abap_bool( ).
          DATA(t471) = VALUE abap_bool( ).
          DATA t472 TYPE REF TO zcl_lnt_ddic.
          DATA t473 TYPE REF TO zcl_lnt_ddic.
          DATA t474 TYPE REF TO zcl_lnt_current_scope.
          DATA t475 TYPE REF TO zcl_lnt_current_scope.
          DATA(t476) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t475 = t476->scope.
          t474 = t475.
          DATA t477 TYPE REF TO zcl_lnt_ddic.
          DATA t478 TYPE REF TO zif_lnt_registry.
          DATA(t479) = CAST zcl_lnt_current_scope( t474 ).
          t478 = t479->reg.
          t477 = NEW zcl_lnt_ddic( i_reg_f149 = t478 ).
          t473 = t477.
          t472 = t473.
          DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t480.
          DATA t481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t481.
          DATA(t482) = abap_true.
          IF t482 = abap_true.
            DATA(t483) = t171.
            DATA(t484) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t484->has = abap_true.
            t484->value = t483.
            t481 = t484.
          ELSE.
            DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t485.
            t481 = t485.
          ENDIF.
          t480 = t481.
          DATA(t486) = VALUE abap_bool( ).
          DATA(t487) = VALUE abap_bool( ).
          DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t489) = CAST zlnt_runtime_opti_4ba3bdccd169( t480 ).
          t488 = t489.
          DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t491.
          t490 = t491.
          DATA(t492) = VALUE abap_bool( ).
          DATA(t493) = CAST zlnt_runtime_opti_4ba3bdccd169( t488 ).
          IF t493 IS INITIAL.
            t492 = abap_true.
          ELSEIF t493->has = abap_false.
            t492 = abap_true.
          ENDIF.
          t487 = t492.
          IF t487 = abap_true.
            DATA(t494) = abap_true.
            t486 = t494.
          ELSE.
            DATA t495 TYPE abap_bool.
            DATA t496 TYPE REF TO zif_lnt_registry.
            DATA(t497) = CAST zcl_lnt_ddic( t472 ).
            t496 = t497->reg.
            DATA t498 TYPE string.
            DATA(t499) = CAST zlnt_runtime_opti_4ba3bdccd169( t480 ).
            t498 = t499->value.
            t495 = t496->in_error_namespace( i_name = t498 ).
            t486 = t495.
          ENDIF.
          t471 = t486.
          DATA(t500) = abap_false.
          t470 = xsdbool( t471 = t500 ).
          t462 = t470.
        ENDIF.
        IF t462 = abap_true.
          DATA t501 TYPE REF TO zcl_lnt_current_scope.
          DATA(t502) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t501 = t502->scope.
          DATA t503 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t503.
          DATA(t504) = abap_true.
          IF t504 = abap_true.
            DATA t505 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t506) = CAST zcl_lnt_expression_node( t1 ).
            t505 = t506->get_first_token( ).
            t503 = t505.
          ELSE.
            DATA t507 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t507.
            t503 = t507.
          ENDIF.
          DATA t508 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t508.
          DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t510) = |Object (Void)|.
          CREATE OBJECT t509.
          t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t509->sval = t510.
          DATA t511 TYPE string.
          DATA(t512) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t511 = t512->filename.
          DATA t513 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t513.
          DATA(t514) = abap_true.
          IF t514 = abap_true.
            DATA t515 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t515.
            DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t516.
            DATA(t517) = abap_true.
            IF t517 = abap_true.
              DATA t518 TYPE string.
              DATA(t519) = t171.
              DATA(t520) = strlen( t519 ).
              t518 = t519.
              IF t518 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t518 TO UPPER CASE.
              ELSE.
                t518 = zlnt_runtime_uppe_91169605024d=>full( t518 ).
              ENDIF.
              DATA(t521) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t521->has = abap_true.
              t521->value = t518.
              t516 = t521.
            ELSE.
              DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t522.
              t516 = t522.
            ENDIF.
            DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t523.
            DATA t524 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t524.
            t515 = NEW zcl_lnt_ireference_extras( i_oo_name = t516 i_oo_type = t523 i_found_qualified = t524 ).
            t513 = t515.
          ELSE.
            DATA t525 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t525.
            t513 = t525.
          ENDIF.
          t501->add_reference( i_usage = t503 i_referencing = t508 i_type_9913 = t509 i_filename = t511 i_extra = t513 ).
          DATA t526 TYPE REF TO zcl_lnt_void_type.
          CLEAR t526.
          DATA t527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t527.
          DATA(t528) = abap_true.
          IF t528 = abap_true.
            DATA(t529) = t171.
            DATA(t530) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t530->has = abap_true.
            t530->value = t529.
            t527 = t530.
          ELSE.
            DATA t531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t531.
            t527 = t531.
          ENDIF.
          DATA t532 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t532.
          t526 = zcl_lnt_void_type=>get_db65( i_voided = t527 i_qualified_name = t532 ).
          result = t526.
          RETURN.
        ELSE.
          DATA(t533) = VALUE abap_bool( ).
          DATA t534 TYPE REF TO zif_lnt_interface_definition.
          DATA(t535) = CAST zif_lnt_interface_definition( t290 ).
          t534 = t535.
          DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t537.
          t536 = t537.
          DATA(t538) = VALUE abap_bool( ).
          DATA(t539) = CAST zif_lnt_interface_definition( t534 ).
          IF t539 IS INITIAL.
            t538 = abap_true.
          ENDIF.
          t533 = t538.
          IF t533 = abap_true.
            DATA t540 TYPE REF TO zcl_lnt_unknown_type.
            DATA t541 TYPE string.
            DATA t542 TYPE string.
            DATA(t543) = |Could not resolve top |.
            DATA(t544) = t171.
            DATA(t545) = strlen( t543 ).
            t542 = |{ t543 }{ t544 }|.
            DATA(t546) = |, resolveTypeChain|.
            DATA(t547) = strlen( t542 ).
            t541 = |{ t542 }{ t546 }|.
            DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t548.
            t540 = NEW zcl_lnt_unknown_type( i_error = t541 i_qualified_name = t548 ).
            result = t540.
            RETURN.
          ENDIF.
        ENDIF.
        DATA(t549) = VALUE string( ).
        DATA(t550) = VALUE string( ).
        DATA t551 TYPE abap_bool.
        DATA(t552) = CAST zif_lnt_interface_definition( t290 ).
        t551 = xsdbool( t552 IS BOUND AND t552 IS INSTANCE OF zcl_lnt_ty_class_definition ).
        IF t551 = abap_true.
          DATA(t553) = |CLAS|.
          t550 = t553.
        ELSE.
          DATA(t554) = |INTF|.
          t550 = t554.
        ENDIF.
        t549 = t550.
        DATA t555 TYPE REF TO zcl_lnt_current_scope.
        DATA(t556) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t555 = t556->scope.
        DATA t557 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t557.
        DATA(t558) = abap_true.
        IF t558 = abap_true.
          DATA t559 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t560) = CAST zcl_lnt_expression_node( t1 ).
          t559 = t560->get_first_token( ).
          t557 = t559.
        ELSE.
          DATA t561 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t561.
          t557 = t561.
        ENDIF.
        DATA t562 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t562.
        DATA(t563) = abap_true.
        IF t563 = abap_true.
          DATA t564 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t565 TYPE REF TO zif_lnt_interface_definition.
          DATA(t566) = CAST zif_lnt_interface_definition( t290 ).
          t565 = t566.
          t564 ?= t565.
          t562 = t564.
        ELSE.
          DATA t567 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t567.
          t562 = t567.
        ENDIF.
        DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t569) = |Object|.
        CREATE OBJECT t568.
        t568->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t568->sval = t569.
        DATA t570 TYPE string.
        DATA(t571) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t570 = t571->filename.
        DATA t572 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t572.
        DATA(t573) = abap_true.
        IF t573 = abap_true.
          DATA t574 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t574.
          DATA t575 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t575.
          DATA(t576) = abap_true.
          IF t576 = abap_true.
            DATA(t577) = t171.
            DATA(t578) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t578->has = abap_true.
            t578->value = t577.
            t575 = t578.
          ELSE.
            DATA t579 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t579.
            t575 = t579.
          ENDIF.
          DATA t580 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t580.
          DATA(t581) = abap_true.
          IF t581 = abap_true.
            DATA(t582) = t549.
            DATA(t583) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t583->has = abap_true.
            t583->value = t582.
            t580 = t583.
          ELSE.
            DATA t584 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t584.
            t580 = t584.
          ENDIF.
          DATA t585 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t585.
          t574 = NEW zcl_lnt_ireference_extras( i_oo_name = t575 i_oo_type = t580 i_found_qualified = t585 ).
          t572 = t574.
        ELSE.
          DATA t586 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t586.
          t572 = t586.
        ENDIF.
        t555->add_reference( i_usage = t557 i_referencing = t562 i_type_9913 = t568 i_filename = t570 i_extra = t572 ).
        DATA t587 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t587.
        DATA t588 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t588.
        DATA t589 TYPE REF TO zcl_lnt_object_oriented.
        DATA t590 TYPE REF TO zcl_lnt_current_scope.
        DATA(t591) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t590 = t591->scope.
        t589 = NEW zcl_lnt_object_oriented( i_scope = t590 ).
        DATA t592 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t592.
        DATA(t593) = abap_true.
        IF t593 = abap_true.
          DATA t594 TYPE REF TO zif_lnt_interface_definition.
          DATA(t595) = CAST zif_lnt_interface_definition( t290 ).
          t594 = t595.
          t592 = t594.
        ELSE.
          DATA t596 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t596.
          t592 = t596.
        ENDIF.
        DATA t597 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t597.
        DATA(t598) = abap_true.
        IF t598 = abap_true.
          DATA(t599) = VALUE string( ).
          DATA(t600) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
          READ TABLE t600->items INDEX 1 INTO t599.
          DATA(t601) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t601->has = abap_true.
          t601->value = t599.
          t597 = t601.
        ELSE.
          DATA t602 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t602.
          t597 = t602.
        ENDIF.
        t588 = t589->search_type_name( i_def = t592 i_name = t597 ).
        t587 = t588.
        DATA t603 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t603.
        DATA t604 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t605) = CAST zcl_lnt_typed_identifier( t587 ).
        t604 = t605.
        DATA t606 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t606.
        DATA(t607) = VALUE abap_bool( ).
        DATA(t608) = CAST zcl_lnt_typed_identifier( t604 ).
        IF t608 IS INITIAL.
          t607 = abap_true.
        ENDIF.
        IF t607 = abap_true.
          DATA t609 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t609.
          t606 = t609.
        ELSE.
          DATA t610 TYPE REF TO zcl_lnt_abstract_type.
          DATA t611 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t612 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t613) = CAST zcl_lnt_typed_identifier( t604 ).
          t612 = t613.
          t611 = t612.
          DATA t614 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t615) = CAST zcl_lnt_typed_identifier( t611 ).
          t614 = t615->type_cba0.
          t610 = t614.
          t606 = t610.
        ENDIF.
        t603 = t606.
        t150 = t603.
        DATA(t616) = VALUE abap_bool( ).
        DATA(t617) = VALUE abap_bool( ).
        DATA t618 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t619) = CAST zcl_lnt_typed_identifier( t587 ).
        t618 = t619.
        DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t621.
        t620 = t621.
        DATA(t622) = VALUE abap_bool( ).
        DATA(t623) = CAST zcl_lnt_typed_identifier( t618 ).
        IF t623 IS INITIAL.
          t622 = abap_true.
        ENDIF.
        t617 = t622.
        t616 = t617.
        IF t617 = abap_false.
          DATA(t624) = VALUE abap_bool( ).
          DATA t625 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t626) = CAST zcl_lnt_abstract_type( t150 ).
          t625 = t626.
          DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t628.
          t627 = t628.
          DATA(t629) = VALUE abap_bool( ).
          DATA(t630) = CAST zcl_lnt_abstract_type( t625 ).
          IF t630 IS INITIAL.
            t629 = abap_true.
          ENDIF.
          t624 = t629.
          t616 = t624.
        ENDIF.
        IF t616 = abap_true.
          DATA t631 TYPE REF TO zcl_lnt_unknown_type.
          DATA t632 TYPE string.
          DATA(t633) = VALUE string( ).
          DATA(t634) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
          READ TABLE t634->items INDEX 1 INTO t633.
          DATA(t635) = | not found in class or interface|.
          DATA(t636) = strlen( t633 ).
          t632 = |{ t633 }{ t635 }|.
          DATA t637 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t637.
          t631 = NEW zcl_lnt_unknown_type( i_error = t632 i_qualified_name = t637 ).
          result = t631.
          RETURN.
        ENDIF.
        DATA t638 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t638.
        DATA t639 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t639.
        DATA t640 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t641 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t642 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t643 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t644 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t645) = CAST zcl_lnt_expression_node( t1 ).
        t644 = t645.
        DATA t646 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t647) = CAST zcl_lnt_abstract_node( t644 ).
        t646 = t647->children.
        t643 = t646.
        t642 ?= t643.
        DATA(t648) = 2.
        DATA t649 TYPE REF TO object.
        t649 = t642->get( p0 = t648 ).
        t641 ?= t649.
        t640 = t641.
        DATA t650 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t650.
        DATA(t651) = VALUE abap_bool( ).
        DATA(t652) = CAST zif_lnt_union_4cf1d054( t640 ).
        IF t652 IS INITIAL.
          t651 = abap_true.
        ENDIF.
        IF t651 = abap_true.
          DATA t653 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t653.
          t650 = t653.
        ELSE.
          DATA t654 TYPE REF TO zcl_lnt_abstract_token.
          DATA t655 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t656) = CAST zif_lnt_union_4cf1d054( t640 ).
          t655 = t656.
          t654 = t655->get_first_token( ).
          t650 = t654.
        ENDIF.
        t639 = t650.
        t638 = t639.
        DATA t657 TYPE abap_bool.
        DATA t658 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t659) = CAST zcl_lnt_abstract_token( t638 ).
        t658 = t659.
        t657 = xsdbool( t658 IS BOUND ).
        IF t657 = abap_true.
          DATA t660 TYPE REF TO zcl_lnt_current_scope.
          DATA(t661) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t660 = t661->scope.
          DATA t662 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t662.
          DATA(t663) = abap_true.
          IF t663 = abap_true.
            DATA t664 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t665) = CAST zcl_lnt_abstract_token( t638 ).
            t664 = t665.
            t662 = t664.
          ELSE.
            DATA t666 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t666.
            t662 = t666.
          ENDIF.
          DATA t667 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t668) = CAST zcl_lnt_typed_identifier( t587 ).
          t667 = t668.
          DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t670) = |Type|.
          CREATE OBJECT t669.
          t669->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t669->sval = t670.
          DATA t671 TYPE string.
          DATA(t672) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t671 = t672->filename.
          DATA t673 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t673.
          t660->add_reference( i_usage = t662 i_referencing = t667 i_type_9913 = t669 i_filename = t671 i_extra = t673 ).
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t674) = VALUE abap_bool( ).
      DATA(t675) = VALUE abap_bool( ).
      DATA(t676) = CAST zlnt_runtime_opti_4ba3bdccd169( t89 ).
      IF t676 IS BOUND.
        IF t676->has = abap_true.
          t675 = xsdbool( strlen( t676->value ) > 0 ).
        ENDIF.
      ENDIF.
      t674 = t675.
      IF t675 = abap_true.
        DATA(t677) = VALUE abap_bool( ).
        DATA(t678) = VALUE i( ).
        DATA(t679) = t2.
        DATA(t680) = |->|.
        DATA(t681) = strlen( t679 ).
        IF t680 IS INITIAL.
          t678 = 0.
        ELSE.
          FIND t680 IN t679 MATCH OFFSET t678.
          IF sy-subrc <> 0.
            t678 = -1.
          ENDIF.
        ENDIF.
        DATA(t682) = 0.
        t677 = xsdbool( t678 >= t682 ).
        t674 = t677.
      ENDIF.
      IF t674 = abap_true.
        DATA t683 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t683.
        DATA t684 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t684.
        DATA t685 TYPE REF TO zcl_lnt_current_scope.
        DATA t686 TYPE REF TO zcl_lnt_current_scope.
        DATA(t687) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t686 = t687->scope.
        t685 = t686.
        DATA t688 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t688.
        DATA t689 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t689.
        DATA(t690) = abap_true.
        IF t690 = abap_true.
          DATA t691 TYPE string.
          DATA(t692) = CAST zlnt_runtime_opti_4ba3bdccd169( t89 ).
          t691 = t692->value.
          DATA(t693) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t693->has = abap_true.
          t693->value = t691.
          t689 = t693.
        ELSE.
          DATA t694 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t694.
          t689 = t694.
        ENDIF.
        t688 = t689.
        DATA t695 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t695.
        DATA(t696) = VALUE abap_bool( ).
        DATA t697 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t698) = CAST zlnt_runtime_opti_4ba3bdccd169( t688 ).
        t697 = t698.
        DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t700.
        t699 = t700.
        DATA(t701) = VALUE abap_bool( ).
        DATA(t702) = CAST zlnt_runtime_opti_4ba3bdccd169( t697 ).
        IF t702 IS INITIAL.
          t701 = abap_true.
        ELSEIF t702->has = abap_false.
          t701 = abap_true.
        ENDIF.
        t696 = t701.
        IF t696 = abap_true.
          DATA t703 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t703.
          t695 = t703.
        ELSE.
          DATA t704 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t704.
          DATA t705 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t705.
          DATA t706 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t706.
          DATA t707 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t708 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t709) = CAST zcl_lnt_current_scope( t685 ).
          t708 = t709->current.
          t707 = t708.
          DATA t710 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t710.
          DATA(t711) = VALUE abap_bool( ).
          DATA(t712) = CAST zcl_lnt_spaghetti_scope_node( t707 ).
          IF t712 IS INITIAL.
            t711 = abap_true.
          ENDIF.
          IF t711 = abap_true.
            DATA t713 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t713.
            t710 = t713.
          ELSE.
            DATA t714 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t715 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t716) = CAST zcl_lnt_spaghetti_scope_node( t707 ).
            t715 = t716.
            DATA t717 TYPE string.
            DATA(t718) = CAST zlnt_runtime_opti_4ba3bdccd169( t688 ).
            t717 = t718->value.
            t714 = t715->find_variable( i_name = t717 ).
            t710 = t714.
          ENDIF.
          t706 = t710.
          t705 = t706.
          DATA t719 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t719.
          DATA t720 TYPE abap_bool.
          DATA(t721) = CAST zcl_lnt_typed_identifier( t705 ).
          t720 = xsdbool( t721 IS BOUND ).
          IF t720 = abap_true.
            DATA t722 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t722.
            DATA(t723) = abap_true.
            IF t723 = abap_true.
              DATA t724 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t725) = CAST zcl_lnt_typed_identifier( t705 ).
              t724 = t725.
              t722 = t724.
            ELSE.
              DATA t726 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t726.
              t722 = t726.
            ENDIF.
            t719 = t722.
          ELSE.
            DATA t727 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t727.
            DATA(t728) = CAST zcl_lnt_current_scope( t685 ).
            DATA t729 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t729.
            DATA(t730) = abap_true.
            IF t730 = abap_true.
              DATA t731 TYPE string.
              DATA(t732) = CAST zlnt_runtime_opti_4ba3bdccd169( t688 ).
              t731 = t732->value.
              DATA(t733) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t733->has = abap_true.
              t733->value = t731.
              t729 = t733.
            ELSE.
              DATA t734 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t734.
              t729 = t734.
            ENDIF.
            t727 = t728->find_type_pool_constant( i_name = t729 ).
            t719 = t727.
          ENDIF.
          t704 = t719.
          t695 = t704.
        ENDIF.
        t684 = t695.
        t683 = t684.
        DATA t735 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t735.
        DATA t736 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t736.
        DATA t737 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t738) = CAST zcl_lnt_typed_identifier( t683 ).
        t737 = t738.
        DATA t739 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t739.
        DATA(t740) = VALUE abap_bool( ).
        DATA(t741) = CAST zcl_lnt_typed_identifier( t737 ).
        IF t741 IS INITIAL.
          t740 = abap_true.
        ENDIF.
        IF t740 = abap_true.
          DATA t742 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t742.
          t739 = t742.
        ELSE.
          DATA t743 TYPE REF TO zcl_lnt_abstract_type.
          DATA t744 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t745 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t746) = CAST zcl_lnt_typed_identifier( t737 ).
          t745 = t746.
          t744 = t745.
          DATA t747 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t748) = CAST zcl_lnt_typed_identifier( t744 ).
          t747 = t748->type_cba0.
          t743 = t747.
          t739 = t743.
        ENDIF.
        t736 = t739.
        t735 = t736.
        DATA t749 TYPE abap_bool.
        DATA(t750) = CAST zcl_lnt_abstract_type( t735 ).
        t749 = xsdbool( t750 IS BOUND AND t750 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t749 = abap_true.
          DATA t751 TYPE string.
          DATA(t752) = VALUE string( ).
          DATA(t753) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
          READ TABLE t753->items INDEX 1 INTO t752.
          t751 = t752.
          DATA t754 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t755 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t756 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t757 TYPE REF TO zcl_lnt_object_reference_type.
          DATA(t758) = CAST zcl_lnt_abstract_type( t735 ).
          t757 ?= t758.
          t756 = t757.
          DATA t759 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t760) = CAST zcl_lnt_object_reference_type( t756 ).
          t759 = t760->identifier.
          t755 = t759.
          t754 = t755.
          DATA(t761) = VALUE abap_bool( ).
          DATA t762 TYPE abap_bool.
          DATA t763 TYPE abap_bool.
          DATA(t764) = CAST zcl_lnt_fi_identifier( t754 ).
          t763 = xsdbool( t764 IS BOUND AND t764 IS INSTANCE OF zcl_lnt_ty_class_definition ).
          t762 = t763.
          IF t763 = abap_false.
            DATA t765 TYPE abap_bool.
            DATA(t766) = CAST zcl_lnt_fi_identifier( t754 ).
            t765 = xsdbool( t766 IS BOUND AND t766 IS INSTANCE OF zcl_lnt_interface_definition ).
            t762 = t765.
          ENDIF.
          t761 = xsdbool( t762 = abap_false ).
          IF t761 = abap_true.
            DATA t767 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t767.
            DATA t768 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t768.
            DATA t769 TYPE REF TO zcl_lnt_current_scope.
            DATA t770 TYPE REF TO zcl_lnt_current_scope.
            DATA(t771) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t770 = t771->scope.
            t769 = t770.
            DATA t772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t772.
            DATA t773 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t773.
            DATA(t774) = abap_true.
            IF t774 = abap_true.
              DATA(t775) = VALUE string( ).
              DATA t776 TYPE REF TO zcl_lnt_object_reference_type.
              DATA t777 TYPE REF TO zcl_lnt_object_reference_type.
              DATA(t778) = CAST zcl_lnt_abstract_type( t735 ).
              t777 ?= t778.
              t776 = t777.
              DATA(t779) = VALUE string( ).
              DATA t780 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t781 TYPE REF TO zcl_lnt_fi_identifier.
              DATA(t782) = CAST zcl_lnt_object_reference_type( t776 ).
              t781 = t782->identifier.
              t780 = t781.
              DATA(t783) = VALUE string( ).
              DATA t784 TYPE string.
              DATA t785 TYPE string.
              DATA t786 TYPE REF TO zcl_lnt_abstract_token.
              DATA t787 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t788) = CAST zcl_lnt_fi_identifier( t780 ).
              t787 = t788->token.
              t786 = t787.
              DATA t789 TYPE string.
              DATA(t790) = CAST zcl_lnt_abstract_token( t786 ).
              t789 = t790->str.
              t785 = t789.
              t784 = t785.
              DATA(t791) = VALUE abap_bool( ).
              DATA(t792) = VALUE string( ).
              DATA(t793) = t784.
              DATA(t794) = 0.
              DATA(t795) = 1.
              DATA(t796) = strlen( t793 ).
              IF t794 < 0.
                t794 = t794 + t796.
                IF t794 < 0.
                  t794 = 0.
                ENDIF.
              ENDIF.
              IF t794 > t796 OR t795 <= 0.
                CLEAR t792.
              ELSE.
                IF t795 > t796 - t794.
                  t795 = t796 - t794.
                ENDIF.
                t792 = t793+t794(t795).
              ENDIF.
              DATA(t797) = |!|.
              t791 = xsdbool( t792 = t797 ).
              IF t791 = abap_true.
                DATA(t798) = VALUE string( ).
                DATA t799 TYPE string.
                DATA(t800) = t784.
                t799 = t800.
                DATA(t801) = VALUE string( ).
                DATA(t802) = t799.
                DATA(t803) = 1.
                DATA t804 TYPE i.
                DATA(t805) = t799.
                DATA(t806) = strlen( t805 ).
                t804 = t806.
                DATA(t807) = strlen( t802 ).
                IF t803 < 0.
                  t803 = t803 + t807.
                  IF t803 < 0.
                    t803 = 0.
                  ENDIF.
                ENDIF.
                IF t803 > t807 OR t804 <= 0.
                  CLEAR t801.
                ELSE.
                  IF t804 > t807 - t803.
                    t804 = t807 - t803.
                  ENDIF.
                  t801 = t802+t803(t804).
                ENDIF.
                t798 = t801.
                t784 = t798.
              ENDIF.
              DATA(t808) = t784.
              t783 = t808.
              t779 = t783.
              t775 = t779.
              DATA(t809) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t809->has = abap_true.
              t809->value = t775.
              t773 = t809.
            ELSE.
              DATA t810 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t810.
              t773 = t810.
            ENDIF.
            t772 = t773.
            DATA t811 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t811.
            DATA(t812) = VALUE abap_bool( ).
            DATA t813 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t814) = CAST zlnt_runtime_opti_4ba3bdccd169( t772 ).
            t813 = t814.
            DATA t815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t816.
            t815 = t816.
            DATA(t817) = VALUE abap_bool( ).
            DATA(t818) = CAST zlnt_runtime_opti_4ba3bdccd169( t813 ).
            IF t818 IS INITIAL.
              t817 = abap_true.
            ELSEIF t818->has = abap_false.
              t817 = abap_true.
            ENDIF.
            t812 = t817.
            IF t812 = abap_true.
              DATA t819 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t819.
              t811 = t819.
            ELSE.
              DATA t820 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t820.
              DATA t821 TYPE REF TO zif_lnt_class_definition.
              CLEAR t821.
              DATA t822 TYPE REF TO zif_lnt_class_definition.
              CLEAR t822.
              DATA t823 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t823.
              DATA t824 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t824.
              DATA(t825) = abap_true.
              IF t825 = abap_true.
                DATA t826 TYPE string.
                DATA(t827) = CAST zlnt_runtime_opti_4ba3bdccd169( t772 ).
                t826 = t827->value.
                DATA(t828) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t828->has = abap_true.
                t828->value = t826.
                t824 = t828.
              ELSE.
                DATA t829 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t829.
                t824 = t829.
              ENDIF.
              t823 = t824.
              DATA t830 TYPE REF TO zif_lnt_class_definition.
              CLEAR t830.
              DATA(t831) = VALUE abap_bool( ).
              DATA t832 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t833) = CAST zlnt_runtime_opti_4ba3bdccd169( t823 ).
              t832 = t833.
              DATA t834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t835.
              t834 = t835.
              DATA(t836) = VALUE abap_bool( ).
              DATA(t837) = CAST zlnt_runtime_opti_4ba3bdccd169( t832 ).
              IF t837 IS INITIAL.
                t836 = abap_true.
              ELSEIF t837->has = abap_false.
                t836 = abap_true.
              ENDIF.
              t831 = t836.
              IF t831 = abap_true.
                DATA t838 TYPE REF TO zif_lnt_class_definition.
                CLEAR t838.
                t830 = t838.
              ELSE.
                DATA t839 TYPE REF TO zif_lnt_class_definition.
                CLEAR t839.
                DATA t840 TYPE REF TO zif_lnt_class_definition.
                CLEAR t840.
                DATA t841 TYPE REF TO zif_lnt_class_definition.
                CLEAR t841.
                DATA t842 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t843 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t844) = CAST zcl_lnt_current_scope( t769 ).
                t843 = t844->current.
                t842 = t843.
                DATA t845 TYPE REF TO zif_lnt_class_definition.
                CLEAR t845.
                DATA(t846) = VALUE abap_bool( ).
                DATA(t847) = CAST zcl_lnt_spaghetti_scope_node( t842 ).
                IF t847 IS INITIAL.
                  t846 = abap_true.
                ENDIF.
                IF t846 = abap_true.
                  DATA t848 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t848.
                  t845 = t848.
                ELSE.
                  DATA t849 TYPE REF TO zif_lnt_class_definition.
                  DATA t850 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t851) = CAST zcl_lnt_spaghetti_scope_node( t842 ).
                  t850 = t851.
                  DATA t852 TYPE string.
                  DATA(t853) = CAST zlnt_runtime_opti_4ba3bdccd169( t823 ).
                  t852 = t853->value.
                  t849 = t850->find_class_definition( i_name = t852 ).
                  t845 = t849.
                ENDIF.
                t841 = t845.
                t840 = t841.
                DATA t854 TYPE REF TO zif_lnt_class_definition.
                CLEAR t854.
                DATA t855 TYPE abap_bool.
                DATA(t856) = CAST zif_lnt_class_definition( t840 ).
                t855 = xsdbool( t856 IS BOUND ).
                IF t855 = abap_true.
                  DATA t857 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t857.
                  DATA(t858) = abap_true.
                  IF t858 = abap_true.
                    DATA t859 TYPE REF TO zif_lnt_class_definition.
                    DATA(t860) = CAST zif_lnt_class_definition( t840 ).
                    t859 = t860.
                    t857 = t859.
                  ELSE.
                    DATA t861 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t861.
                    t857 = t861.
                  ENDIF.
                  t854 = t857.
                ELSE.
                  DATA t862 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t862.
                  DATA t863 TYPE REF TO zcl_lnt_class.
                  CLEAR t863.
                  DATA t864 TYPE REF TO zcl_lnt_class.
                  CLEAR t864.
                  DATA t865 TYPE REF TO zif_lnt_object.
                  CLEAR t865.
                  DATA t866 TYPE REF TO zif_lnt_registry.
                  DATA(t867) = CAST zcl_lnt_current_scope( t769 ).
                  t866 = t867->reg.
                  DATA t868 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t868.
                  DATA(t869) = abap_true.
                  IF t869 = abap_true.
                    DATA(t870) = |CLAS|.
                    DATA(t871) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t871->has = abap_true.
                    t871->value = t870.
                    t868 = t871.
                  ELSE.
                    DATA t872 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t872.
                    t868 = t872.
                  ENDIF.
                  DATA t873 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t873.
                  DATA(t874) = abap_true.
                  IF t874 = abap_true.
                    DATA t875 TYPE string.
                    DATA(t876) = CAST zlnt_runtime_opti_4ba3bdccd169( t823 ).
                    t875 = t876->value.
                    DATA(t877) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t877->has = abap_true.
                    t877->value = t875.
                    t873 = t877.
                  ELSE.
                    DATA t878 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t878.
                    t873 = t878.
                  ENDIF.
                  t865 = t866->get_object( i_type_9913 = t868 i_name = t873 ).
                  DATA t879 TYPE REF TO object.
                  t879 = t865.
                  t864 ?= t879.
                  t863 = t864.
                  DATA t880 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t880.
                  DATA t881 TYPE abap_bool.
                  DATA(t882) = CAST zcl_lnt_class( t863 ).
                  t881 = xsdbool( t882 IS BOUND ).
                  IF t881 = abap_true.
                    DATA t883 TYPE REF TO zif_lnt_class_definition.
                    DATA t884 TYPE REF TO zcl_lnt_class.
                    DATA(t885) = CAST zcl_lnt_class( t863 ).
                    t884 = t885.
                    t883 = t884->gt_dfn_ins_src_obj_cls_ts_clss( ).
                    t880 = t883.
                  ELSE.
                    DATA t886 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t886.
                    t880 = t886.
                  ENDIF.
                  t862 = t880.
                  t854 = t862.
                ENDIF.
                t839 = t854.
                t830 = t839.
              ENDIF.
              t822 = t830.
              t821 = t822.
              DATA t887 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t887.
              DATA t888 TYPE abap_bool.
              DATA(t889) = CAST zif_lnt_class_definition( t821 ).
              t888 = xsdbool( t889 IS BOUND ).
              IF t888 = abap_true.
                DATA t890 TYPE REF TO zif_lnt_interface_definition.
                DATA t891 TYPE REF TO zif_lnt_class_definition.
                DATA(t892) = CAST zif_lnt_class_definition( t821 ).
                t891 = t892.
                t890 ?= t891.
                t887 = t890.
              ELSE.
                DATA t893 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t893.
                DATA t894 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t894.
                DATA t895 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t895.
                DATA t896 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t896.
                DATA t897 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t897.
                DATA(t898) = abap_true.
                IF t898 = abap_true.
                  DATA t899 TYPE string.
                  DATA(t900) = CAST zlnt_runtime_opti_4ba3bdccd169( t772 ).
                  t899 = t900->value.
                  DATA(t901) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t901->has = abap_true.
                  t901->value = t899.
                  t897 = t901.
                ELSE.
                  DATA t902 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t902.
                  t897 = t902.
                ENDIF.
                t896 = t897.
                DATA t903 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t903.
                DATA(t904) = VALUE abap_bool( ).
                DATA t905 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t906) = CAST zlnt_runtime_opti_4ba3bdccd169( t896 ).
                t905 = t906.
                DATA t907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t908.
                t907 = t908.
                DATA(t909) = VALUE abap_bool( ).
                DATA(t910) = CAST zlnt_runtime_opti_4ba3bdccd169( t905 ).
                IF t910 IS INITIAL.
                  t909 = abap_true.
                ELSEIF t910->has = abap_false.
                  t909 = abap_true.
                ENDIF.
                t904 = t909.
                IF t904 = abap_true.
                  DATA t911 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t911.
                  t903 = t911.
                ELSE.
                  DATA t912 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t912.
                  DATA t913 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t913.
                  DATA t914 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t914.
                  DATA t915 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA t916 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t917) = CAST zcl_lnt_current_scope( t769 ).
                  t916 = t917->current.
                  t915 = t916.
                  DATA t918 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t918.
                  DATA(t919) = VALUE abap_bool( ).
                  DATA(t920) = CAST zcl_lnt_spaghetti_scope_node( t915 ).
                  IF t920 IS INITIAL.
                    t919 = abap_true.
                  ENDIF.
                  IF t919 = abap_true.
                    DATA t921 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t921.
                    t918 = t921.
                  ELSE.
                    DATA t922 TYPE REF TO zif_lnt_interface_definition.
                    DATA t923 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    DATA(t924) = CAST zcl_lnt_spaghetti_scope_node( t915 ).
                    t923 = t924.
                    DATA t925 TYPE string.
                    DATA(t926) = CAST zlnt_runtime_opti_4ba3bdccd169( t896 ).
                    t925 = t926->value.
                    t922 = t923->find_interface_definition( i_name = t925 ).
                    t918 = t922.
                  ENDIF.
                  t914 = t918.
                  t913 = t914.
                  DATA t927 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t927.
                  DATA t928 TYPE abap_bool.
                  DATA(t929) = CAST zif_lnt_interface_definition( t913 ).
                  t928 = xsdbool( t929 IS BOUND ).
                  IF t928 = abap_true.
                    DATA t930 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t930.
                    DATA(t931) = abap_true.
                    IF t931 = abap_true.
                      DATA t932 TYPE REF TO zif_lnt_interface_definition.
                      DATA(t933) = CAST zif_lnt_interface_definition( t913 ).
                      t932 = t933.
                      t930 = t932.
                    ELSE.
                      DATA t934 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t934.
                      t930 = t934.
                    ENDIF.
                    t927 = t930.
                  ELSE.
                    DATA t935 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t935.
                    DATA t936 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t936.
                    DATA t937 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t937.
                    DATA t938 TYPE REF TO zif_lnt_object.
                    CLEAR t938.
                    DATA t939 TYPE REF TO zif_lnt_registry.
                    DATA(t940) = CAST zcl_lnt_current_scope( t769 ).
                    t939 = t940->reg.
                    DATA t941 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t941.
                    DATA(t942) = abap_true.
                    IF t942 = abap_true.
                      DATA(t943) = |INTF|.
                      DATA(t944) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t944->has = abap_true.
                      t944->value = t943.
                      t941 = t944.
                    ELSE.
                      DATA t945 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t945.
                      t941 = t945.
                    ENDIF.
                    DATA t946 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t946.
                    DATA(t947) = abap_true.
                    IF t947 = abap_true.
                      DATA t948 TYPE string.
                      DATA(t949) = CAST zlnt_runtime_opti_4ba3bdccd169( t896 ).
                      t948 = t949->value.
                      DATA(t950) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t950->has = abap_true.
                      t950->value = t948.
                      t946 = t950.
                    ELSE.
                      DATA t951 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t951.
                      t946 = t951.
                    ENDIF.
                    t938 = t939->get_object( i_type_9913 = t941 i_name = t946 ).
                    DATA t952 TYPE REF TO object.
                    t952 = t938.
                    t937 ?= t952.
                    t936 = t937.
                    DATA t953 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t953.
                    DATA t954 TYPE abap_bool.
                    DATA(t955) = CAST zcl_lnt_ob_interface( t936 ).
                    t954 = xsdbool( t955 IS BOUND ).
                    IF t954 = abap_true.
                      DATA t956 TYPE REF TO zif_lnt_interface_definition.
                      DATA t957 TYPE REF TO zcl_lnt_ob_interface.
                      DATA t958 TYPE REF TO zcl_lnt_ob_interface.
                      DATA(t959) = CAST zcl_lnt_ob_interface( t936 ).
                      t958 = t959.
                      t957 = t958.
                      DATA t960 TYPE REF TO zif_lnt_interface_definition.
                      DATA(t961) = CAST zcl_lnt_ob_interface( t957 ).
                      t960 = t961->def.
                      t956 = t960.
                      t953 = t956.
                    ELSE.
                      DATA t962 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t962.
                      t953 = t962.
                    ENDIF.
                    t935 = t953.
                    t927 = t935.
                  ENDIF.
                  t912 = t927.
                  t903 = t912.
                ENDIF.
                t895 = t903.
                t894 = t895.
                DATA t963 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t963.
                DATA t964 TYPE abap_bool.
                DATA(t965) = CAST zif_lnt_interface_definition( t894 ).
                t964 = xsdbool( t965 IS BOUND ).
                IF t964 = abap_true.
                  DATA t966 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t966.
                  DATA(t967) = abap_true.
                  IF t967 = abap_true.
                    DATA t968 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t969) = CAST zif_lnt_interface_definition( t894 ).
                    t968 = t969.
                    t966 = t968.
                  ELSE.
                    DATA t970 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t970.
                    t966 = t970.
                  ENDIF.
                  t963 = t966.
                ELSE.
                  DATA t971 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t971.
                  t963 = t971.
                ENDIF.
                t893 = t963.
                t887 = t893.
              ENDIF.
              t820 = t887.
              t811 = t820.
            ENDIF.
            t768 = t811.
            t767 = t768.
            DATA t972 TYPE abap_bool.
            DATA(t973) = CAST zif_lnt_interface_definition( t767 ).
            t972 = xsdbool( t973 IS BOUND ).
            IF t972 = abap_true.
              DATA t974 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t975 TYPE REF TO zif_lnt_interface_definition.
              DATA(t976) = CAST zif_lnt_interface_definition( t767 ).
              t975 = t976.
              t974 ?= t975.
              t754 = t974.
            ELSE.
              DATA t977 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t977.
              DATA(t978) = VALUE string( ).
              DATA(t979) = VALUE string( ).
              DATA t980 TYPE REF TO zcl_lnt_object_reference_type.
              DATA t981 TYPE REF TO zcl_lnt_object_reference_type.
              DATA(t982) = CAST zcl_lnt_abstract_type( t735 ).
              t981 ?= t982.
              t980 = t981.
              DATA(t983) = VALUE string( ).
              DATA t984 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t985 TYPE REF TO zcl_lnt_fi_identifier.
              DATA(t986) = CAST zcl_lnt_object_reference_type( t980 ).
              t985 = t986->identifier.
              t984 = t985.
              DATA(t987) = VALUE string( ).
              DATA t988 TYPE string.
              DATA t989 TYPE string.
              DATA t990 TYPE REF TO zcl_lnt_abstract_token.
              DATA t991 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t992) = CAST zcl_lnt_fi_identifier( t984 ).
              t991 = t992->token.
              t990 = t991.
              DATA t993 TYPE string.
              DATA(t994) = CAST zcl_lnt_abstract_token( t990 ).
              t993 = t994->str.
              t989 = t993.
              t988 = t989.
              DATA(t995) = VALUE abap_bool( ).
              DATA(t996) = VALUE string( ).
              DATA(t997) = t988.
              DATA(t998) = 0.
              DATA(t999) = 1.
              DATA(t1000) = strlen( t997 ).
              IF t998 < 0.
                t998 = t998 + t1000.
                IF t998 < 0.
                  t998 = 0.
                ENDIF.
              ENDIF.
              IF t998 > t1000 OR t999 <= 0.
                CLEAR t996.
              ELSE.
                IF t999 > t1000 - t998.
                  t999 = t1000 - t998.
                ENDIF.
                t996 = t997+t998(t999).
              ENDIF.
              DATA(t1001) = |!|.
              t995 = xsdbool( t996 = t1001 ).
              IF t995 = abap_true.
                DATA(t1002) = VALUE string( ).
                DATA t1003 TYPE string.
                DATA(t1004) = t988.
                t1003 = t1004.
                DATA(t1005) = VALUE string( ).
                DATA(t1006) = t1003.
                DATA(t1007) = 1.
                DATA t1008 TYPE i.
                DATA(t1009) = t1003.
                DATA(t1010) = strlen( t1009 ).
                t1008 = t1010.
                DATA(t1011) = strlen( t1006 ).
                IF t1007 < 0.
                  t1007 = t1007 + t1011.
                  IF t1007 < 0.
                    t1007 = 0.
                  ENDIF.
                ENDIF.
                IF t1007 > t1011 OR t1008 <= 0.
                  CLEAR t1005.
                ELSE.
                  IF t1008 > t1011 - t1007.
                    t1008 = t1011 - t1007.
                  ENDIF.
                  t1005 = t1006+t1007(t1008).
                ENDIF.
                t1002 = t1005.
                t988 = t1002.
              ENDIF.
              DATA(t1012) = t988.
              t987 = t1012.
              t983 = t987.
              t979 = t983.
              DATA(t1013) = | not found in scope|.
              DATA(t1014) = strlen( t979 ).
              t978 = |{ t979 }{ t1013 }|.
              DATA t1015 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1015.
              t977 = NEW zcl_lnt_unknown_type( i_error = t978 i_qualified_name = t1015 ).
              result = t977.
              RETURN.
            ENDIF.
          ENDIF.
          DATA t1016 TYPE abap_bool.
          DATA t1017 TYPE abap_bool.
          DATA(t1018) = CAST zcl_lnt_fi_identifier( t754 ).
          t1017 = xsdbool( t1018 IS BOUND AND t1018 IS INSTANCE OF zcl_lnt_ty_class_definition ).
          t1016 = t1017.
          IF t1017 = abap_false.
            DATA t1019 TYPE abap_bool.
            DATA(t1020) = CAST zcl_lnt_fi_identifier( t754 ).
            t1019 = xsdbool( t1020 IS BOUND AND t1020 IS INSTANCE OF zcl_lnt_interface_definition ).
            t1016 = t1019.
          ENDIF.
          IF t1016 = abap_true.
            DATA(t1021) = VALUE string( ).
            DATA(t1022) = VALUE string( ).
            DATA t1023 TYPE abap_bool.
            DATA(t1024) = CAST zcl_lnt_fi_identifier( t754 ).
            t1023 = xsdbool( t1024 IS BOUND AND t1024 IS INSTANCE OF zcl_lnt_ty_class_definition ).
            IF t1023 = abap_true.
              DATA(t1025) = |CLAS|.
              t1022 = t1025.
            ELSE.
              DATA(t1026) = |INTF|.
              t1022 = t1026.
            ENDIF.
            t1021 = t1022.
            DATA t1027 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1028) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t1027 = t1028->scope.
            DATA t1029 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1029.
            DATA(t1030) = abap_true.
            IF t1030 = abap_true.
              DATA t1031 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t1032) = CAST zcl_lnt_expression_node( t1 ).
              t1031 = t1032->get_first_token( ).
              t1029 = t1031.
            ELSE.
              DATA t1033 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1033.
              t1029 = t1033.
            ENDIF.
            DATA t1034 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t1034.
            DATA(t1035) = abap_true.
            IF t1035 = abap_true.
              DATA t1036 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t1037 TYPE REF TO zif_lnt_union_865ccdda.
              DATA(t1038) = CAST zcl_lnt_fi_identifier( t754 ).
              t1037 ?= t1038.
              t1036 ?= t1037.
              t1034 = t1036.
            ELSE.
              DATA t1039 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t1039.
              t1034 = t1039.
            ENDIF.
            DATA t1040 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t1041) = |Object|.
            CREATE OBJECT t1040.
            t1040->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t1040->sval = t1041.
            DATA t1042 TYPE string.
            DATA(t1043) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t1042 = t1043->filename.
            DATA t1044 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t1044.
            DATA(t1045) = abap_true.
            IF t1045 = abap_true.
              DATA t1046 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t1046.
              DATA t1047 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1047.
              DATA(t1048) = abap_true.
              IF t1048 = abap_true.
                DATA t1049 TYPE string.
                DATA t1050 TYPE REF TO zif_lnt_union_865ccdda.
                DATA(t1051) = CAST zcl_lnt_fi_identifier( t754 ).
                t1050 ?= t1051.
                t1049 = t1050->get_name( ).
                DATA(t1052) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1052->has = abap_true.
                t1052->value = t1049.
                t1047 = t1052.
              ELSE.
                DATA t1053 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1053.
                t1047 = t1053.
              ENDIF.
              DATA t1054 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1054.
              DATA(t1055) = abap_true.
              IF t1055 = abap_true.
                DATA(t1056) = t1021.
                DATA(t1057) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1057->has = abap_true.
                t1057->value = t1056.
                t1054 = t1057.
              ELSE.
                DATA t1058 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1058.
                t1054 = t1058.
              ENDIF.
              DATA t1059 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t1059.
              t1046 = NEW zcl_lnt_ireference_extras( i_oo_name = t1047 i_oo_type = t1054 i_found_qualified = t1059 ).
              t1044 = t1046.
            ELSE.
              DATA t1060 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t1060.
              t1044 = t1060.
            ENDIF.
            t1027->add_reference( i_usage = t1029 i_referencing = t1034 i_type_9913 = t1040 i_filename = t1042 i_extra = t1044 ).
            DATA t1061 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1061.
            DATA t1062 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1062.
            DATA t1063 TYPE REF TO zcl_lnt_object_oriented.
            DATA t1064 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1065) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t1064 = t1065->scope.
            t1063 = NEW zcl_lnt_object_oriented( i_scope = t1064 ).
            DATA t1066 TYPE REF TO zif_lnt_interface_definition.
            DATA t1067 TYPE REF TO zif_lnt_union_865ccdda.
            DATA(t1068) = CAST zcl_lnt_fi_identifier( t754 ).
            t1067 ?= t1068.
            t1066 ?= t1067.
            DATA t1069 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1069.
            DATA(t1070) = abap_true.
            IF t1070 = abap_true.
              DATA(t1071) = t751.
              DATA(t1072) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1072->has = abap_true.
              t1072->value = t1071.
              t1069 = t1072.
            ELSE.
              DATA t1073 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1073.
              t1069 = t1073.
            ENDIF.
            t1062 = t1063->search_type_name( i_def = t1066 i_name = t1069 ).
            t1061 = t1062.
            DATA t1074 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1074.
            DATA t1075 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t1076) = CAST zcl_lnt_typed_identifier( t1061 ).
            t1075 = t1076.
            DATA t1077 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1077.
            DATA(t1078) = VALUE abap_bool( ).
            DATA(t1079) = CAST zcl_lnt_typed_identifier( t1075 ).
            IF t1079 IS INITIAL.
              t1078 = abap_true.
            ENDIF.
            IF t1078 = abap_true.
              DATA t1080 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t1080.
              t1077 = t1080.
            ELSE.
              DATA t1081 TYPE REF TO zcl_lnt_abstract_type.
              DATA t1082 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t1083 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t1084) = CAST zcl_lnt_typed_identifier( t1075 ).
              t1083 = t1084.
              t1082 = t1083.
              DATA t1085 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t1086) = CAST zcl_lnt_typed_identifier( t1082 ).
              t1085 = t1086->type_cba0.
              t1081 = t1085.
              t1077 = t1081.
            ENDIF.
            t1074 = t1077.
            t150 = t1074.
            DATA(t1087) = VALUE abap_bool( ).
            DATA(t1088) = VALUE abap_bool( ).
            DATA t1089 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t1090) = CAST zcl_lnt_typed_identifier( t1061 ).
            t1089 = t1090.
            DATA t1091 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t1092 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1092.
            t1091 = t1092.
            DATA(t1093) = VALUE abap_bool( ).
            DATA(t1094) = CAST zcl_lnt_typed_identifier( t1089 ).
            IF t1094 IS INITIAL.
              t1093 = abap_true.
            ENDIF.
            t1088 = t1093.
            t1087 = t1088.
            IF t1088 = abap_false.
              DATA(t1095) = VALUE abap_bool( ).
              DATA t1096 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t1097) = CAST zcl_lnt_abstract_type( t150 ).
              t1096 = t1097.
              DATA t1098 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t1099 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t1099.
              t1098 = t1099.
              DATA(t1100) = VALUE abap_bool( ).
              DATA(t1101) = CAST zcl_lnt_abstract_type( t1096 ).
              IF t1101 IS INITIAL.
                t1100 = abap_true.
              ENDIF.
              t1095 = t1100.
              t1087 = t1095.
            ENDIF.
            IF t1087 = abap_true.
              DATA t1102 TYPE REF TO zcl_lnt_unknown_type.
              DATA t1103 TYPE string.
              DATA(t1104) = t751.
              DATA(t1105) = | not found in class or interface|.
              DATA(t1106) = strlen( t1104 ).
              t1103 = |{ t1104 }{ t1105 }|.
              DATA t1107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1107.
              t1102 = NEW zcl_lnt_unknown_type( i_error = t1103 i_qualified_name = t1107 ).
              result = t1102.
              RETURN.
            ENDIF.
            DATA t1108 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1108.
            DATA t1109 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1109.
            DATA t1110 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA t1111 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA t1112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t1113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t1114 TYPE REF TO zcl_lnt_abstract_node.
            DATA(t1115) = CAST zcl_lnt_expression_node( t1 ).
            t1114 = t1115.
            DATA t1116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t1117) = CAST zcl_lnt_abstract_node( t1114 ).
            t1116 = t1117->children.
            t1113 = t1116.
            t1112 ?= t1113.
            DATA(t1118) = 2.
            DATA t1119 TYPE REF TO object.
            t1119 = t1112->get( p0 = t1118 ).
            t1111 ?= t1119.
            t1110 = t1111.
            DATA t1120 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1120.
            DATA(t1121) = VALUE abap_bool( ).
            DATA(t1122) = CAST zif_lnt_union_4cf1d054( t1110 ).
            IF t1122 IS INITIAL.
              t1121 = abap_true.
            ENDIF.
            IF t1121 = abap_true.
              DATA t1123 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1123.
              t1120 = t1123.
            ELSE.
              DATA t1124 TYPE REF TO zcl_lnt_abstract_token.
              DATA t1125 TYPE REF TO zif_lnt_union_4cf1d054.
              DATA(t1126) = CAST zif_lnt_union_4cf1d054( t1110 ).
              t1125 = t1126.
              t1124 = t1125->get_first_token( ).
              t1120 = t1124.
            ENDIF.
            t1109 = t1120.
            t1108 = t1109.
            DATA t1127 TYPE abap_bool.
            DATA t1128 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t1129) = CAST zcl_lnt_abstract_token( t1108 ).
            t1128 = t1129.
            t1127 = xsdbool( t1128 IS BOUND ).
            IF t1127 = abap_true.
              DATA t1130 TYPE REF TO zcl_lnt_current_scope.
              DATA(t1131) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
              t1130 = t1131->scope.
              DATA t1132 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1132.
              DATA(t1133) = abap_true.
              IF t1133 = abap_true.
                DATA t1134 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t1135) = CAST zcl_lnt_abstract_token( t1108 ).
                t1134 = t1135.
                t1132 = t1134.
              ELSE.
                DATA t1136 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t1136.
                t1132 = t1136.
              ENDIF.
              DATA t1137 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t1138) = CAST zcl_lnt_typed_identifier( t1061 ).
              t1137 = t1138.
              DATA t1139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t1140) = |Type|.
              CREATE OBJECT t1139.
              t1139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
              t1139->sval = t1140.
              DATA t1141 TYPE string.
              DATA(t1142) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
              t1141 = t1142->filename.
              DATA t1143 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t1143.
              t1130->add_reference( i_usage = t1132 i_referencing = t1137 i_type_9913 = t1139 i_filename = t1141 i_extra = t1143 ).
            ENDIF.
          ELSE.
            DATA t1144 TYPE REF TO zcl_lnt_unknown_type.
            DATA t1145 TYPE string.
            DATA t1146 TYPE string.
            DATA t1147 TYPE string.
            DATA(t1148) = |Not an object reference, |.
            DATA t1149 TYPE string.
            DATA(t1150) = CAST zlnt_runtime_opti_4ba3bdccd169( t89 ).
            t1149 = t1150->value.
            DATA(t1151) = strlen( t1148 ).
            t1147 = |{ t1148 }{ t1149 }|.
            DATA(t1152) = |, |.
            DATA(t1153) = strlen( t1147 ).
            t1146 = |{ t1147 }{ t1152 }|.
            DATA t1154 TYPE string.
            DATA t1155 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            DATA(t1156) = CAST zcl_lnt_fi_identifier( t754 ).
            t1155 = t1156->zlnt_builtin_clas_3f891b097658( ).
            t1154 = t1155->name.
            DATA(t1157) = strlen( t1146 ).
            t1145 = |{ t1146 }{ t1154 }|.
            DATA t1158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1158.
            t1144 = NEW zcl_lnt_unknown_type( i_error = t1145 i_qualified_name = t1158 ).
            result = t1144.
            RETURN.
          ENDIF.
        ELSE.
          DATA(t1159) = VALUE abap_bool( ).
          DATA t1160 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t1161) = CAST zcl_lnt_abstract_type( t735 ).
          t1160 = t1161.
          DATA t1162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t1163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1163.
          t1162 = t1163.
          DATA(t1164) = VALUE abap_bool( ).
          DATA(t1165) = CAST zcl_lnt_abstract_type( t1160 ).
          IF t1165 IS INITIAL.
            t1164 = abap_true.
          ENDIF.
          t1159 = t1164.
          IF t1159 = abap_true.
            DATA t1166 TYPE REF TO zcl_lnt_unknown_type.
            DATA t1167 TYPE string.
            DATA t1168 TYPE string.
            DATA(t1169) = CAST zlnt_runtime_opti_4ba3bdccd169( t89 ).
            t1168 = t1169->value.
            DATA(t1170) = | not found in scope|.
            DATA(t1171) = strlen( t1168 ).
            t1167 = |{ t1168 }{ t1170 }|.
            DATA t1172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1172.
            t1166 = NEW zcl_lnt_unknown_type( i_error = t1167 i_qualified_name = t1172 ).
            result = t1166.
            RETURN.
          ELSE.
            DATA t1173 TYPE REF TO zcl_lnt_unknown_type.
            DATA t1174 TYPE string.
            DATA t1175 TYPE string.
            DATA t1176 TYPE string.
            DATA(t1177) = |Not an object reference, |.
            DATA t1178 TYPE string.
            DATA(t1179) = CAST zlnt_runtime_opti_4ba3bdccd169( t89 ).
            t1178 = t1179->value.
            DATA(t1180) = strlen( t1177 ).
            t1176 = |{ t1177 }{ t1178 }|.
            DATA(t1181) = |, |.
            DATA(t1182) = strlen( t1176 ).
            t1175 = |{ t1176 }{ t1181 }|.
            DATA t1183 TYPE string.
            DATA t1184 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            DATA t1185 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t1186) = CAST zcl_lnt_abstract_type( t735 ).
            t1185 = t1186.
            t1184 = t1185->zlnt_builtin_clas_3f891b097658( ).
            t1183 = t1184->name.
            DATA(t1187) = strlen( t1175 ).
            t1174 = |{ t1175 }{ t1183 }|.
            DATA t1188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1188.
            t1173 = NEW zcl_lnt_unknown_type( i_error = t1174 i_qualified_name = t1188 ).
            result = t1173.
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t1189 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t1189.
        DATA t1190 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t1190.
        DATA t1191 TYPE REF TO zcl_lnt_current_scope.
        DATA t1192 TYPE REF TO zcl_lnt_current_scope.
        DATA(t1193) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t1192 = t1193->scope.
        t1191 = t1192.
        DATA t1194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1194.
        DATA t1195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1195.
        DATA(t1196) = abap_true.
        IF t1196 = abap_true.
          DATA(t1197) = VALUE string( ).
          DATA(t1198) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
          READ TABLE t1198->items INDEX 1 INTO t1197.
          DATA(t1199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1199->has = abap_true.
          t1199->value = t1197.
          t1195 = t1199.
        ELSE.
          DATA t1200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1200.
          t1195 = t1200.
        ENDIF.
        t1194 = t1195.
        DATA t1201 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t1201.
        DATA(t1202) = VALUE abap_bool( ).
        DATA t1203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1204) = CAST zlnt_runtime_opti_4ba3bdccd169( t1194 ).
        t1203 = t1204.
        DATA t1205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t1206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1206.
        t1205 = t1206.
        DATA(t1207) = VALUE abap_bool( ).
        DATA(t1208) = CAST zlnt_runtime_opti_4ba3bdccd169( t1203 ).
        IF t1208 IS INITIAL.
          t1207 = abap_true.
        ELSEIF t1208->has = abap_false.
          t1207 = abap_true.
        ENDIF.
        t1202 = t1207.
        IF t1202 = abap_true.
          DATA t1209 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1209.
          t1201 = t1209.
        ELSE.
          DATA t1210 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1210.
          DATA t1211 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t1212 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t1213) = CAST zcl_lnt_current_scope( t1191 ).
          t1212 = t1213->current.
          t1211 = t1212.
          DATA t1214 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t1214.
          DATA(t1215) = VALUE abap_bool( ).
          DATA(t1216) = CAST zcl_lnt_spaghetti_scope_node( t1211 ).
          IF t1216 IS INITIAL.
            t1215 = abap_true.
          ENDIF.
          IF t1215 = abap_true.
            DATA t1217 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t1217.
            t1214 = t1217.
          ELSE.
            DATA t1218 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t1219 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t1220) = CAST zcl_lnt_spaghetti_scope_node( t1211 ).
            t1219 = t1220.
            DATA t1221 TYPE string.
            DATA(t1222) = CAST zlnt_runtime_opti_4ba3bdccd169( t1194 ).
            t1221 = t1222->value.
            t1218 = t1219->find_type( i_name = t1221 ).
            t1214 = t1218.
          ENDIF.
          t1210 = t1214.
          t1201 = t1210.
        ENDIF.
        t1190 = t1201.
        t1189 = t1190.
        DATA t1223 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t1223.
        DATA t1224 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t1225) = CAST zcl_lnt_typed_identifier( t1189 ).
        t1224 = t1225.
        DATA t1226 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t1226.
        DATA(t1227) = VALUE abap_bool( ).
        DATA(t1228) = CAST zcl_lnt_typed_identifier( t1224 ).
        IF t1228 IS INITIAL.
          t1227 = abap_true.
        ENDIF.
        IF t1227 = abap_true.
          DATA t1229 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1229.
          t1226 = t1229.
        ELSE.
          DATA t1230 TYPE REF TO zcl_lnt_abstract_type.
          DATA t1231 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t1232 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t1233) = CAST zcl_lnt_typed_identifier( t1224 ).
          t1232 = t1233.
          t1231 = t1232.
          DATA t1234 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t1235) = CAST zcl_lnt_typed_identifier( t1231 ).
          t1234 = t1235->type_cba0.
          t1230 = t1234.
          t1226 = t1230.
        ENDIF.
        t1223 = t1226.
        t150 = t1223.
        DATA(t1236) = VALUE abap_bool( ).
        DATA t1237 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t1238) = CAST zcl_lnt_abstract_type( t150 ).
        t1237 = t1238.
        DATA t1239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t1240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1240.
        t1239 = t1240.
        DATA(t1241) = VALUE abap_bool( ).
        DATA(t1242) = CAST zcl_lnt_abstract_type( t1237 ).
        IF t1242 IS INITIAL.
          t1241 = abap_true.
        ENDIF.
        t1236 = t1241.
        IF t1236 = abap_true.
          DATA t1243 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1243.
          DATA t1244 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1244.
          DATA t1245 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t1246 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t1247 TYPE REF TO zcl_lnt_current_scope.
          DATA(t1248) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t1247 = t1248->scope.
          DATA(t1249) = VALUE string( ).
          DATA(t1250) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
          READ TABLE t1250->items INDEX 1 INTO t1249.
          t1246 = t1247->find_type_pool_type( i_name = t1249 ).
          t1245 = t1246.
          DATA t1251 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1251.
          DATA(t1252) = VALUE abap_bool( ).
          DATA(t1253) = CAST zcl_lnt_typed_identifier( t1245 ).
          IF t1253 IS INITIAL.
            t1252 = abap_true.
          ENDIF.
          IF t1252 = abap_true.
            DATA t1254 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1254.
            t1251 = t1254.
          ELSE.
            DATA t1255 TYPE REF TO zcl_lnt_abstract_type.
            DATA t1256 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t1257 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t1258) = CAST zcl_lnt_typed_identifier( t1245 ).
            t1257 = t1258.
            t1256 = t1257.
            DATA t1259 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t1260) = CAST zcl_lnt_typed_identifier( t1256 ).
            t1259 = t1260->type_cba0.
            t1255 = t1259.
            t1251 = t1255.
          ENDIF.
          t1244 = t1251.
          t1243 = t1244.
          DATA t1261 TYPE abap_bool.
          DATA(t1262) = CAST zcl_lnt_abstract_type( t1243 ).
          t1261 = xsdbool( t1262 IS BOUND ).
          IF t1261 = abap_true.
            DATA t1263 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1263.
            DATA(t1264) = abap_true.
            IF t1264 = abap_true.
              DATA t1265 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t1266) = CAST zcl_lnt_abstract_type( t1243 ).
              t1265 = t1266.
              t1263 = t1265.
            ELSE.
              DATA t1267 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t1267.
              t1263 = t1267.
            ENDIF.
            t150 = t1263.
          ENDIF.
          DATA(t1268) = VALUE abap_bool( ).
          DATA t1269 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t1270) = CAST zcl_lnt_abstract_type( t150 ).
          t1269 = t1270.
          DATA t1271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t1272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1272.
          t1271 = t1272.
          DATA(t1273) = VALUE abap_bool( ).
          DATA(t1274) = CAST zcl_lnt_abstract_type( t1269 ).
          IF t1274 IS INITIAL.
            t1273 = abap_true.
          ENDIF.
          t1268 = t1273.
          IF t1268 = abap_true.
            DATA t1275 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t1275.
            DATA t1276 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t1276.
            DATA t1277 TYPE REF TO zcl_lnt_ddic.
            DATA t1278 TYPE REF TO zcl_lnt_ddic.
            DATA t1279 TYPE REF TO zcl_lnt_current_scope.
            DATA t1280 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1281) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t1280 = t1281->scope.
            t1279 = t1280.
            DATA t1282 TYPE REF TO zcl_lnt_ddic.
            DATA t1283 TYPE REF TO zif_lnt_registry.
            DATA(t1284) = CAST zcl_lnt_current_scope( t1279 ).
            t1283 = t1284->reg.
            t1282 = NEW zcl_lnt_ddic( i_reg_f149 = t1283 ).
            t1278 = t1282.
            t1277 = t1278.
            DATA t1285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1285.
            DATA t1286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1286.
            DATA(t1287) = abap_true.
            IF t1287 = abap_true.
              DATA(t1288) = VALUE string( ).
              DATA(t1289) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
              READ TABLE t1289->items INDEX 1 INTO t1288.
              DATA(t1290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1290->has = abap_true.
              t1290->value = t1288.
              t1286 = t1290.
            ELSE.
              DATA t1291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1291.
              t1286 = t1291.
            ENDIF.
            t1285 = t1286.
            DATA t1292 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t1292.
            DATA(t1293) = VALUE abap_bool( ).
            DATA t1294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t1295) = CAST zlnt_runtime_opti_4ba3bdccd169( t1285 ).
            t1294 = t1295.
            DATA t1296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t1297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1297.
            t1296 = t1297.
            DATA(t1298) = VALUE abap_bool( ).
            DATA(t1299) = CAST zlnt_runtime_opti_4ba3bdccd169( t1294 ).
            IF t1299 IS INITIAL.
              t1298 = abap_true.
            ELSEIF t1299->has = abap_false.
              t1298 = abap_true.
            ENDIF.
            t1293 = t1298.
            IF t1293 = abap_true.
              DATA t1300 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t1301 TYPE REF TO zcl_lnt_unknown_type.
              DATA(t1302) = |undefined, lookupTableOrView|.
              DATA t1303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1303.
              t1301 = NEW zcl_lnt_unknown_type( i_error = t1302 i_qualified_name = t1303 ).
              DATA t1304 TYPE REF TO zif_lnt_object.
              CLEAR t1304.
              t1300 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1301 i_object_19cd = t1304 ).
              t1292 = t1300.
            ELSE.
              DATA t1305 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t1305.
              DATA t1306 TYPE REF TO zcl_lnt_table.
              CLEAR t1306.
              DATA t1307 TYPE REF TO zcl_lnt_table.
              CLEAR t1307.
              DATA t1308 TYPE REF TO zif_lnt_object.
              CLEAR t1308.
              DATA t1309 TYPE REF TO zif_lnt_registry.
              DATA(t1310) = CAST zcl_lnt_ddic( t1277 ).
              t1309 = t1310->reg.
              DATA t1311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1311.
              DATA(t1312) = abap_true.
              IF t1312 = abap_true.
                DATA(t1313) = |TABL|.
                DATA(t1314) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1314->has = abap_true.
                t1314->value = t1313.
                t1311 = t1314.
              ELSE.
                DATA t1315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1315.
                t1311 = t1315.
              ENDIF.
              DATA t1316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1316.
              DATA(t1317) = abap_true.
              IF t1317 = abap_true.
                DATA t1318 TYPE string.
                DATA(t1319) = CAST zlnt_runtime_opti_4ba3bdccd169( t1285 ).
                t1318 = t1319->value.
                DATA(t1320) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1320->has = abap_true.
                t1320->value = t1318.
                t1316 = t1320.
              ELSE.
                DATA t1321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1321.
                t1316 = t1321.
              ENDIF.
              t1308 = t1309->get_object( i_type_9913 = t1311 i_name = t1316 ).
              DATA t1322 TYPE REF TO object.
              t1322 = t1308.
              t1307 ?= t1322.
              t1306 = t1307.
              DATA t1323 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t1323.
              DATA t1324 TYPE abap_bool.
              DATA(t1325) = CAST zcl_lnt_table( t1306 ).
              t1324 = xsdbool( t1325 IS BOUND ).
              IF t1324 = abap_true.
                DATA t1326 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t1327 TYPE REF TO zcl_lnt_abstract_type.
                DATA t1328 TYPE REF TO zcl_lnt_table.
                DATA(t1329) = CAST zcl_lnt_table( t1306 ).
                t1328 = t1329.
                DATA t1330 TYPE REF TO zif_lnt_registry.
                DATA(t1331) = CAST zcl_lnt_ddic( t1277 ).
                t1330 = t1331->reg.
                t1327 = t1328->parse_type( i_reg_f149 = t1330 ).
                DATA t1332 TYPE REF TO zcl_lnt_table.
                DATA(t1333) = CAST zcl_lnt_table( t1306 ).
                t1332 = t1333.
                t1326 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1327 i_object_19cd = t1332 ).
                t1323 = t1326.
              ELSE.
                DATA t1334 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1334.
                DATA t1335 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1335.
                DATA t1336 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1336.
                DATA(t1337) = CAST zcl_lnt_ddic( t1277 ).
                DATA t1338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1338.
                DATA(t1339) = abap_true.
                IF t1339 = abap_true.
                  DATA t1340 TYPE string.
                  DATA(t1341) = CAST zlnt_runtime_opti_4ba3bdccd169( t1285 ).
                  t1340 = t1341->value.
                  DATA(t1342) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t1342->has = abap_true.
                  t1342->value = t1340.
                  t1338 = t1342.
                ELSE.
                  DATA t1343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1343.
                  t1338 = t1343.
                ENDIF.
                t1336 = t1337->lookup_ddls( i_name = t1338 ).
                t1335 = t1336.
                DATA t1344 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1344.
                DATA t1345 TYPE abap_bool.
                DATA(t1346) = CAST zcl_lnt_ilookup_result( t1335 ).
                t1345 = xsdbool( t1346 IS BOUND ).
                IF t1345 = abap_true.
                  DATA t1347 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA(t1348) = CAST zcl_lnt_ilookup_result( t1335 ).
                  t1347 = t1348.
                  t1344 = t1347.
                ELSE.
                  DATA t1349 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t1349.
                  DATA t1350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1350.
                  DATA t1351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1351.
                  DATA(t1352) = abap_true.
                  IF t1352 = abap_true.
                    DATA t1353 TYPE string.
                    DATA(t1354) = CAST zlnt_runtime_opti_4ba3bdccd169( t1285 ).
                    t1353 = t1354->value.
                    DATA(t1355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1355->has = abap_true.
                    t1355->value = t1353.
                    t1351 = t1355.
                  ELSE.
                    DATA t1356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1356.
                    t1351 = t1356.
                  ENDIF.
                  t1350 = t1351.
                  DATA t1357 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t1357.
                  DATA(t1358) = VALUE abap_bool( ).
                  DATA t1359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t1360) = CAST zlnt_runtime_opti_4ba3bdccd169( t1350 ).
                  t1359 = t1360.
                  DATA t1361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t1362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1362.
                  t1361 = t1362.
                  DATA(t1363) = VALUE abap_bool( ).
                  DATA(t1364) = CAST zlnt_runtime_opti_4ba3bdccd169( t1359 ).
                  IF t1364 IS INITIAL.
                    t1363 = abap_true.
                  ELSEIF t1364->has = abap_false.
                    t1363 = abap_true.
                  ENDIF.
                  t1358 = t1363.
                  IF t1358 = abap_true.
                    DATA t1365 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t1366 TYPE REF TO zcl_lnt_unknown_type.
                    DATA(t1367) = |undefined, lookupView|.
                    DATA t1368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1368.
                    t1366 = NEW zcl_lnt_unknown_type( i_error = t1367 i_qualified_name = t1368 ).
                    DATA t1369 TYPE REF TO zif_lnt_object.
                    CLEAR t1369.
                    t1365 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1366 i_object_19cd = t1369 ).
                    t1357 = t1365.
                  ELSE.
                    DATA t1370 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t1370.
                    DATA t1371 TYPE REF TO zcl_lnt_table.
                    CLEAR t1371.
                    DATA t1372 TYPE REF TO zcl_lnt_table.
                    CLEAR t1372.
                    DATA t1373 TYPE REF TO zif_lnt_object.
                    CLEAR t1373.
                    DATA t1374 TYPE REF TO zif_lnt_registry.
                    DATA(t1375) = CAST zcl_lnt_ddic( t1277 ).
                    t1374 = t1375->reg.
                    DATA t1376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1376.
                    DATA(t1377) = abap_true.
                    IF t1377 = abap_true.
                      DATA(t1378) = |VIEW|.
                      DATA(t1379) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1379->has = abap_true.
                      t1379->value = t1378.
                      t1376 = t1379.
                    ELSE.
                      DATA t1380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1380.
                      t1376 = t1380.
                    ENDIF.
                    DATA t1381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1381.
                    DATA(t1382) = abap_true.
                    IF t1382 = abap_true.
                      DATA t1383 TYPE string.
                      DATA(t1384) = CAST zlnt_runtime_opti_4ba3bdccd169( t1350 ).
                      t1383 = t1384->value.
                      DATA(t1385) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1385->has = abap_true.
                      t1385->value = t1383.
                      t1381 = t1385.
                    ELSE.
                      DATA t1386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1386.
                      t1381 = t1386.
                    ENDIF.
                    t1373 = t1374->get_object( i_type_9913 = t1376 i_name = t1381 ).
                    DATA t1387 TYPE REF TO object.
                    t1387 = t1373.
                    t1372 ?= t1387.
                    t1371 = t1372.
                    DATA t1388 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t1388.
                    DATA t1389 TYPE abap_bool.
                    DATA(t1390) = CAST zcl_lnt_table( t1371 ).
                    t1389 = xsdbool( t1390 IS BOUND ).
                    IF t1389 = abap_true.
                      DATA t1391 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t1392 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t1393 TYPE REF TO zcl_lnt_table.
                      DATA(t1394) = CAST zcl_lnt_table( t1371 ).
                      t1393 = t1394.
                      DATA t1395 TYPE REF TO zif_lnt_registry.
                      DATA(t1396) = CAST zcl_lnt_ddic( t1277 ).
                      t1395 = t1396->reg.
                      t1392 = t1393->parse_type( i_reg_f149 = t1395 ).
                      DATA t1397 TYPE REF TO zcl_lnt_table.
                      DATA(t1398) = CAST zcl_lnt_table( t1371 ).
                      t1397 = t1398.
                      t1391 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1392 i_object_19cd = t1397 ).
                      t1388 = t1391.
                    ELSE.
                      DATA t1399 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1399.
                      DATA t1400 TYPE abap_bool.
                      DATA t1401 TYPE REF TO zif_lnt_registry.
                      DATA(t1402) = CAST zcl_lnt_ddic( t1277 ).
                      t1401 = t1402->reg.
                      DATA t1403 TYPE string.
                      DATA(t1404) = CAST zlnt_runtime_opti_4ba3bdccd169( t1350 ).
                      t1403 = t1404->value.
                      t1400 = t1401->in_error_namespace( i_name = t1403 ).
                      IF t1400 = abap_true.
                        DATA t1405 TYPE REF TO zcl_lnt_ilookup_result.
                        DATA t1406 TYPE REF TO zcl_lnt_unknown_type.
                        DATA t1407 TYPE string.
                        DATA t1408 TYPE string.
                        DATA(t1409) = CAST zlnt_runtime_opti_4ba3bdccd169( t1350 ).
                        t1408 = t1409->value.
                        DATA(t1410) = | not found, lookupView|.
                        DATA(t1411) = strlen( t1408 ).
                        t1407 = |{ t1408 }{ t1410 }|.
                        DATA t1412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1412.
                        t1406 = NEW zcl_lnt_unknown_type( i_error = t1407 i_qualified_name = t1412 ).
                        DATA t1413 TYPE REF TO zif_lnt_object.
                        CLEAR t1413.
                        t1405 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1406 i_object_19cd = t1413 ).
                        t1399 = t1405.
                      ELSE.
                        DATA t1414 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1414.
                        DATA t1415 TYPE REF TO zcl_lnt_void_type.
                        CLEAR t1415.
                        DATA t1416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1416.
                        DATA(t1417) = abap_true.
                        IF t1417 = abap_true.
                          DATA t1418 TYPE string.
                          DATA(t1419) = CAST zlnt_runtime_opti_4ba3bdccd169( t1350 ).
                          t1418 = t1419->value.
                          DATA(t1420) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1420->has = abap_true.
                          t1420->value = t1418.
                          t1416 = t1420.
                        ELSE.
                          DATA t1421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1421.
                          t1416 = t1421.
                        ENDIF.
                        DATA t1422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1422.
                        t1415 = zcl_lnt_void_type=>get_db65( i_voided = t1416 i_qualified_name = t1422 ).
                        DATA t1423 TYPE REF TO zif_lnt_object.
                        CLEAR t1423.
                        t1414 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1415 i_object_19cd = t1423 ).
                        t1399 = t1414.
                      ENDIF.
                      t1388 = t1399.
                    ENDIF.
                    t1370 = t1388.
                    t1357 = t1370.
                  ENDIF.
                  t1349 = t1357.
                  t1344 = t1349.
                ENDIF.
                t1334 = t1344.
                t1323 = t1334.
              ENDIF.
              t1305 = t1323.
              t1292 = t1305.
            ENDIF.
            t1276 = t1292.
            t1275 = t1276.
            DATA t1424 TYPE REF TO zif_lnt_ddic_references.
            DATA t1425 TYPE REF TO zcl_lnt_current_scope.
            DATA t1426 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1427) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t1426 = t1427->scope.
            t1425 = t1426.
            DATA t1428 TYPE REF TO zif_lnt_ddic_references.
            DATA t1429 TYPE REF TO zif_lnt_registry.
            DATA(t1430) = CAST zcl_lnt_current_scope( t1425 ).
            t1429 = t1430->reg.
            t1428 = t1429->get_ddic_references( ).
            t1424 = t1428.
            DATA t1431 TYPE REF TO zif_lnt_object.
            DATA t1432 TYPE REF TO zcl_lnt_current_scope.
            DATA t1433 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1434) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t1433 = t1434->scope.
            t1432 = t1433.
            DATA t1435 TYPE REF TO zif_lnt_object.
            DATA(t1436) = CAST zcl_lnt_current_scope( t1432 ).
            t1435 = t1436->parent_obj.
            t1431 = t1435.
            DATA t1437 TYPE REF TO zcl_lnt_iobject_and_token.
            CLEAR t1437.
            DATA(t1438) = abap_true.
            IF t1438 = abap_true.
              DATA t1439 TYPE REF TO zcl_lnt_iobject_and_token.
              CLEAR t1439.
              DATA t1440 TYPE REF TO zif_lnt_object.
              DATA(t1441) = CAST zcl_lnt_ilookup_result( t1275 ).
              t1440 = t1441->object_a393.
              DATA t1442 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1442.
              DATA(t1443) = abap_true.
              IF t1443 = abap_true.
                DATA t1444 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t1445) = CAST zcl_lnt_expression_node( t1 ).
                t1444 = t1445->get_first_token( ).
                t1442 = t1444.
              ELSE.
                DATA t1446 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t1446.
                t1442 = t1446.
              ENDIF.
              DATA t1447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1447.
              DATA(t1448) = abap_true.
              IF t1448 = abap_true.
                DATA t1449 TYPE string.
                DATA(t1450) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
                t1449 = t1450->filename.
                DATA(t1451) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1451->has = abap_true.
                t1451->value = t1449.
                t1447 = t1451.
              ELSE.
                DATA t1452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1452.
                t1447 = t1452.
              ENDIF.
              t1439 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1440 i_token = t1442 i_filename = t1447 ).
              t1437 = t1439.
            ELSE.
              DATA t1453 TYPE REF TO zcl_lnt_iobject_and_token.
              CLEAR t1453.
              t1437 = t1453.
            ENDIF.
            t1424->add_using( i_obj_1ed0 = t1431 i_using = t1437 ).
            DATA t1454 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t1455) = CAST zcl_lnt_ilookup_result( t1275 ).
            t1454 = t1455->type_cba0.
            DATA t1456 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t1456.
            DATA(t1457) = abap_true.
            IF t1457 = abap_true.
              DATA t1458 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t1459) = CAST zcl_lnt_ilookup_result( t1275 ).
              t1458 = t1459->type_cba0.
              t1456 = t1458.
            ELSE.
              DATA t1460 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t1460.
              t1456 = t1460.
            ENDIF.
            t150 = t1456.
          ENDIF.
        ELSE.
          DATA t1461 TYPE REF TO zcl_lnt_current_scope.
          DATA(t1462) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t1461 = t1462->scope.
          DATA t1463 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1463.
          DATA(t1464) = abap_true.
          IF t1464 = abap_true.
            DATA t1465 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t1466) = CAST zcl_lnt_expression_node( t1 ).
            t1465 = t1466->get_first_token( ).
            t1463 = t1465.
          ELSE.
            DATA t1467 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1467.
            t1463 = t1467.
          ENDIF.
          DATA(t1468) = CAST zcl_lnt_typed_identifier( t1189 ).
          DATA t1469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t1470) = |Type|.
          CREATE OBJECT t1469.
          t1469->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t1469->sval = t1470.
          DATA t1471 TYPE string.
          DATA(t1472) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t1471 = t1472->filename.
          DATA t1473 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t1473.
          t1461->add_reference( i_usage = t1463 i_referencing = t1468 i_type_9913 = t1469 i_filename = t1471 i_extra = t1473 ).
        ENDIF.
        DATA(t1474) = VALUE abap_bool( ).
        DATA(t1475) = VALUE abap_bool( ).
        DATA t1476 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t1477) = CAST zcl_lnt_abstract_type( t150 ).
        t1476 = t1477.
        DATA t1478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t1479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1479.
        t1478 = t1479.
        DATA(t1480) = VALUE abap_bool( ).
        DATA(t1481) = CAST zcl_lnt_abstract_type( t1476 ).
        IF t1481 IS INITIAL.
          t1480 = abap_true.
        ENDIF.
        t1475 = t1480.
        t1474 = t1475.
        IF t1475 = abap_true.
          DATA(t1482) = VALUE abap_bool( ).
          DATA(t1483) = VALUE abap_bool( ).
          DATA t1484 TYPE REF TO zcl_lnt_ddic.
          DATA t1485 TYPE REF TO zcl_lnt_ddic.
          DATA t1486 TYPE REF TO zcl_lnt_current_scope.
          DATA t1487 TYPE REF TO zcl_lnt_current_scope.
          DATA(t1488) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t1487 = t1488->scope.
          t1486 = t1487.
          DATA t1489 TYPE REF TO zcl_lnt_ddic.
          DATA t1490 TYPE REF TO zif_lnt_registry.
          DATA(t1491) = CAST zcl_lnt_current_scope( t1486 ).
          t1490 = t1491->reg.
          t1489 = NEW zcl_lnt_ddic( i_reg_f149 = t1490 ).
          t1485 = t1489.
          t1484 = t1485.
          DATA t1492 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1492.
          DATA t1493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1493.
          DATA(t1494) = abap_true.
          IF t1494 = abap_true.
            DATA(t1495) = VALUE string( ).
            DATA(t1496) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
            READ TABLE t1496->items INDEX 1 INTO t1495.
            DATA(t1497) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1497->has = abap_true.
            t1497->value = t1495.
            t1493 = t1497.
          ELSE.
            DATA t1498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1498.
            t1493 = t1498.
          ENDIF.
          t1492 = t1493.
          DATA(t1499) = VALUE abap_bool( ).
          DATA(t1500) = VALUE abap_bool( ).
          DATA t1501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1502) = CAST zlnt_runtime_opti_4ba3bdccd169( t1492 ).
          t1501 = t1502.
          DATA t1503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t1504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1504.
          t1503 = t1504.
          DATA(t1505) = VALUE abap_bool( ).
          DATA(t1506) = CAST zlnt_runtime_opti_4ba3bdccd169( t1501 ).
          IF t1506 IS INITIAL.
            t1505 = abap_true.
          ELSEIF t1506->has = abap_false.
            t1505 = abap_true.
          ENDIF.
          t1500 = t1505.
          IF t1500 = abap_true.
            DATA(t1507) = abap_true.
            t1499 = t1507.
          ELSE.
            DATA t1508 TYPE abap_bool.
            DATA t1509 TYPE REF TO zif_lnt_registry.
            DATA(t1510) = CAST zcl_lnt_ddic( t1484 ).
            t1509 = t1510->reg.
            DATA t1511 TYPE string.
            DATA(t1512) = CAST zlnt_runtime_opti_4ba3bdccd169( t1492 ).
            t1511 = t1512->value.
            t1508 = t1509->in_error_namespace( i_name = t1511 ).
            t1499 = t1508.
          ENDIF.
          t1483 = t1499.
          DATA(t1513) = abap_false.
          t1482 = xsdbool( t1483 = t1513 ).
          t1474 = t1482.
        ENDIF.
        IF t1474 = abap_true.
          DATA t1514 TYPE REF TO zcl_lnt_current_scope.
          DATA(t1515) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t1514 = t1515->scope.
          DATA t1516 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1516.
          DATA(t1517) = abap_true.
          IF t1517 = abap_true.
            DATA t1518 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t1519) = CAST zcl_lnt_expression_node( t1 ).
            t1518 = t1519->get_first_token( ).
            t1516 = t1518.
          ELSE.
            DATA t1520 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1520.
            t1516 = t1520.
          ENDIF.
          DATA t1521 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t1521.
          DATA t1522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t1523) = |Type (Void)|.
          CREATE OBJECT t1522.
          t1522->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t1522->sval = t1523.
          DATA t1524 TYPE string.
          DATA(t1525) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t1524 = t1525->filename.
          DATA t1526 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t1526.
          t1514->add_reference( i_usage = t1516 i_referencing = t1521 i_type_9913 = t1522 i_filename = t1524 i_extra = t1526 ).
          DATA t1527 TYPE REF TO zcl_lnt_void_type.
          CLEAR t1527.
          DATA t1528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1528.
          DATA(t1529) = abap_true.
          IF t1529 = abap_true.
            DATA(t1530) = VALUE string( ).
            DATA(t1531) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
            READ TABLE t1531->items INDEX 1 INTO t1530.
            DATA(t1532) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1532->has = abap_true.
            t1532->value = t1530.
            t1528 = t1532.
          ELSE.
            DATA t1533 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1533.
            t1528 = t1533.
          ENDIF.
          DATA t1534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1534.
          t1527 = zcl_lnt_void_type=>get_db65( i_voided = t1528 i_qualified_name = t1534 ).
          result = t1527.
          RETURN.
        ELSE.
          DATA t1535 TYPE abap_bool.
          DATA(t1536) = CAST zcl_lnt_abstract_type( t150 ).
          t1535 = xsdbool( t1536 IS BOUND AND t1536 IS INSTANCE OF zcl_lnt_void_type ).
          IF t1535 = abap_true.
            DATA t1537 TYPE REF TO zcl_lnt_current_scope.
            DATA(t1538) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t1537 = t1538->scope.
            DATA t1539 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1539.
            DATA(t1540) = abap_true.
            IF t1540 = abap_true.
              DATA t1541 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t1542) = CAST zcl_lnt_expression_node( t1 ).
              t1541 = t1542->get_first_token( ).
              t1539 = t1541.
            ELSE.
              DATA t1543 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1543.
              t1539 = t1543.
            ENDIF.
            DATA t1544 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t1544.
            DATA t1545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t1546) = |Type (Void)|.
            CREATE OBJECT t1545.
            t1545->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t1545->sval = t1546.
            DATA t1547 TYPE string.
            DATA(t1548) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t1547 = t1548->filename.
            DATA t1549 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t1549.
            t1537->add_reference( i_usage = t1539 i_referencing = t1544 i_type_9913 = t1545 i_filename = t1547 i_extra = t1549 ).
            DATA t1550 TYPE REF TO zcl_lnt_void_type.
            DATA(t1551) = CAST zcl_lnt_abstract_type( t150 ).
            t1550 ?= t1551.
            result = t1550.
            RETURN.
          ELSE.
            DATA(t1552) = VALUE abap_bool( ).
            DATA t1553 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t1554) = CAST zcl_lnt_abstract_type( t150 ).
            t1553 = t1554.
            DATA t1555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t1556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1556.
            t1555 = t1556.
            DATA(t1557) = VALUE abap_bool( ).
            DATA(t1558) = CAST zcl_lnt_abstract_type( t1553 ).
            IF t1558 IS INITIAL.
              t1557 = abap_true.
            ENDIF.
            t1552 = t1557.
            IF t1552 = abap_true.
              DATA t1559 TYPE REF TO zcl_lnt_unknown_type.
              DATA t1560 TYPE string.
              DATA(t1561) = |Unknown type |.
              DATA(t1562) = VALUE string( ).
              DATA(t1563) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
              READ TABLE t1563->items INDEX 1 INTO t1562.
              DATA(t1564) = strlen( t1561 ).
              t1560 = |{ t1561 }{ t1562 }|.
              DATA t1565 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1565.
              t1559 = NEW zcl_lnt_unknown_type( i_error = t1560 i_qualified_name = t1565 ).
              result = t1559.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1567) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
    t1566 = t1567->shift( ).
    DO.
      DATA t1568 TYPE abap_bool.
      DATA t1569 TYPE i.
      DATA(t1570) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
      t1569 = lines( t1570->items ).
      DATA(t1571) = 0.
      t1568 = xsdbool( t1569 > t1571 ).
      IF t1568 = abap_false.
        EXIT.
      ENDIF.
      DATA t1572 TYPE abap_bool.
      DATA t1573 TYPE abap_bool.
      DATA(t1574) = CAST zcl_lnt_abstract_type( t150 ).
      t1573 = xsdbool( t1574 IS BOUND AND t1574 IS INSTANCE OF zcl_lnt_unknown_type ).
      t1572 = t1573.
      IF t1573 = abap_false.
        DATA t1575 TYPE abap_bool.
        DATA(t1576) = CAST zcl_lnt_abstract_type( t150 ).
        t1575 = xsdbool( t1576 IS BOUND AND t1576 IS INSTANCE OF zcl_lnt_void_type ).
        t1572 = t1575.
      ENDIF.
      IF t1572 = abap_true.
        DATA t1577 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t1577.
        DATA(t1578) = abap_true.
        IF t1578 = abap_true.
          DATA t1579 TYPE REF TO zcl_lnt_abstract_type.
          DATA t1580 TYPE REF TO zif_lnt_union_adffe656.
          DATA t1581 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t1582) = CAST zcl_lnt_abstract_type( t150 ).
          t1581 = t1582.
          t1580 ?= t1581.
          t1579 ?= t1580.
          t1577 = t1579.
        ELSE.
          DATA t1583 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t1583.
          t1577 = t1583.
        ENDIF.
        result = t1577.
        RETURN.
      ELSE.
        DATA t1584 TYPE abap_bool.
        DATA t1585 TYPE abap_bool.
        DATA(t1586) = CAST zcl_lnt_abstract_type( t150 ).
        t1585 = xsdbool( t1586 IS BOUND AND t1586 IS INSTANCE OF zcl_lnt_structure_type ).
        t1584 = xsdbool( t1585 = abap_false ).
        IF t1584 = abap_true.
          DATA t1587 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t1588) = |Not a structured type|.
          DATA t1589 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1589.
          t1587 = NEW zcl_lnt_unknown_type( i_error = t1588 i_qualified_name = t1589 ).
          result = t1587.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t1590 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t1590.
      DATA t1591 TYPE REF TO zcl_lnt_structure_type.
      DATA t1592 TYPE REF TO zcl_lnt_structure_type.
      DATA(t1593) = CAST zcl_lnt_abstract_type( t150 ).
      t1592 ?= t1593.
      t1591 = t1592.
      DATA t1594 TYPE string.
      DATA(t1595) = VALUE string( ).
      DATA(t1596) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
      READ TABLE t1596->items INDEX 1 INTO t1595.
      t1594 = t1595.
      DATA t1597 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t1597.
      DATA t1598 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1599) = CAST zcl_lnt_structure_type( t1591 ).
      t1598 = t1599->indexed.
      DATA t1600 TYPE string.
      DATA(t1601) = t1594.
      DATA(t1602) = strlen( t1601 ).
      t1600 = t1601.
      IF t1600 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t1600 TO UPPER CASE.
      ELSE.
        t1600 = zlnt_runtime_uppe_91169605024d=>full( t1600 ).
      ENDIF.
      t1597 = t1598->get( p0 = t1600 ).
      t1590 = t1597.
      t150 = t1590.
      DATA(t1603) = VALUE abap_bool( ).
      DATA t1604 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t1605) = CAST zcl_lnt_abstract_type( t150 ).
      t1604 = t1605.
      DATA t1606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1607.
      t1606 = t1607.
      DATA(t1608) = VALUE abap_bool( ).
      DATA(t1609) = CAST zcl_lnt_abstract_type( t1604 ).
      IF t1609 IS INITIAL.
        t1608 = abap_true.
      ENDIF.
      t1603 = t1608.
      IF t1603 = abap_true.
        DATA t1610 TYPE REF TO zcl_lnt_unknown_type.
        DATA t1611 TYPE string.
        DATA t1612 TYPE string.
        DATA(t1613) = |Field "|.
        DATA(t1614) = VALUE string( ).
        DATA(t1615) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
        READ TABLE t1615->items INDEX 1 INTO t1614.
        DATA(t1616) = strlen( t1613 ).
        t1612 = |{ t1613 }{ t1614 }|.
        DATA(t1617) = |" not found in structure|.
        DATA(t1618) = strlen( t1612 ).
        t1611 = |{ t1612 }{ t1617 }|.
        DATA t1619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1619.
        t1610 = NEW zcl_lnt_unknown_type( i_error = t1611 i_qualified_name = t1619 ).
        result = t1610.
        RETURN.
      ENDIF.
      DATA t1620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1621) = CAST zlnt_runtime_arra_8ecd6afe19e0( t140 ).
      t1620 = t1621->shift( ).
    ENDDO.
    DATA t1622 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t1622.
    DATA(t1623) = abap_true.
    IF t1623 = abap_true.
      DATA t1624 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t1625) = CAST zcl_lnt_abstract_type( t150 ).
      t1624 = t1625.
      t1622 = t1624.
    ELSE.
      DATA t1626 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t1626.
      t1622 = t1626.
    ENDIF.
    result = t1622.

  ENDMETHOD.
  METHOD resolve_constant_value.
    DATA(t1) = CAST zcl_lnt_expression_node( i_expr ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    t4 = t5->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_simple_field_chain ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t6.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA(t10) = |resolveConstantValue|.
        DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t11->has = abap_true.
        t11->value = t10.
        t8 = t11.
      ELSE.
        DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t12.
        t8 = t12.
      ENDIF.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t8 ).
      t6 = NEW #( ).
      t6->payload = t7.
      RAISE EXCEPTION t6.
    ENDIF.
    DATA t13 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_node.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t17.
    DATA(t18) = CAST zcl_lnt_expression_node( t1 ).
    t17 = t18.
    DATA t19 TYPE REF TO zif_lnt_node.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zif_lnt_node.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      DATA(t23) = CAST zcl_lnt_abstract_node( t17 ).
      t22 = t23->children.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      READ TABLE t22->items INDEX 1 INTO t24.
      t21 ?= t24.
      t19 = t21.
    ELSE.
      DATA t25 TYPE REF TO zif_lnt_node.
      CLEAR t25.
      t19 = t25.
    ENDIF.
    t16 = t19.
    t15 ?= t16.
    t14 = t15.
    t13 = t14.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t27.
    DATA(t28) = CAST zif_lnt_union_4cf1d054( t13 ).
    t27 = t28->get_first_token( ).
    t26 = t27.
    DATA(t29) = VALUE string( ).
    DATA(t30) = VALUE string( ).
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t31.
    DATA(t32) = CAST zcl_lnt_abstract_token( t26 ).
    t31 = t32.
    DATA(t33) = VALUE string( ).
    DATA(t34) = CAST zcl_lnt_abstract_token( t31 ).
    t33 = t34->str.
    t30 = t33.
    t29 = t30.
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    DATA(t37) = CAST zif_lnt_union_4cf1d054( t13 ).
    t36 = t37->get_db65( ).
    t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_st_expres_field ).
    IF t35 = abap_true.
      DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t41.
      DATA(t42) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      t41 = t42->scope.
      t40 = t41.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t45) = abap_true.
      IF t45 = abap_true.
        DATA(t46) = t29.
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t46.
        t44 = t47.
      ELSE.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        t44 = t48.
      ENDIF.
      t43 = t44.
      DATA t49 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t49.
      DATA(t50) = VALUE abap_bool( ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t52) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
      t51 = t52.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      t53 = t54.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
      IF t56 IS INITIAL.
        t55 = abap_true.
      ELSEIF t56->has = abap_false.
        t55 = abap_true.
      ENDIF.
      t50 = t55.
      IF t50 = abap_true.
        DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t57.
        t49 = t57.
      ELSE.
        DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t58.
        DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t59.
        DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t61.
        DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t62.
        DATA(t63) = CAST zcl_lnt_current_scope( t40 ).
        t62 = t63->current.
        t61 = t62.
        DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t64.
        DATA(t65) = VALUE abap_bool( ).
        DATA(t66) = CAST zcl_lnt_spaghetti_scope_node( t61 ).
        IF t66 IS INITIAL.
          t65 = abap_true.
        ENDIF.
        IF t65 = abap_true.
          DATA t67 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t67.
          t64 = t67.
        ELSE.
          DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t68.
          DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t69.
          DATA(t70) = CAST zcl_lnt_spaghetti_scope_node( t61 ).
          t69 = t70.
          DATA(t71) = VALUE string( ).
          DATA(t72) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
          t71 = t72->value.
          t68 = t69->find_variable( i_name = t71 ).
          t64 = t68.
        ENDIF.
        t60 = t64.
        t59 = t60.
        DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t73.
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = CAST zcl_lnt_typed_identifier( t59 ).
        t74 = xsdbool( t75 IS BOUND ).
        IF t74 = abap_true.
          DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t76.
          DATA(t77) = abap_true.
          IF t77 = abap_true.
            DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t78.
            DATA(t79) = CAST zcl_lnt_typed_identifier( t59 ).
            t78 = t79.
            t76 = t78.
          ELSE.
            DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t80.
            t76 = t80.
          ENDIF.
          t73 = t76.
        ELSE.
          DATA t81 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t81.
          DATA(t82) = CAST zcl_lnt_current_scope( t40 ).
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          DATA(t84) = abap_true.
          IF t84 = abap_true.
            DATA(t85) = VALUE string( ).
            DATA(t86) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
            t85 = t86->value.
            DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t87->has = abap_true.
            t87->value = t85.
            t83 = t87.
          ELSE.
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t88.
            t83 = t88.
          ENDIF.
          t81 = t82->find_type_pool_constant( i_name = t83 ).
          t73 = t81.
        ENDIF.
        t58 = t73.
        t49 = t58.
      ENDIF.
      t39 = t49.
      t38 = t39.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      DATA t91 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t91.
      DATA(t92) = CAST zcl_lnt_typed_identifier( t38 ).
      t91 = t92.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = CAST zcl_lnt_typed_identifier( t91 ).
      IF t95 IS INITIAL.
        t94 = abap_true.
      ENDIF.
      IF t94 = abap_true.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        t93 = t96.
      ELSE.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t98.
        DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t99.
        DATA(t100) = CAST zcl_lnt_typed_identifier( t91 ).
        t99 = t100.
        t98 = t99.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        DATA(t102) = CAST zcl_lnt_typed_identifier( t98 ).
        t101 = t102->value.
        t97 = t101.
        t93 = t97.
      ENDIF.
      t90 = t93.
      t89 = t90.
      DATA(t103) = VALUE abap_bool( ).
      DATA(t104) = VALUE string( ).
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      DATA(t106) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
      t105 = t106.
      IF t105 IS BOUND.
        t104 = t105->type_of( ).
      ELSE.
        t104 = `undefined`.
      ENDIF.
      DATA(t107) = |string|.
      t103 = xsdbool( t104 = t107 ).
      IF t103 = abap_true.
        DATA t108 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t108.
        DATA(t109) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t108 = t109->scope.
        DATA t110 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t110.
        DATA(t111) = abap_true.
        IF t111 = abap_true.
          DATA(t112) = CAST zcl_lnt_abstract_token( t26 ).
          t110 = t112.
        ELSE.
          DATA t113 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t113.
          t110 = t113.
        ENDIF.
        DATA(t114) = CAST zcl_lnt_typed_identifier( t38 ).
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        DATA(t116) = |Read From|.
        CREATE OBJECT t115.
        t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t115->sval = t116.
        DATA(t117) = VALUE string( ).
        DATA(t118) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t117 = t118->filename.
        DATA t119 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t119.
        t108->add_reference( i_usage = t110 i_referencing = t114 i_type_9913 = t115 i_filename = t117 i_extra = t119 ).
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA(t121) = abap_true.
        IF t121 = abap_true.
          DATA(t122) = VALUE string( ).
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          DATA(t124) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
          t123 = t124.
          t122 = t123->as_string( ).
          DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t125->has = abap_true.
          t125->value = t122.
          t120 = t125.
        ELSE.
          DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t126.
          t120 = t126.
        ENDIF.
        result = t120.
        RETURN.
      ELSE.
        DATA(t127) = VALUE abap_bool( ).
        DATA t128 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t128.
        DATA t129 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t129.
        DATA(t130) = CAST zcl_lnt_typed_identifier( t38 ).
        t129 = t130.
        DATA t131 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t131.
        DATA(t132) = VALUE abap_bool( ).
        DATA(t133) = CAST zcl_lnt_typed_identifier( t129 ).
        IF t133 IS INITIAL.
          t132 = abap_true.
        ENDIF.
        IF t132 = abap_true.
          DATA t134 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t134.
          t131 = t134.
        ELSE.
          DATA t135 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t135.
          DATA t136 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t136.
          DATA t137 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t137.
          DATA(t138) = CAST zcl_lnt_typed_identifier( t129 ).
          t137 = t138.
          t136 = t137.
          DATA t139 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t139.
          DATA(t140) = CAST zcl_lnt_typed_identifier( t136 ).
          t139 = t140->type_cba0.
          t135 = t139.
          t131 = t135.
        ENDIF.
        t128 = t131.
        t127 = xsdbool( t128 IS BOUND AND t128 IS INSTANCE OF zcl_lnt_structure_type ).
        IF t127 = abap_true.
          DATA t141 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t141.
          DATA(t142) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t141 = t142->scope.
          DATA t143 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t143.
          DATA(t144) = abap_true.
          IF t144 = abap_true.
            DATA(t145) = CAST zcl_lnt_abstract_token( t26 ).
            t143 = t145.
          ELSE.
            DATA t146 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t146.
            t143 = t146.
          ENDIF.
          DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t147.
          DATA(t148) = CAST zcl_lnt_typed_identifier( t38 ).
          t147 = t148.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          DATA(t150) = |Read From|.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t149->sval = t150.
          DATA(t151) = VALUE string( ).
          DATA(t152) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t151 = t152->filename.
          DATA t153 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t153.
          t141->add_reference( i_usage = t143 i_referencing = t147 i_type_9913 = t149 i_filename = t151 i_extra = t153 ).
        ENDIF.
      ENDIF.
      DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t154.
      result = t154.
      RETURN.
    ELSE.
      DATA(t155) = VALUE abap_bool( ).
      DATA(t156) = VALUE abap_bool( ).
      DATA(t157) = VALUE abap_bool( ).
      DATA t158 TYPE REF TO object.
      CLEAR t158.
      DATA(t159) = CAST zif_lnt_union_4cf1d054( t13 ).
      t158 = t159->get_db65( ).
      t157 = xsdbool( t158 IS BOUND AND t158 IS INSTANCE OF zcl_lnt_class_name ).
      t156 = t157.
      IF t157 = abap_true.
        DATA(t160) = VALUE abap_bool( ).
        DATA(t161) = VALUE string( ).
        DATA(t162) = t29.
        DATA(t163) = strlen( t162 ).
        t161 = t162.
        TRANSLATE t161 TO LOWER CASE.
        DATA(t164) = VALUE string( ).
        DATA(t165) = VALUE string( ).
        DATA t166 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t166.
        DATA(t167) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t166 = t167->scope.
        t165 = t166->get_name( ).
        DATA(t168) = strlen( t165 ).
        t164 = t165.
        TRANSLATE t164 TO LOWER CASE.
        t160 = xsdbool( t161 = t164 ).
        t156 = t160.
      ENDIF.
      t155 = t156.
      IF t156 = abap_true.
        DATA(t169) = VALUE abap_bool( ).
        DATA(t170) = VALUE abap_bool( ).
        DATA(t171) = VALUE string( ).
        DATA t172 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t172.
        DATA(t173) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t172 = t173->scope.
        t171 = t172->get_type( ).
        DATA(t174) = |interface|.
        t170 = xsdbool( t171 = t174 ).
        t169 = t170.
        IF t170 = abap_false.
          DATA(t175) = VALUE abap_bool( ).
          DATA(t176) = VALUE string( ).
          DATA t177 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t177.
          DATA(t178) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t177 = t178->scope.
          t176 = t177->get_type( ).
          DATA(t179) = |class_definition|.
          t175 = xsdbool( t176 = t179 ).
          t169 = t175.
        ENDIF.
        t155 = t169.
      ENDIF.
      IF t155 = abap_true.
        DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t180.
        DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t181.
        DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t182.
        DATA t183 TYPE REF TO zcl_lnt_abstract_node.
        CLEAR t183.
        DATA(t184) = CAST zcl_lnt_expression_node( t1 ).
        t183 = t184.
        DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t185.
        DATA(t186) = CAST zcl_lnt_abstract_node( t183 ).
        t185 = t186->children.
        t182 = t185.
        t181 ?= t182.
        t180 = t181.
        DATA t187 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t187.
        DATA t188 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t188.
        DATA t189 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t189.
        DATA t190 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t190.
        DATA(t191) = CAST zlnt_runtime_arra_c22708faf2e3( t180 ).
        DATA(t192) = 2.
        DATA t193 TYPE REF TO object.
        CLEAR t193.
        t193 = t191->get( p0 = t192 ).
        t190 ?= t193.
        t189 = t190.
        DATA t194 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t194.
        DATA(t195) = VALUE abap_bool( ).
        DATA(t196) = CAST zif_lnt_union_4cf1d054( t189 ).
        IF t196 IS INITIAL.
          t195 = abap_true.
        ENDIF.
        IF t195 = abap_true.
          DATA t197 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t197.
          t194 = t197.
        ELSE.
          DATA t198 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t198.
          DATA t199 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t199.
          DATA(t200) = CAST zif_lnt_union_4cf1d054( t189 ).
          t199 = t200.
          t198 = t199->get_first_token( ).
          t194 = t198.
        ENDIF.
        t188 = t194.
        t187 = t188.
        DATA t201 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t201.
        DATA t202 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t202.
        DATA t203 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t203.
        DATA t204 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t204.
        DATA(t205) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t204 = t205->scope.
        t203 = t204.
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t207.
        DATA(t208) = abap_true.
        IF t208 = abap_true.
          DATA(t209) = VALUE string( ).
          DATA t210 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t210.
          DATA t211 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t211.
          DATA(t212) = CAST zcl_lnt_abstract_token( t187 ).
          t211 = t212.
          t210 = t211.
          DATA(t213) = VALUE string( ).
          DATA(t214) = CAST zcl_lnt_abstract_token( t210 ).
          t213 = t214->str.
          t209 = t213.
          DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t215->has = abap_true.
          t215->value = t209.
          t207 = t215.
        ELSE.
          DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t216.
          t207 = t216.
        ENDIF.
        t206 = t207.
        DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t217.
        DATA(t218) = VALUE abap_bool( ).
        DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t219.
        DATA(t220) = CAST zlnt_runtime_opti_4ba3bdccd169( t206 ).
        t219 = t220.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t221.
        DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t222.
        t221 = t222.
        DATA(t223) = VALUE abap_bool( ).
        DATA(t224) = CAST zlnt_runtime_opti_4ba3bdccd169( t219 ).
        IF t224 IS INITIAL.
          t223 = abap_true.
        ELSEIF t224->has = abap_false.
          t223 = abap_true.
        ENDIF.
        t218 = t223.
        IF t218 = abap_true.
          DATA t225 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t225.
          t217 = t225.
        ELSE.
          DATA t226 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t226.
          DATA t227 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t227.
          DATA t228 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t228.
          DATA t229 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t229.
          DATA t230 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t230.
          DATA(t231) = CAST zcl_lnt_current_scope( t203 ).
          t230 = t231->current.
          t229 = t230.
          DATA t232 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t232.
          DATA(t233) = VALUE abap_bool( ).
          DATA(t234) = CAST zcl_lnt_spaghetti_scope_node( t229 ).
          IF t234 IS INITIAL.
            t233 = abap_true.
          ENDIF.
          IF t233 = abap_true.
            DATA t235 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t235.
            t232 = t235.
          ELSE.
            DATA t236 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t236.
            DATA t237 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t237.
            DATA(t238) = CAST zcl_lnt_spaghetti_scope_node( t229 ).
            t237 = t238.
            DATA(t239) = VALUE string( ).
            DATA(t240) = CAST zlnt_runtime_opti_4ba3bdccd169( t206 ).
            t239 = t240->value.
            t236 = t237->find_variable( i_name = t239 ).
            t232 = t236.
          ENDIF.
          t228 = t232.
          t227 = t228.
          DATA t241 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t241.
          DATA(t242) = VALUE abap_bool( ).
          DATA(t243) = CAST zcl_lnt_typed_identifier( t227 ).
          t242 = xsdbool( t243 IS BOUND ).
          IF t242 = abap_true.
            DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t244.
            DATA(t245) = abap_true.
            IF t245 = abap_true.
              DATA t246 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t246.
              DATA(t247) = CAST zcl_lnt_typed_identifier( t227 ).
              t246 = t247.
              t244 = t246.
            ELSE.
              DATA t248 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t248.
              t244 = t248.
            ENDIF.
            t241 = t244.
          ELSE.
            DATA t249 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t249.
            DATA(t250) = CAST zcl_lnt_current_scope( t203 ).
            DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t251.
            DATA(t252) = abap_true.
            IF t252 = abap_true.
              DATA(t253) = VALUE string( ).
              DATA(t254) = CAST zlnt_runtime_opti_4ba3bdccd169( t206 ).
              t253 = t254->value.
              DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t255->has = abap_true.
              t255->value = t253.
              t251 = t255.
            ELSE.
              DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t256.
              t251 = t256.
            ENDIF.
            t249 = t250->find_type_pool_constant( i_name = t251 ).
            t241 = t249.
          ENDIF.
          t226 = t241.
          t217 = t226.
        ENDIF.
        t202 = t217.
        t201 = t202.
        DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t257.
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t258.
        DATA t259 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t259.
        DATA(t260) = CAST zcl_lnt_typed_identifier( t201 ).
        t259 = t260.
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t261.
        DATA(t262) = VALUE abap_bool( ).
        DATA(t263) = CAST zcl_lnt_typed_identifier( t259 ).
        IF t263 IS INITIAL.
          t262 = abap_true.
        ENDIF.
        IF t262 = abap_true.
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          t261 = t264.
        ELSE.
          DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t265.
          DATA t266 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t266.
          DATA t267 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t267.
          DATA(t268) = CAST zcl_lnt_typed_identifier( t259 ).
          t267 = t268.
          t266 = t267.
          DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t269.
          DATA(t270) = CAST zcl_lnt_typed_identifier( t266 ).
          t269 = t270->value.
          t265 = t269.
          t261 = t265.
        ENDIF.
        t258 = t261.
        t257 = t258.
        DATA(t271) = VALUE abap_bool( ).
        DATA(t272) = VALUE string( ).
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        DATA(t274) = CAST zlnt_runtime_dyna_a429568d5be8( t257 ).
        t273 = t274.
        IF t273 IS BOUND.
          t272 = t273->type_of( ).
        ELSE.
          t272 = `undefined`.
        ENDIF.
        DATA(t275) = |string|.
        t271 = xsdbool( t272 = t275 ).
        IF t271 = abap_true.
          DATA t276 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t276.
          DATA(t277) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t276 = t277->scope.
          DATA t278 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t278.
          DATA(t279) = abap_true.
          IF t279 = abap_true.
            DATA(t280) = CAST zcl_lnt_abstract_token( t26 ).
            t278 = t280.
          ELSE.
            DATA t281 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t281.
            t278 = t281.
          ENDIF.
          DATA(t282) = CAST zcl_lnt_typed_identifier( t201 ).
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t283.
          DATA(t284) = |Read From|.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t283->sval = t284.
          DATA(t285) = VALUE string( ).
          DATA(t286) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t285 = t286->filename.
          DATA t287 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t287.
          t276->add_reference( i_usage = t278 i_referencing = t282 i_type_9913 = t283 i_filename = t285 i_extra = t287 ).
          DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t288.
          DATA(t289) = abap_true.
          IF t289 = abap_true.
            DATA(t290) = VALUE string( ).
            DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t291.
            DATA(t292) = CAST zlnt_runtime_dyna_a429568d5be8( t257 ).
            t291 = t292.
            t290 = t291->as_string( ).
            DATA(t293) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t293->has = abap_true.
            t293->value = t290.
            t288 = t293.
          ELSE.
            DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t294.
            t288 = t294.
          ENDIF.
          result = t288.
          RETURN.
        ENDIF.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        result = t295.
        RETURN.
      ELSE.
        DATA(t296) = VALUE abap_bool( ).
        DATA t297 TYPE REF TO object.
        CLEAR t297.
        DATA(t298) = CAST zif_lnt_union_4cf1d054( t13 ).
        t297 = t298->get_db65( ).
        t296 = xsdbool( t297 IS BOUND AND t297 IS INSTANCE OF zcl_lnt_class_name ).
        IF t296 = abap_true.
          DATA t299 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t299.
          DATA t300 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t300.
          DATA t301 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t301.
          DATA t302 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t302.
          DATA(t303) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t302 = t303->scope.
          t301 = t302.
          DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t304.
          DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t305.
          DATA(t306) = abap_true.
          IF t306 = abap_true.
            DATA(t307) = t29.
            DATA(t308) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t308->has = abap_true.
            t308->value = t307.
            t305 = t308.
          ELSE.
            DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t309.
            t305 = t309.
          ENDIF.
          t304 = t305.
          DATA t310 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t310.
          DATA(t311) = VALUE abap_bool( ).
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t312.
          DATA(t313) = CAST zlnt_runtime_opti_4ba3bdccd169( t304 ).
          t312 = t313.
          DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t314.
          DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t315.
          t314 = t315.
          DATA(t316) = VALUE abap_bool( ).
          DATA(t317) = CAST zlnt_runtime_opti_4ba3bdccd169( t312 ).
          IF t317 IS INITIAL.
            t316 = abap_true.
          ELSEIF t317->has = abap_false.
            t316 = abap_true.
          ENDIF.
          t311 = t316.
          IF t311 = abap_true.
            DATA t318 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t318.
            t310 = t318.
          ELSE.
            DATA t319 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t319.
            DATA t320 TYPE REF TO zif_lnt_class_definition.
            CLEAR t320.
            DATA t321 TYPE REF TO zif_lnt_class_definition.
            CLEAR t321.
            DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t322.
            DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t323.
            DATA(t324) = abap_true.
            IF t324 = abap_true.
              DATA(t325) = VALUE string( ).
              DATA(t326) = CAST zlnt_runtime_opti_4ba3bdccd169( t304 ).
              t325 = t326->value.
              DATA(t327) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t327->has = abap_true.
              t327->value = t325.
              t323 = t327.
            ELSE.
              DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t328.
              t323 = t328.
            ENDIF.
            t322 = t323.
            DATA t329 TYPE REF TO zif_lnt_class_definition.
            CLEAR t329.
            DATA(t330) = VALUE abap_bool( ).
            DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t331.
            DATA(t332) = CAST zlnt_runtime_opti_4ba3bdccd169( t322 ).
            t331 = t332.
            DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t333.
            DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t334.
            t333 = t334.
            DATA(t335) = VALUE abap_bool( ).
            DATA(t336) = CAST zlnt_runtime_opti_4ba3bdccd169( t331 ).
            IF t336 IS INITIAL.
              t335 = abap_true.
            ELSEIF t336->has = abap_false.
              t335 = abap_true.
            ENDIF.
            t330 = t335.
            IF t330 = abap_true.
              DATA t337 TYPE REF TO zif_lnt_class_definition.
              CLEAR t337.
              t329 = t337.
            ELSE.
              DATA t338 TYPE REF TO zif_lnt_class_definition.
              CLEAR t338.
              DATA t339 TYPE REF TO zif_lnt_class_definition.
              CLEAR t339.
              DATA t340 TYPE REF TO zif_lnt_class_definition.
              CLEAR t340.
              DATA t341 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t341.
              DATA t342 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t342.
              DATA(t343) = CAST zcl_lnt_current_scope( t301 ).
              t342 = t343->current.
              t341 = t342.
              DATA t344 TYPE REF TO zif_lnt_class_definition.
              CLEAR t344.
              DATA(t345) = VALUE abap_bool( ).
              DATA(t346) = CAST zcl_lnt_spaghetti_scope_node( t341 ).
              IF t346 IS INITIAL.
                t345 = abap_true.
              ENDIF.
              IF t345 = abap_true.
                DATA t347 TYPE REF TO zif_lnt_class_definition.
                CLEAR t347.
                t344 = t347.
              ELSE.
                DATA t348 TYPE REF TO zif_lnt_class_definition.
                CLEAR t348.
                DATA t349 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t349.
                DATA(t350) = CAST zcl_lnt_spaghetti_scope_node( t341 ).
                t349 = t350.
                DATA(t351) = VALUE string( ).
                DATA(t352) = CAST zlnt_runtime_opti_4ba3bdccd169( t322 ).
                t351 = t352->value.
                t348 = t349->find_class_definition( i_name = t351 ).
                t344 = t348.
              ENDIF.
              t340 = t344.
              t339 = t340.
              DATA t353 TYPE REF TO zif_lnt_class_definition.
              CLEAR t353.
              DATA(t354) = VALUE abap_bool( ).
              DATA(t355) = CAST zif_lnt_class_definition( t339 ).
              t354 = xsdbool( t355 IS BOUND ).
              IF t354 = abap_true.
                DATA t356 TYPE REF TO zif_lnt_class_definition.
                CLEAR t356.
                DATA(t357) = abap_true.
                IF t357 = abap_true.
                  DATA t358 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t358.
                  DATA(t359) = CAST zif_lnt_class_definition( t339 ).
                  t358 = t359.
                  t356 = t358.
                ELSE.
                  DATA t360 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t360.
                  t356 = t360.
                ENDIF.
                t353 = t356.
              ELSE.
                DATA t361 TYPE REF TO zif_lnt_class_definition.
                CLEAR t361.
                DATA t362 TYPE REF TO zcl_lnt_class.
                CLEAR t362.
                DATA t363 TYPE REF TO zcl_lnt_class.
                CLEAR t363.
                DATA t364 TYPE REF TO zif_lnt_object.
                CLEAR t364.
                DATA t365 TYPE REF TO zif_lnt_registry.
                CLEAR t365.
                DATA(t366) = CAST zcl_lnt_current_scope( t301 ).
                t365 = t366->reg.
                DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t367.
                DATA(t368) = abap_true.
                IF t368 = abap_true.
                  DATA(t369) = |CLAS|.
                  DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t370->has = abap_true.
                  t370->value = t369.
                  t367 = t370.
                ELSE.
                  DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t371.
                  t367 = t371.
                ENDIF.
                DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t372.
                DATA(t373) = abap_true.
                IF t373 = abap_true.
                  DATA(t374) = VALUE string( ).
                  DATA(t375) = CAST zlnt_runtime_opti_4ba3bdccd169( t322 ).
                  t374 = t375->value.
                  DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t376->has = abap_true.
                  t376->value = t374.
                  t372 = t376.
                ELSE.
                  DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t377.
                  t372 = t377.
                ENDIF.
                t364 = t365->get_object( i_type_9913 = t367 i_name = t372 ).
                DATA t378 TYPE REF TO object.
                CLEAR t378.
                t378 = t364.
                t363 ?= t378.
                t362 = t363.
                DATA t379 TYPE REF TO zif_lnt_class_definition.
                CLEAR t379.
                DATA(t380) = VALUE abap_bool( ).
                DATA(t381) = CAST zcl_lnt_class( t362 ).
                t380 = xsdbool( t381 IS BOUND ).
                IF t380 = abap_true.
                  DATA t382 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t382.
                  DATA t383 TYPE REF TO zcl_lnt_class.
                  CLEAR t383.
                  DATA(t384) = CAST zcl_lnt_class( t362 ).
                  t383 = t384.
                  t382 = t383->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  t379 = t382.
                ELSE.
                  DATA t385 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t385.
                  t379 = t385.
                ENDIF.
                t361 = t379.
                t353 = t361.
              ENDIF.
              t338 = t353.
              t329 = t338.
            ENDIF.
            t321 = t329.
            t320 = t321.
            DATA t386 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t386.
            DATA(t387) = VALUE abap_bool( ).
            DATA(t388) = CAST zif_lnt_class_definition( t320 ).
            t387 = xsdbool( t388 IS BOUND ).
            IF t387 = abap_true.
              DATA t389 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t389.
              DATA t390 TYPE REF TO zif_lnt_class_definition.
              CLEAR t390.
              DATA(t391) = CAST zif_lnt_class_definition( t320 ).
              t390 = t391.
              t389 ?= t390.
              t386 = t389.
            ELSE.
              DATA t392 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t392.
              DATA t393 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t393.
              DATA t394 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t394.
              DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t395.
              DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t396.
              DATA(t397) = abap_true.
              IF t397 = abap_true.
                DATA(t398) = VALUE string( ).
                DATA(t399) = CAST zlnt_runtime_opti_4ba3bdccd169( t304 ).
                t398 = t399->value.
                DATA(t400) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t400->has = abap_true.
                t400->value = t398.
                t396 = t400.
              ELSE.
                DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t401.
                t396 = t401.
              ENDIF.
              t395 = t396.
              DATA t402 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t402.
              DATA(t403) = VALUE abap_bool( ).
              DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t404.
              DATA(t405) = CAST zlnt_runtime_opti_4ba3bdccd169( t395 ).
              t404 = t405.
              DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t406.
              DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t407.
              t406 = t407.
              DATA(t408) = VALUE abap_bool( ).
              DATA(t409) = CAST zlnt_runtime_opti_4ba3bdccd169( t404 ).
              IF t409 IS INITIAL.
                t408 = abap_true.
              ELSEIF t409->has = abap_false.
                t408 = abap_true.
              ENDIF.
              t403 = t408.
              IF t403 = abap_true.
                DATA t410 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t410.
                t402 = t410.
              ELSE.
                DATA t411 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t411.
                DATA t412 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t412.
                DATA t413 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t413.
                DATA t414 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t414.
                DATA t415 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t415.
                DATA(t416) = CAST zcl_lnt_current_scope( t301 ).
                t415 = t416->current.
                t414 = t415.
                DATA t417 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t417.
                DATA(t418) = VALUE abap_bool( ).
                DATA(t419) = CAST zcl_lnt_spaghetti_scope_node( t414 ).
                IF t419 IS INITIAL.
                  t418 = abap_true.
                ENDIF.
                IF t418 = abap_true.
                  DATA t420 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t420.
                  t417 = t420.
                ELSE.
                  DATA t421 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t421.
                  DATA t422 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  CLEAR t422.
                  DATA(t423) = CAST zcl_lnt_spaghetti_scope_node( t414 ).
                  t422 = t423.
                  DATA(t424) = VALUE string( ).
                  DATA(t425) = CAST zlnt_runtime_opti_4ba3bdccd169( t395 ).
                  t424 = t425->value.
                  t421 = t422->find_interface_definition( i_name = t424 ).
                  t417 = t421.
                ENDIF.
                t413 = t417.
                t412 = t413.
                DATA t426 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t426.
                DATA(t427) = VALUE abap_bool( ).
                DATA(t428) = CAST zif_lnt_interface_definition( t412 ).
                t427 = xsdbool( t428 IS BOUND ).
                IF t427 = abap_true.
                  DATA t429 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t429.
                  DATA(t430) = abap_true.
                  IF t430 = abap_true.
                    DATA t431 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t431.
                    DATA(t432) = CAST zif_lnt_interface_definition( t412 ).
                    t431 = t432.
                    t429 = t431.
                  ELSE.
                    DATA t433 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t433.
                    t429 = t433.
                  ENDIF.
                  t426 = t429.
                ELSE.
                  DATA t434 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t434.
                  DATA t435 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t435.
                  DATA t436 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t436.
                  DATA t437 TYPE REF TO zif_lnt_object.
                  CLEAR t437.
                  DATA t438 TYPE REF TO zif_lnt_registry.
                  CLEAR t438.
                  DATA(t439) = CAST zcl_lnt_current_scope( t301 ).
                  t438 = t439->reg.
                  DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t440.
                  DATA(t441) = abap_true.
                  IF t441 = abap_true.
                    DATA(t442) = |INTF|.
                    DATA(t443) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t443->has = abap_true.
                    t443->value = t442.
                    t440 = t443.
                  ELSE.
                    DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t444.
                    t440 = t444.
                  ENDIF.
                  DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t445.
                  DATA(t446) = abap_true.
                  IF t446 = abap_true.
                    DATA(t447) = VALUE string( ).
                    DATA(t448) = CAST zlnt_runtime_opti_4ba3bdccd169( t395 ).
                    t447 = t448->value.
                    DATA(t449) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t449->has = abap_true.
                    t449->value = t447.
                    t445 = t449.
                  ELSE.
                    DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t450.
                    t445 = t450.
                  ENDIF.
                  t437 = t438->get_object( i_type_9913 = t440 i_name = t445 ).
                  DATA t451 TYPE REF TO object.
                  CLEAR t451.
                  t451 = t437.
                  t436 ?= t451.
                  t435 = t436.
                  DATA t452 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t452.
                  DATA(t453) = VALUE abap_bool( ).
                  DATA(t454) = CAST zcl_lnt_ob_interface( t435 ).
                  t453 = xsdbool( t454 IS BOUND ).
                  IF t453 = abap_true.
                    DATA t455 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t455.
                    DATA t456 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t456.
                    DATA t457 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t457.
                    DATA(t458) = CAST zcl_lnt_ob_interface( t435 ).
                    t457 = t458.
                    t456 = t457.
                    DATA t459 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t459.
                    DATA(t460) = CAST zcl_lnt_ob_interface( t456 ).
                    t459 = t460->def.
                    t455 = t459.
                    t452 = t455.
                  ELSE.
                    DATA t461 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t461.
                    t452 = t461.
                  ENDIF.
                  t434 = t452.
                  t426 = t434.
                ENDIF.
                t411 = t426.
                t402 = t411.
              ENDIF.
              t394 = t402.
              t393 = t394.
              DATA t462 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t462.
              DATA(t463) = VALUE abap_bool( ).
              DATA(t464) = CAST zif_lnt_interface_definition( t393 ).
              t463 = xsdbool( t464 IS BOUND ).
              IF t463 = abap_true.
                DATA t465 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t465.
                DATA(t466) = abap_true.
                IF t466 = abap_true.
                  DATA t467 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t467.
                  DATA(t468) = CAST zif_lnt_interface_definition( t393 ).
                  t467 = t468.
                  t465 = t467.
                ELSE.
                  DATA t469 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t469.
                  t465 = t469.
                ENDIF.
                t462 = t465.
              ELSE.
                DATA t470 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t470.
                t462 = t470.
              ENDIF.
              t392 = t462.
              t386 = t392.
            ENDIF.
            t319 = t386.
            t310 = t319.
          ENDIF.
          t300 = t310.
          t299 = t300.
          DATA(t471) = VALUE abap_bool( ).
          DATA t472 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t472.
          DATA(t473) = CAST zif_lnt_interface_definition( t299 ).
          t472 = t473.
          DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t474.
          DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t475.
          t474 = t475.
          DATA(t476) = VALUE abap_bool( ).
          DATA(t477) = CAST zif_lnt_interface_definition( t472 ).
          IF t477 IS INITIAL.
            t476 = abap_true.
          ENDIF.
          t471 = t476.
          IF t471 = abap_true.
            DATA(t478) = VALUE abap_bool( ).
            DATA t479 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t479.
            DATA t480 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t480.
            DATA t481 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t481.
            DATA(t482) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t481 = t482->scope.
            DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t483.
            DATA(t484) = abap_true.
            IF t484 = abap_true.
              DATA(t485) = t29.
              DATA(t486) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t486->has = abap_true.
              t486->value = t485.
              t483 = t486.
            ELSE.
              DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t487.
              t483 = t487.
            ENDIF.
            t480 = t481->exists_object( i_name = t483 ).
            t479 = t480.
            DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t488.
            DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t489.
            t488 = t489.
            DATA(t490) = VALUE abap_bool( ).
            DATA(t491) = VALUE abap_bool( ).
            DATA(t492) = CAST zcl_lnt_shape_59e28496( t479 ).
            IF t492 IS INITIAL.
              t491 = abap_true.
            ENDIF.
            t490 = xsdbool( t491 = abap_false ).
            t478 = t490.
            IF t478 = abap_true.
              DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t493.
              result = t493.
              RETURN.
            ELSE.
              DATA(t494) = VALUE abap_bool( ).
              DATA(t495) = VALUE abap_bool( ).
              DATA t496 TYPE REF TO zcl_lnt_ddic.
              CLEAR t496.
              DATA t497 TYPE REF TO zcl_lnt_ddic.
              CLEAR t497.
              DATA t498 TYPE REF TO zcl_lnt_current_scope.
              CLEAR t498.
              DATA t499 TYPE REF TO zcl_lnt_current_scope.
              CLEAR t499.
              DATA(t500) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
              t499 = t500->scope.
              t498 = t499.
              DATA t501 TYPE REF TO zcl_lnt_ddic.
              CLEAR t501.
              DATA t502 TYPE REF TO zif_lnt_registry.
              CLEAR t502.
              DATA(t503) = CAST zcl_lnt_current_scope( t498 ).
              t502 = t503->reg.
              t501 = NEW zcl_lnt_ddic( i_reg_f149 = t502 ).
              t497 = t501.
              t496 = t497.
              DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t504.
              DATA t505 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t505.
              DATA(t506) = abap_true.
              IF t506 = abap_true.
                DATA(t507) = t29.
                DATA(t508) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t508->has = abap_true.
                t508->value = t507.
                t505 = t508.
              ELSE.
                DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t509.
                t505 = t509.
              ENDIF.
              t504 = t505.
              DATA(t510) = VALUE abap_bool( ).
              DATA(t511) = VALUE abap_bool( ).
              DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t512.
              DATA(t513) = CAST zlnt_runtime_opti_4ba3bdccd169( t504 ).
              t512 = t513.
              DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t514.
              DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t515.
              t514 = t515.
              DATA(t516) = VALUE abap_bool( ).
              DATA(t517) = CAST zlnt_runtime_opti_4ba3bdccd169( t512 ).
              IF t517 IS INITIAL.
                t516 = abap_true.
              ELSEIF t517->has = abap_false.
                t516 = abap_true.
              ENDIF.
              t511 = t516.
              IF t511 = abap_true.
                DATA(t518) = abap_true.
                t510 = t518.
              ELSE.
                DATA(t519) = VALUE abap_bool( ).
                DATA t520 TYPE REF TO zif_lnt_registry.
                CLEAR t520.
                DATA(t521) = CAST zcl_lnt_ddic( t496 ).
                t520 = t521->reg.
                DATA(t522) = VALUE string( ).
                DATA(t523) = CAST zlnt_runtime_opti_4ba3bdccd169( t504 ).
                t522 = t523->value.
                t519 = t520->in_error_namespace( i_name = t522 ).
                t510 = t519.
              ENDIF.
              t495 = t510.
              DATA(t524) = abap_true.
              t494 = xsdbool( t495 = t524 ).
              IF t494 = abap_true.
                DATA t525 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                CLEAR t525.
                DATA t526 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                CLEAR t526.
                DATA t527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t527.
                DATA(t528) = abap_true.
                IF t528 = abap_true.
                  DATA(t529) = VALUE string( ).
                  DATA(t530) = |resolveConstantValue, not found: |.
                  DATA(t531) = t29.
                  DATA(t532) = strlen( t530 ).
                  t529 = |{ t530 }{ t531 }|.
                  DATA(t533) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t533->has = abap_true.
                  t533->value = t529.
                  t527 = t533.
                ELSE.
                  DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t534.
                  t527 = t534.
                ENDIF.
                t526 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t527 ).
                t525 = NEW #( ).
                t525->payload = t526.
                RAISE EXCEPTION t525.
              ELSE.
                DATA t535 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t535.
                DATA(t536) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
                t535 = t536->scope.
                DATA t537 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t537.
                DATA(t538) = abap_true.
                IF t538 = abap_true.
                  DATA t539 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t539.
                  DATA(t540) = CAST zif_lnt_union_4cf1d054( t13 ).
                  t539 = t540->get_first_token( ).
                  t537 = t539.
                ELSE.
                  DATA t541 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t541.
                  t537 = t541.
                ENDIF.
                DATA t542 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t542.
                DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t543.
                DATA(t544) = |Object (Void)|.
                CREATE OBJECT t543.
                t543->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                t543->sval = t544.
                DATA(t545) = VALUE string( ).
                DATA(t546) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
                t545 = t546->filename.
                DATA t547 TYPE REF TO zcl_lnt_ireference_extras.
                CLEAR t547.
                DATA(t548) = abap_true.
                IF t548 = abap_true.
                  DATA t549 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t549.
                  DATA t550 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t550.
                  DATA(t551) = abap_true.
                  IF t551 = abap_true.
                    DATA(t552) = VALUE string( ).
                    DATA(t553) = t29.
                    DATA(t554) = strlen( t553 ).
                    t552 = t553.
                    IF t552 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                      TRANSLATE t552 TO UPPER CASE.
                    ELSE.
                      t552 = zlnt_runtime_uppe_91169605024d=>full( t552 ).
                    ENDIF.
                    DATA(t555) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t555->has = abap_true.
                    t555->value = t552.
                    t550 = t555.
                  ELSE.
                    DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t556.
                    t550 = t556.
                  ENDIF.
                  DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t557.
                  DATA t558 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t558.
                  t549 = NEW zcl_lnt_ireference_extras( i_oo_name = t550 i_oo_type = t557 i_found_qualified = t558 ).
                  t547 = t549.
                ELSE.
                  DATA t559 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t559.
                  t547 = t559.
                ENDIF.
                t535->add_reference( i_usage = t537 i_referencing = t542 i_type_9913 = t543 i_filename = t545 i_extra = t547 ).
                DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t560.
                result = t560.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
          DATA t561 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t561.
          DATA t562 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t562.
          DATA t563 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t563.
          DATA t564 TYPE REF TO zcl_lnt_abstract_node.
          CLEAR t564.
          DATA(t565) = CAST zcl_lnt_expression_node( t1 ).
          t564 = t565.
          DATA t566 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t566.
          DATA(t567) = CAST zcl_lnt_abstract_node( t564 ).
          t566 = t567->children.
          t563 = t566.
          t562 ?= t563.
          t561 = t562.
          DATA t568 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t568.
          DATA t569 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t569.
          DATA t570 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t570.
          DATA t571 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t571.
          DATA(t572) = CAST zlnt_runtime_arra_c22708faf2e3( t561 ).
          DATA(t573) = 2.
          DATA t574 TYPE REF TO object.
          CLEAR t574.
          t574 = t572->get( p0 = t573 ).
          t571 ?= t574.
          t570 = t571.
          DATA t575 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t575.
          DATA(t576) = VALUE abap_bool( ).
          DATA(t577) = CAST zif_lnt_union_4cf1d054( t570 ).
          IF t577 IS INITIAL.
            t576 = abap_true.
          ENDIF.
          IF t576 = abap_true.
            DATA t578 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t578.
            t575 = t578.
          ELSE.
            DATA t579 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t579.
            DATA t580 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t580.
            DATA(t581) = CAST zif_lnt_union_4cf1d054( t570 ).
            t580 = t581.
            t579 = t580->get_first_token( ).
            t575 = t579.
          ENDIF.
          t569 = t575.
          t568 = t569.
          DATA(t582) = VALUE string( ).
          DATA(t583) = VALUE string( ).
          DATA t584 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t584.
          DATA t585 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t585.
          DATA(t586) = CAST zcl_lnt_abstract_token( t568 ).
          t585 = t586.
          t584 = t585.
          DATA(t587) = VALUE string( ).
          DATA(t588) = CAST zcl_lnt_abstract_token( t584 ).
          t587 = t588->str.
          t583 = t587.
          t582 = t583.
          DATA t589 TYPE REF TO zcl_lnt_class_constant.
          CLEAR t589.
          DATA t590 TYPE REF TO zcl_lnt_class_constant.
          CLEAR t590.
          DATA t591 TYPE REF TO zcl_lnt_object_oriented.
          CLEAR t591.
          DATA t592 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t592.
          DATA(t593) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
          t592 = t593->scope.
          t591 = NEW zcl_lnt_object_oriented( i_scope = t592 ).
          DATA t594 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t594.
          DATA(t595) = abap_true.
          IF t595 = abap_true.
            DATA t596 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t596.
            DATA(t597) = CAST zif_lnt_interface_definition( t299 ).
            t596 = t597.
            t594 = t596.
          ELSE.
            DATA t598 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t598.
            t594 = t598.
          ENDIF.
          DATA t599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t599.
          DATA(t600) = abap_true.
          IF t600 = abap_true.
            DATA(t601) = t582.
            DATA(t602) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t602->has = abap_true.
            t602->value = t601.
            t599 = t602.
          ELSE.
            DATA t603 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t603.
            t599 = t603.
          ENDIF.
          t590 = t591->search_constant_name( i_def = t594 i_name = t599 ).
          t589 = t590.
          DATA(t604) = VALUE abap_bool( ).
          DATA(t605) = CAST zcl_lnt_class_constant( t589 ).
          t604 = xsdbool( t605 IS BOUND AND t605 IS INSTANCE OF zcl_lnt_class_constant ).
          IF t604 = abap_true.
            DATA t606 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t606.
            DATA(t607) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t606 = t607->scope.
            DATA t608 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t608.
            DATA(t609) = abap_true.
            IF t609 = abap_true.
              DATA(t610) = CAST zcl_lnt_abstract_token( t26 ).
              t608 = t610.
            ELSE.
              DATA t611 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t611.
              t608 = t611.
            ENDIF.
            DATA t612 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t612.
            DATA(t613) = abap_true.
            IF t613 = abap_true.
              DATA t614 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t614.
              DATA t615 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t615.
              DATA(t616) = CAST zif_lnt_interface_definition( t299 ).
              t615 = t616.
              t614 ?= t615.
              t612 = t614.
            ELSE.
              DATA t617 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t617.
              t612 = t617.
            ENDIF.
            DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t618.
            DATA(t619) = |Object|.
            CREATE OBJECT t618.
            t618->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t618->sval = t619.
            DATA(t620) = VALUE string( ).
            DATA(t621) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t620 = t621->filename.
            DATA t622 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t622.
            DATA(t623) = abap_true.
            IF t623 = abap_true.
              DATA t624 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t624.
              DATA t625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t625.
              DATA(t626) = abap_true.
              IF t626 = abap_true.
                DATA(t627) = VALUE string( ).
                DATA t628 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t628.
                DATA(t629) = CAST zif_lnt_interface_definition( t299 ).
                t628 = t629.
                t627 = t628->get_name( ).
                DATA(t630) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t630->has = abap_true.
                t630->value = t627.
                t625 = t630.
              ELSE.
                DATA t631 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t631.
                t625 = t631.
              ENDIF.
              DATA t632 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t632.
              DATA t633 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t633.
              t624 = NEW zcl_lnt_ireference_extras( i_oo_name = t625 i_oo_type = t632 i_found_qualified = t633 ).
              t622 = t624.
            ELSE.
              DATA t634 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t634.
              t622 = t634.
            ENDIF.
            t606->add_reference( i_usage = t608 i_referencing = t612 i_type_9913 = t618 i_filename = t620 i_extra = t622 ).
            DATA t635 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t635.
            DATA(t636) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t635 = t636->scope.
            DATA t637 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t637.
            DATA(t638) = abap_true.
            IF t638 = abap_true.
              DATA t639 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t639.
              DATA(t640) = CAST zcl_lnt_abstract_token( t568 ).
              t639 = t640.
              t637 = t639.
            ELSE.
              DATA t641 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t641.
              t637 = t641.
            ENDIF.
            DATA t642 TYPE REF TO zcl_lnt_class_constant.
            CLEAR t642.
            DATA(t643) = CAST zcl_lnt_class_constant( t589 ).
            t642 = t643.
            DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t644.
            DATA(t645) = |Read From|.
            CREATE OBJECT t644.
            t644->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t644->sval = t645.
            DATA(t646) = VALUE string( ).
            DATA(t647) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
            t646 = t647->filename.
            DATA t648 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t648.
            t635->add_reference( i_usage = t637 i_referencing = t642 i_type_9913 = t644 i_filename = t646 i_extra = t648 ).
            DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t649.
            DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t650.
            DATA(t651) = abap_true.
            IF t651 = abap_true.
              DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t652.
              DATA t653 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t653.
              DATA t654 TYPE REF TO zcl_lnt_class_constant.
              CLEAR t654.
              DATA(t655) = CAST zcl_lnt_class_constant( t589 ).
              t654 = t655.
              t653 = t654.
              DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t656.
              DATA(t657) = CAST zcl_lnt_typed_identifier( t653 ).
              t656 = t657->value.
              t652 = t656.
              t650 = t652.
            ELSE.
              DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t658.
              t650 = t658.
            ENDIF.
            t649 = t650.
            DATA(t659) = VALUE abap_bool( ).
            DATA(t660) = VALUE string( ).
            DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t661.
            DATA(t662) = CAST zlnt_runtime_dyna_a429568d5be8( t649 ).
            t661 = t662.
            IF t661 IS BOUND.
              t660 = t661->type_of( ).
            ELSE.
              t660 = `undefined`.
            ENDIF.
            DATA(t663) = |string|.
            t659 = xsdbool( t660 = t663 ).
            IF t659 = abap_true.
              DATA t664 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t664.
              DATA(t665) = abap_true.
              IF t665 = abap_true.
                DATA(t666) = VALUE string( ).
                DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t667.
                DATA(t668) = CAST zlnt_runtime_dyna_a429568d5be8( t649 ).
                t667 = t668.
                t666 = t667->as_string( ).
                DATA(t669) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t669->has = abap_true.
                t669->value = t666.
                t664 = t669.
              ELSE.
                DATA t670 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t670.
                t664 = t670.
              ENDIF.
              result = t664.
              RETURN.
            ELSE.
              DATA(t671) = VALUE abap_bool( ).
              DATA(t672) = VALUE abap_bool( ).
              DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t673.
              DATA(t674) = CAST zlnt_runtime_dyna_a429568d5be8( t649 ).
              t673 = t674.
              DATA(t675) = VALUE abap_bool( ).
              DATA(t676) = VALUE abap_bool( ).
              DATA(t677) = VALUE abap_bool( ).
              DATA(t678) = CAST zlnt_runtime_dyna_a429568d5be8( t673 ).
              IF t678 IS INITIAL.
                t677 = abap_true.
              ENDIF.
              t676 = xsdbool( t677 = abap_false ).
              t675 = t676.
              IF t676 = abap_true.
                DATA(t679) = VALUE abap_bool( ).
                DATA(t680) = VALUE string( ).
                DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t681.
                DATA(t682) = CAST zlnt_runtime_dyna_a429568d5be8( t673 ).
                t681 = t682.
                IF t681 IS BOUND.
                  t680 = t681->type_of( ).
                ELSE.
                  t680 = `undefined`.
                ENDIF.
                DATA(t683) = |object|.
                t679 = xsdbool( t680 = t683 ).
                t675 = t679.
              ENDIF.
              t672 = t675.
              t671 = t672.
              IF t672 = abap_true.
                DATA(t684) = VALUE abap_bool( ).
                DATA t685 TYPE REF TO zif_lnt_union_4cf1d054.
                CLEAR t685.
                DATA(t686) = CAST zlnt_runtime_arra_c22708faf2e3( t561 ).
                DATA t687 TYPE REF TO object.
                CLEAR t687.
                READ TABLE t686->items INDEX 5 INTO t687.
                t685 ?= t687.
                t684 = xsdbool( t685 IS BOUND ).
                t671 = t684.
              ENDIF.
              IF t671 = abap_true.
                DATA(t688) = VALUE string( ).
                DATA(t689) = VALUE string( ).
                DATA t690 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t690.
                DATA t691 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t691.
                DATA t692 TYPE REF TO zif_lnt_union_4cf1d054.
                CLEAR t692.
                DATA(t693) = CAST zlnt_runtime_arra_c22708faf2e3( t561 ).
                DATA t694 TYPE REF TO object.
                CLEAR t694.
                READ TABLE t693->items INDEX 5 INTO t694.
                t692 ?= t694.
                t691 = t692->get_first_token( ).
                t690 = t691.
                DATA(t695) = VALUE string( ).
                DATA(t696) = CAST zcl_lnt_abstract_token( t690 ).
                t695 = t696->str.
                t689 = t695.
                t688 = t689.
                DATA(t697) = VALUE abap_bool( ).
                DATA t698 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t698.
                DATA t699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t699.
                DATA t700 TYPE REF TO zlnt_runtime_map__a1006b231250.
                CLEAR t700.
                DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t701.
                DATA(t702) = CAST zlnt_runtime_dyna_a429568d5be8( t649 ).
                t701 = t702.
                DATA t703 TYPE REF TO object.
                CLEAR t703.
                IF t701 IS BOUND AND t701->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  CREATE OBJECT t700.
                  LOOP AT t701->entries INTO DATA(t704).
                    DATA(t705) = CAST zlnt_runtime_dyna_a429568d5be8( t704-v ).
                    DATA(t706) = CONV string( t705->as_string( ) ).
                    t700->set( p0 = t704-k p1 = t706 ).
                  ENDLOOP.
                ELSE.
                  t703 = t701->as_ref( ).
                  DATA t707 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                  CLEAR t707.
                  TRY.
                      t700 ?= t703.
                    CATCH cx_sy_move_cast_error.
                      t707 ?= t703.
                      CREATE OBJECT t700.
                      LOOP AT t707->entries INTO DATA(t708).
                        DATA(t709) = CAST zlnt_runtime_dyna_a429568d5be8( t708-v ).
                        DATA(t710) = CONV string( t709->as_string( ) ).
                        t700->set( p0 = t708-k p1 = t710 ).
                      ENDLOOP.
                  ENDTRY.
                ENDIF.
                DATA(t711) = t688.
                t699 = t700->get( p0 = t711 ).
                t698 = t699.
                DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t712.
                DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t713.
                t712 = t713.
                DATA(t714) = VALUE abap_bool( ).
                DATA(t715) = VALUE abap_bool( ).
                DATA(t716) = CAST zlnt_runtime_opti_4ba3bdccd169( t698 ).
                IF t716 IS INITIAL.
                  t715 = abap_true.
                ELSEIF t716->has = abap_false.
                  t715 = abap_true.
                ENDIF.
                t714 = xsdbool( t715 = abap_false ).
                t697 = t714.
                IF t697 = abap_true.
                  DATA t717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t717.
                  DATA t718 TYPE REF TO zlnt_runtime_map__a1006b231250.
                  CLEAR t718.
                  DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t719.
                  DATA(t720) = CAST zlnt_runtime_dyna_a429568d5be8( t649 ).
                  t719 = t720.
                  DATA t721 TYPE REF TO object.
                  CLEAR t721.
                  IF t719 IS BOUND AND t719->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    CREATE OBJECT t718.
                    LOOP AT t719->entries INTO DATA(t722).
                      DATA(t723) = CAST zlnt_runtime_dyna_a429568d5be8( t722-v ).
                      DATA(t724) = CONV string( t723->as_string( ) ).
                      t718->set( p0 = t722-k p1 = t724 ).
                    ENDLOOP.
                  ELSE.
                    t721 = t719->as_ref( ).
                    DATA t725 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                    CLEAR t725.
                    TRY.
                        t718 ?= t721.
                      CATCH cx_sy_move_cast_error.
                        t725 ?= t721.
                        CREATE OBJECT t718.
                        LOOP AT t725->entries INTO DATA(t726).
                          DATA(t727) = CAST zlnt_runtime_dyna_a429568d5be8( t726-v ).
                          DATA(t728) = CONV string( t727->as_string( ) ).
                          t718->set( p0 = t726-k p1 = t728 ).
                        ENDLOOP.
                    ENDTRY.
                  ENDIF.
                  DATA(t729) = t688.
                  t717 = t718->get( p0 = t729 ).
                  result = t717.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
            DATA t730 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t730.
            result = t730.
            RETURN.
          ENDIF.
          DATA t731 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t731.
          DATA t732 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t732.
          DATA t733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t733.
          DATA(t734) = abap_true.
          IF t734 = abap_true.
            DATA(t735) = VALUE string( ).
            DATA(t736) = |resolveConstantValue, constant not found |.
            DATA(t737) = t582.
            DATA(t738) = strlen( t736 ).
            t735 = |{ t736 }{ t737 }|.
            DATA(t739) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t739->has = abap_true.
            t739->value = t735.
            t733 = t739.
          ELSE.
            DATA t740 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t740.
            t733 = t740.
          ENDIF.
          t732 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t733 ).
          t731 = NEW #( ).
          t731->payload = t732.
          RAISE EXCEPTION t731.
        ELSE.
          DATA t741 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t741.
          DATA t742 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t742.
          DATA t743 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t743.
          DATA(t744) = abap_true.
          IF t744 = abap_true.
            DATA(t745) = |resolveConstantValue, unexpected structure|.
            DATA(t746) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t746->has = abap_true.
            t746->value = t745.
            t743 = t746.
          ELSE.
            DATA t747 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t747.
            t743 = t747.
          ENDIF.
          t742 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t743 ).
          t741 = NEW #( ).
          t741->payload = t742.
          RAISE EXCEPTION t741.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD resolve_type_ref.
    DATA(t1) = CAST zcl_lnt_expression_node( i_chain_8ed6 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = CAST zcl_lnt_expression_node( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_expression_node( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE string.
    DATA t11 TYPE string.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t15) = CAST zcl_lnt_expression_node( t1 ).
    t14 = t15.
    t13 = t14->get_first_token( ).
    t12 = t13.
    DATA t16 TYPE string.
    DATA(t17) = CAST zcl_lnt_abstract_token( t12 ).
    t16 = t17->str.
    t11 = t16.
    t10 = t11.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE i.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_abstract_node.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = CAST zcl_lnt_expression_node( t1 ).
    t23 = t24.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = CAST zcl_lnt_abstract_node( t22 ).
    t25 = t26->children.
    t21 = t25.
    t20 ?= t21.
    t19 = lines( t20->items ).
    DATA(t27) = 1.
    t18 = xsdbool( t19 = t27 ).
    IF t18 = abap_true.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE string.
      DATA(t30) = t10.
      DATA(t31) = strlen( t30 ).
      t29 = t30.
      IF t29 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t29 TO UPPER CASE.
      ELSE.
        t29 = zlnt_runtime_uppe_91169605024d=>full( t29 ).
      ENDIF.
      DATA(t32) = |OBJECT|.
      t28 = xsdbool( t29 = t32 ).
      IF t28 = abap_true.
        DATA t33 TYPE REF TO zcl_lnt_gnrc_objct_rfrnc_typ.
        DATA t34 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t34.
        t33 = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t34 ).
        result = t33.
        RETURN.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_current_scope.
      DATA(t38) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
      t37 = t38->scope.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA(t41) = t10.
        DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t42->has = abap_true.
        t42->value = t41.
        t39 = t42.
      ELSE.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        t39 = t43.
      ENDIF.
      t36 = t37->exists_object( i_name = t39 ).
      t35 = t36.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t45.
      DATA t46 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA(t47) = CAST zcl_lnt_shape_59e28496( t35 ).
      t46 = t47.
      DATA t48 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = CAST zcl_lnt_shape_59e28496( t46 ).
      IF t50 IS INITIAL.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t51.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t53 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA(t54) = CAST zcl_lnt_shape_59e28496( t46 ).
        t53 = t54.
        t52 = t53->id.
        t48 = t52.
      ENDIF.
      t45 = t48.
      t44 = xsdbool( t45 IS BOUND ).
      IF t44 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_current_scope.
        DATA(t56) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t55 = t56->scope.
        DATA t57 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t57.
        DATA(t58) = abap_true.
        IF t58 = abap_true.
          DATA t59 TYPE REF TO zcl_lnt_abstract_token.
          DATA t60 TYPE REF TO zcl_lnt_expression_node.
          DATA(t61) = CAST zcl_lnt_expression_node( t1 ).
          t60 = t61.
          t59 = t60->get_first_token( ).
          t57 = t59.
        ELSE.
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t62.
          t57 = t62.
        ENDIF.
        DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA t65 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t66 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t67 TYPE REF TO zcl_lnt_shape_59e28496.
          DATA(t68) = CAST zcl_lnt_shape_59e28496( t35 ).
          t67 = t68.
          t66 = t67->id.
          t65 = t66.
          t63 = t65.
        ELSE.
          DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t69.
          t63 = t69.
        ENDIF.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t71) = |Object|.
        CREATE OBJECT t70.
        t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t70->sval = t71.
        DATA t72 TYPE string.
        DATA(t73) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t72 = t73->filename.
        DATA t74 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t74.
        DATA(t75) = abap_true.
        IF t75 = abap_true.
          DATA t76 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t76.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          DATA(t78) = abap_true.
          IF t78 = abap_true.
            DATA(t79) = t10.
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
          DATA t83 TYPE REF TO zcl_lnt_shape_59e28496.
          DATA(t84) = CAST zcl_lnt_shape_59e28496( t35 ).
          t83 = t84.
          t82 = t83->oo_type.
          DATA t85 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t85.
          t76 = NEW zcl_lnt_ireference_extras( i_oo_name = t77 i_oo_type = t82 i_found_qualified = t85 ).
          t74 = t76.
        ELSE.
          DATA t86 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t86.
          t74 = t86.
        ENDIF.
        t55->add_reference( i_usage = t57 i_referencing = t63 i_type_9913 = t70 i_filename = t72 i_extra = t74 ).
        DATA t87 TYPE REF TO zcl_lnt_object_reference_type.
        CLEAR t87.
        DATA t88 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t90 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA(t91) = CAST zcl_lnt_shape_59e28496( t35 ).
        t90 = t91.
        t89 = t90->id.
        t88 = t89.
        DATA t92 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t92.
        DATA(t93) = abap_true.
        IF t93 = abap_true.
          DATA t94 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t94.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA(t96) = abap_true.
          IF t96 = abap_true.
            DATA(t97) = t10.
            DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t98->has = abap_true.
            t98->value = t97.
            t95 = t98.
          ELSE.
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            t95 = t99.
          ENDIF.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          DATA t101 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t101.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t104 TYPE REF TO zcl_lnt_shape_59e28496.
          DATA(t105) = CAST zcl_lnt_shape_59e28496( t35 ).
          t104 = t105.
          t103 = t104->rtti_name.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          t94 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t95 i_conversion_exit = t100 i_derived_from_constant = t101 i_ddic_name = t102 i_rtti_name = t103 i_description = t106 ).
          t92 = t94.
        ELSE.
          DATA t107 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t107.
          t92 = t107.
        ENDIF.
        t87 = NEW zcl_lnt_object_reference_type( i_id = t88 i_extra = t92 ).
        result = t87.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t108 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t108.
    DATA t109 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t109.
    DATA t110 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t110.
    DATA(t111) = abap_true.
    IF t111 = abap_true.
      DATA t112 TYPE REF TO zcl_lnt_expression_node.
      DATA(t113) = CAST zcl_lnt_expression_node( t1 ).
      t112 = t113.
      t110 = t112.
    ELSE.
      DATA t114 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t114.
      t110 = t114.
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t117.
    t109 = me->resolve_type_name( i_type_name = t110 i_length = t115 i_decimals_2eed = t116 i_qualified_name = t117 ).
    t108 = t109.
    DATA t118 TYPE abap_bool.
    DATA t119 TYPE abap_bool.
    DATA(t120) = CAST zcl_lnt_abstract_type( t108 ).
    t119 = xsdbool( t120 IS BOUND ).
    t118 = t119.
    IF t119 = abap_true.
      DATA t121 TYPE abap_bool.
      DATA t122 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t123) = CAST zcl_lnt_abstract_type( t108 ).
      t122 = t123.
      t121 = xsdbool( t122 IS BOUND AND t122 IS INSTANCE OF zcl_lnt_void_type ).
      t118 = t121.
    ENDIF.
    IF t118 = abap_true.
      DATA t124 TYPE REF TO zcl_lnt_void_type.
      DATA(t125) = CAST zcl_lnt_abstract_type( t108 ).
      t124 ?= t125.
      result = t124.
      RETURN.
    ELSE.
      DATA t126 TYPE abap_bool.
      DATA t127 TYPE abap_bool.
      DATA(t128) = CAST zcl_lnt_abstract_type( t108 ).
      t127 = xsdbool( t128 IS BOUND ).
      t126 = t127.
      IF t127 = abap_true.
        DATA t129 TYPE abap_bool.
        DATA t130 TYPE abap_bool.
        DATA t131 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t132) = CAST zcl_lnt_abstract_type( t108 ).
        t131 = t132.
        t130 = xsdbool( t131 IS BOUND AND t131 IS INSTANCE OF zcl_lnt_unknown_type ).
        t129 = xsdbool( t130 = abap_false ).
        t126 = t129.
      ENDIF.
      IF t126 = abap_true.
        DATA t133 TYPE REF TO zcl_lnt_data_reference.
        DATA t134 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t135) = CAST zcl_lnt_abstract_type( t108 ).
        t134 = t135.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t136.
        t133 = NEW zcl_lnt_data_reference( i_type_9913 = t134 i_qualified_name = t136 ).
        result = t133.
        RETURN.
      ELSE.
        DATA(t137) = VALUE abap_bool( ).
        DATA t138 TYPE string.
        DATA t139 TYPE string.
        DATA t140 TYPE REF TO zcl_lnt_expression_node.
        DATA(t141) = CAST zcl_lnt_expression_node( t1 ).
        t140 = t141.
        t139 = t140->concat_tokens( ).
        DATA(t142) = strlen( t139 ).
        t138 = t139.
        IF t138 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t138 TO UPPER CASE.
        ELSE.
          t138 = zlnt_runtime_uppe_91169605024d=>full( t138 ).
        ENDIF.
        DATA(t143) = |DATA|.
        t137 = xsdbool( t138 = t143 ).
        IF t137 = abap_true.
          DATA t144 TYPE REF TO zcl_lnt_data_reference.
          DATA t145 TYPE REF TO zcl_lnt_data_type.
          DATA t146 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t146.
          t145 = NEW zcl_lnt_data_type( i_input_967e = t146 ).
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          t144 = NEW zcl_lnt_data_reference( i_type_9913 = t145 i_qualified_name = t147 ).
          result = t144.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t148 TYPE abap_bool.
    DATA t149 TYPE abap_bool.
    DATA t150 TYPE REF TO zcl_lnt_current_scope.
    DATA(t151) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
    t150 = t151->scope.
    DATA(t152) = t10.
    t149 = t150->is_badi_def( i_name = t152 ).
    DATA(t153) = abap_true.
    t148 = xsdbool( t149 = t153 ).
    IF t148 = abap_true.
      DATA t154 TYPE REF TO zcl_lnt_void_type.
      CLEAR t154.
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t155.
      DATA(t156) = abap_true.
      IF t156 = abap_true.
        DATA(t157) = t10.
        DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t158->has = abap_true.
        t158->value = t157.
        t155 = t158.
      ELSE.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t159.
        t155 = t159.
      ENDIF.
      DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t160.
      t154 = zcl_lnt_void_type=>get_db65( i_voided = t155 i_qualified_name = t160 ).
      result = t154.
      RETURN.
    ENDIF.
    DATA(t161) = VALUE abap_bool( ).
    DATA t162 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t162.
    DATA t163 TYPE REF TO zcl_lnt_ddic.
    DATA t164 TYPE REF TO zcl_lnt_ddic.
    DATA t165 TYPE REF TO zcl_lnt_current_scope.
    DATA t166 TYPE REF TO zcl_lnt_current_scope.
    DATA(t167) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
    t166 = t167->scope.
    t165 = t166.
    DATA t168 TYPE REF TO zcl_lnt_ddic.
    DATA t169 TYPE REF TO zif_lnt_registry.
    DATA(t170) = CAST zcl_lnt_current_scope( t165 ).
    t169 = t170->reg.
    t168 = NEW zcl_lnt_ddic( i_reg_f149 = t169 ).
    t164 = t168.
    t163 = t164.
    DATA t171 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t171.
    DATA(t172) = VALUE abap_bool( ).
    DATA(t173) = CAST zcl_lnt_ddic( t163 ).
    IF t173 IS INITIAL.
      t172 = abap_true.
    ENDIF.
    IF t172 = abap_true.
      DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t174.
      t171 = t174.
    ELSE.
      DATA(t175) = VALUE abap_bool( ).
      DATA t176 TYPE REF TO zcl_lnt_ddic.
      DATA(t177) = CAST zcl_lnt_ddic( t163 ).
      t176 = t177.
      DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t178.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t179.
      DATA(t180) = abap_true.
      IF t180 = abap_true.
        DATA(t181) = t10.
        DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t182->has = abap_true.
        t182->value = t181.
        t179 = t182.
      ELSE.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t183.
        t179 = t183.
      ENDIF.
      t178 = t179.
      DATA(t184) = VALUE abap_bool( ).
      DATA(t185) = VALUE abap_bool( ).
      DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t187) = CAST zlnt_runtime_opti_4ba3bdccd169( t178 ).
      t186 = t187.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t189.
      t188 = t189.
      DATA(t190) = VALUE abap_bool( ).
      DATA(t191) = CAST zlnt_runtime_opti_4ba3bdccd169( t186 ).
      IF t191 IS INITIAL.
        t190 = abap_true.
      ELSEIF t191->has = abap_false.
        t190 = abap_true.
      ENDIF.
      t185 = t190.
      IF t185 = abap_true.
        DATA(t192) = abap_true.
        t184 = t192.
      ELSE.
        DATA t193 TYPE abap_bool.
        DATA t194 TYPE REF TO zif_lnt_registry.
        DATA(t195) = CAST zcl_lnt_ddic( t176 ).
        t194 = t195->reg.
        DATA t196 TYPE string.
        DATA(t197) = CAST zlnt_runtime_opti_4ba3bdccd169( t178 ).
        t196 = t197->value.
        t193 = t194->in_error_namespace( i_name = t196 ).
        t184 = t193.
      ENDIF.
      t175 = t184.
      DATA(t198) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t198->has = abap_true.
      t198->value = t175.
      t171 = t198.
    ENDIF.
    t162 = t171.
    DATA t199 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t199.
    DATA(t200) = abap_true.
    IF t200 = abap_true.
      DATA(t201) = abap_false.
      DATA(t202) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t202->has = abap_true.
      t202->value = t201.
      t199 = t202.
    ELSE.
      DATA t203 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t203.
      t199 = t203.
    ENDIF.
    DATA(t204) = VALUE abap_bool( ).
    DATA(t205) = VALUE abap_bool( ).
    IF t162 IS BOUND.
      t204 = t162->has.
    ENDIF.
    IF t199 IS BOUND.
      t205 = t199->has.
    ENDIF.
    IF t204 = t205.
      IF t204 = abap_false.
        t161 = abap_true.
      ELSEIF t162->value = t199->value.
        t161 = abap_true.
      ENDIF.
    ENDIF.
    IF t161 = abap_true.
      DATA t206 TYPE REF TO zcl_lnt_void_type.
      CLEAR t206.
      DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t207.
      DATA(t208) = abap_true.
      IF t208 = abap_true.
        DATA(t209) = t10.
        DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t210->has = abap_true.
        t210->value = t209.
        t207 = t210.
      ELSE.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t211.
        t207 = t211.
      ENDIF.
      DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t212.
      t206 = zcl_lnt_void_type=>get_db65( i_voided = t207 i_qualified_name = t212 ).
      result = t206.
      RETURN.
    ENDIF.
    DATA t213 TYPE REF TO zcl_lnt_unknown_type.
    DATA t214 TYPE string.
    DATA(t215) = |REF, unable to resolve |.
    DATA(t216) = t10.
    DATA(t217) = strlen( t215 ).
    t214 = |{ t215 }{ t216 }|.
    DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t218.
    t213 = NEW zcl_lnt_unknown_type( i_error = t214 i_qualified_name = t218 ).
    result = t213.

  ENDMETHOD.
  METHOD find_value.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d146_4e7b86c7b080 ).
    t3 = t4->find_first_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = CAST zcl_lnt_expression_node( t2 ).
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = CAST zcl_lnt_expression_node( t7 ).
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    IF t6 = abap_true.
      DATA t13 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      DATA(t16) = abap_true.
      IF t16 = abap_true.
        DATA(t17) = |VALUE missing in expression|.
        DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t18->has = abap_true.
        t18->value = t17.
        t15 = t18.
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        t15 = t19.
      ENDIF.
      t14 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t15 ).
      t13 = NEW #( ).
      t13->payload = t14.
      RAISE EXCEPTION t13.
    ENDIF.
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = CAST zcl_lnt_expression_node( t2 ).
    t23 = t24.
    t22 = t23->concat_tokens( ).
    DATA(t25) = strlen( t22 ).
    t21 = t22.
    IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t21 TO UPPER CASE.
    ELSE.
      t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
    ENDIF.
    DATA(t26) = |VALUE IS INITIAL|.
    t20 = xsdbool( t21 = t26 ).
    IF t20 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      result = t27.
      RETURN.
    ENDIF.
    DATA t28 TYPE REF TO zcl_lnt_expression_node.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t31) = CAST zcl_lnt_expression_node( t2 ).
    t30 = t31.
    DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    t29 = t30->find_first_expression( i_type_9913 = t32 ).
    t28 = t29.
    DATA t33 TYPE abap_bool.
    DATA(t34) = CAST zcl_lnt_expression_node( t28 ).
    t33 = xsdbool( t34 IS BOUND ).
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA(t38) = CAST zcl_lnt_expression_node( t2 ).
      t37 = t38.
      DATA(t39) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d132_568147cc297b ).
      t36 = t37->find_first_expression( i_type_9913 = t39 ).
      t35 = t36.
      DATA t40 TYPE abap_bool.
      DATA(t41) = CAST zcl_lnt_expression_node( t35 ).
      t40 = xsdbool( t41 IS BOUND ).
      IF t40 = abap_true.
        DATA(t42) = VALUE string( ).
        DATA(t43) = VALUE string( ).
        DATA t44 TYPE string.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA t46 TYPE REF TO zcl_lnt_abstract_token.
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        DATA(t48) = CAST zcl_lnt_expression_node( t35 ).
        t47 = t48.
        t46 = t47->get_first_token( ).
        t45 = t46.
        DATA t49 TYPE string.
        DATA(t50) = CAST zcl_lnt_abstract_token( t45 ).
        t49 = t50->str.
        t44 = t49.
        DATA(t51) = 0.
        DATA(t52) = 1.
        DATA(t53) = strlen( t44 ).
        t51 = COND i( WHEN t51 < 0 THEN 0 WHEN t51 > t53 THEN t53 ELSE t51 ).
        t52 = COND i( WHEN t52 < 0 THEN 0 WHEN t52 > t53 THEN t53 ELSE t52 ).
        IF t51 > t52.
          t53 = t51.
          t51 = t52.
          t52 = t53.
        ENDIF.
        t53 = t52 - t51.
        t43 = t44+t51(t53).
        t42 = t43.
        DATA t54 TYPE string.
        DATA(t55) = ||.
        t54 = t55.
        DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t57 TYPE REF TO zcl_lnt_expression_node.
        DATA(t58) = CAST zcl_lnt_expression_node( t35 ).
        t57 = t58.
        t56 = t57->get_all_tokens( ).
        DATA t59 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t59.
        DATA t60 TYPE REF TO object.
        CLEAR t60.
        LOOP AT t56->items INTO t60.
          t59 ?= t60.
          DATA t61 TYPE abap_bool.
          DATA t62 TYPE string.
          DATA t63 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t64) = CAST zcl_lnt_abstract_token( t59 ).
          t63 = t64.
          DATA t65 TYPE string.
          DATA(t66) = CAST zcl_lnt_abstract_token( t63 ).
          t65 = t66->str.
          t62 = t65.
          DATA(t67) = |&|.
          t61 = xsdbool( t62 = t67 ).
          IF t61 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t68) = VALUE string( ).
            DATA(t69) = t54.
            DATA(t70) = VALUE string( ).
            DATA t71 TYPE string.
            DATA t72 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t73) = CAST zcl_lnt_abstract_token( t59 ).
            t72 = t73.
            DATA t74 TYPE string.
            DATA(t75) = CAST zcl_lnt_abstract_token( t72 ).
            t74 = t75->str.
            t71 = t74.
            DATA(t76) = 1.
            DATA t77 TYPE i.
            DATA t78 TYPE i.
            DATA t79 TYPE string.
            DATA t80 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t81) = CAST zcl_lnt_abstract_token( t59 ).
            t80 = t81.
            DATA t82 TYPE string.
            DATA(t83) = CAST zcl_lnt_abstract_token( t80 ).
            t82 = t83->str.
            t79 = t82.
            DATA(t84) = strlen( t79 ).
            t78 = t84.
            DATA(t85) = 1.
            t77 = t78 - t85.
            DATA(t86) = strlen( t71 ).
            t76 = COND i( WHEN t76 < 0 THEN 0 WHEN t76 > t86 THEN t86 ELSE t76 ).
            t77 = COND i( WHEN t77 < 0 THEN 0 WHEN t77 > t86 THEN t86 ELSE t77 ).
            IF t76 > t77.
              t86 = t76.
              t76 = t77.
              t77 = t86.
            ENDIF.
            t86 = t77 - t76.
            t70 = t71+t76(t86).
            DATA(t87) = strlen( t69 ).
            t68 = |{ t69 }{ t70 }|.
            t54 = t68.
          ENDIF.
        ENDLOOP.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA(t89) = abap_true.
        IF t89 = abap_true.
          DATA t90 TYPE string.
          DATA t91 TYPE string.
          DATA(t92) = t42.
          DATA(t93) = t54.
          DATA(t94) = strlen( t92 ).
          t91 = |{ t92 }{ t93 }|.
          DATA(t95) = t42.
          DATA(t96) = strlen( t91 ).
          t90 = |{ t91 }{ t95 }|.
          DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t97->has = abap_true.
          t97->value = t90.
          t88 = t97.
        ELSE.
          DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t98.
          t88 = t98.
        ENDIF.
        result = t88.
        RETURN.
      ELSE.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA(t100) = abap_true.
        IF t100 = abap_true.
          DATA t101 TYPE string.
          DATA t102 TYPE REF TO zcl_lnt_expression_node.
          DATA(t103) = CAST zcl_lnt_expression_node( t28 ).
          t102 = t103.
          t101 = t102->concat_tokens( ).
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = t101.
          t99 = t104.
        ELSE.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          t99 = t105.
        ENDIF.
        result = t99.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t106 TYPE REF TO zcl_lnt_expression_node.
    DATA t107 TYPE REF TO zcl_lnt_expression_node.
    DATA t108 TYPE REF TO zcl_lnt_expression_node.
    DATA(t109) = CAST zcl_lnt_expression_node( t2 ).
    t108 = t109.
    DATA(t110) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4 ).
    t107 = t108->find_first_expression( i_type_9913 = t110 ).
    t106 = t107.
    DATA t111 TYPE abap_bool.
    DATA(t112) = CAST zcl_lnt_expression_node( t106 ).
    t111 = xsdbool( t112 IS BOUND ).
    IF t111 = abap_true.
      DATA(t113) = VALUE string( ).
      DATA t114 TYPE string.
      DATA t115 TYPE string.
      DATA t116 TYPE REF TO zcl_lnt_expression_node.
      DATA(t117) = CAST zcl_lnt_expression_node( t106 ).
      t116 = t117.
      t115 = t116->concat_tokens( ).
      DATA(t118) = strlen( t115 ).
      t114 = t115.
      IF t114 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t114 TO UPPER CASE.
      ELSE.
        t114 = zlnt_runtime_uppe_91169605024d=>full( t114 ).
      ENDIF.
      t113 = t114.
      DATA t119 TYPE abap_bool.
      DATA t120 TYPE abap_bool.
      DATA(t121) = t113.
      DATA(t122) = |SY-DATUM|.
      t120 = xsdbool( t121 = t122 ).
      t119 = t120.
      IF t120 = abap_false.
        DATA t123 TYPE abap_bool.
        DATA(t124) = t113.
        DATA(t125) = |SY-UZEIT|.
        t123 = xsdbool( t124 = t125 ).
        t119 = t123.
      ENDIF.
      IF t119 = abap_true.
        DATA t126 TYPE string.
        DATA t127 TYPE string.
        DATA t128 TYPE string.
        DATA(t129) = |VALUE, |.
        DATA t130 TYPE string.
        DATA(t131) = t113.
        DATA(t132) = strlen( t131 ).
        t130 = t131.
        TRANSLATE t130 TO LOWER CASE.
        DATA(t133) = strlen( t129 ).
        t128 = |{ t129 }{ t130 }|.
        DATA(t134) = | is not a constant|.
        DATA(t135) = strlen( t128 ).
        t127 = |{ t128 }{ t134 }|.
        t126 = t127.
        DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t137) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        t136 = t137->issues.
        DATA t138 TYPE REF TO zcl_lnt_issue.
        DATA(t139) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
        DATA t140 TYPE REF TO zcl_lnt_abstract_token.
        DATA t141 TYPE REF TO zcl_lnt_expression_node.
        DATA(t142) = CAST zcl_lnt_expression_node( t106 ).
        t141 = t142.
        t140 = t141->get_first_token( ).
        DATA(t143) = t126.
        DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t144.
        t138 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t139 i_token = t140 i_message_26cb = t143 i_fix = t144 ).
        APPEND t138 TO t136->items.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        result = t145.
        RETURN.
      ENDIF.
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t147 TYPE REF TO zcl_lnt_expression_node.
      DATA(t148) = CAST zcl_lnt_expression_node( t106 ).
      t147 = t148.
      t146 = me->resolve_constant_value( i_expr = t147 ).
      result = t146.
      RETURN.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t149.
    DATA t150 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t151.
    DATA(t152) = abap_true.
    IF t152 = abap_true.
      DATA(t153) = |findValue, unexpected|.
      DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t154->has = abap_true.
      t154->value = t153.
      t151 = t154.
    ELSE.
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t155.
      t151 = t155.
    ENDIF.
    t150 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t151 ).
    t149 = NEW #( ).
    t149->payload = t150.
    RAISE EXCEPTION t149.
  ENDMETHOD.
  METHOD find_decimals.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d145_fbc450f30e9d ).
    t7 = t8->find_direct_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = CAST zcl_lnt_expression_node( t6 ).
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t13.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = CAST zcl_lnt_expression_node( t6 ).
      t15 = t16.
      DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
      t14 = t15->find_direct_expression( i_type_9913 = t17 ).
      t10 = t14.
    ENDIF.
    t5 = t10.
    t4 = t5.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = CAST zcl_lnt_expression_node( t4 ).
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t18 = t21.
    ELSE.
      DATA t22 TYPE string.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t24) = CAST zcl_lnt_expression_node( t4 ).
      t23 = t24.
      t22 = t23->concat_tokens( ).
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t22.
      t18 = t25.
    ENDIF.
    t3 = t18.
    t2 = t3.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    IF t27 IS BOUND.
      IF t27->has = abap_true.
        t26 = xsdbool( strlen( t27->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t26 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA(t30) = VALUE int8( ).
        DATA t31 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t31.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t32.
        DATA t33 TYPE string.
        DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
        t33 = t34->value.
        DATA(t35) = strlen( t33 ).
        DATA t36 TYPE i.
        DATA t37 TYPE i.
        t36 = 0.
        t37 = t35.
        DATA(t38) = VALUE i( ).
        DATA(t39) = VALUE i( ).
        DATA(t40) = VALUE string( ).
        WHILE t36 < t37.
          t39 = t36.
          t40 = t33+t39(1).
          DATA t41 TYPE c LENGTH 1.
          CLEAR t41.
          DATA(t42) = VALUE xstring( ).
          DATA t43 TYPE x LENGTH 1.
          CLEAR t43.
          DATA t44 TYPE x LENGTH 1.
          CLEAR t44.
          DATA(t45) = VALUE i( ).
          t41 = t40.
          t38 = cl_abap_conv_out_ce=>uccpi( t41 ).
          IF t38 >= 255.
            IF zlnt_builtin_code_bb79b741c1de IS NOT BOUND.
              zlnt_builtin_code_bb79b741c1de = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_bb79b741c1de->convert( EXPORTING data = t40 IMPORTING buffer = t42 ).
            t43 = t42(1).
            t44 = t42+1(1).
            t38 = t43.
            t45 = t44.
            t38 = t38 + t45 * 256.
          ENDIF.
          IF t38 = 9 OR t38 = 10 OR t38 = 11 OR t38 = 12 OR t38 = 13 OR t38 = 32 OR t38 = 160 OR t38 = 5760 OR t38 = 8232 OR t38 = 8233 OR t38 = 8239 OR t38 = 8287 OR t38 = 12288 OR t38 = 65279 OR t38 >= 8192 AND t38 <= 8202.
            t36 = t36 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA t46 TYPE f.
        DATA t47 TYPE f.
        DATA t48 TYPE i.
        DATA(t49) = VALUE string( ).
        t46 = 1.
        t47 = 0.
        t48 = 0.
        IF t36 < t37.
          t49 = t33+t36(1).
          IF t49 = '-'.
            t46 = -1.
            t36 = t36 + 1.
          ELSEIF t49 = '+'.
            t36 = t36 + 1.
          ENDIF.
        ENDIF.
        WHILE t36 < t37.
          t49 = t33+t36(1).
          IF t49 CA '0123456789' AND t49 <> ` `.
            t47 = t47 * 10 + t49.
            t48 = t48 + 1.
            t36 = t36 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t48 = 0.
          CLEAR t32.
        ELSE.
          t32 = NEW #( ).
          t32->has = abap_true.
          t32->value = t46 * t47.
        ENDIF.
        t31 = t32.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = CAST zlnt_runtime_opti_4a236cd5714d( t31 ).
        IF t51 IS INITIAL.
          t50 = abap_true.
        ELSEIF t51->has = abap_false.
          t50 = abap_true.
        ENDIF.
        IF t50 = abap_true.
          DATA(t52) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t53) = |src/abap/5_syntax/basic_types.ts:1038:14|.
          t52->source_location = t53.
          RAISE EXCEPTION t52.
        ENDIF.
        DATA t54 TYPE int8.
        DATA(t55) = CAST zlnt_runtime_opti_4a236cd5714d( t31 ).
        t54 = t55->value.
        t30 = t54.
        DATA(t56) = NEW zlnt_runtime_opti_4a236cd5714d( ).
        t56->has = abap_true.
        t56->value = t30.
        t28 = t56.
      ELSE.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t57.
        t28 = t57.
      ENDIF.
      result = t28.
      RETURN.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    CLEAR t58.
    result = t58.

  ENDMETHOD.
  METHOD find_length.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d144_e73838d999aa ).
    t3 = t4->find_first_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d139_249fe3e5ef12 ).
    t7 = t8->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE abap_bool.
    DATA(t12) = CAST zcl_lnt_expression_node( t2 ).
    t11 = xsdbool( t12 IS BOUND ).
    t10 = t11.
    IF t11 = abap_true.
      DATA t13 TYPE abap_bool.
      DATA(t14) = CAST zcl_lnt_expression_node( t6 ).
      t13 = xsdbool( t14 IS BOUND ).
      t10 = t13.
    ENDIF.
    IF t10 = abap_true.
      DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = |Only specify length once|.
        DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t17 = t21.
      ENDIF.
      t16 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t17 ).
      t15 = NEW #( ).
      t15->payload = t16.
      RAISE EXCEPTION t15.
    ENDIF.
    DATA t22 TYPE abap_bool.
    DATA(t23) = CAST zcl_lnt_expression_node( t6 ).
    t22 = xsdbool( t23 IS BOUND ).
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = CAST zcl_lnt_expression_node( t6 ).
      t26 = t27.
      DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
      t25 = t26->find_first_expression( i_type_9913 = t28 ).
      t24 = t25.
      DATA t29 TYPE abap_bool.
      DATA(t30) = CAST zcl_lnt_expression_node( t24 ).
      t29 = xsdbool( t30 IS BOUND ).
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t31.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        DATA(t33) = abap_true.
        IF t33 = abap_true.
          DATA t34 TYPE string.
          DATA t35 TYPE REF TO zcl_lnt_expression_node.
          DATA(t36) = CAST zcl_lnt_expression_node( t24 ).
          t35 = t36.
          t34 = t35->concat_tokens( ).
          DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t37->has = abap_true.
          t37->value = t34.
          t32 = t37.
        ELSE.
          DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t38.
          t32 = t38.
        ENDIF.
        t31 = me->parse_int( i_text = t32 ).
        result = t31.
        RETURN.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      DATA(t42) = CAST zcl_lnt_expression_node( t6 ).
      t41 = t42.
      DATA(t43) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4 ).
      t40 = t41->find_first_expression( i_type_9913 = t43 ).
      t39 = t40.
      DATA t44 TYPE abap_bool.
      DATA(t45) = CAST zcl_lnt_expression_node( t39 ).
      t44 = xsdbool( t45 IS BOUND ).
      IF t44 = abap_true.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t48 TYPE REF TO zcl_lnt_expression_node.
        DATA(t49) = CAST zcl_lnt_expression_node( t39 ).
        t48 = t49.
        t47 = me->resolve_constant_value( i_expr = t48 ).
        t46 = t47.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        DATA(t51) = CAST zlnt_runtime_opti_4ba3bdccd169( t46 ).
        t50 = me->parse_int( i_text = t51 ).
        result = t50.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t52) = VALUE abap_bool( ).
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    DATA(t54) = CAST zcl_lnt_expression_node( t2 ).
    t53 = t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    t55 = t56.
    DATA(t57) = VALUE abap_bool( ).
    DATA(t58) = CAST zcl_lnt_expression_node( t53 ).
    IF t58 IS INITIAL.
      t57 = abap_true.
    ENDIF.
    t52 = t57.
    IF t52 = abap_true.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t59.
      result = t59.
      RETURN.
    ENDIF.
    DATA t60 TYPE REF TO zcl_lnt_expression_node.
    DATA t61 TYPE REF TO zcl_lnt_expression_node.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    DATA(t63) = CAST zcl_lnt_expression_node( t2 ).
    t62 = t63.
    DATA(t64) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
    t61 = t62->find_first_expression( i_type_9913 = t64 ).
    t60 = t61.
    DATA t65 TYPE abap_bool.
    DATA(t66) = CAST zcl_lnt_expression_node( t60 ).
    t65 = xsdbool( t66 IS BOUND ).
    IF t65 = abap_true.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t67.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t68.
      DATA(t69) = abap_true.
      IF t69 = abap_true.
        DATA t70 TYPE string.
        DATA t71 TYPE REF TO zcl_lnt_expression_node.
        DATA(t72) = CAST zcl_lnt_expression_node( t60 ).
        t71 = t72.
        t70 = t71->concat_tokens( ).
        DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t73->has = abap_true.
        t73->value = t70.
        t68 = t73.
      ELSE.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        t68 = t74.
      ENDIF.
      t67 = me->parse_int( i_text = t68 ).
      result = t67.
      RETURN.
    ENDIF.
    DATA t75 TYPE REF TO zcl_lnt_expression_node.
    DATA t76 TYPE REF TO zcl_lnt_expression_node.
    DATA t77 TYPE REF TO zcl_lnt_expression_node.
    DATA(t78) = CAST zcl_lnt_expression_node( t2 ).
    t77 = t78.
    DATA(t79) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d137_6fd956b9c58a ).
    t76 = t77->find_first_expression( i_type_9913 = t79 ).
    t75 = t76.
    DATA t80 TYPE abap_bool.
    DATA(t81) = CAST zcl_lnt_expression_node( t75 ).
    t80 = xsdbool( t81 IS BOUND ).
    IF t80 = abap_true.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t82.
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t83.
      DATA(t84) = abap_true.
      IF t84 = abap_true.
        DATA t85 TYPE string.
        DATA t86 TYPE REF TO zcl_lnt_expression_node.
        DATA(t87) = CAST zcl_lnt_expression_node( t75 ).
        t86 = t87.
        t85 = t86->concat_tokens( ).
        DATA(t88) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t88->has = abap_true.
        t88->value = t85.
        t83 = t88.
      ELSE.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        t83 = t89.
      ENDIF.
      t82 = me->parse_int( i_text = t83 ).
      result = t82.
      RETURN.
    ENDIF.
    DATA t90 TYPE REF TO zcl_lnt_expression_node.
    DATA t91 TYPE REF TO zcl_lnt_expression_node.
    DATA t92 TYPE REF TO zcl_lnt_expression_node.
    DATA(t93) = CAST zcl_lnt_expression_node( t2 ).
    t92 = t93.
    DATA(t94) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4 ).
    t91 = t92->find_first_expression( i_type_9913 = t94 ).
    t90 = t91.
    DATA t95 TYPE abap_bool.
    DATA(t96) = CAST zcl_lnt_expression_node( t90 ).
    t95 = xsdbool( t96 IS BOUND ).
    IF t95 = abap_true.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t99 TYPE REF TO zcl_lnt_expression_node.
      DATA(t100) = CAST zcl_lnt_expression_node( t90 ).
      t99 = t100.
      t98 = me->resolve_constant_value( i_expr = t99 ).
      t97 = t98.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      DATA(t102) = CAST zlnt_runtime_opti_4ba3bdccd169( t97 ).
      t101 = me->parse_int( i_text = t102 ).
      result = t101.
      RETURN.
    ENDIF.
    DATA t103 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t103.
    DATA t104 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t105.
    DATA(t106) = abap_true.
    IF t106 = abap_true.
      DATA(t107) = |Unexpected, findLength|.
      DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t108->has = abap_true.
      t108->value = t107.
      t105 = t108.
    ELSE.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t109.
      t105 = t109.
    ENDIF.
    t104 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t105 ).
    t103 = NEW #( ).
    t103->payload = t104.
    RAISE EXCEPTION t103.
  ENDMETHOD.
  METHOD parse_int.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_text ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE string.
    DATA(t12) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t11 = t12->value.
    DATA(t13) = |'|.
    DATA(t14) = strlen( t11 ).
    DATA t15 TYPE i.
    DATA(t16) = VALUE i( ).
    DATA(t17) = VALUE string( ).
    t15 = strlen( t13 ).
    IF t15 = 0.
      t10 = abap_true.
    ELSEIF t15 <= t14.
      t16 = 0.
      t17 = t11+t16(t15).
      IF t17 = t13.
        t10 = abap_true.
      ENDIF.
    ENDIF.
    IF t10 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = VALUE string( ).
        DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t22 TYPE string.
        DATA(t23) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
        t22 = t23->value.
        DATA(t24) = |'|.
        DATA(t25) = strlen( t22 ).
        DATA t26 TYPE i.
        DATA(t27) = VALUE i( ).
        DATA(t28) = VALUE i( ).
        DATA t29 TYPE i.
        DATA(t30) = VALUE string( ).
        CREATE OBJECT t21.
        t29 = strlen( t24 ).
        t26 = 0.
        IF t29 = 0.
          WHILE t26 < t25.
            t30 = t22+t26(1).
            APPEND t30 TO t21->items.
            t26 = t26 + 1.
          ENDWHILE.
        ELSE.
          WHILE t26 <= t25.
            FIND FIRST OCCURRENCE OF t24 IN SECTION OFFSET t26 OF t22 MATCH OFFSET t27.
            IF sy-subrc = 0.
              t28 = t27 - t26.
            ELSE.
              t27 = -1.
              t28 = t25 - t26.
            ENDIF.
            CLEAR t30.
            IF t28 > 0.
              t30 = t22+t26(t28).
            ENDIF.
            APPEND t30 TO t21->items.
            IF t27 < 0.
              EXIT.
            ENDIF.
            t26 = t27 + t29.
          ENDWHILE.
        ENDIF.
        READ TABLE t21->items INDEX 2 INTO t20.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t20.
        t18 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t18 = t32.
      ENDIF.
      t1 = t18.
    ELSE.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE string.
      DATA(t35) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t34 = t35->value.
      DATA(t36) = |`|.
      DATA(t37) = strlen( t34 ).
      DATA t38 TYPE i.
      DATA(t39) = VALUE i( ).
      DATA(t40) = VALUE string( ).
      t38 = strlen( t36 ).
      IF t38 = 0.
        t33 = abap_true.
      ELSEIF t38 <= t37.
        t39 = 0.
        t40 = t34+t39(t38).
        IF t40 = t36.
          t33 = abap_true.
        ENDIF.
      ENDIF.
      IF t33 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA(t42) = abap_true.
        IF t42 = abap_true.
          DATA(t43) = VALUE string( ).
          DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t45 TYPE string.
          DATA(t46) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
          t45 = t46->value.
          DATA(t47) = |`|.
          DATA(t48) = strlen( t45 ).
          DATA t49 TYPE i.
          DATA(t50) = VALUE i( ).
          DATA(t51) = VALUE i( ).
          DATA t52 TYPE i.
          DATA(t53) = VALUE string( ).
          CREATE OBJECT t44.
          t52 = strlen( t47 ).
          t49 = 0.
          IF t52 = 0.
            WHILE t49 < t48.
              t53 = t45+t49(1).
              APPEND t53 TO t44->items.
              t49 = t49 + 1.
            ENDWHILE.
          ELSE.
            WHILE t49 <= t48.
              FIND FIRST OCCURRENCE OF t47 IN SECTION OFFSET t49 OF t45 MATCH OFFSET t50.
              IF sy-subrc = 0.
                t51 = t50 - t49.
              ELSE.
                t50 = -1.
                t51 = t48 - t49.
              ENDIF.
              CLEAR t53.
              IF t51 > 0.
                t53 = t45+t49(t51).
              ENDIF.
              APPEND t53 TO t44->items.
              IF t50 < 0.
                EXIT.
              ENDIF.
              t49 = t50 + t52.
            ENDWHILE.
          ENDIF.
          READ TABLE t44->items INDEX 2 INTO t43.
          DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t54->has = abap_true.
          t54->value = t43.
          t41 = t54.
        ELSE.
          DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t55.
          t41 = t55.
        ENDIF.
        t1 = t41.
      ENDIF.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    CLEAR t56.
    DATA(t57) = abap_true.
    IF t57 = abap_true.
      DATA(t58) = VALUE int8( ).
      DATA t59 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t60.
      DATA t61 TYPE string.
      DATA(t62) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t61 = t62->value.
      DATA(t63) = strlen( t61 ).
      DATA t64 TYPE i.
      DATA t65 TYPE i.
      t64 = 0.
      t65 = t63.
      DATA(t66) = VALUE i( ).
      DATA(t67) = VALUE i( ).
      DATA(t68) = VALUE string( ).
      WHILE t64 < t65.
        t67 = t64.
        t68 = t61+t67(1).
        DATA t69 TYPE c LENGTH 1.
        CLEAR t69.
        DATA(t70) = VALUE xstring( ).
        DATA t71 TYPE x LENGTH 1.
        CLEAR t71.
        DATA t72 TYPE x LENGTH 1.
        CLEAR t72.
        DATA(t73) = VALUE i( ).
        t69 = t68.
        t66 = cl_abap_conv_out_ce=>uccpi( t69 ).
        IF t66 >= 255.
          IF zlnt_builtin_code_bb79b741c1de IS NOT BOUND.
            zlnt_builtin_code_bb79b741c1de = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_bb79b741c1de->convert( EXPORTING data = t68 IMPORTING buffer = t70 ).
          t71 = t70(1).
          t72 = t70+1(1).
          t66 = t71.
          t73 = t72.
          t66 = t66 + t73 * 256.
        ENDIF.
        IF t66 = 9 OR t66 = 10 OR t66 = 11 OR t66 = 12 OR t66 = 13 OR t66 = 32 OR t66 = 160 OR t66 = 5760 OR t66 = 8232 OR t66 = 8233 OR t66 = 8239 OR t66 = 8287 OR t66 = 12288 OR t66 = 65279 OR t66 >= 8192 AND t66 <= 8202.
          t64 = t64 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      DATA t74 TYPE f.
      DATA t75 TYPE f.
      DATA t76 TYPE i.
      DATA(t77) = VALUE string( ).
      t74 = 1.
      t75 = 0.
      t76 = 0.
      IF t64 < t65.
        t77 = t61+t64(1).
        IF t77 = '-'.
          t74 = -1.
          t64 = t64 + 1.
        ELSEIF t77 = '+'.
          t64 = t64 + 1.
        ENDIF.
      ENDIF.
      WHILE t64 < t65.
        t77 = t61+t64(1).
        IF t77 CA '0123456789' AND t77 <> ` `.
          t75 = t75 * 10 + t77.
          t76 = t76 + 1.
          t64 = t64 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t76 = 0.
        CLEAR t60.
      ELSE.
        t60 = NEW #( ).
        t60->has = abap_true.
        t60->value = t74 * t75.
      ENDIF.
      t59 = t60.
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = CAST zlnt_runtime_opti_4a236cd5714d( t59 ).
      IF t79 IS INITIAL.
        t78 = abap_true.
      ELSEIF t79->has = abap_false.
        t78 = abap_true.
      ENDIF.
      IF t78 = abap_true.
        DATA(t80) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t81) = |src/abap/5_syntax/basic_types.ts:1098:12|.
        t80->source_location = t81.
        RAISE EXCEPTION t80.
      ENDIF.
      DATA t82 TYPE int8.
      DATA(t83) = CAST zlnt_runtime_opti_4a236cd5714d( t59 ).
      t82 = t83->value.
      t58 = t82.
      DATA(t84) = NEW zlnt_runtime_opti_4a236cd5714d( ).
      t84->has = abap_true.
      t84->value = t58.
      t56 = t84.
    ELSE.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t85.
      t56 = t85.
    ENDIF.
    result = t56.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d760_1bcc540229eb.
  ENDMETHOD.
ENDCLASS.
