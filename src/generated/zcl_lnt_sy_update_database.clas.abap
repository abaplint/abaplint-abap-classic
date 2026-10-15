* TS: src/abap/5_syntax/statements/update_database.ts:14:1 UpdateDatabase
CLASS zcl_lnt_sy_update_database DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_update_database IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t8.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t12 = xsdbool( t13 = abap_false ).
    t7 = t12.
    IF t7 = abap_true.
      DATA t15 TYPE REF TO zif_lnt_union_c74a232f.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_union_c74a232f.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t17.
      DATA(t18) = t3.
      t17 = t18.
      DATA(t19) = t2.
      t16 = zcl_lnt_sy_database_table=>run_syntax( i_node = t17 i_input_967e = t19 ).
      t15 = t16.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      CREATE OBJECT t23.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t26.
      CREATE OBJECT t26.
      t25 = t26.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t27.
      DATA(t28) = t1.
      DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d316_43ef1bb28f89.
      t27 = t28->find_all_expressions( i_type_9913 = t29 ).
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      DATA(t32) = VALUE i( ).
      DO.
        t27->load( ).
        IF t32 >= lines( t27->items ).
          EXIT.
        ENDIF.
        CLEAR t31.
        READ TABLE t27->items INDEX t32 + 1 INTO t31.
        t32 = t32 + 1.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        CLEAR t30.
        IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t33 ?= t31.
          DATA t34 TYPE REF TO object.
          CLEAR t34.
          t34 = t33->as_ref( ).
          t30 ?= t34.
        ELSE.
          t30 ?= t31.
        ENDIF.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t35.
        DATA(t36) = t30.
        DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
        t35 = t36->find_direct_expressions( i_type_9913 = t37 ).
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t38.
        DATA t39 TYPE REF TO object.
        CLEAR t39.
        DATA(t40) = VALUE i( ).
        DO.
          t35->load( ).
          IF t40 >= lines( t35->items ).
            EXIT.
          ENDIF.
          CLEAR t39.
          READ TABLE t35->items INDEX t40 + 1 INTO t39.
          t40 = t40 + 1.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          CLEAR t38.
          IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t41 ?= t39.
            DATA t42 TYPE REF TO object.
            CLEAR t42.
            t42 = t41->as_ref( ).
            t38 ?= t42.
          ELSE.
            t38 ?= t39.
          ENDIF.
          DATA(t43) = t25.
          DATA(t44) = t38.
          t43->load( ).
          APPEND t44 TO t43->items.
          t43->save( ).
        ENDDO.
      ENDDO.
      DATA(t45) = t25.
      t24 = t45.
      DATA t46 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t46.
      DATA t47 TYPE REF TO object.
      CLEAR t47.
      DATA(t48) = VALUE i( ).
      DO.
        t24->load( ).
        IF t48 >= lines( t24->items ).
          EXIT.
        ENDIF.
        CLEAR t47.
        READ TABLE t24->items INDEX t48 + 1 INTO t47.
        t48 = t48 + 1.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        CLEAR t46.
        IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t49 ?= t47.
          DATA t50 TYPE REF TO object.
          CLEAR t50.
          t50 = t49->as_ref( ).
          t46 ?= t50.
        ELSE.
          t46 ?= t47.
        ENDIF.
        DATA(t51) = t22.
        DATA(t52) = VALUE string( ).
        DATA(t53) = VALUE string( ).
        DATA(t54) = t46.
        t53 = t54->concat_tokens( ).
        DATA(t55) = strlen( t53 ).
        t52 = t53.
        IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t52 TO UPPER CASE.
        ELSE.
          t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
        ENDIF.
        t51->load( ).
        APPEND t52 TO t51->items.
        t51->save( ).
      ENDDO.
      DATA(t56) = t22.
      t21 = t56.
      t20 = t21.
      DATA(t57) = VALUE i( ).
      DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CLEAR t60.
      CREATE OBJECT t60.
      t59 = t60.
      DATA t61 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CLEAR t63.
      CREATE OBJECT t63.
      t62 = t63.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t64.
      DATA(t65) = t1.
      DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d301_61c04e5b3781.
      t64 = t65->find_all_expressions( i_type_9913 = t66 ).
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t67.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      DATA(t69) = VALUE i( ).
      DO.
        t64->load( ).
        IF t69 >= lines( t64->items ).
          EXIT.
        ENDIF.
        CLEAR t68.
        READ TABLE t64->items INDEX t69 + 1 INTO t68.
        t69 = t69 + 1.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        CLEAR t67.
        IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t70 ?= t68.
          DATA t71 TYPE REF TO object.
          CLEAR t71.
          t71 = t70->as_ref( ).
          t67 ?= t71.
        ELSE.
          t67 ?= t68.
        ENDIF.
        DATA(t72) = t62.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA t76 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t76.
        DATA t77 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t77.
        DATA(t78) = t67.
        DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
        t77 = t78->find_direct_expression( i_type_9913 = t79 ).
        t76 = t77.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = t76.
        IF t82 IS INITIAL.
          t81 = abap_true.
        ENDIF.
        IF t81 = abap_true.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          t80 = t83.
        ELSE.
          DATA(t84) = VALUE string( ).
          DATA t85 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t85.
          DATA(t86) = t76.
          t85 = t86.
          t84 = t85->concat_tokens( ).
          DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t87->has = abap_true.
          t87->value = t84.
          t80 = t87.
        ENDIF.
        t75 = t80.
        t74 = t75.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA(t89) = VALUE abap_bool( ).
        DATA(t90) = t74.
        IF t90 IS INITIAL.
          t89 = abap_true.
        ELSEIF t90->has = abap_false.
          t89 = abap_true.
        ENDIF.
        IF t89 = abap_true.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          t88 = t91.
        ELSE.
          DATA(t92) = VALUE string( ).
          DATA(t93) = VALUE string( ).
          DATA(t94) = t74.
          t93 = t94->value.
          DATA(t95) = strlen( t93 ).
          t92 = t93.
          IF t92 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t92 TO UPPER CASE.
          ELSE.
            t92 = zlnt_runtime_uppe_91169605024d=>full( t92 ).
          ENDIF.
          DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t96->has = abap_true.
          t96->value = t92.
          t88 = t96.
        ENDIF.
        t73 = t88.
        t72->load( ).
        APPEND t73 TO t72->items.
        t72->save( ).
      ENDDO.
      DATA(t97) = t62.
      t61 = t97.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t98.
      DATA(t99) = VALUE i( ).
      DO.
        t61->load( ).
        IF t99 >= lines( t61->items ).
          EXIT.
        ENDIF.
        CLEAR t98.
        READ TABLE t61->items INDEX t99 + 1 INTO t98.
        t99 = t99 + 1.
        DATA(t100) = VALUE abap_bool( ).
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA(t102) = t98.
        t101 = t102.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        t103 = t104.
        DATA(t105) = VALUE abap_bool( ).
        DATA(t106) = VALUE abap_bool( ).
        DATA(t107) = t101.
        IF t107 IS INITIAL.
          t106 = abap_true.
        ELSEIF t107->has = abap_false.
          t106 = abap_true.
        ENDIF.
        t105 = xsdbool( t106 = abap_false ).
        t100 = t105.
        IF t100 = abap_true.
          DATA(t108) = t59.
          DATA(t109) = t98.
          t108->load( ).
          APPEND t109 TO t108->items.
          t108->save( ).
        ENDIF.
      ENDDO.
      DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t110.
      DATA(t111) = t59.
      IF t111->source IS BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `emit.go: array mutation: graph-backed storage requires live mutation ABI`.
      ENDIF.
      CREATE OBJECT t110.
      LOOP AT t111->items INTO DATA(t112).
        IF t112 IS NOT BOUND OR t112->has = abap_false.
          RAISE EXCEPTION TYPE cx_sy_move_cast_error.
        ENDIF.
        APPEND t112->value TO t110->items.
      ENDLOOP.
      t58 = t110.
      DATA(t113) = VALUE string( ).
      t58->dense( ).
      DATA(t114) = VALUE i( ).
      DO.
        t58->load( ).
        IF t114 >= lines( t58->items ).
          EXIT.
        ENDIF.
        CLEAR t113.
        READ TABLE t58->items INDEX t114 + 1 INTO t113.
        IF t58->has( t114 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t114 = t114 + 1.
        DATA(t115) = t20.
        DATA(t116) = t113.
        t115->load( ).
        APPEND t116 TO t115->items.
        t115->save( ).
      ENDDO.
      DATA(t117) = VALUE i( ).
      DATA(t118) = t20.
      t118->load( ).
      t117 = lines( t118->items ).
      t57 = t117.
      DATA(t119) = t20.
      DATA t120 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      CLEAR t120.
      DATA t121 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      CLEAR t121.
      DATA t122 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      CLEAR t122.
      CREATE OBJECT t122.
      t121 = t122.
      DATA(t123) = t121.
      DATA(t124) = t15.
      t123->load( ).
      APPEND t124 TO t123->items.
      t123->save( ).
      DATA(t125) = t121.
      t120 = t125.
      DATA(t126) = t2.
      DATA t127 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t127.
      DATA(t128) = t1.
      t127 = t128->get_first_token( ).
      zcl_lnt_chck_dtbs_flds_mdl=>check_database_fields( i_fields_62af = t119 i_db_sources = t120 i_input_967e = t126 i_token = t127 ).
    ENDIF.
    DATA t129 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t129.
    DATA t130 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t130.
    DATA(t131) = t1.
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    t130 = t131->find_direct_expression( i_type_9913 = t132 ).
    t129 = t130.
    DATA t133 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t133.
    DATA t134 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t134.
    DATA t135 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t135.
    DATA(t136) = t129.
    t135 = t136.
    DATA t137 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t137.
    DATA(t138) = VALUE abap_bool( ).
    DATA(t139) = t135.
    IF t139 IS INITIAL.
      t138 = abap_true.
    ENDIF.
    IF t138 = abap_true.
      DATA t140 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t140.
      t137 = t140.
    ELSE.
      DATA t141 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t141.
      DATA t142 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t142.
      DATA(t143) = t135.
      t142 = t143.
      t141 = t142->get_first_token( ).
      t137 = t141.
    ENDIF.
    t134 = t137.
    t133 = t134.
    DATA(t144) = VALUE abap_bool( ).
    DATA(t145) = VALUE abap_bool( ).
    DATA(t146) = t129.
    t145 = xsdbool( t146 IS BOUND ).
    t144 = t145.
    IF t145 = abap_true.
      DATA(t147) = VALUE abap_bool( ).
      DATA(t148) = t133.
      t147 = xsdbool( t148 IS BOUND ).
      t144 = t147.
    ENDIF.
    IF t144 = abap_true.
      DATA t149 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t149.
      DATA t150 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t150.
      DATA t151 TYPE REF TO zcl_lnt_ddic.
      CLEAR t151.
      DATA t152 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t152.
      DATA t153 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t153.
      DATA(t154) = t2.
      t153 = t154->scope.
      t152 = t153.
      DATA t155 TYPE REF TO zcl_lnt_ddic.
      CLEAR t155.
      DATA t156 TYPE REF TO zif_lnt_registry.
      CLEAR t156.
      DATA(t157) = t152.
      t156 = t157->reg.
      t155 = NEW zcl_lnt_ddic( i_reg_f149 = t156 ).
      t151 = t155.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t158.
      DATA(t159) = abap_true.
      IF t159 = abap_true.
        DATA(t160) = VALUE string( ).
        DATA t161 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t161.
        DATA t162 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t162.
        DATA(t163) = t133.
        t162 = t163.
        t161 = t162.
        DATA(t164) = VALUE string( ).
        DATA(t165) = t161.
        t164 = t165->str.
        t160 = t164.
        DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t166->has = abap_true.
        t166->value = t160.
        t158 = t166.
      ELSE.
        DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t167.
        t158 = t167.
      ENDIF.
      t150 = t151->lookup_table( i_name = t158 ).
      t149 = t150.
      DATA(t168) = VALUE abap_bool( ).
      DATA(t169) = t149.
      t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t168 = abap_true.
        DATA t170 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t170.
        DATA t171 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t171.
        DATA(t172) = t2.
        t171 = t172->scope.
        t170 = t171.
        DATA t173 TYPE REF TO zcl_lnt_position.
        CLEAR t173.
        DATA t174 TYPE REF TO zcl_lnt_position.
        CLEAR t174.
        DATA t175 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t175.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t176.
        DATA(t177) = t133.
        t176 = t177.
        t175 = t176.
        DATA t178 TYPE REF TO zcl_lnt_position.
        CLEAR t178.
        DATA(t179) = t175.
        t178 = t179->start.
        t174 = t178.
        t173 = t174.
        DATA(t180) = VALUE string( ).
        DATA(t181) = VALUE string( ).
        DATA(t182) = t2.
        t181 = t182->filename.
        t180 = t181.
        DATA t183 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t183.
        DATA t184 TYPE REF TO zcl_lnt_iscope_identifier.
        CLEAR t184.
        DATA(t185) = VALUE string( ).
        DATA(t186) = |open_sql|.
        t185 = t186.
        DATA(t187) = VALUE string( ).
        DATA(t188) = |UPDATE|.
        t187 = t188.
        DATA t189 TYPE REF TO zcl_lnt_position.
        CLEAR t189.
        DATA(t190) = t173.
        t189 = t190.
        DATA(t191) = VALUE string( ).
        DATA(t192) = t180.
        t191 = t192.
        DATA t193 TYPE REF TO zcl_lnt_position.
        CLEAR t193.
        DATA t194 TYPE REF TO zcl_lnt_position.
        CLEAR t194.
        t193 = t194.
        t184 = NEW zcl_lnt_iscope_identifier( i_stype = t185 i_sname = t187 i_filename = t191 i_start = t189 i_end = t193 ).
        CREATE OBJECT t184->zlnt_view_ownkeys_b0e8086400eb.
        t184->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t195.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t195 ).
        ENDIF.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t196 ).
        ENDIF.
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t197.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t197 ).
        ENDIF.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t198 ).
        ENDIF.
        DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t199.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t199 ).
        ENDIF.
        CREATE OBJECT t184->zlnt_json_ownkeys_70e5fd461788.
        t184->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t200) = |stype|.
        DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t201.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t200 p1 = t201 ).
        ENDIF.
        DATA(t202) = |sname|.
        DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t203.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t202 p1 = t203 ).
        ENDIF.
        DATA(t204) = |start|.
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t205.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t204 p1 = t205 ).
        ENDIF.
        DATA(t206) = |filename|.
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t207.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t206 p1 = t207 ).
        ENDIF.
        DATA(t208) = |end|.
        DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t209.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t208 p1 = t209 ).
        ENDIF.
        t183 = t184.
        DATA(t210) = VALUE abap_bool( ).
        DATA t211 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t211.
        DATA t212 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t212.
        DATA(t213) = t170.
        t212 = t213->current.
        t211 = t212.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t214.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t215.
        t214 = t215.
        DATA(t216) = VALUE abap_bool( ).
        DATA(t217) = t211.
        IF t217 IS INITIAL.
          t216 = abap_true.
        ENDIF.
        t210 = t216.
        IF t210 = abap_true.
          DATA(t218) = t170.
          DATA t219 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t219.
          DATA(t220) = abap_true.
          IF t220 = abap_true.
            DATA t221 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t221.
            DATA(t222) = t183.
            DATA t223 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t223.
            t221 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t222 i_parent = t223 ).
            t219 = t221.
          ELSE.
            DATA t224 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t224.
            t219 = t224.
          ENDIF.
          t218->current = t219.
          DELETE t218->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        ELSE.
          DATA t225 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t225.
          DATA t226 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t226.
          DATA t227 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t227.
          DATA(t228) = t170.
          t227 = t228->current.
          t226 = t227.
          t225 = t226.
          DATA(t229) = t170.
          DATA t230 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t230.
          DATA(t231) = abap_true.
          IF t231 = abap_true.
            DATA t232 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t232.
            DATA(t233) = t183.
            DATA t234 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t234.
            DATA(t235) = abap_true.
            IF t235 = abap_true.
              DATA(t236) = t225.
              t234 = t236.
            ELSE.
              DATA t237 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t237.
              t234 = t237.
            ENDIF.
            t232 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t233 i_parent = t234 ).
            t230 = t232.
          ELSE.
            DATA t238 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t238.
            t230 = t238.
          ENDIF.
          t229->current = t230.
          DELETE t229->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
          DATA(t239) = t225.
          DATA t240 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t240.
          DATA t241 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t241.
          DATA(t242) = t170.
          t241 = t242->current.
          t240 = t241.
          t239->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t240 ).
        ENDIF.
        DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t243.
        DATA t244 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t244.
        DATA t245 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t245.
        DATA(t246) = t149.
        t245 ?= t246.
        t244 = t245.
        DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t247.
        DATA(t248) = t244.
        t247 = t248->components.
        t243 = t247.
        DATA t249 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t249.
        DATA t250 TYPE REF TO object.
        CLEAR t250.
        DATA(t251) = VALUE i( ).
        DO.
          t243->load( ).
          IF t251 >= lines( t243->items ).
            EXIT.
          ENDIF.
          CLEAR t250.
          READ TABLE t243->items INDEX t251 + 1 INTO t250.
          t251 = t251 + 1.
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t252.
          CLEAR t249.
          IF t250 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t252 ?= t250.
            CLEAR t249.
            IF t252 IS BOUND.
              IF t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                TRY.
                    t249 ?= t252->oval.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
              ENDIF.
              IF t249 IS NOT BOUND.
                IF t252->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t252->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t252->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t252->tag <>
                zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                  DATA t253 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t253.
                  IF t252->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                  ENDIF.
                  TRY.
                      t253 ?= t252->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                  ENDTRY.
                  IF t253->structural( ) <> abap_true.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                  ENDIF.
                ENDIF.
                DATA(t254) = VALUE string( ).
                DATA t255 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t255.
                DATA t256 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t256.
                DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t257.
                t249 = NEW zcl_lnt_istructure_component( view_source = t252 i_name = t254 i_type_9913 = t255 i_as_include = t256 i_suffix = t257 ).
              ENDIF.
            ENDIF.
          ELSE.
            t249 ?= t250.
          ENDIF.
          DATA t258 TYPE REF TO zcl_lnt_lx_identifier.
          CLEAR t258.
          DATA t259 TYPE REF TO zcl_lnt_lx_identifier.
          CLEAR t259.
          DATA t260 TYPE REF TO zcl_lnt_position.
          CLEAR t260.
          DATA t261 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t261.
          DATA t262 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t262.
          DATA(t263) = t1.
          t262 = t263->get_first_token( ).
          t261 = t262.
          DATA t264 TYPE REF TO zcl_lnt_position.
          CLEAR t264.
          DATA(t265) = t261.
          t264 = t265->start.
          t260 = t264.
          DATA(t266) = VALUE string( ).
          DATA(t267) = t249.
          t266 = t267->zlnt_view_read_sr_dae473e680bd( ).
          t259 = NEW zcl_lnt_lx_identifier( i_start = t260 i_str = t266 ).
          t258 = t259.
          DATA t268 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t268.
          DATA t269 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t269.
          DATA(t270) = t258.
          DATA(t271) = VALUE string( ).
          DATA(t272) = t2.
          t271 = t272->filename.
          DATA t273 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t273.
          DATA(t274) = t249.
          t273 = t274->zlnt_view_read_sr_455340cd1e80( ).
          DATA t275 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t275.
          DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t276.
          t269 = NEW zcl_lnt_typed_identifier( i_token = t270 i_filename = t271 i_type_9913 = t273 i_meta = t275 i_value = t276 ).
          t268 = t269.
          DATA t277 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t277.
          DATA t278 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t278.
          DATA(t279) = t2.
          t278 = t279->scope.
          t277 = t278.
          DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t280.
          DATA t281 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t281.
          DATA(t282) = abap_true.
          IF t282 = abap_true.
            DATA(t283) = t268.
            t281 = t283.
          ELSE.
            DATA t284 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t284.
            t281 = t284.
          ENDIF.
          t280 = t281.
          DATA(t285) = VALUE abap_bool( ).
          DATA t286 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t286.
          DATA(t287) = t280.
          t286 = t287.
          DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t288.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          t288 = t289.
          DATA(t290) = VALUE abap_bool( ).
          DATA(t291) = t286.
          IF t291 IS INITIAL.
            t290 = abap_true.
          ENDIF.
          t285 = t290.
          IF t285 = abap_true.
          ELSE.
            DATA(t292) = t277.
            DATA(t293) = VALUE string( ).
            DATA t294 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t294.
            DATA t295 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t295.
            DATA(t296) = t280.
            t295 = t296.
            t294 = t295.
            DATA(t297) = VALUE string( ).
            DATA(t298) = VALUE string( ).
            DATA(t299) = VALUE string( ).
            DATA t300 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t300.
            DATA t301 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t301.
            DATA(t302) = t294.
            t301 = t302->token.
            t300 = t301.
            DATA(t303) = VALUE string( ).
            DATA(t304) = t300.
            t303 = t304->str.
            t299 = t303.
            t298 = t299.
            DATA(t305) = VALUE abap_bool( ).
            DATA(t306) = VALUE string( ).
            DATA(t307) = t298.
            DATA(t308) = 0.
            DATA(t309) = 1.
            DATA(t310) = strlen( t307 ).
            IF t308 < 0.
              t308 = t308 + t310.
              IF t308 < 0.
                t308 = 0.
              ENDIF.
            ENDIF.
            IF t308 > t310 OR t309 <= 0.
              CLEAR t306.
            ELSE.
              IF t309 > t310 - t308.
                t309 = t310 - t308.
              ENDIF.
              t306 = t307+t308(t309).
            ENDIF.
            DATA(t311) = |!|.
            t305 = xsdbool( t306 = t311 ).
            IF t305 = abap_true.
              DATA(t312) = VALUE string( ).
              DATA(t313) = VALUE string( ).
              DATA(t314) = t298.
              t313 = t314.
              DATA(t315) = VALUE string( ).
              DATA(t316) = t313.
              DATA(t317) = 1.
              DATA(t318) = VALUE i( ).
              DATA(t319) = t313.
              DATA(t320) = strlen( t319 ).
              t318 = t320.
              DATA(t321) = strlen( t316 ).
              IF t317 < 0.
                t317 = t317 + t321.
                IF t317 < 0.
                  t317 = 0.
                ENDIF.
              ENDIF.
              IF t317 > t321 OR t318 <= 0.
                CLEAR t315.
              ELSE.
                IF t318 > t321 - t317.
                  t318 = t321 - t317.
                ENDIF.
                t315 = t316+t317(t318).
              ENDIF.
              t312 = t315.
              t298 = t312.
            ENDIF.
            DATA(t322) = t298.
            t297 = t322.
            t293 = t297.
            DATA t323 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t323.
            DATA(t324) = t280.
            t323 = t324.
            t292->add_named_identifier( i_name = t293 i_identifier = t323 ).
          ENDIF.
        ENDDO.
      ENDIF.
    ENDIF.
    DATA t325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t325.
    DATA(t326) = t1.
    DATA(t327) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t325 = t326->find_all_expressions( i_type_9913 = t327 ).
    DATA t328 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t328.
    DATA t329 TYPE REF TO object.
    CLEAR t329.
    DATA(t330) = VALUE i( ).
    DO.
      t325->load( ).
      IF t330 >= lines( t325->items ).
        EXIT.
      ENDIF.
      CLEAR t329.
      READ TABLE t325->items INDEX t330 + 1 INTO t329.
      t330 = t330 + 1.
      DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t331.
      CLEAR t328.
      IF t329 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t331 ?= t329.
        DATA t332 TYPE REF TO object.
        CLEAR t332.
        t332 = t331->as_ref( ).
        t328 ?= t332.
      ELSE.
        t328 ?= t329.
      ENDIF.
      DATA t333 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t333.
      DATA t334 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t334.
      DATA(t335) = abap_true.
      IF t335 = abap_true.
        DATA(t336) = t328.
        t334 = t336.
      ELSE.
        DATA t337 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t337.
        t334 = t337.
      ENDIF.
      DATA(t338) = t2.
      DATA t339 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t339.
      DATA t340 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t340.
      DATA t341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t341.
      DATA t342 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t342.
      t333 = zcl_lnt_sy_source=>run_syntax( i_node = t334 i_input_967e = t338 i_target_type = t339 i_write_reference = t340 i_allow_generic_deference = t341 i_read_reference = t342 ).
    ENDDO.
    DATA t343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t343.
    DATA(t344) = t1.
    DATA(t345) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t343 = t344->find_all_expressions( i_type_9913 = t345 ).
    DATA t346 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t346.
    DATA t347 TYPE REF TO object.
    CLEAR t347.
    DATA(t348) = VALUE i( ).
    DO.
      t343->load( ).
      IF t348 >= lines( t343->items ).
        EXIT.
      ENDIF.
      CLEAR t347.
      READ TABLE t343->items INDEX t348 + 1 INTO t347.
      t348 = t348 + 1.
      DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t349.
      CLEAR t346.
      IF t347 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t349 ?= t347.
        DATA t350 TYPE REF TO object.
        CLEAR t350.
        t350 = t349->as_ref( ).
        t346 ?= t350.
      ELSE.
        t346 ?= t347.
      ENDIF.
      DATA t351 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t351.
      DATA t352 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t352.
      DATA(t353) = abap_true.
      IF t353 = abap_true.
        DATA(t354) = t346.
        t352 = t354.
      ELSE.
        DATA t355 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t355.
        t352 = t355.
      ENDIF.
      DATA(t356) = t2.
      DATA t357 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t357.
      DATA t358 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t358.
      DATA t359 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t359.
      DATA t360 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t360.
      t351 = zcl_lnt_sy_source=>run_syntax( i_node = t352 i_input_967e = t356 i_target_type = t357 i_write_reference = t358 i_allow_generic_deference = t359 i_read_reference = t360 ).
    ENDDO.
    DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t361.
    DATA(t362) = t1.
    DATA(t363) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t361 = t362->find_all_expressions( i_type_9913 = t363 ).
    DATA t364 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t364.
    DATA t365 TYPE REF TO object.
    CLEAR t365.
    DATA(t366) = VALUE i( ).
    DO.
      t361->load( ).
      IF t366 >= lines( t361->items ).
        EXIT.
      ENDIF.
      CLEAR t365.
      READ TABLE t361->items INDEX t366 + 1 INTO t365.
      t366 = t366 + 1.
      DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t367.
      CLEAR t364.
      IF t365 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t367 ?= t365.
        DATA t368 TYPE REF TO object.
        CLEAR t368.
        t368 = t367->as_ref( ).
        t364 ?= t368.
      ELSE.
        t364 ?= t365.
      ENDIF.
      DATA(t369) = t364.
      DATA(t370) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t369 i_input_967e = t370 ).
    ENDDO.
    DATA(t371) = VALUE abap_bool( ).
    DATA(t372) = VALUE string( ).
    DATA t373 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t373.
    DATA(t374) = t2.
    t373 = t374->scope.
    t372 = t373->get_type( ).
    DATA(t375) = |open_sql|.
    t371 = xsdbool( t372 = t375 ).
    IF t371 = abap_true.
      DATA t376 TYPE REF TO zcl_lnt_spaghetti_scope.
      CLEAR t376.
      DATA t377 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t377.
      DATA(t378) = t2.
      t377 = t378->scope.
      DATA t379 TYPE REF TO zcl_lnt_position.
      CLEAR t379.
      DATA t380 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t380.
      DATA t381 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t381.
      DATA(t382) = t1.
      t381 = t382->get_last_token( ).
      t380 = t381.
      DATA t383 TYPE REF TO zcl_lnt_position.
      CLEAR t383.
      DATA(t384) = VALUE f( ).
      DATA t385 TYPE REF TO zcl_lnt_position.
      CLEAR t385.
      DATA t386 TYPE REF TO zcl_lnt_position.
      CLEAR t386.
      DATA(t387) = t380.
      t386 = t387->start.
      t385 = t386.
      DATA(t388) = VALUE f( ).
      DATA(t389) = t385.
      t388 = t389->row.
      t384 = t388.
      DATA t390 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t390.
      DATA t391 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t391.
      DATA t392 TYPE REF TO zcl_lnt_position.
      CLEAR t392.
      DATA t393 TYPE REF TO zcl_lnt_position.
      CLEAR t393.
      DATA(t394) = t380.
      t393 = t394->start.
      t392 = t393.
      DATA t395 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t395.
      DATA(t396) = t392.
      t395 = t396->col.
      t391 = t395.
      DATA(t397) = VALUE f( ).
      DATA(t398) = VALUE i( ).
      DATA(t399) = VALUE string( ).
      DATA(t400) = t380.
      t399 = t400->str.
      DATA(t401) = strlen( t399 ).
      t398 = t401.
      t397 = t398.
      DATA(t402) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t402->has = abap_true.
      t402->value = t397.
      t390 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t391 right = t402 op = `+` ).
      t383 = NEW zcl_lnt_position( i_row = t384 i_col = t390 ).
      t379 = t383.
      t376 = t377->pop( i_end = t379 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d982_9745d7d8d429.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
