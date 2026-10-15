* TS: src/lsp/help.ts:16:1 Help
CLASS zcl_lnt_help DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS find_8f95 IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_position_a3fd TYPE REF TO zcl_lnt_no_position RETURNING VALUE(result) TYPE string.
    CLASS-METHODS dump_ddls IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_ob_data_definition i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE string.
    CLASS-METHODS dump_abap IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_reg_f149 TYPE REF TO zif_lnt_registry i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_position_a3fd TYPE REF TO zcl_lnt_no_position RETURNING VALUE(result) TYPE string.
    CLASS-METHODS dump_info IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE string.
    CLASS-METHODS cursor_information IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_position_a3fd TYPE REF TO zcl_lnt_no_position i_file TYPE REF TO zcl_lnt_abap_file RETURNING
    VALUE(result) TYPE string.
    CLASS-METHODS full_path IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_88a44908.
    CLASS-METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_node i_parents TYPE string i_search_b3ca TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_88a44908.
    CLASS-METHODS file_information IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE string.
    CLASS-METHODS escape IMPORTING i_str TYPE string RETURNING VALUE(result) TYPE string.
    CLASS-METHODS link_to_statement IMPORTING i_statement TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE string.
    CLASS-METHODS link_to_structure IMPORTING i_structure TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE string.
    CLASS-METHODS link_to_expression IMPORTING i_expression TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE string.
    CLASS-METHODS output_nodes IMPORTING i_nodes_5198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE string.
    CLASS-METHODS tokens IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE string.
    CLASS-METHODS build_statements IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE string.
    CLASS-METHODS build_structure IMPORTING i_nodes_5198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE string.
    CLASS-METHODS dump_files IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_help IMPLEMENTATION.
  METHOD find_8f95.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_text_document.
    DATA(t3) = i_position_a3fd.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    DATA t7 TYPE string.
    DATA(t8) = t2.
    t7 = t8->zlnt_view_read_no_0041136eb871( ).
    t5 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t6 i_filename = t7 ).
    t4 = t5.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_abap_file.
    DATA(t11) = t4.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t10.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t14 = xsdbool( t15 = abap_false ).
    t9 = t14.
    IF t9 = abap_true.
      DATA t17 TYPE string.
      DATA t18 TYPE REF TO zcl_lnt_abap_file.
      DATA(t19) = t4.
      t18 = t19.
      DATA(t20) = t1.
      DATA(t21) = t2.
      DATA(t22) = t3.
      t17 = zcl_lnt_help=>dump_abap( i_file = t18 i_reg_f149 = t20 i_text_document = t21 i_position_a3fd = t22 ).
      result = t17.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zif_lnt_file.
    DATA t24 TYPE REF TO zif_lnt_file.
    DATA(t25) = t1.
    DATA t26 TYPE string.
    DATA(t27) = t2.
    t26 = t27->zlnt_view_read_no_0041136eb871( ).
    t24 = t25->get_file_by_name( i_filename = t26 ).
    t23 = t24.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zif_lnt_file.
    DATA(t30) = t23.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA t35 TYPE string.
      DATA(t36) = |File not found: |.
      DATA t37 TYPE string.
      DATA(t38) = t2.
      t37 = t38->zlnt_view_read_no_0041136eb871( ).
      DATA(t39) = strlen( t36 ).
      t35 = |{ t36 }{ t37 }|.
      result = t35.
      RETURN.
    ENDIF.
    DATA t40 TYPE REF TO zif_lnt_object.
    DATA t41 TYPE REF TO zif_lnt_object.
    DATA t42 TYPE REF TO zif_lnt_object.
    DATA(t43) = t1.
    DATA t44 TYPE REF TO zif_lnt_file.
    DATA(t45) = t23.
    t44 = t45.
    t42 = t43->find_object_for_file( i_file = t44 ).
    t41 ?= t42.
    t40 = t41.
    DATA t46 TYPE abap_bool.
    DATA(t47) = t40.
    t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_ob_data_definition ).
    IF t46 = abap_true.
      DATA t48 TYPE string.
      DATA t49 TYPE REF TO zcl_lnt_ob_data_definition.
      DATA(t50) = t40.
      DATA t51 TYPE REF TO object.
      t51 = t50.
      t49 ?= t51.
      DATA(t52) = t1.
      t48 = zcl_lnt_help=>dump_ddls( i_obj_1ed0 = t49 i_reg_f149 = t52 ).
      result = t48.
      RETURN.
    ENDIF.
    DATA t53 TYPE string.
    DATA(t54) = |Unhandled object type: |.
    DATA t55 TYPE string.
    DATA(t56) = t40.
    t55 = t56->get_type( ).
    DATA(t57) = strlen( t54 ).
    t53 = |{ t54 }{ t55 }|.
    result = t53.

  ENDMETHOD.

  METHOD dump_ddls.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_reg_f149.
    DATA(t3) = VALUE string( ).
    DATA(t4) = ||.
    t3 = t4.
    DATA(t5) = VALUE string( ).
    DATA(t6) = t3.
    DATA(t7) = VALUE string( ).
    DATA(t8) = VALUE string( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA(t11) = |<h1>|.
    DATA(t12) = VALUE string( ).
    DATA t13 TYPE REF TO zcl_lnt_ob_data_definition.
    CLEAR t13.
    DATA(t14) = t1.
    t13 = t14.
    DATA(t15) = |DDLS|.
    t12 = t15.
    DATA(t16) = strlen( t11 ).
    t10 = |{ t11 }{ t12 }|.
    DATA(t17) = | |.
    DATA(t18) = strlen( t10 ).
    t9 = |{ t10 }{ t17 }|.
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE REF TO zcl_lnt_abstract_object.
    CLEAR t20.
    DATA(t21) = t1.
    t20 = t21.
    DATA(t22) = VALUE string( ).
    DATA(t23) = t20.
    t22 = t23->name.
    t19 = t22.
    DATA(t24) = strlen( t9 ).
    t8 = |{ t9 }{ t19 }|.
    DATA(t25) = |</h1>\n|.
    DATA(t26) = strlen( t8 ).
    t7 = |{ t8 }{ t25 }|.
    DATA(t27) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    t3 = t5.
    DATA(t28) = VALUE string( ).
    DATA(t29) = t3.
    DATA(t30) = VALUE string( ).
    DATA(t31) = VALUE string( ).
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA t34 TYPE REF TO zcl_lnt_ob_data_definition.
    CLEAR t34.
    DATA(t35) = t1.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t37.
    DATA(t38) = t34.
    t37 = t38->pr_in_src_obj_dt_dfn_ts_dt_dfn( ).
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_parsed_data_definition.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_parsed_data_definition.
    CLEAR t41.
    DATA(t42) = t34.
    t41 = t42->parsed_data.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = t40.
    IF t45 IS INITIAL.
      t44 = abap_true.
    ENDIF.
    IF t44 = abap_true.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      t43 = t46.
    ELSE.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA t48 TYPE REF TO zcl_lnt_parsed_data_definition.
      CLEAR t48.
      DATA(t49) = t40.
      t48 = t49.
      t47 = t48->description.
      t43 = t47.
    ENDIF.
    t39 = t43.
    t36 = t39.
    t33 = t36.
    t32 = t33.
    DATA(t50) = VALUE string( ).
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = t32.
    IF t52 IS INITIAL.
      t51 = abap_true.
    ELSEIF t52->has = abap_false.
      t51 = abap_true.
    ENDIF.
    IF t51 = abap_true.
      DATA(t53) = |undefined|.
      t50 = t53.
    ELSE.
      DATA(t54) = VALUE string( ).
      DATA(t55) = t32.
      t54 = t55->value.
      t50 = t54.
    ENDIF.
    t31 = t50.
    DATA(t56) = |\n|.
    DATA(t57) = strlen( t31 ).
    t30 = |{ t31 }{ t56 }|.
    DATA(t58) = strlen( t29 ).
    t28 = |{ t29 }{ t30 }|.
    t3 = t28.
    DATA(t59) = VALUE string( ).
    DATA(t60) = t3.
    DATA(t61) = VALUE string( ).
    DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t64.
    CREATE OBJECT t64.
    t63 = t64.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t65.
    DATA t66 TYPE REF TO zcl_lnt_abstract_object.
    CLEAR t66.
    DATA(t67) = t1.
    t66 = t67.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    DATA(t69) = t66.
    t68 = t69->old.
    t65 = t68.
    DATA t70 TYPE REF TO zcl_lnt_issue.
    CLEAR t70.
    DATA t71 TYPE REF TO object.
    CLEAR t71.
    DATA(t72) = VALUE i( ).
    DO.
      t65->load( ).
      IF t72 >= lines( t65->items ).
        EXIT.
      ENDIF.
      CLEAR t71.
      READ TABLE t65->items INDEX t72 + 1 INTO t71.
      t72 = t72 + 1.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      CLEAR t70.
      IF t71 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t73 ?= t71.
        DATA t74 TYPE REF TO object.
        CLEAR t74.
        t74 = t73->as_ref( ).
        t70 ?= t74.
      ELSE.
        t70 ?= t71.
      ENDIF.
      DATA(t75) = t63.
      DATA(t76) = VALUE string( ).
      DATA t77 TYPE REF TO zcl_lnt_issue.
      CLEAR t77.
      DATA(t78) = t70.
      t77 = t78.
      DATA(t79) = VALUE string( ).
      DATA t80 TYPE REF TO zcl_lnt_iissue_data.
      CLEAR t80.
      DATA(t81) = t77.
      t80 = t81->data_56cc.
      t79 = t80->message_25cb.
      t76 = t79.
      t75->load( ).
      APPEND t76 TO t75->items.
      t75->save( ).
    ENDDO.
    DATA(t82) = t63.
    t62 = t82.
    DATA(t83) = |<br>\n|.
    DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t84->has = abap_true.
    t84->value = t83.
    t61 = t62->join( p0 = t84 ).
    DATA(t85) = strlen( t60 ).
    t59 = |{ t60 }{ t61 }|.
    t3 = t59.
    DATA(t86) = VALUE string( ).
    DATA(t87) = t3.
    DATA(t88) = |<hr>\n|.
    DATA(t89) = strlen( t87 ).
    t86 = |{ t87 }{ t88 }|.
    t3 = t86.
    DATA t90 TYPE REF TO zcl_lnt_parsed_data_definition.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_parsed_data_definition.
    CLEAR t91.
    DATA t92 TYPE REF TO zcl_lnt_ob_data_definition.
    CLEAR t92.
    DATA(t93) = t1.
    t92 = t93.
    DATA t94 TYPE REF TO zcl_lnt_parsed_data_definition.
    CLEAR t94.
    DATA(t95) = t92.
    t94 = t95->parsed_data.
    t91 = t94.
    t90 = t91.
    DATA(t96) = VALUE abap_bool( ).
    DATA t97 TYPE REF TO zcl_lnt_parsed_data_definition.
    CLEAR t97.
    DATA(t98) = t90.
    t97 = t98.
    DATA(t99) = VALUE abap_bool( ).
    DATA(t100) = VALUE abap_bool( ).
    DATA(t101) = t97.
    IF t101 IS INITIAL.
      t100 = abap_true.
    ENDIF.
    IF t100 = abap_true.
      DATA(t102) = abap_true.
      t99 = t102.
    ELSE.
      DATA(t103) = VALUE abap_bool( ).
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      DATA t105 TYPE REF TO zcl_lnt_parsed_data_definition.
      CLEAR t105.
      DATA(t106) = t97.
      t105 = t106.
      CLEAR t104.
      IF t105 IS BOUND.
        DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t107.
        DATA t108 TYPE REF TO object.
        CLEAR t108.
        CLEAR t107.
        t108 = t105.
        TRY.
            t104 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS NOT BOUND.
          TRY.
              t107 ?= t105.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t107 IS BOUND.
            t104 = t107->source( ).
          ENDIF.
          IF t104 IS NOT BOUND.
            CREATE OBJECT t104.
            t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t104->oval = t105.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t109) = |tree|.
      t103 = t104->delete( p0 = t109 ).
      t99 = t103.
    ENDIF.
    t96 = t99.
    DATA(t110) = VALUE string( ).
    DATA(t111) = t3.
    DATA(t112) = VALUE string( ).
    DATA(t113) = VALUE string( ).
    DATA(t114) = |<pre>|.
    DATA(t115) = VALUE string( ).
    DATA(t116) = VALUE string( ).
    DATA(t117) = t90.
    DATA t118 TYPE REF TO zlnt_runtime_conf_5b63794eccef.
    CLEAR t118.
    CREATE OBJECT t118.
    t116 = t118->zlnt_json_write_s_402e6e8e9b2d( t117 ).
    IF t116 IS INITIAL.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    DATA(t119) = |  |.
    t115 = zlnt_runtime_json_5744959ea211=>format( p0 = t116 p1 = t119 ).
    DATA(t120) = strlen( t114 ).
    t113 = |{ t114 }{ t115 }|.
    DATA(t121) = |</pre>\n|.
    DATA(t122) = strlen( t113 ).
    t112 = |{ t113 }{ t121 }|.
    DATA(t123) = strlen( t111 ).
    t110 = |{ t111 }{ t112 }|.
    t3 = t110.
    DATA(t124) = VALUE string( ).
    DATA(t125) = t3.
    DATA(t126) = |<hr>\n|.
    DATA(t127) = strlen( t125 ).
    t124 = |{ t125 }{ t126 }|.
    t3 = t124.
    DATA(t128) = VALUE string( ).
    DATA(t129) = t3.
    DATA(t130) = VALUE string( ).
    DATA(t131) = VALUE string( ).
    DATA(t132) = |<pre>|.
    DATA(t133) = VALUE string( ).
    DATA t134 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t134.
    DATA(t135) = t1.
    DATA(t136) = t2.
    DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t138.
    t134 = t135->parse_type( i_reg_f149 = t136 i_data_element = t137 i_description = t138 ).
    DATA(t139) = CONV f( 0 ).
    t133 = t134->to_text( i_level = t139 ).
    DATA(t140) = strlen( t132 ).
    t131 = |{ t132 }{ t133 }|.
    DATA(t141) = |</pre>\n|.
    DATA(t142) = strlen( t131 ).
    t130 = |{ t131 }{ t141 }|.
    DATA(t143) = strlen( t129 ).
    t128 = |{ t129 }{ t130 }|.
    t3 = t128.
    DATA(t144) = VALUE string( ).
    DATA(t145) = t3.
    DATA(t146) = |<hr>\n|.
    DATA(t147) = strlen( t145 ).
    t144 = |{ t145 }{ t146 }|.
    t3 = t144.
    DATA t148 TYPE REF TO zif_lnt_file.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_file.
    CLEAR t149.
    DATA(t150) = t1.
    t149 = t150->find_source_file( ).
    t148 = t149.
    DATA(t151) = VALUE abap_bool( ).
    DATA(t152) = t148.
    t151 = xsdbool( t152 IS BOUND ).
    IF t151 = abap_true.
      DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t153.
      DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t154.
      DATA t155 TYPE REF TO zif_lnt_file.
      CLEAR t155.
      DATA(t156) = t148.
      t155 = t156.
      t154 = zcl_lnt_cds_lexer=>run( i_file = t155 ).
      t153 = t154.
      DATA(t157) = VALUE string( ).
      DATA(t158) = t3.
      DATA(t159) = |<h3>Tokens</h3>\n<pre>\n|.
      DATA(t160) = strlen( t158 ).
      t157 = |{ t158 }{ t159 }|.
      t3 = t157.
      DATA(t161) = t153.
      DATA t162 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t162.
      DATA t163 TYPE REF TO object.
      CLEAR t163.
      DATA(t164) = VALUE i( ).
      DO.
        t161->load( ).
        IF t164 >= lines( t161->items ).
          EXIT.
        ENDIF.
        CLEAR t163.
        READ TABLE t161->items INDEX t164 + 1 INTO t163.
        t164 = t164 + 1.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        CLEAR t162.
        IF t163 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t165 ?= t163.
          DATA t166 TYPE REF TO object.
          CLEAR t166.
          t166 = t165->as_ref( ).
          t162 ?= t166.
        ELSE.
          t162 ?= t163.
        ENDIF.
        DATA(t167) = VALUE string( ).
        DATA(t168) = t3.
        DATA(t169) = VALUE string( ).
        DATA(t170) = VALUE string( ).
        DATA(t171) = VALUE string( ).
        DATA(t172) = VALUE string( ).
        DATA(t173) = t162.
        DATA t174 TYPE REF TO zlnt_runtime_conf_5b63794eccef.
        CLEAR t174.
        CREATE OBJECT t174.
        t172 = t174->zlnt_json_write_s_bf7dc546f7f6( t173 ).
        IF t172 IS INITIAL.
          RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
        ENDIF.
        DATA(t175) = | |.
        DATA(t176) = strlen( t172 ).
        t171 = |{ t172 }{ t175 }|.
        DATA(t177) = VALUE string( ).
        DATA t178 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t178.
        DATA(t179) = t162.
        t178 = t179->zlnt_builtin_clas_3f891b097658( ).
        t177 = t178->name.
        DATA(t180) = strlen( t171 ).
        t170 = |{ t171 }{ t177 }|.
        DATA(t181) = |\n|.
        DATA(t182) = strlen( t170 ).
        t169 = |{ t170 }{ t181 }|.
        DATA(t183) = strlen( t168 ).
        t167 = |{ t168 }{ t169 }|.
        t3 = t167.
      ENDDO.
      DATA(t184) = VALUE string( ).
      DATA(t185) = t3.
      DATA(t186) = |</pre>\n|.
      DATA(t187) = strlen( t185 ).
      t184 = |{ t185 }{ t186 }|.
      t3 = t184.
    ENDIF.
    DATA(t188) = t3.
    result = t188.

  ENDMETHOD.

  METHOD dump_abap.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA(t2) = i_reg_f149.
    DATA(t3) = i_text_document.
    DATA(t4) = i_position_a3fd.
    DATA t5 TYPE string.
    DATA(t6) = ||.
    t5 = t6.
    DATA(t7) = VALUE string( ).
    DATA(t8) = VALUE string( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA t11 TYPE string.
    DATA t12 TYPE string.
    DATA t13 TYPE string.
    DATA(t14) = |\n    <a href="#_tokens" rel="no-refresh">Tokens</a> \|\n    <a|.
    t14 = t14 && | href="#_statements" rel="no-refresh">Statements</a> \|\n    <|.
    t14 = t14 && |a href="#_structure" rel="no-refresh">Structure</a> \|\n    <a|.
    t14 = t14 && | href="#_files" rel="no-refresh">Files</a> \|\n    <a href="#_|.
    t14 = t14 && |info" rel="no-refresh">Info Dump</a>\n    <hr>\n    |.
    DATA(t15) = |<tt>|.
    DATA(t16) = strlen( t14 ).
    t13 = |{ t14 }{ t15 }|.
    DATA t17 TYPE string.
    DATA(t18) = t3.
    t17 = t18->zlnt_view_read_no_0041136eb871( ).
    DATA(t19) = strlen( t13 ).
    t12 = |{ t13 }{ t17 }|.
    DATA(t20) = | (|.
    DATA(t21) = strlen( t12 ).
    t11 = |{ t12 }{ t20 }|.
    DATA(t22) = VALUE string( ).
    DATA t23 TYPE f.
    DATA t24 TYPE f.
    DATA(t25) = t4.
    t24 = t25->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t26) = CONV f( 1 ).
    t23 = t24 + t26.
    IF t23 <> trunc( t23 ) OR t23 > range_safe_integer OR t23 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t27) = CONV int8( t23 ).
    t22 = |{ t27 }|.
    DATA(t28) = strlen( t11 ).
    t10 = |{ t11 }{ t22 }|.
    DATA(t29) = |, |.
    DATA(t30) = strlen( t10 ).
    t9 = |{ t10 }{ t29 }|.
    DATA t31 TYPE string.
    DATA t32 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t34) = t4.
    t33 = t34->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t35) = CONV f( 1 ).
    DATA(t36) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t36->has = abap_true.
    t36->value = t35.
    t32 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t33 right = t36 op = `+` ).
    t31 = zlnt_runtime_numb_290eb04a9758=>text( t32 ).
    DATA(t37) = strlen( t9 ).
    t8 = |{ t9 }{ t31 }|.
    DATA(t38) = |)</tt>|.
    DATA(t39) = strlen( t8 ).
    t7 = |{ t8 }{ t38 }|.
    t5 = t7.
    DATA t40 TYPE string.
    DATA(t41) = t5.
    DATA(t42) = |<hr>|.
    DATA(t43) = strlen( t41 ).
    t40 = |{ t41 }{ t42 }|.
    t5 = t40.
    DATA t44 TYPE string.
    DATA(t45) = t5.
    DATA t46 TYPE string.
    DATA(t47) = t2.
    DATA(t48) = t3.
    DATA(t49) = t4.
    DATA(t50) = t1.
    t46 = zcl_lnt_help=>cursor_information( i_reg_f149 = t47 i_text_document = t48 i_position_a3fd = t49 i_file = t50 ).
    DATA(t51) = strlen( t45 ).
    t44 = |{ t45 }{ t46 }|.
    t5 = t44.
    DATA t52 TYPE string.
    DATA(t53) = t5.
    DATA t54 TYPE string.
    DATA(t55) = t1.
    t54 = zcl_lnt_help=>file_information( i_file = t55 ).
    DATA(t56) = strlen( t53 ).
    t52 = |{ t53 }{ t54 }|.
    t5 = t52.
    DATA t57 TYPE string.
    DATA(t58) = t5.
    DATA(t59) = |<hr>|.
    DATA(t60) = strlen( t58 ).
    t57 = |{ t58 }{ t59 }|.
    t5 = t57.
    DATA t61 TYPE string.
    DATA(t62) = t5.
    DATA t63 TYPE string.
    DATA(t64) = t2.
    t63 = zcl_lnt_help=>dump_files( i_reg_f149 = t64 ).
    DATA(t65) = strlen( t62 ).
    t61 = |{ t62 }{ t63 }|.
    t5 = t61.
    DATA t66 TYPE string.
    DATA(t67) = t5.
    DATA(t68) = |<hr>|.
    DATA(t69) = strlen( t67 ).
    t66 = |{ t67 }{ t68 }|.
    t5 = t66.
    DATA t70 TYPE string.
    DATA(t71) = t5.
    DATA t72 TYPE string.
    DATA(t73) = t1.
    t72 = zcl_lnt_help=>dump_info( i_file = t73 ).
    DATA(t74) = strlen( t71 ).
    t70 = |{ t71 }{ t72 }|.
    t5 = t70.
    DATA(t75) = t5.
    result = t75.

  ENDMETHOD.

  METHOD dump_info.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zif_lnt_abap_file_information.
    DATA t3 TYPE REF TO zif_lnt_abap_file_information.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t7) = t4.
    t6 = t7->info.
    t3 = t6.
    t2 = t3.
    DATA t8 TYPE REF TO zcl_lnt_shape_f5fbbc32.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_shape_f5fbbc32.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t14) = t2.
      t13 = t14->list_class_definitions( ).
      t11 = t13.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t15.
      t11 = t15.
    ENDIF.
    t10 = t11.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t20) = t2.
      t19 = t20->list_class_implementations( ).
      t17 = t19.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      t17 = t21.
    ENDIF.
    t16 = t17.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t26) = t2.
      t25 = t26->list_interface_definitions( ).
      t23 = t25.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    t22 = t23.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = t2.
      t31 = t32->list_form_definitions( ).
      t29 = t31.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    t9 = NEW zcl_lnt_shape_f5fbbc32( i_class_definitions = t10 i_class_implementations = t16 i_interface_definitions = t22 i_forms = t28 ).
    CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
    t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `classDefinitions` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `classImplementations` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaceDefinitions` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `forms` p1 = t37 ).
    ENDIF.
    CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
    t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t38) = |classDefinitions|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |classImplementations|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    DATA(t42) = |interfaceDefinitions|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = |forms|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    t8 = t9.
    DATA(t46) = VALUE string( ).
    DATA(t47) = VALUE string( ).
    DATA t48 TYPE string.
    DATA(t49) = t8.
    DATA t50 TYPE REF TO zlnt_runtime_conf_5b63794eccef.
    CREATE OBJECT t50.
    t48 = t50->zlnt_json_write_s_8fd05c1f540c( t49 ).
    IF t48 IS INITIAL.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    DATA(t51) = |  |.
    t47 = zlnt_runtime_json_5744959ea211=>format( p0 = t48 p1 = t51 ).
    t46 = t47.
    DATA t52 TYPE string.
    DATA t53 TYPE string.
    DATA(t54) = |<h3 id="_info">Info Dump</h3><pre>|.
    DATA(t55) = t46.
    DATA(t56) = strlen( t54 ).
    t53 = |{ t54 }{ t55 }|.
    DATA(t57) = |</pre>|.
    DATA(t58) = strlen( t53 ).
    t52 = |{ t53 }{ t57 }|.
    result = t52.

  ENDMETHOD.

  METHOD cursor_information.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_text_document.
    DATA(t3) = i_position_a3fd.
    DATA(t4) = i_file.
    DATA(t5) = VALUE string( ).
    DATA(t6) = ||.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_icursor_data.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_icursor_data.
    CLEAR t8.
    DATA(t9) = t1.
    DATA t10 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    CLEAR t11.
    DATA(t12) = t2.
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_no_position.
    CLEAR t13.
    DATA(t14) = t3.
    t13 = t14.
    t10 = NEW zcl_lnt_itxt_dcmnt_pstn_prms( i_text_document = t11 i_position_a3fd = t13 ).
    CREATE OBJECT t10->zlnt_view_ownkeys_b0e8086400eb.
    t10->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t10->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t15 ).
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF t10->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t16 ).
    ENDIF.
    CREATE OBJECT t10->zlnt_json_ownkeys_70e5fd461788.
    t10->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t17) = |textDocument|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF t10->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    ENDIF.
    DATA(t19) = |position|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF t10->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    t8 = zcl_lnt_lsp_utils=>find_cursor( i_reg_f149 = t9 i_pos = t10 ).
    t7 = t8.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zcl_lnt_icursor_data.
    CLEAR t22.
    DATA(t23) = t7.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t22.
    IF t28 IS INITIAL.
      t27 = abap_true.
    ENDIF.
    t26 = xsdbool( t27 = abap_false ).
    t21 = t26.
    IF t21 = abap_true.
      DATA(t29) = VALUE string( ).
      DATA(t30) = VALUE string( ).
      DATA(t31) = VALUE string( ).
      DATA(t32) = VALUE string( ).
      DATA(t33) = VALUE string( ).
      DATA(t34) = VALUE string( ).
      DATA(t35) = |Statement: |.
      DATA(t36) = VALUE string( ).
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      DATA t38 TYPE REF TO zif_lnt_statement.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_icursor_data.
      CLEAR t40.
      DATA(t41) = t7.
      t40 = t41.
      t39 = t40->snode.
      t38 = t39->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      CLEAR t37.
      IF t38 IS BOUND.
        DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t42.
        DATA t43 TYPE REF TO object.
        CLEAR t43.
        CLEAR t42.
        t43 = t38.
        TRY.
            t37 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS NOT BOUND.
          TRY.
              t42 ?= t38.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t42 IS BOUND.
            t37 = t42->source( ).
          ENDIF.
          IF t37 IS NOT BOUND.
            CREATE OBJECT t37.
            t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t37->oval = t38.
          ENDIF.
        ENDIF.
      ENDIF.
      t36 = zcl_lnt_help=>link_to_statement( i_statement = t37 ).
      DATA(t44) = strlen( t35 ).
      t34 = |{ t35 }{ t36 }|.
      DATA(t45) = |<br>\n|.
      DATA(t46) = strlen( t34 ).
      t33 = |{ t34 }{ t45 }|.
      DATA(t47) = |Token: |.
      DATA(t48) = strlen( t33 ).
      t32 = |{ t33 }{ t47 }|.
      DATA(t49) = VALUE string( ).
      DATA t50 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t50.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t51.
      DATA t52 TYPE REF TO zcl_lnt_icursor_data.
      CLEAR t52.
      DATA(t53) = t7.
      t52 = t53.
      t51 = t52->token.
      t50 = t51->zlnt_builtin_clas_3f891b097658( ).
      t49 = t50->name.
      DATA(t54) = strlen( t32 ).
      t31 = |{ t32 }{ t49 }|.
      DATA(t55) = |<br>\n|.
      DATA(t56) = strlen( t31 ).
      t30 = |{ t31 }{ t55 }|.
      DATA(t57) = VALUE string( ).
      DATA t58 TYPE REF TO zcl_lnt_shape_88a44908.
      CLEAR t58.
      DATA(t59) = t4.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t60.
      DATA t61 TYPE REF TO zcl_lnt_icursor_data.
      CLEAR t61.
      DATA(t62) = t7.
      t61 = t62.
      t60 = t61->token.
      t58 = zcl_lnt_help=>full_path( i_file = t59 i_token = t60 ).
      t57 = t58->value.
      DATA(t63) = strlen( t30 ).
      t29 = |{ t30 }{ t57 }|.
      t5 = t29.
    ELSE.
      DATA(t64) = |No token found at cursor position|.
      t5 = t64.
    ENDIF.
    DATA t65 TYPE REF TO zif_lnt_object.
    CLEAR t65.
    DATA t66 TYPE REF TO zif_lnt_object.
    CLEAR t66.
    DATA(t67) = t1.
    DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t68.
    DATA t69 TYPE REF TO zcl_lnt_abstract_file.
    CLEAR t69.
    DATA(t70) = t4.
    t69 = t70.
    DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t73.
    DATA(t74) = VALUE string( ).
    DATA(t75) = t69.
    t74 = t75->base_name( ).
    DATA(t76) = |.|.
    DATA(t77) = strlen( t74 ).
    DATA(t78) = VALUE i( ).
    DATA(t79) = VALUE i( ).
    DATA(t80) = VALUE i( ).
    DATA(t81) = VALUE i( ).
    DATA(t82) = VALUE string( ).
    CREATE OBJECT t73.
    t81 = strlen( t76 ).
    t78 = 0.
    IF t81 = 0.
      WHILE t78 < t77.
        t82 = t74+t78(1).
        APPEND t82 TO t73->items.
        t78 = t78 + 1.
      ENDWHILE.
    ELSE.
      WHILE t78 <= t77.
        FIND FIRST OCCURRENCE OF t76 IN SECTION OFFSET t78 OF t74 MATCH OFFSET t79.
        IF sy-subrc = 0.
          t80 = t79 - t78.
        ELSE.
          t79 = -1.
          t80 = t77 - t78.
        ENDIF.
        CLEAR t82.
        IF t80 > 0.
          t82 = t74+t78(t80).
        ENDIF.
        APPEND t82 TO t73->items.
        IF t79 < 0.
          EXIT.
        ENDIF.
        t78 = t79 + t81.
      ENDWHILE.
    ENDIF.
    t72 = t73.
    DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t85.
    DATA(t86) = t72.
    DATA(t87) = 1.
    t85 = t86->get( p0 = t87 ).
    t84 = t85.
    DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t88.
    DATA(t89) = VALUE abap_bool( ).
    DATA(t90) = t84.
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
      DATA(t94) = t84.
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
    t83 = t88.
    t71 = t83.
    t68 = t71.
    DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t97.
    DATA(t98) = abap_true.
    IF t98 = abap_true.
      DATA(t99) = VALUE string( ).
      DATA t100 TYPE REF TO zcl_lnt_abstract_file.
      CLEAR t100.
      DATA(t101) = t4.
      t100 = t101.
      DATA(t102) = VALUE string( ).
      DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t103.
      DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t104.
      DATA(t105) = VALUE string( ).
      DATA(t106) = t100.
      t105 = t106->base_name( ).
      DATA(t107) = |.|.
      DATA(t108) = strlen( t105 ).
      DATA(t109) = VALUE i( ).
      DATA(t110) = VALUE i( ).
      DATA(t111) = VALUE i( ).
      DATA(t112) = VALUE i( ).
      DATA(t113) = VALUE string( ).
      CREATE OBJECT t104.
      t112 = strlen( t107 ).
      t109 = 0.
      IF t112 = 0.
        WHILE t109 < t108.
          t113 = t105+t109(1).
          APPEND t113 TO t104->items.
          t109 = t109 + 1.
        ENDWHILE.
      ELSE.
        WHILE t109 <= t108.
          FIND FIRST OCCURRENCE OF t107 IN SECTION OFFSET t109 OF t105 MATCH OFFSET t110.
          IF sy-subrc = 0.
            t111 = t110 - t109.
          ELSE.
            t110 = -1.
            t111 = t108 - t109.
          ENDIF.
          CLEAR t113.
          IF t111 > 0.
            t113 = t105+t109(t111).
          ENDIF.
          APPEND t113 TO t104->items.
          IF t110 < 0.
            EXIT.
          ENDIF.
          t109 = t110 + t112.
        ENDWHILE.
      ENDIF.
      t103 = t104.
      DATA(t114) = t103.
      DATA(t115) = 0.
      DATA(t116) = VALUE string( ).
      DATA(t117) = VALUE string( ).
      DATA(t118) = t103.
      IF t118->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t118->load( ).
      CLEAR t117.
      READ TABLE t118->items INDEX 1 INTO t117.
      DATA t119 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t119.
      DATA(t120) = |%23|.
      DATA(t121) = |g|.
      CREATE OBJECT t119 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t120 flags = t121 checked = abap_true.
      DATA(t122) = |#|.
      DATA(t123) = strlen( t117 ).
      t116 = t119->replace( p0 = t117 p1 = t122 ).
      t114->put( p0 = t115 p1 = t116 ).
      DATA(t124) = t103.
      DATA(t125) = 0.
      DATA(t126) = VALUE string( ).
      DATA(t127) = VALUE string( ).
      DATA(t128) = t103.
      IF t128->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t128->load( ).
      CLEAR t127.
      READ TABLE t128->items INDEX 1 INTO t127.
      DATA t129 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t129.
      DATA(t130) = |%3e|.
      DATA(t131) = |g|.
      CREATE OBJECT t129 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t130 flags = t131 checked = abap_true.
      DATA(t132) = |>|.
      DATA(t133) = strlen( t127 ).
      t126 = t129->replace( p0 = t127 p1 = t132 ).
      t124->put( p0 = t125 p1 = t126 ).
      DATA(t134) = t103.
      DATA(t135) = 0.
      DATA(t136) = VALUE string( ).
      DATA(t137) = VALUE string( ).
      DATA(t138) = t103.
      IF t138->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t138->load( ).
      CLEAR t137.
      READ TABLE t138->items INDEX 1 INTO t137.
      DATA t139 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t139.
      DATA(t140) = |%3c|.
      DATA(t141) = |g|.
      CREATE OBJECT t139 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t140 flags = t141 checked = abap_true.
      DATA(t142) = |<|.
      DATA(t143) = strlen( t137 ).
      t136 = t139->replace( p0 = t137 p1 = t142 ).
      t134->put( p0 = t135 p1 = t136 ).
      DATA(t144) = t103.
      DATA(t145) = 0.
      DATA(t146) = VALUE string( ).
      DATA(t147) = VALUE string( ).
      DATA(t148) = VALUE string( ).
      DATA(t149) = t103.
      IF t149->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t149->load( ).
      CLEAR t148.
      READ TABLE t149->items INDEX 1 INTO t148.
      DATA(t150) = strlen( t148 ).
      t147 = t148.
      IF t147 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t147 TO UPPER CASE.
      ELSE.
        t147 = zlnt_runtime_uppe_91169605024d=>full( t147 ).
      ENDIF.
      DATA t151 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t151.
      DATA(t152) = |#|.
      DATA(t153) = |g|.
      CREATE OBJECT t151 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t152 flags = t153 checked = abap_true.
      DATA(t154) = |/|.
      DATA(t155) = strlen( t147 ).
      t146 = t151->replace( p0 = t147 p1 = t154 ).
      t144->put( p0 = t145 p1 = t146 ).
      DATA(t156) = t103.
      DATA(t157) = 0.
      DATA(t158) = VALUE string( ).
      DATA(t159) = VALUE string( ).
      DATA(t160) = t103.
      IF t160->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t160->load( ).
      CLEAR t159.
      READ TABLE t160->items INDEX 1 INTO t159.
      DATA(t161) = |(|.
      DATA(t162) = |/|.
      DATA(t163) = strlen( t159 ).
      t158 = t159.
      REPLACE ALL OCCURRENCES OF t161 IN t158 WITH t162.
      t156->put( p0 = t157 p1 = t158 ).
      DATA(t164) = t103.
      DATA(t165) = 0.
      DATA(t166) = VALUE string( ).
      DATA(t167) = VALUE string( ).
      DATA(t168) = t103.
      IF t168->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t168->load( ).
      CLEAR t167.
      READ TABLE t168->items INDEX 1 INTO t167.
      DATA(t169) = |)|.
      DATA(t170) = |/|.
      DATA(t171) = strlen( t167 ).
      t166 = t167.
      REPLACE ALL OCCURRENCES OF t169 IN t166 WITH t170.
      t164->put( p0 = t165 p1 = t166 ).
      DATA(t172) = VALUE string( ).
      DATA(t173) = t103.
      IF t173->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t173->load( ).
      CLEAR t172.
      READ TABLE t173->items INDEX 1 INTO t172.
      t102 = t172.
      t99 = t102.
      DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t174->has = abap_true.
      t174->value = t99.
      t97 = t174.
    ELSE.
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t175.
      t97 = t175.
    ENDIF.
    t66 = t67->get_object( i_type_9913 = t68 i_name = t97 ).
    t65 = t66.
    DATA(t176) = VALUE abap_bool( ).
    DATA(t177) = t65.
    t176 = xsdbool( t177 IS BOUND AND t177 IS INSTANCE OF zcl_lnt_abap_object ).
    IF t176 = abap_true.
      DATA t178 TYPE REF TO zif_lnt_spaghetti_scope.
      CLEAR t178.
      DATA t179 TYPE REF TO zif_lnt_spaghetti_scope.
      CLEAR t179.
      DATA t180 TYPE REF TO zcl_lnt_isyntax_result.
      CLEAR t180.
      DATA t181 TYPE REF TO zcl_lnt_syntax_logic.
      CLEAR t181.
      DATA(t182) = t1.
      DATA t183 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t183.
      DATA(t184) = t65.
      DATA t185 TYPE REF TO object.
      CLEAR t185.
      t185 = t184.
      t183 ?= t185.
      t181 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t182 i_object_19cd = t183 ).
      t180 = t181->run( ).
      t179 = t180->zlnt_view_read_sr_b6b1d9e0c93e( ).
      t178 = t179.
      DATA(t186) = VALUE string( ).
      DATA(t187) = t5.
      DATA(t188) = VALUE string( ).
      DATA(t189) = t178.
      t188 = zcl_lnt_dump_scope=>dump( i_spaghetti = t189 ).
      DATA(t190) = strlen( t187 ).
      t186 = |{ t187 }{ t188 }|.
      t5 = t186.
      DATA(t191) = VALUE abap_bool( ).
      DATA t192 TYPE REF TO zcl_lnt_icursor_data.
      CLEAR t192.
      DATA(t193) = t7.
      t192 = t193.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t194.
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t195.
      t194 = t195.
      DATA(t196) = VALUE abap_bool( ).
      DATA(t197) = VALUE abap_bool( ).
      DATA(t198) = t192.
      IF t198 IS INITIAL.
        t197 = abap_true.
      ENDIF.
      t196 = xsdbool( t197 = abap_false ).
      t191 = t196.
      IF t191 = abap_true.
        DATA(t199) = VALUE string( ).
        DATA(t200) = t5.
        DATA(t201) = |<hr>Spaghetti Scope by Cursor Position:<br><br>\n|.
        DATA(t202) = strlen( t200 ).
        t199 = |{ t200 }{ t201 }|.
        t5 = t199.
        DATA t203 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t203.
        DATA t204 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t204.
        DATA(t205) = t178.
        DATA t206 TYPE REF TO zcl_lnt_position.
        CLEAR t206.
        DATA(t207) = abap_true.
        IF t207 = abap_true.
          DATA t208 TYPE REF TO zcl_lnt_position.
          CLEAR t208.
          DATA t209 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t209.
          DATA t210 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t210.
          DATA t211 TYPE REF TO zcl_lnt_icursor_data.
          CLEAR t211.
          DATA(t212) = t7.
          t211 = t212.
          t210 = t211->token.
          t209 = t210.
          DATA t213 TYPE REF TO zcl_lnt_position.
          CLEAR t213.
          DATA(t214) = t209.
          t213 = t214->start.
          t208 = t213.
          t206 = t208.
        ELSE.
          DATA t215 TYPE REF TO zcl_lnt_position.
          CLEAR t215.
          t206 = t215.
        ENDIF.
        DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t216.
        DATA(t217) = abap_true.
        IF t217 = abap_true.
          DATA(t218) = VALUE string( ).
          DATA(t219) = t2.
          t218 = t219->zlnt_view_read_no_0041136eb871( ).
          DATA(t220) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t220->has = abap_true.
          t220->value = t218.
          t216 = t220.
        ELSE.
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t221.
          t216 = t221.
        ENDIF.
        t204 = t205->lookup_position( i_p = t206 i_filename = t216 ).
        t203 = t204.
        DATA(t222) = VALUE abap_bool( ).
        DATA(t223) = t203.
        t222 = xsdbool( t223 IS BOUND ).
        IF t222 = abap_true.
          DATA t224 TYPE REF TO zcl_lnt_iscope_identifier.
          CLEAR t224.
          DATA t225 TYPE REF TO zcl_lnt_iscope_identifier.
          CLEAR t225.
          DATA t226 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t226.
          DATA(t227) = t203.
          t226 = t227.
          t225 = t226->get_identifier( ).
          t224 = t225.
          DATA(t228) = VALUE string( ).
          DATA(t229) = VALUE string( ).
          DATA(t230) = VALUE string( ).
          DATA(t231) = VALUE string( ).
          DATA(t232) = VALUE string( ).
          DATA(t233) = VALUE string( ).
          DATA(t234) = t5.
          DATA(t235) = |<u>|.
          DATA(t236) = strlen( t234 ).
          t233 = |{ t234 }{ t235 }|.
          DATA(t237) = VALUE string( ).
          DATA(t238) = t224.
          t237 = t238->stype.
          DATA(t239) = strlen( t233 ).
          t232 = |{ t233 }{ t237 }|.
          DATA(t240) = |, <tt>|.
          DATA(t241) = strlen( t232 ).
          t231 = |{ t232 }{ t240 }|.
          DATA(t242) = VALUE string( ).
          DATA(t243) = t224.
          t242 = t243->sname.
          DATA(t244) = strlen( t231 ).
          t230 = |{ t231 }{ t242 }|.
          DATA(t245) = |</tt>, |.
          DATA(t246) = strlen( t230 ).
          t229 = |{ t230 }{ t245 }|.
          DATA(t247) = VALUE string( ).
          DATA(t248) = t224.
          t247 = t248->filename.
          DATA(t249) = strlen( t229 ).
          t228 = |{ t229 }{ t247 }|.
          t5 = t228.
          DATA(t250) = VALUE string( ).
          DATA(t251) = VALUE string( ).
          DATA(t252) = VALUE string( ).
          DATA(t253) = VALUE string( ).
          DATA(t254) = VALUE string( ).
          DATA(t255) = t5.
          DATA(t256) = |, (|.
          DATA(t257) = strlen( t255 ).
          t254 = |{ t255 }{ t256 }|.
          DATA(t258) = VALUE string( ).
          DATA(t259) = VALUE f( ).
          DATA t260 TYPE REF TO zcl_lnt_position.
          CLEAR t260.
          DATA t261 TYPE REF TO zcl_lnt_position.
          CLEAR t261.
          DATA(t262) = t224.
          t261 = t262->start.
          t260 = t261.
          DATA(t263) = VALUE f( ).
          DATA(t264) = t260.
          t263 = t264->row.
          t259 = t263.
          IF t259 <> trunc( t259 ) OR t259 > range_safe_integer OR t259 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t265) = CONV int8( t259 ).
          t258 = |{ t265 }|.
          DATA(t266) = strlen( t254 ).
          t253 = |{ t254 }{ t258 }|.
          DATA(t267) = |, |.
          DATA(t268) = strlen( t253 ).
          t252 = |{ t253 }{ t267 }|.
          DATA(t269) = VALUE string( ).
          DATA t270 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t270.
          DATA t271 TYPE REF TO zcl_lnt_position.
          CLEAR t271.
          DATA t272 TYPE REF TO zcl_lnt_position.
          CLEAR t272.
          DATA(t273) = t224.
          t272 = t273->start.
          t271 = t272.
          DATA t274 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t274.
          DATA(t275) = t271.
          t274 = t275->col.
          t270 = t274.
          t269 = zlnt_runtime_numb_290eb04a9758=>text( t270 ).
          DATA(t276) = strlen( t252 ).
          t251 = |{ t252 }{ t269 }|.
          DATA(t277) = |)</u><br>|.
          DATA(t278) = strlen( t251 ).
          t250 = |{ t251 }{ t277 }|.
          t5 = t250.
        ELSE.
          DATA(t279) = VALUE string( ).
          DATA(t280) = t5.
          DATA(t281) = |Not found|.
          DATA(t282) = strlen( t280 ).
          t279 = |{ t280 }{ t281 }|.
          t5 = t279.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t283) = t5.
    result = t283.

  ENDMETHOD.

  METHOD full_path.
    DATA(t1) = i_file.
    DATA(t2) = i_token.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA(t8) = t5.
    t7 = t8->structure.
    t4 = t7.
    t3 = t4.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_structure_node.
    DATA(t11) = t3.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t10.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_shape_88a44908.
      DATA t17 TYPE string.
      DATA(t18) = ||.
      t17 = t18.
      DATA t19 TYPE abap_bool.
      DATA(t20) = abap_false.
      t19 = t20.
      t16 = NEW zcl_lnt_shape_88a44908( i_value = t17 i_keyword = t19 ).
      CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
      t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t21 ).
      ENDIF.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t22 ).
      ENDIF.
      CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
      t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t23) = |value|.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t23 p1 = t24 ).
      ENDIF.
      DATA(t25) = |keyword|.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t25 p1 = t26 ).
      ENDIF.
      result = t16.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zcl_lnt_shape_88a44908.
    DATA t28 TYPE REF TO zcl_lnt_shape_88a44908.
    DATA t29 TYPE REF TO zcl_lnt_structure_node.
    DATA(t30) = t3.
    t29 = t30.
    DATA(t31) = ||.
    DATA(t32) = t2.
    t28 = zcl_lnt_help=>traverse( i_node = t29 i_parents = t31 i_search_b3ca = t32 ).
    t27 = t28.
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zcl_lnt_shape_88a44908.
    DATA(t35) = t27.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    t36 = t37.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = t34.
    IF t39 IS INITIAL.
      t38 = abap_true.
    ENDIF.
    t33 = t38.
    IF t33 = abap_true.
      DATA t40 TYPE REF TO zcl_lnt_shape_88a44908.
      DATA t41 TYPE string.
      DATA(t42) = ||.
      t41 = t42.
      DATA t43 TYPE abap_bool.
      DATA(t44) = abap_false.
      t43 = t44.
      t40 = NEW zcl_lnt_shape_88a44908( i_value = t41 i_keyword = t43 ).
      CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
      t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t45 ).
      ENDIF.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t46 ).
      ENDIF.
      CREATE OBJECT t40->zlnt_json_ownkeys_70e5fd461788.
      t40->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t47) = |value|.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
      ENDIF.
      DATA(t49) = |keyword|.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
      ENDIF.
      result = t40.
      RETURN.
    ENDIF.
    DATA t51 TYPE REF TO zcl_lnt_shape_88a44908.
    DATA t52 TYPE string.
    DATA t53 TYPE string.
    DATA(t54) = |\n\n|.
    DATA t55 TYPE string.
    DATA t56 TYPE REF TO zcl_lnt_shape_88a44908.
    DATA(t57) = t27.
    t56 = t57.
    t55 = t56->value.
    DATA(t58) = strlen( t54 ).
    t53 = |{ t54 }{ t55 }|.
    t52 = t53.
    DATA t59 TYPE abap_bool.
    DATA t60 TYPE abap_bool.
    DATA t61 TYPE REF TO zcl_lnt_shape_88a44908.
    DATA(t62) = t27.
    t61 = t62.
    t60 = t61->keyword.
    t59 = t60.
    t51 = NEW zcl_lnt_shape_88a44908( i_value = t52 i_keyword = t59 ).
    CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
    t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t63 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t64 ).
    ENDIF.
    CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
    t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t65) = |value|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    DATA(t67) = |keyword|.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
    ENDIF.
    result = t51.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA(t2) = i_parents.
    DATA(t3) = i_search_b3ca.
    DATA(t4) = VALUE string( ).
    DATA(t5) = t2.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t4.
    DATA(t8) = ||.
    t6 = xsdbool( t7 <> t8 ).
    IF t6 = abap_true.
      DATA(t9) = VALUE string( ).
      DATA(t10) = t4.
      DATA(t11) = | -> |.
      DATA(t12) = strlen( t10 ).
      t9 = |{ t10 }{ t11 }|.
      t4 = t9.
    ENDIF.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t1.
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_structure_node ).
    IF t13 = abap_true.
      DATA(t15) = VALUE string( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = t4.
      DATA(t18) = |Structure: |.
      DATA(t19) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      DATA(t20) = VALUE string( ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      DATA t22 TYPE REF TO zif_lnt_structure.
      CLEAR t22.
      DATA t23 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t23.
      DATA(t24) = t1.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      t25 = t24.
      t23 ?= t25.
      t22 = t23->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
      CLEAR t21.
      IF t22 IS BOUND.
        DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t26.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        CLEAR t26.
        t27 = t22.
        TRY.
            t21 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS NOT BOUND.
          TRY.
              t26 ?= t22.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t26 IS BOUND.
            t21 = t26->source( ).
          ENDIF.
          IF t21 IS NOT BOUND.
            CREATE OBJECT t21.
            t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t21->oval = t22.
          ENDIF.
        ENDIF.
      ENDIF.
      t20 = zcl_lnt_help=>link_to_structure( i_structure = t21 ).
      DATA(t28) = strlen( t16 ).
      t15 = |{ t16 }{ t20 }|.
      t4 = t15.
    ELSE.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t1.
      t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t29 = abap_true.
        DATA(t31) = VALUE string( ).
        DATA(t32) = VALUE string( ).
        DATA(t33) = t4.
        DATA(t34) = |Statement: |.
        DATA(t35) = strlen( t33 ).
        t32 = |{ t33 }{ t34 }|.
        DATA(t36) = VALUE string( ).
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        DATA t38 TYPE REF TO zif_lnt_statement.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t39.
        DATA(t40) = t1.
        DATA t41 TYPE REF TO object.
        CLEAR t41.
        t41 = t40.
        t39 ?= t41.
        t38 = t39->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        CLEAR t37.
        IF t38 IS BOUND.
          DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t42.
          DATA t43 TYPE REF TO object.
          CLEAR t43.
          CLEAR t42.
          t43 = t38.
          TRY.
              t37 ?= t43.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t37 IS NOT BOUND.
            TRY.
                t42 ?= t38.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t42 IS BOUND.
              t37 = t42->source( ).
            ENDIF.
            IF t37 IS NOT BOUND.
              CREATE OBJECT t37.
              t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t37->oval = t38.
            ENDIF.
          ENDIF.
        ENDIF.
        t36 = zcl_lnt_help=>link_to_statement( i_statement = t37 ).
        DATA(t44) = strlen( t32 ).
        t31 = |{ t32 }{ t36 }|.
        t4 = t31.
      ELSE.
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = t1.
        t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_expression_node ).
        IF t45 = abap_true.
          DATA(t47) = VALUE string( ).
          DATA(t48) = VALUE string( ).
          DATA(t49) = t4.
          DATA(t50) = |Expression: |.
          DATA(t51) = strlen( t49 ).
          t48 = |{ t49 }{ t50 }|.
          DATA(t52) = VALUE string( ).
          DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t53.
          DATA t54 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t54.
          DATA t55 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t55.
          DATA(t56) = t1.
          DATA t57 TYPE REF TO object.
          CLEAR t57.
          t57 = t56.
          t55 ?= t57.
          t54 = t55->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          CLEAR t53.
          IF t54 IS BOUND.
            DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t58.
            DATA t59 TYPE REF TO object.
            CLEAR t59.
            CLEAR t58.
            t59 = t54.
            TRY.
                t53 ?= t59.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t53 IS NOT BOUND.
              TRY.
                  t58 ?= t54.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t58 IS BOUND.
                t53 = t58->source( ).
              ENDIF.
              IF t53 IS NOT BOUND.
                CREATE OBJECT t53.
                t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t53->oval = t54.
              ENDIF.
            ENDIF.
          ENDIF.
          t52 = zcl_lnt_help=>link_to_expression( i_expression = t53 ).
          DATA(t60) = strlen( t48 ).
          t47 = |{ t48 }{ t52 }|.
          t4 = t47.
        ELSE.
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = t1.
          t61 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_token_node ).
          IF t61 = abap_true.
            DATA(t63) = VALUE string( ).
            DATA(t64) = VALUE string( ).
            DATA(t65) = t4.
            DATA(t66) = |Token: |.
            DATA(t67) = strlen( t65 ).
            t64 = |{ t65 }{ t66 }|.
            DATA(t68) = VALUE string( ).
            DATA t69 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t69.
            DATA t70 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t70.
            DATA t71 TYPE REF TO zcl_lnt_token_node.
            CLEAR t71.
            DATA(t72) = t1.
            DATA t73 TYPE REF TO object.
            CLEAR t73.
            t73 = t72.
            t71 ?= t73.
            t70 = t71->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
            t69 = t70->zlnt_builtin_clas_3f891b097658( ).
            t68 = t69->name.
            DATA(t74) = strlen( t64 ).
            t63 = |{ t64 }{ t68 }|.
            t4 = t63.
            DATA t75 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t75.
            DATA t76 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t76.
            DATA t77 TYPE REF TO zcl_lnt_token_node.
            CLEAR t77.
            DATA(t78) = t1.
            DATA t79 TYPE REF TO object.
            CLEAR t79.
            t79 = t78.
            t77 ?= t79.
            t76 = t77->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
            t75 = t76.
            DATA(t80) = VALUE abap_bool( ).
            DATA(t81) = VALUE abap_bool( ).
            DATA(t82) = VALUE abap_bool( ).
            DATA(t83) = VALUE string( ).
            DATA t84 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t84.
            DATA(t85) = t75.
            t84 = t85.
            DATA(t86) = VALUE string( ).
            DATA(t87) = t84.
            t86 = t87->str.
            t83 = t86.
            DATA(t88) = VALUE string( ).
            DATA t89 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t89.
            DATA(t90) = t3.
            t89 = t90.
            DATA(t91) = VALUE string( ).
            DATA(t92) = t89.
            t91 = t92->str.
            t88 = t91.
            t82 = xsdbool( t83 = t88 ).
            t81 = t82.
            IF t82 = abap_true.
              DATA(t93) = VALUE abap_bool( ).
              DATA t94 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t94.
              DATA t95 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t95.
              DATA(t96) = t75.
              t95 = t96.
              DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t97.
              DATA t98 TYPE REF TO zcl_lnt_position.
              CLEAR t98.
              DATA t99 TYPE REF TO zcl_lnt_position.
              CLEAR t99.
              DATA(t100) = t95.
              t99 = t100->start.
              t98 = t99.
              DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t101.
              DATA(t102) = t98.
              t101 = t102->col.
              t97 = t101.
              t94 = t97.
              DATA t103 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t103.
              DATA t104 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t104.
              DATA(t105) = t3.
              t104 = t105.
              DATA t106 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t106.
              DATA t107 TYPE REF TO zcl_lnt_position.
              CLEAR t107.
              DATA t108 TYPE REF TO zcl_lnt_position.
              CLEAR t108.
              DATA(t109) = t104.
              t108 = t109->start.
              t107 = t108.
              DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t110.
              DATA(t111) = t107.
              t110 = t111->col.
              t106 = t110.
              t103 = t106.
              t93 = zlnt_runtime_numb_290eb04a9758=>compare( left = t94 right = t103 op = `==` ).
              t81 = t93.
            ENDIF.
            t80 = t81.
            IF t81 = abap_true.
              DATA(t112) = VALUE abap_bool( ).
              DATA(t113) = VALUE f( ).
              DATA t114 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t114.
              DATA(t115) = t75.
              t114 = t115.
              DATA(t116) = VALUE f( ).
              DATA t117 TYPE REF TO zcl_lnt_position.
              CLEAR t117.
              DATA t118 TYPE REF TO zcl_lnt_position.
              CLEAR t118.
              DATA(t119) = t114.
              t118 = t119->start.
              t117 = t118.
              DATA(t120) = VALUE f( ).
              DATA(t121) = t117.
              t120 = t121->row.
              t116 = t120.
              t113 = t116.
              DATA(t122) = VALUE f( ).
              DATA t123 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t123.
              DATA(t124) = t3.
              t123 = t124.
              DATA(t125) = VALUE f( ).
              DATA t126 TYPE REF TO zcl_lnt_position.
              CLEAR t126.
              DATA t127 TYPE REF TO zcl_lnt_position.
              CLEAR t127.
              DATA(t128) = t123.
              t127 = t128->start.
              t126 = t127.
              DATA(t129) = VALUE f( ).
              DATA(t130) = t126.
              t129 = t130->row.
              t125 = t129.
              t122 = t125.
              t112 = xsdbool( t113 = t122 ).
              t80 = t112.
            ENDIF.
            IF t80 = abap_true.
              DATA(t131) = VALUE abap_bool( ).
              DATA(t132) = VALUE abap_bool( ).
              DATA(t133) = VALUE abap_bool( ).
              DATA(t134) = t1.
              t133 = xsdbool( t134 IS BOUND AND t134 IS INSTANCE OF zcl_lnt_token_node_regex ).
              t132 = xsdbool( t133 = abap_false ).
              t131 = t132.
              DATA t135 TYPE REF TO zcl_lnt_shape_88a44908.
              CLEAR t135.
              DATA(t136) = abap_true.
              IF t136 = abap_true.
                DATA t137 TYPE REF TO zcl_lnt_shape_88a44908.
                CLEAR t137.
                DATA(t138) = VALUE string( ).
                DATA(t139) = t4.
                t138 = t139.
                DATA(t140) = VALUE abap_bool( ).
                DATA(t141) = t131.
                t140 = t141.
                t137 = NEW zcl_lnt_shape_88a44908( i_value = t138 i_keyword = t140 ).
                CREATE OBJECT t137->zlnt_view_ownkeys_b0e8086400eb.
                t137->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t142.
                IF t137->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t142 ).
                ENDIF.
                DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t143.
                IF t137->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t143 ).
                ENDIF.
                CREATE OBJECT t137->zlnt_json_ownkeys_70e5fd461788.
                t137->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t144) = |value|.
                DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t145.
                IF t137->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t137->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
                ENDIF.
                DATA(t146) = |keyword|.
                DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t147.
                IF t137->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t137->zlnt_json_ownkeys_70e5fd461788->put( p0 = t146 p1 = t147 ).
                ENDIF.
                t135 = t137.
              ELSE.
                DATA t148 TYPE REF TO zcl_lnt_shape_88a44908.
                CLEAR t148.
                t135 = t148.
              ENDIF.
              result = t135.
              RETURN.
            ENDIF.
          ELSE.
            DATA t149 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
            CLEAR t149.
            DATA t150 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
            CLEAR t150.
            DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t151.
            DATA(t152) = abap_true.
            IF t152 = abap_true.
              DATA(t153) = |hover, traverse, unexpected node type|.
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
            CLEAR t149->source_value.
            IF t150 IS BOUND.
              DATA t156 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t156.
              DATA t157 TYPE REF TO object.
              CLEAR t157.
              CLEAR t156.
              t157 = t150.
              TRY.
                  t149->source_value ?= t157.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t149->source_value IS NOT BOUND.
                TRY.
                    t156 ?= t150.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t156 IS BOUND.
                  t149->source_value = t156->source( ).
                ENDIF.
                IF t149->source_value IS NOT BOUND.
                  CREATE OBJECT t149->source_value.
                  t149->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t149->source_value->oval = t150.
                ENDIF.
              ENDIF.
            ENDIF.
            RAISE EXCEPTION t149.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t158.
    DATA t159 TYPE REF TO zif_lnt_union_1e9858bf.
    CLEAR t159.
    DATA(t160) = t1.
    t159 ?= t160.
    t158 = t159->get_children( ).
    DATA t161 TYPE REF TO zif_lnt_node.
    CLEAR t161.
    DATA t162 TYPE REF TO object.
    CLEAR t162.
    DATA(t163) = VALUE i( ).
    DO.
      t158->load( ).
      IF t163 >= lines( t158->items ).
        EXIT.
      ENDIF.
      CLEAR t162.
      READ TABLE t158->items INDEX t163 + 1 INTO t162.
      t163 = t163 + 1.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t164.
      CLEAR t161.
      IF t162 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t164 ?= t162.
        DATA t165 TYPE REF TO object.
        CLEAR t165.
        t165 = t164->as_ref( ).
        t161 ?= t165.
      ELSE.
        t161 ?= t162.
      ENDIF.
      DATA t166 TYPE REF TO zcl_lnt_shape_88a44908.
      CLEAR t166.
      DATA t167 TYPE REF TO zcl_lnt_shape_88a44908.
      CLEAR t167.
      DATA(t168) = t161.
      DATA(t169) = t4.
      DATA(t170) = t3.
      t167 = zcl_lnt_help=>traverse( i_node = t168 i_parents = t169 i_search_b3ca = t170 ).
      t166 = t167.
      DATA(t171) = VALUE abap_bool( ).
      DATA(t172) = t166.
      t171 = xsdbool( t172 IS BOUND ).
      IF t171 = abap_true.
        DATA t173 TYPE REF TO zcl_lnt_shape_88a44908.
        CLEAR t173.
        DATA(t174) = abap_true.
        IF t174 = abap_true.
          DATA t175 TYPE REF TO zcl_lnt_shape_88a44908.
          CLEAR t175.
          DATA(t176) = t166.
          t175 = t176.
          t173 = t175.
        ELSE.
          DATA t177 TYPE REF TO zcl_lnt_shape_88a44908.
          CLEAR t177.
          t173 = t177.
        ENDIF.
        result = t173.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t178 TYPE REF TO zcl_lnt_shape_88a44908.
    CLEAR t178.
    result = t178.

  ENDMETHOD.

  METHOD file_information.
    DATA(t1) = i_file.
    DATA t2 TYPE string.
    DATA(t3) = ||.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = t2.
    DATA(t6) = |<hr><h3 id="_tokens">Tokens</h3>\n|.
    DATA(t7) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    t2 = t4.
    DATA t8 TYPE string.
    DATA(t9) = t2.
    DATA t10 TYPE string.
    DATA(t11) = t1.
    t10 = zcl_lnt_help=>tokens( i_file = t11 ).
    DATA(t12) = strlen( t9 ).
    t8 = |{ t9 }{ t10 }|.
    t2 = t8.
    DATA t13 TYPE string.
    DATA(t14) = t2.
    DATA(t15) = |<hr><h3 id="_statements">Statements</h3>\n|.
    DATA(t16) = strlen( t14 ).
    t13 = |{ t14 }{ t15 }|.
    t2 = t13.
    DATA t17 TYPE string.
    DATA(t18) = t2.
    DATA t19 TYPE string.
    DATA(t20) = t1.
    t19 = zcl_lnt_help=>build_statements( i_file = t20 ).
    DATA(t21) = strlen( t18 ).
    t17 = |{ t18 }{ t19 }|.
    t2 = t17.
    DATA t22 TYPE string.
    DATA(t23) = t2.
    DATA(t24) = |<hr><h3 id="_structure">Structure</h3>\n|.
    DATA(t25) = strlen( t23 ).
    t22 = |{ t23 }{ t24 }|.
    t2 = t22.
    DATA t26 TYPE REF TO zcl_lnt_structure_node.
    DATA t27 TYPE REF TO zcl_lnt_structure_node.
    DATA t28 TYPE REF TO zcl_lnt_abap_file.
    DATA(t29) = t1.
    t28 = t29.
    DATA t30 TYPE REF TO zcl_lnt_structure_node.
    DATA(t31) = t28.
    t30 = t31->structure.
    t27 = t30.
    t26 = t27.
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE REF TO zcl_lnt_structure_node.
    DATA(t34) = t26.
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    t35 = t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = t33.
    IF t39 IS INITIAL.
      t38 = abap_true.
    ENDIF.
    t37 = xsdbool( t38 = abap_false ).
    t32 = t37.
    IF t32 = abap_true.
      DATA t40 TYPE string.
      DATA(t41) = t2.
      DATA t42 TYPE string.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t45.
      t44 = t45.
      DATA(t46) = t44.
      DATA t47 TYPE REF TO zcl_lnt_structure_node.
      DATA(t48) = t26.
      t47 = t48.
      t46->load( ).
      APPEND t47 TO t46->items.
      t46->save( ).
      DATA(t49) = t44.
      t43 = t49.
      t42 = zcl_lnt_help=>build_structure( i_nodes_5198 = t43 ).
      DATA(t50) = strlen( t41 ).
      t40 = |{ t41 }{ t42 }|.
      t2 = t40.
    ELSE.
      DATA t51 TYPE string.
      DATA(t52) = t2.
      DATA(t53) = |structure undefined|.
      DATA(t54) = strlen( t52 ).
      t51 = |{ t52 }{ t53 }|.
      t2 = t51.
    ENDIF.
    DATA(t55) = t2.
    result = t55.

  ENDMETHOD.

  METHOD escape.
    DATA(t1) = i_str.
    DATA t2 TYPE string.
    DATA(t3) = t1.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t4.
    DATA(t5) = |&|.
    DATA(t6) = |g|.
    CREATE OBJECT t4 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t5 flags = t6 checked = abap_true.
    DATA(t7) = |&amp;|.
    DATA(t8) = strlen( t3 ).
    t2 = t4->replace( p0 = t3 p1 = t7 ).
    t1 = t2.
    DATA t9 TYPE string.
    DATA(t10) = t1.
    DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t11.
    DATA(t12) = |>|.
    DATA(t13) = |g|.
    CREATE OBJECT t11 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t12 flags = t13 checked = abap_true.
    DATA(t14) = |&gt;|.
    DATA(t15) = strlen( t10 ).
    t9 = t11->replace( p0 = t10 p1 = t14 ).
    t1 = t9.
    DATA t16 TYPE string.
    DATA(t17) = t1.
    DATA t18 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t18.
    DATA(t19) = |<|.
    DATA(t20) = |g|.
    CREATE OBJECT t18 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t19 flags = t20 checked = abap_true.
    DATA(t21) = |&lt;|.
    DATA(t22) = strlen( t17 ).
    t16 = t18->replace( p0 = t17 p1 = t21 ).
    t1 = t16.
    DATA t23 TYPE string.
    DATA(t24) = t1.
    DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t25.
    DATA(t26) = |"|.
    DATA(t27) = |g|.
    CREATE OBJECT t25 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t26 flags = t27 checked = abap_true.
    DATA(t28) = |&quot;|.
    DATA(t29) = strlen( t24 ).
    t23 = t25->replace( p0 = t24 p1 = t28 ).
    t1 = t23.
    DATA t30 TYPE string.
    DATA(t31) = t1.
    DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t32.
    DATA(t33) = |'|.
    DATA(t34) = |g|.
    CREATE OBJECT t32 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t33 flags = t34 checked = abap_true.
    DATA(t35) = |&#039;|.
    DATA(t36) = strlen( t31 ).
    t30 = t32->replace( p0 = t31 p1 = t35 ).
    t1 = t30.
    DATA(t37) = t1.
    result = t37.

  ENDMETHOD.

  METHOD link_to_statement.
    DATA(t1) = i_statement.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t6) = |<a href="https://syntax.abaplint.org/#/statement/|.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = t1.
    DATA(t11) = |constructor|.
    t9 = t10->get( p0 = t11 ).
    DATA(t12) = |name|.
    t8 = t9->get( p0 = t12 ).
    IF t8 IS BOUND.
      IF t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA(t13) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t14) = |src/lsp/help.ts:222:7: ABAP record string conversion require|.
        t14 = t14 && |s primitive dynamic storage|.
        t13->source_location = t14.
        RAISE EXCEPTION t13.
      ENDIF.
    ENDIF.
    IF t8 IS BOUND.
      IF t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        READ TABLE t8->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t15) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t16) = |src/lsp/help.ts:222:7: record string conversion requires the|.
          t16 = t16 && | original default Object coercion hooks|.
          t15->source_location = t16.
          RAISE EXCEPTION t15.
        ENDIF.
        READ TABLE t8->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t17) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t18) = |src/lsp/help.ts:222:7: record string conversion requires the|.
          t18 = t18 && | original default Object coercion hooks|.
          t17->source_location = t18.
          RAISE EXCEPTION t17.
        ENDIF.
        READ TABLE t8->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t19) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t20) = |src/lsp/help.ts:222:7: record string conversion requires the|.
          t20 = t20 && | original default Object coercion hooks|.
          t19->source_location = t20.
          RAISE EXCEPTION t19.
        ENDIF.
        t7 = `[object Object]`.
      ELSE.
        t7 = t8->to_string( ).
      ENDIF.
    ELSE.
      t7 = `undefined`.
    ENDIF.
    DATA(t21) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    DATA(t22) = |" target="_blank">|.
    DATA(t23) = strlen( t5 ).
    t4 = |{ t5 }{ t22 }|.
    DATA(t24) = VALUE string( ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = t1.
    DATA(t28) = |constructor|.
    t26 = t27->get( p0 = t28 ).
    DATA(t29) = |name|.
    t25 = t26->get( p0 = t29 ).
    IF t25 IS BOUND.
      IF t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA(t30) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t31) = |src/lsp/help.ts:222:54: ABAP record string conversion requir|.
        t31 = t31 && |es primitive dynamic storage|.
        t30->source_location = t31.
        RAISE EXCEPTION t30.
      ENDIF.
    ENDIF.
    IF t25 IS BOUND.
      IF t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        READ TABLE t25->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t32) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t33) = |src/lsp/help.ts:222:54: record string conversion requires th|.
          t33 = t33 && |e original default Object coercion hooks|.
          t32->source_location = t33.
          RAISE EXCEPTION t32.
        ENDIF.
        READ TABLE t25->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t34) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t35) = |src/lsp/help.ts:222:54: record string conversion requires th|.
          t35 = t35 && |e original default Object coercion hooks|.
          t34->source_location = t35.
          RAISE EXCEPTION t34.
        ENDIF.
        READ TABLE t25->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t36) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t37) = |src/lsp/help.ts:222:54: record string conversion requires th|.
          t37 = t37 && |e original default Object coercion hooks|.
          t36->source_location = t37.
          RAISE EXCEPTION t36.
        ENDIF.
        t24 = `[object Object]`.
      ELSE.
        t24 = t25->to_string( ).
      ENDIF.
    ELSE.
      t24 = `undefined`.
    ENDIF.
    DATA(t38) = strlen( t4 ).
    t3 = |{ t4 }{ t24 }|.
    DATA(t39) = |</a>\n|.
    DATA(t40) = strlen( t3 ).
    t2 = |{ t3 }{ t39 }|.
    result = t2.

  ENDMETHOD.

  METHOD link_to_structure.
    DATA(t1) = i_structure.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t6) = |<a href="https://syntax.abaplint.org/#/structure/|.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = t1.
    DATA(t11) = |constructor|.
    t9 = t10->get( p0 = t11 ).
    DATA(t12) = |name|.
    t8 = t9->get( p0 = t12 ).
    IF t8 IS BOUND.
      IF t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA(t13) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t14) = |src/lsp/help.ts:227:7: ABAP record string conversion require|.
        t14 = t14 && |s primitive dynamic storage|.
        t13->source_location = t14.
        RAISE EXCEPTION t13.
      ENDIF.
    ENDIF.
    IF t8 IS BOUND.
      IF t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        READ TABLE t8->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t15) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t16) = |src/lsp/help.ts:227:7: record string conversion requires the|.
          t16 = t16 && | original default Object coercion hooks|.
          t15->source_location = t16.
          RAISE EXCEPTION t15.
        ENDIF.
        READ TABLE t8->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t17) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t18) = |src/lsp/help.ts:227:7: record string conversion requires the|.
          t18 = t18 && | original default Object coercion hooks|.
          t17->source_location = t18.
          RAISE EXCEPTION t17.
        ENDIF.
        READ TABLE t8->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t19) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t20) = |src/lsp/help.ts:227:7: record string conversion requires the|.
          t20 = t20 && | original default Object coercion hooks|.
          t19->source_location = t20.
          RAISE EXCEPTION t19.
        ENDIF.
        t7 = `[object Object]`.
      ELSE.
        t7 = t8->to_string( ).
      ENDIF.
    ELSE.
      t7 = `undefined`.
    ENDIF.
    DATA(t21) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    DATA(t22) = |" target="_blank">|.
    DATA(t23) = strlen( t5 ).
    t4 = |{ t5 }{ t22 }|.
    DATA(t24) = VALUE string( ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = t1.
    DATA(t28) = |constructor|.
    t26 = t27->get( p0 = t28 ).
    DATA(t29) = |name|.
    t25 = t26->get( p0 = t29 ).
    IF t25 IS BOUND.
      IF t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA(t30) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t31) = |src/lsp/help.ts:227:54: ABAP record string conversion requir|.
        t31 = t31 && |es primitive dynamic storage|.
        t30->source_location = t31.
        RAISE EXCEPTION t30.
      ENDIF.
    ENDIF.
    IF t25 IS BOUND.
      IF t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        READ TABLE t25->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t32) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t33) = |src/lsp/help.ts:227:54: record string conversion requires th|.
          t33 = t33 && |e original default Object coercion hooks|.
          t32->source_location = t33.
          RAISE EXCEPTION t32.
        ENDIF.
        READ TABLE t25->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t34) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t35) = |src/lsp/help.ts:227:54: record string conversion requires th|.
          t35 = t35 && |e original default Object coercion hooks|.
          t34->source_location = t35.
          RAISE EXCEPTION t34.
        ENDIF.
        READ TABLE t25->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t36) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t37) = |src/lsp/help.ts:227:54: record string conversion requires th|.
          t37 = t37 && |e original default Object coercion hooks|.
          t36->source_location = t37.
          RAISE EXCEPTION t36.
        ENDIF.
        t24 = `[object Object]`.
      ELSE.
        t24 = t25->to_string( ).
      ENDIF.
    ELSE.
      t24 = `undefined`.
    ENDIF.
    DATA(t38) = strlen( t4 ).
    t3 = |{ t4 }{ t24 }|.
    DATA(t39) = |</a>\n|.
    DATA(t40) = strlen( t3 ).
    t2 = |{ t3 }{ t39 }|.
    result = t2.

  ENDMETHOD.

  METHOD link_to_expression.
    DATA(t1) = i_expression.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t6) = |<a href="https://syntax.abaplint.org/#/expression/|.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = t1.
    DATA(t11) = |constructor|.
    t9 = t10->get( p0 = t11 ).
    DATA(t12) = |name|.
    t8 = t9->get( p0 = t12 ).
    IF t8 IS BOUND.
      IF t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA(t13) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t14) = |src/lsp/help.ts:232:7: ABAP record string conversion require|.
        t14 = t14 && |s primitive dynamic storage|.
        t13->source_location = t14.
        RAISE EXCEPTION t13.
      ENDIF.
    ENDIF.
    IF t8 IS BOUND.
      IF t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        READ TABLE t8->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t15) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t16) = |src/lsp/help.ts:232:7: record string conversion requires the|.
          t16 = t16 && | original default Object coercion hooks|.
          t15->source_location = t16.
          RAISE EXCEPTION t15.
        ENDIF.
        READ TABLE t8->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t17) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t18) = |src/lsp/help.ts:232:7: record string conversion requires the|.
          t18 = t18 && | original default Object coercion hooks|.
          t17->source_location = t18.
          RAISE EXCEPTION t17.
        ENDIF.
        READ TABLE t8->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t19) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t20) = |src/lsp/help.ts:232:7: record string conversion requires the|.
          t20 = t20 && | original default Object coercion hooks|.
          t19->source_location = t20.
          RAISE EXCEPTION t19.
        ENDIF.
        t7 = `[object Object]`.
      ELSE.
        t7 = t8->to_string( ).
      ENDIF.
    ELSE.
      t7 = `undefined`.
    ENDIF.
    DATA(t21) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    DATA(t22) = |" target="_blank">|.
    DATA(t23) = strlen( t5 ).
    t4 = |{ t5 }{ t22 }|.
    DATA(t24) = VALUE string( ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = t1.
    DATA(t28) = |constructor|.
    t26 = t27->get( p0 = t28 ).
    DATA(t29) = |name|.
    t25 = t26->get( p0 = t29 ).
    IF t25 IS BOUND.
      IF t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA(t30) = NEW zlnt_exception_un_5f2d02892fe8( ).
        DATA(t31) = |src/lsp/help.ts:232:55: ABAP record string conversion requir|.
        t31 = t31 && |es primitive dynamic storage|.
        t30->source_location = t31.
        RAISE EXCEPTION t30.
      ENDIF.
    ENDIF.
    IF t25 IS BOUND.
      IF t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        READ TABLE t25->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t32) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t33) = |src/lsp/help.ts:232:55: record string conversion requires th|.
          t33 = t33 && |e original default Object coercion hooks|.
          t32->source_location = t33.
          RAISE EXCEPTION t32.
        ENDIF.
        READ TABLE t25->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t34) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t35) = |src/lsp/help.ts:232:55: record string conversion requires th|.
          t35 = t35 && |e original default Object coercion hooks|.
          t34->source_location = t35.
          RAISE EXCEPTION t34.
        ENDIF.
        READ TABLE t25->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          DATA(t36) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t37) = |src/lsp/help.ts:232:55: record string conversion requires th|.
          t37 = t37 && |e original default Object coercion hooks|.
          t36->source_location = t37.
          RAISE EXCEPTION t36.
        ENDIF.
        t24 = `[object Object]`.
      ELSE.
        t24 = t25->to_string( ).
      ENDIF.
    ELSE.
      t24 = `undefined`.
    ENDIF.
    DATA(t38) = strlen( t4 ).
    t3 = |{ t4 }{ t24 }|.
    DATA(t39) = |</a>\n|.
    DATA(t40) = strlen( t3 ).
    t2 = |{ t3 }{ t39 }|.
    result = t2.

  ENDMETHOD.

  METHOD output_nodes.
    DATA(t1) = i_nodes_5198.
    DATA(t2) = VALUE string( ).
    DATA(t3) = |<ul>|.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zif_lnt_node.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        CLEAR t9.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t10) = VALUE string( ).
      DATA(t11) = ||.
      t10 = t11.
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE string( ).
      DATA t14 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t14.
      DATA(t15) = t5.
      t14 = t15->zlnt_builtin_clas_3f891b097658( ).
      t13 = t14->name.
      t12 = t13.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t12.
      DATA(t18) = |TokenNode|.
      t16 = xsdbool( t17 = t18 ).
      IF t16 = abap_true.
        DATA(t19) = VALUE string( ).
        DATA(t20) = VALUE string( ).
        DATA(t21) = VALUE string( ).
        DATA(t22) = VALUE string( ).
        DATA t23 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t23.
        DATA t24 TYPE REF TO object.
        CLEAR t24.
        DATA(t25) = t5.
        t24 = t25->get_db65( ).
        DATA t26 TYPE REF TO zlnt_runtime_desc_e5fe811e0f42.
        CLEAR t26.
        IF t24 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
        ENDIF.
        TRY.
            t26 ?= t24.
          CATCH cx_sy_move_cast_error.
            RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
        ENDTRY.
        t23 = t26->zlnt_builtin_nati_72359f490bf2( ).
        t22 = t23->name.
        DATA(t27) = |, "|.
        DATA(t28) = strlen( t22 ).
        t21 = |{ t22 }{ t27 }|.
        DATA(t29) = VALUE string( ).
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        DATA t32 TYPE REF TO object.
        CLEAR t32.
        DATA(t33) = t5.
        t32 = t33->get_db65( ).
        CLEAR t31.
        IF t32 IS BOUND.
          DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t34.
          DATA t35 TYPE REF TO object.
          CLEAR t35.
          CLEAR t34.
          t35 = t32.
          TRY.
              t31 ?= t35.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t31 IS NOT BOUND.
            TRY.
                t34 ?= t32.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t34 IS BOUND.
              t31 = t34->source( ).
            ENDIF.
            IF t31 IS NOT BOUND.
              CREATE OBJECT t31.
              t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t31->oval = t32.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA(t36) = |getStr|.
        IF t31 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
        ENDIF.
        IF t31->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref OR t31->oval IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
        ENDIF.
        DATA(t37) = VALUE abap_bool( ).
        CLEAR t37.
        CLEAR t30.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_association_name.
          DATA t38 TYPE REF TO zcl_lnt_association_name.
          CLEAR t38.
          t38 ?= t31->oval.
          DATA(t39) = CONV string( t38->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t39.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_lx_at.
          DATA t40 TYPE REF TO zcl_lnt_lx_at.
          CLEAR t40.
          t40 ?= t31->oval.
          DATA(t41) = CONV string( t40->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t41.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_at_w.
          DATA t42 TYPE REF TO zcl_lnt_at_w.
          CLEAR t42.
          t42 ?= t31->oval.
          DATA(t43) = CONV string( t42->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t43.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_bracket_left.
          DATA t44 TYPE REF TO zcl_lnt_bracket_left.
          CLEAR t44.
          t44 ?= t31->oval.
          DATA(t45) = CONV string( t44->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t45.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_bracket_left_w.
          DATA t46 TYPE REF TO zcl_lnt_bracket_left_w.
          CLEAR t46.
          t46 ?= t31->oval.
          DATA(t47) = CONV string( t46->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t47.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_bracket_right.
          DATA t48 TYPE REF TO zcl_lnt_bracket_right.
          CLEAR t48.
          t48 ?= t31->oval.
          DATA(t49) = CONV string( t48->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t49.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_bracket_right_w.
          DATA t50 TYPE REF TO zcl_lnt_bracket_right_w.
          CLEAR t50.
          t50 ?= t31->oval.
          DATA(t51) = CONV string( t50->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t51.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_colon.
          DATA t52 TYPE REF TO zcl_lnt_colon.
          CLEAR t52.
          t52 ?= t31->oval.
          DATA(t53) = CONV string( t52->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t53.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_lx_comment.
          DATA t54 TYPE REF TO zcl_lnt_lx_comment.
          CLEAR t54.
          t54 ?= t31->oval.
          DATA(t55) = CONV string( t54->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t55.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_dash.
          DATA t56 TYPE REF TO zcl_lnt_dash.
          CLEAR t56.
          t56 ?= t31->oval.
          DATA(t57) = CONV string( t56->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t57.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_dash_w.
          DATA t58 TYPE REF TO zcl_lnt_dash_w.
          CLEAR t58.
          t58 ?= t31->oval.
          DATA(t59) = CONV string( t58->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t59.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_lx_identifier.
          DATA t60 TYPE REF TO zcl_lnt_lx_identifier.
          CLEAR t60.
          t60 ?= t31->oval.
          DATA(t61) = CONV string( t60->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t61.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_instance_arrow.
          DATA t62 TYPE REF TO zcl_lnt_instance_arrow.
          CLEAR t62.
          t62 ?= t31->oval.
          DATA(t63) = CONV string( t62->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t63.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_instance_arrow_w.
          DATA t64 TYPE REF TO zcl_lnt_instance_arrow_w.
          CLEAR t64.
          t64 ?= t31->oval.
          DATA(t65) = CONV string( t64->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t65.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_paren_left.
          DATA t66 TYPE REF TO zcl_lnt_paren_left.
          CLEAR t66.
          t66 ?= t31->oval.
          DATA(t67) = CONV string( t66->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t67.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_paren_left_w.
          DATA t68 TYPE REF TO zcl_lnt_paren_left_w.
          CLEAR t68.
          t68 ?= t31->oval.
          DATA(t69) = CONV string( t68->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t69.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_paren_right.
          DATA t70 TYPE REF TO zcl_lnt_paren_right.
          CLEAR t70.
          t70 ?= t31->oval.
          DATA(t71) = CONV string( t70->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t71.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_paren_right_w.
          DATA t72 TYPE REF TO zcl_lnt_paren_right_w.
          CLEAR t72.
          t72 ?= t31->oval.
          DATA(t73) = CONV string( t72->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t73.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_lx_plus.
          DATA t74 TYPE REF TO zcl_lnt_lx_plus.
          CLEAR t74.
          t74 ?= t31->oval.
          DATA(t75) = CONV string( t74->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t75.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_plus_w.
          DATA t76 TYPE REF TO zcl_lnt_plus_w.
          CLEAR t76.
          t76 ?= t31->oval.
          DATA(t77) = CONV string( t76->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t77.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_pragma.
          DATA t78 TYPE REF TO zcl_lnt_pragma.
          CLEAR t78.
          t78 ?= t31->oval.
          DATA(t79) = CONV string( t78->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t79.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_punctuation.
          DATA t80 TYPE REF TO zcl_lnt_punctuation.
          CLEAR t80.
          t80 ?= t31->oval.
          DATA(t81) = CONV string( t80->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t81.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_static_arrow.
          DATA t82 TYPE REF TO zcl_lnt_static_arrow.
          CLEAR t82.
          t82 ?= t31->oval.
          DATA(t83) = CONV string( t82->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t83.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_static_arrow_w.
          DATA t84 TYPE REF TO zcl_lnt_static_arrow_w.
          CLEAR t84.
          t84 ?= t31->oval.
          DATA(t85) = CONV string( t84->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t85.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_string_token.
          DATA t86 TYPE REF TO zcl_lnt_string_token.
          CLEAR t86.
          t86 ?= t31->oval.
          DATA(t87) = CONV string( t86->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t87.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_lx_string_template.
          DATA t88 TYPE REF TO zcl_lnt_lx_string_template.
          CLEAR t88.
          t88 ?= t31->oval.
          DATA(t89) = CONV string( t88->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t89.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_string_template_begin.
          DATA t90 TYPE REF TO zcl_lnt_string_template_begin.
          CLEAR t90.
          t90 ?= t31->oval.
          DATA(t91) = CONV string( t90->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t91.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_string_template_end.
          DATA t92 TYPE REF TO zcl_lnt_string_template_end.
          CLEAR t92.
          t92 ?= t31->oval.
          DATA(t93) = CONV string( t92->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t93.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_string_template_middle.
          DATA t94 TYPE REF TO zcl_lnt_string_template_middle.
          CLEAR t94.
          t94 ?= t31->oval.
          DATA(t95) = CONV string( t94->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t95.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_at.
          DATA t96 TYPE REF TO zcl_lnt_w_at.
          CLEAR t96.
          t96 ?= t31->oval.
          DATA(t97) = CONV string( t96->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t97.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_at_w.
          DATA t98 TYPE REF TO zcl_lnt_w_at_w.
          CLEAR t98.
          t98 ?= t31->oval.
          DATA(t99) = CONV string( t98->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t99.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_bracket_left.
          DATA t100 TYPE REF TO zcl_lnt_w_bracket_left.
          CLEAR t100.
          t100 ?= t31->oval.
          DATA(t101) = CONV string( t100->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t101.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_bracket_left_w.
          DATA t102 TYPE REF TO zcl_lnt_w_bracket_left_w.
          CLEAR t102.
          t102 ?= t31->oval.
          DATA(t103) = CONV string( t102->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t103.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_bracket_right.
          DATA t104 TYPE REF TO zcl_lnt_w_bracket_right.
          CLEAR t104.
          t104 ?= t31->oval.
          DATA(t105) = CONV string( t104->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t105.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_bracket_right_w.
          DATA t106 TYPE REF TO zcl_lnt_w_bracket_right_w.
          CLEAR t106.
          t106 ?= t31->oval.
          DATA(t107) = CONV string( t106->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t107.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_dash.
          DATA t108 TYPE REF TO zcl_lnt_w_dash.
          CLEAR t108.
          t108 ?= t31->oval.
          DATA(t109) = CONV string( t108->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t109.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_dash_w.
          DATA t110 TYPE REF TO zcl_lnt_w_dash_w.
          CLEAR t110.
          t110 ?= t31->oval.
          DATA(t111) = CONV string( t110->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t111.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_instance_arrow.
          DATA t112 TYPE REF TO zcl_lnt_w_instance_arrow.
          CLEAR t112.
          t112 ?= t31->oval.
          DATA(t113) = CONV string( t112->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t113.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_instance_arrow_w.
          DATA t114 TYPE REF TO zcl_lnt_w_instance_arrow_w.
          CLEAR t114.
          t114 ?= t31->oval.
          DATA(t115) = CONV string( t114->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t115.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_paren_left.
          DATA t116 TYPE REF TO zcl_lnt_w_paren_left.
          CLEAR t116.
          t116 ?= t31->oval.
          DATA(t117) = CONV string( t116->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t117.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_paren_left_w.
          DATA t118 TYPE REF TO zcl_lnt_w_paren_left_w.
          CLEAR t118.
          t118 ?= t31->oval.
          DATA(t119) = CONV string( t118->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t119.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_paren_right.
          DATA t120 TYPE REF TO zcl_lnt_w_paren_right.
          CLEAR t120.
          t120 ?= t31->oval.
          DATA(t121) = CONV string( t120->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t121.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_paren_right_w.
          DATA t122 TYPE REF TO zcl_lnt_w_paren_right_w.
          CLEAR t122.
          t122 ?= t31->oval.
          DATA(t123) = CONV string( t122->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t123.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_plus.
          DATA t124 TYPE REF TO zcl_lnt_w_plus.
          CLEAR t124.
          t124 ?= t31->oval.
          DATA(t125) = CONV string( t124->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t125.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_plus_w.
          DATA t126 TYPE REF TO zcl_lnt_w_plus_w.
          CLEAR t126.
          t126 ?= t31->oval.
          DATA(t127) = CONV string( t126->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t127.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_static_arrow.
          DATA t128 TYPE REF TO zcl_lnt_w_static_arrow.
          CLEAR t128.
          t128 ?= t31->oval.
          DATA(t129) = CONV string( t128->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t129.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_w_static_arrow_w.
          DATA t130 TYPE REF TO zcl_lnt_w_static_arrow_w.
          CLEAR t130.
          t130 ?= t31->oval.
          DATA(t131) = CONV string( t130->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t131.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_abstract_token.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t132.
          t132 ?= t31->oval.
          DATA(t133) = CONV string( t132->get_str( ) ).
          CLEAR t30.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t30->sval = t133.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_false.
          RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
        ENDIF.
        IF t30 IS BOUND.
          IF t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            DATA(t134) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t135) = |src/lsp/help.ts:243:58: ABAP record string conversion requir|.
            t135 = t135 && |es primitive dynamic storage|.
            t134->source_location = t135.
            RAISE EXCEPTION t134.
          ENDIF.
        ENDIF.
        IF t30 IS BOUND.
          IF t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            READ TABLE t30->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t136) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t137) = |src/lsp/help.ts:243:58: record string conversion requires th|.
              t137 = t137 && |e original default Object coercion hooks|.
              t136->source_location = t137.
              RAISE EXCEPTION t136.
            ENDIF.
            READ TABLE t30->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t138) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t139) = |src/lsp/help.ts:243:58: record string conversion requires th|.
              t139 = t139 && |e original default Object coercion hooks|.
              t138->source_location = t139.
              RAISE EXCEPTION t138.
            ENDIF.
            READ TABLE t30->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t140) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t141) = |src/lsp/help.ts:243:58: record string conversion requires th|.
              t141 = t141 && |e original default Object coercion hooks|.
              t140->source_location = t141.
              RAISE EXCEPTION t140.
            ENDIF.
            t29 = `[object Object]`.
          ELSE.
            t29 = t30->to_string( ).
          ENDIF.
        ELSE.
          t29 = `undefined`.
        ENDIF.
        DATA(t142) = strlen( t21 ).
        t20 = |{ t21 }{ t29 }|.
        DATA(t143) = |"|.
        DATA(t144) = strlen( t20 ).
        t19 = |{ t20 }{ t143 }|.
        t10 = t19.
      ELSE.
        DATA(t145) = VALUE abap_bool( ).
        DATA(t146) = t12.
        DATA(t147) = |TokenNodeRegex|.
        t145 = xsdbool( t146 = t147 ).
        IF t145 = abap_true.
          DATA(t148) = VALUE string( ).
          DATA(t149) = VALUE string( ).
          DATA(t150) = VALUE string( ).
          DATA(t151) = VALUE string( ).
          DATA t152 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t152.
          DATA t153 TYPE REF TO object.
          CLEAR t153.
          DATA(t154) = t5.
          t153 = t154->get_db65( ).
          DATA t155 TYPE REF TO zlnt_runtime_desc_e5fe811e0f42.
          CLEAR t155.
          IF t153 IS NOT BOUND.
            RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
          ENDIF.
          TRY.
              t155 ?= t153.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
          ENDTRY.
          t152 = t155->zlnt_builtin_nati_72359f490bf2( ).
          t151 = t152->name.
          DATA(t156) = |, "|.
          DATA(t157) = strlen( t151 ).
          t150 = |{ t151 }{ t156 }|.
          DATA(t158) = VALUE string( ).
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          DATA t161 TYPE REF TO object.
          CLEAR t161.
          DATA(t162) = t5.
          t161 = t162->get_db65( ).
          CLEAR t160.
          IF t161 IS BOUND.
            DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t163.
            DATA t164 TYPE REF TO object.
            CLEAR t164.
            CLEAR t163.
            t164 = t161.
            TRY.
                t160 ?= t164.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t160 IS NOT BOUND.
              TRY.
                  t163 ?= t161.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t163 IS BOUND.
                t160 = t163->source( ).
              ENDIF.
              IF t160 IS NOT BOUND.
                CREATE OBJECT t160.
                t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t160->oval = t161.
              ENDIF.
            ENDIF.
          ENDIF.
          DATA(t165) = |getStr|.
          IF t160 IS NOT BOUND.
            RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
          ENDIF.
          IF t160->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref OR t160->oval IS NOT BOUND.
            RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
          ENDIF.
          DATA(t166) = VALUE abap_bool( ).
          CLEAR t166.
          CLEAR t159.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_association_name.
            DATA t167 TYPE REF TO zcl_lnt_association_name.
            CLEAR t167.
            t167 ?= t160->oval.
            DATA(t168) = CONV string( t167->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t168.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_lx_at.
            DATA t169 TYPE REF TO zcl_lnt_lx_at.
            CLEAR t169.
            t169 ?= t160->oval.
            DATA(t170) = CONV string( t169->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t170.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_at_w.
            DATA t171 TYPE REF TO zcl_lnt_at_w.
            CLEAR t171.
            t171 ?= t160->oval.
            DATA(t172) = CONV string( t171->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t172.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_bracket_left.
            DATA t173 TYPE REF TO zcl_lnt_bracket_left.
            CLEAR t173.
            t173 ?= t160->oval.
            DATA(t174) = CONV string( t173->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t174.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_bracket_left_w.
            DATA t175 TYPE REF TO zcl_lnt_bracket_left_w.
            CLEAR t175.
            t175 ?= t160->oval.
            DATA(t176) = CONV string( t175->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t176.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_bracket_right.
            DATA t177 TYPE REF TO zcl_lnt_bracket_right.
            CLEAR t177.
            t177 ?= t160->oval.
            DATA(t178) = CONV string( t177->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t178.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_bracket_right_w.
            DATA t179 TYPE REF TO zcl_lnt_bracket_right_w.
            CLEAR t179.
            t179 ?= t160->oval.
            DATA(t180) = CONV string( t179->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t180.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_colon.
            DATA t181 TYPE REF TO zcl_lnt_colon.
            CLEAR t181.
            t181 ?= t160->oval.
            DATA(t182) = CONV string( t181->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t182.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_lx_comment.
            DATA t183 TYPE REF TO zcl_lnt_lx_comment.
            CLEAR t183.
            t183 ?= t160->oval.
            DATA(t184) = CONV string( t183->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t184.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_dash.
            DATA t185 TYPE REF TO zcl_lnt_dash.
            CLEAR t185.
            t185 ?= t160->oval.
            DATA(t186) = CONV string( t185->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t186.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_dash_w.
            DATA t187 TYPE REF TO zcl_lnt_dash_w.
            CLEAR t187.
            t187 ?= t160->oval.
            DATA(t188) = CONV string( t187->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t188.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_lx_identifier.
            DATA t189 TYPE REF TO zcl_lnt_lx_identifier.
            CLEAR t189.
            t189 ?= t160->oval.
            DATA(t190) = CONV string( t189->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t190.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_instance_arrow.
            DATA t191 TYPE REF TO zcl_lnt_instance_arrow.
            CLEAR t191.
            t191 ?= t160->oval.
            DATA(t192) = CONV string( t191->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t192.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_instance_arrow_w.
            DATA t193 TYPE REF TO zcl_lnt_instance_arrow_w.
            CLEAR t193.
            t193 ?= t160->oval.
            DATA(t194) = CONV string( t193->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t194.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_paren_left.
            DATA t195 TYPE REF TO zcl_lnt_paren_left.
            CLEAR t195.
            t195 ?= t160->oval.
            DATA(t196) = CONV string( t195->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t196.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_paren_left_w.
            DATA t197 TYPE REF TO zcl_lnt_paren_left_w.
            CLEAR t197.
            t197 ?= t160->oval.
            DATA(t198) = CONV string( t197->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t198.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_paren_right.
            DATA t199 TYPE REF TO zcl_lnt_paren_right.
            CLEAR t199.
            t199 ?= t160->oval.
            DATA(t200) = CONV string( t199->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t200.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_paren_right_w.
            DATA t201 TYPE REF TO zcl_lnt_paren_right_w.
            CLEAR t201.
            t201 ?= t160->oval.
            DATA(t202) = CONV string( t201->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t202.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_lx_plus.
            DATA t203 TYPE REF TO zcl_lnt_lx_plus.
            CLEAR t203.
            t203 ?= t160->oval.
            DATA(t204) = CONV string( t203->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t204.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_plus_w.
            DATA t205 TYPE REF TO zcl_lnt_plus_w.
            CLEAR t205.
            t205 ?= t160->oval.
            DATA(t206) = CONV string( t205->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t206.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_pragma.
            DATA t207 TYPE REF TO zcl_lnt_pragma.
            CLEAR t207.
            t207 ?= t160->oval.
            DATA(t208) = CONV string( t207->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t208.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_punctuation.
            DATA t209 TYPE REF TO zcl_lnt_punctuation.
            CLEAR t209.
            t209 ?= t160->oval.
            DATA(t210) = CONV string( t209->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t210.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_static_arrow.
            DATA t211 TYPE REF TO zcl_lnt_static_arrow.
            CLEAR t211.
            t211 ?= t160->oval.
            DATA(t212) = CONV string( t211->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t212.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_static_arrow_w.
            DATA t213 TYPE REF TO zcl_lnt_static_arrow_w.
            CLEAR t213.
            t213 ?= t160->oval.
            DATA(t214) = CONV string( t213->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t214.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_string_token.
            DATA t215 TYPE REF TO zcl_lnt_string_token.
            CLEAR t215.
            t215 ?= t160->oval.
            DATA(t216) = CONV string( t215->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t216.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_lx_string_template.
            DATA t217 TYPE REF TO zcl_lnt_lx_string_template.
            CLEAR t217.
            t217 ?= t160->oval.
            DATA(t218) = CONV string( t217->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t218.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_string_template_begin.
            DATA t219 TYPE REF TO zcl_lnt_string_template_begin.
            CLEAR t219.
            t219 ?= t160->oval.
            DATA(t220) = CONV string( t219->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t220.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_string_template_end.
            DATA t221 TYPE REF TO zcl_lnt_string_template_end.
            CLEAR t221.
            t221 ?= t160->oval.
            DATA(t222) = CONV string( t221->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t222.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_string_template_middle.
            DATA t223 TYPE REF TO zcl_lnt_string_template_middle.
            CLEAR t223.
            t223 ?= t160->oval.
            DATA(t224) = CONV string( t223->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t224.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_at.
            DATA t225 TYPE REF TO zcl_lnt_w_at.
            CLEAR t225.
            t225 ?= t160->oval.
            DATA(t226) = CONV string( t225->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t226.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_at_w.
            DATA t227 TYPE REF TO zcl_lnt_w_at_w.
            CLEAR t227.
            t227 ?= t160->oval.
            DATA(t228) = CONV string( t227->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t228.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_bracket_left.
            DATA t229 TYPE REF TO zcl_lnt_w_bracket_left.
            CLEAR t229.
            t229 ?= t160->oval.
            DATA(t230) = CONV string( t229->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t230.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_bracket_left_w.
            DATA t231 TYPE REF TO zcl_lnt_w_bracket_left_w.
            CLEAR t231.
            t231 ?= t160->oval.
            DATA(t232) = CONV string( t231->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t232.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_bracket_right.
            DATA t233 TYPE REF TO zcl_lnt_w_bracket_right.
            CLEAR t233.
            t233 ?= t160->oval.
            DATA(t234) = CONV string( t233->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t234.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_bracket_right_w.
            DATA t235 TYPE REF TO zcl_lnt_w_bracket_right_w.
            CLEAR t235.
            t235 ?= t160->oval.
            DATA(t236) = CONV string( t235->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t236.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_dash.
            DATA t237 TYPE REF TO zcl_lnt_w_dash.
            CLEAR t237.
            t237 ?= t160->oval.
            DATA(t238) = CONV string( t237->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t238.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_dash_w.
            DATA t239 TYPE REF TO zcl_lnt_w_dash_w.
            CLEAR t239.
            t239 ?= t160->oval.
            DATA(t240) = CONV string( t239->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t240.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_instance_arrow.
            DATA t241 TYPE REF TO zcl_lnt_w_instance_arrow.
            CLEAR t241.
            t241 ?= t160->oval.
            DATA(t242) = CONV string( t241->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t242.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_instance_arrow_w.
            DATA t243 TYPE REF TO zcl_lnt_w_instance_arrow_w.
            CLEAR t243.
            t243 ?= t160->oval.
            DATA(t244) = CONV string( t243->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t244.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_paren_left.
            DATA t245 TYPE REF TO zcl_lnt_w_paren_left.
            CLEAR t245.
            t245 ?= t160->oval.
            DATA(t246) = CONV string( t245->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t246.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_paren_left_w.
            DATA t247 TYPE REF TO zcl_lnt_w_paren_left_w.
            CLEAR t247.
            t247 ?= t160->oval.
            DATA(t248) = CONV string( t247->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t248.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_paren_right.
            DATA t249 TYPE REF TO zcl_lnt_w_paren_right.
            CLEAR t249.
            t249 ?= t160->oval.
            DATA(t250) = CONV string( t249->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t250.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_paren_right_w.
            DATA t251 TYPE REF TO zcl_lnt_w_paren_right_w.
            CLEAR t251.
            t251 ?= t160->oval.
            DATA(t252) = CONV string( t251->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t252.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_plus.
            DATA t253 TYPE REF TO zcl_lnt_w_plus.
            CLEAR t253.
            t253 ?= t160->oval.
            DATA(t254) = CONV string( t253->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t254.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_plus_w.
            DATA t255 TYPE REF TO zcl_lnt_w_plus_w.
            CLEAR t255.
            t255 ?= t160->oval.
            DATA(t256) = CONV string( t255->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t256.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_static_arrow.
            DATA t257 TYPE REF TO zcl_lnt_w_static_arrow.
            CLEAR t257.
            t257 ?= t160->oval.
            DATA(t258) = CONV string( t257->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t258.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_w_static_arrow_w.
            DATA t259 TYPE REF TO zcl_lnt_w_static_arrow_w.
            CLEAR t259.
            t259 ?= t160->oval.
            DATA(t260) = CONV string( t259->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t260.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_abstract_token.
            DATA t261 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t261.
            t261 ?= t160->oval.
            DATA(t262) = CONV string( t261->get_str( ) ).
            CLEAR t159.
            CREATE OBJECT t159.
            t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t159->sval = t262.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_false.
            RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
          ENDIF.
          IF t159 IS BOUND.
            IF t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              DATA(t263) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t264) = |src/lsp/help.ts:243:58: ABAP record string conversion requir|.
              t264 = t264 && |es primitive dynamic storage|.
              t263->source_location = t264.
              RAISE EXCEPTION t263.
            ENDIF.
          ENDIF.
          IF t159 IS BOUND.
            IF t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              READ TABLE t159->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
              IF sy-subrc = 0.
                DATA(t265) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t266) = |src/lsp/help.ts:243:58: record string conversion requires th|.
                t266 = t266 && |e original default Object coercion hooks|.
                t265->source_location = t266.
                RAISE EXCEPTION t265.
              ENDIF.
              READ TABLE t159->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
              IF sy-subrc = 0.
                DATA(t267) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t268) = |src/lsp/help.ts:243:58: record string conversion requires th|.
                t268 = t268 && |e original default Object coercion hooks|.
                t267->source_location = t268.
                RAISE EXCEPTION t267.
              ENDIF.
              READ TABLE t159->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
              IF sy-subrc = 0.
                DATA(t269) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t270) = |src/lsp/help.ts:243:58: record string conversion requires th|.
                t270 = t270 && |e original default Object coercion hooks|.
                t269->source_location = t270.
                RAISE EXCEPTION t269.
              ENDIF.
              t158 = `[object Object]`.
            ELSE.
              t158 = t159->to_string( ).
            ENDIF.
          ELSE.
            t158 = `undefined`.
          ENDIF.
          DATA(t271) = strlen( t150 ).
          t149 = |{ t150 }{ t158 }|.
          DATA(t272) = |"|.
          DATA(t273) = strlen( t149 ).
          t148 = |{ t149 }{ t272 }|.
          t10 = t148.
        ELSE.
          DATA(t274) = VALUE abap_bool( ).
          DATA(t275) = t12.
          DATA(t276) = |ExpressionNode|.
          t274 = xsdbool( t275 = t276 ).
          IF t274 = abap_true.
            DATA(t277) = VALUE string( ).
            DATA(t278) = VALUE string( ).
            DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t279.
            DATA t280 TYPE REF TO object.
            CLEAR t280.
            DATA(t281) = t5.
            t280 = t281->get_db65( ).
            CLEAR t279.
            IF t280 IS BOUND.
              DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t282.
              DATA t283 TYPE REF TO object.
              CLEAR t283.
              CLEAR t282.
              t283 = t280.
              TRY.
                  t279 ?= t283.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t279 IS NOT BOUND.
                TRY.
                    t282 ?= t280.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t282 IS BOUND.
                  t279 = t282->source( ).
                ENDIF.
                IF t279 IS NOT BOUND.
                  CREATE OBJECT t279.
                  t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t279->oval = t280.
                ENDIF.
              ENDIF.
            ENDIF.
            t278 = zcl_lnt_help=>link_to_expression( i_expression = t279 ).
            DATA(t284) = VALUE string( ).
            DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t285.
            DATA(t286) = t5.
            t285 = t286->get_children( ).
            t284 = zcl_lnt_help=>output_nodes( i_nodes_5198 = t285 ).
            DATA(t287) = strlen( t278 ).
            t277 = |{ t278 }{ t284 }|.
            t10 = t277.
          ELSE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t288) = VALUE string( ).
      DATA(t289) = VALUE string( ).
      DATA(t290) = VALUE string( ).
      DATA(t291) = VALUE string( ).
      DATA(t292) = VALUE string( ).
      DATA(t293) = t2.
      DATA(t294) = |<li>|.
      DATA(t295) = strlen( t293 ).
      t292 = |{ t293 }{ t294 }|.
      DATA(t296) = VALUE string( ).
      DATA t297 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t297.
      DATA(t298) = t5.
      t297 = t298->zlnt_builtin_clas_3f891b097658( ).
      t296 = t297->name.
      DATA(t299) = strlen( t292 ).
      t291 = |{ t292 }{ t296 }|.
      DATA(t300) = |, |.
      DATA(t301) = strlen( t291 ).
      t290 = |{ t291 }{ t300 }|.
      DATA(t302) = t10.
      DATA(t303) = strlen( t290 ).
      t289 = |{ t290 }{ t302 }|.
      DATA(t304) = |</li>|.
      DATA(t305) = strlen( t289 ).
      t288 = |{ t289 }{ t304 }|.
      t2 = t288.
    ENDDO.
    DATA(t306) = VALUE string( ).
    DATA(t307) = t2.
    DATA(t308) = |</ul>|.
    DATA(t309) = strlen( t307 ).
    t306 = |{ t307 }{ t308 }|.
    result = t306.

  ENDMETHOD.

  METHOD tokens.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA t2 TYPE string.
    DATA(t3) = |<table><tr><td><b>String</b></td><td><b>Type</b></td>\n    <t|.
    t3 = t3 && |d><b>Row</b></td><td><b>Column</b></td>\n    <td><b>vRow</b><|.
    t3 = t3 && |/td><td><b>vColumn</b></td>\n    </tr>|.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t6.
    t4 = t5->get_tokens( i_with_pragmas = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_position.
      DATA t13 TYPE REF TO zcl_lnt_position.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t15) = t7.
      t14 = t15.
      DATA t16 TYPE REF TO zcl_lnt_position.
      DATA(t17) = t14.
      t16 = t17->start.
      t13 = t16.
      t12 = t13.
      DATA(t18) = VALUE string( ).
      DATA(t19) = t2.
      DATA(t20) = VALUE string( ).
      DATA(t21) = VALUE string( ).
      DATA(t22) = VALUE string( ).
      DATA(t23) = VALUE string( ).
      DATA t24 TYPE string.
      DATA t25 TYPE string.
      DATA t26 TYPE string.
      DATA t27 TYPE string.
      DATA(t28) = |<tr><td><tt>|.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t32) = t7.
      t31 = t32.
      DATA t33 TYPE string.
      DATA(t34) = t31.
      t33 = t34->str.
      t30 = t33.
      t29 = zcl_lnt_help=>escape( i_str = t30 ).
      DATA(t35) = strlen( t28 ).
      t27 = |{ t28 }{ t29 }|.
      DATA(t36) = |</tt></td><td>|.
      DATA(t37) = strlen( t27 ).
      t26 = |{ t27 }{ t36 }|.
      DATA t38 TYPE string.
      DATA t39 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA(t40) = t7.
      t39 = t40->zlnt_builtin_clas_3f891b097658( ).
      t38 = t39->name.
      DATA(t41) = strlen( t26 ).
      t25 = |{ t26 }{ t38 }|.
      DATA(t42) = |</td><td align="right">|.
      DATA(t43) = strlen( t25 ).
      t24 = |{ t25 }{ t42 }|.
      DATA(t44) = VALUE string( ).
      DATA t45 TYPE f.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA(t47) = t12.
      t46 = t47.
      DATA t48 TYPE f.
      DATA(t49) = t46.
      t48 = t49->row.
      t45 = t48.
      IF t45 <> trunc( t45 ) OR t45 > range_safe_integer OR t45 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t50) = CONV int8( t45 ).
      t44 = |{ t50 }|.
      DATA(t51) = strlen( t24 ).
      t23 = |{ t24 }{ t44 }|.
      DATA(t52) = |</td><td align="right">|.
      DATA(t53) = strlen( t23 ).
      t22 = |{ t23 }{ t52 }|.
      DATA t54 TYPE string.
      DATA t55 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t56 TYPE REF TO zcl_lnt_position.
      DATA(t57) = t12.
      t56 = t57.
      DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t59) = t56.
      t58 = t59->col.
      t55 = t58.
      t54 = zlnt_runtime_numb_290eb04a9758=>text( t55 ).
      DATA(t60) = strlen( t22 ).
      t21 = |{ t22 }{ t54 }|.
      DATA(t61) = |</td>|.
      DATA(t62) = strlen( t21 ).
      t20 = |{ t21 }{ t61 }|.
      DATA(t63) = strlen( t19 ).
      t18 = |{ t19 }{ t20 }|.
      t2 = t18.
      DATA t64 TYPE abap_bool.
      DATA(t65) = t12.
      t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_virtual_position ).
      IF t64 = abap_true.
        DATA(t66) = VALUE string( ).
        DATA(t67) = t2.
        DATA(t68) = VALUE string( ).
        DATA(t69) = VALUE string( ).
        DATA t70 TYPE string.
        DATA t71 TYPE string.
        DATA(t72) = |<td>|.
        DATA t73 TYPE string.
        DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t75 TYPE REF TO zcl_lnt_virtual_position.
        DATA(t76) = t12.
        t75 ?= t76.
        t74 = t75->vcol.
        t73 = zlnt_runtime_numb_290eb04a9758=>text( t74 ).
        DATA(t77) = strlen( t72 ).
        t71 = |{ t72 }{ t73 }|.
        DATA(t78) = |</td><td>|.
        DATA(t79) = strlen( t71 ).
        t70 = |{ t71 }{ t78 }|.
        DATA(t80) = VALUE string( ).
        DATA t81 TYPE f.
        DATA t82 TYPE REF TO zcl_lnt_virtual_position.
        DATA(t83) = t12.
        t82 ?= t83.
        t81 = t82->vrow.
        IF t81 <> trunc( t81 ) OR t81 > range_safe_integer OR t81 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t84) = CONV int8( t81 ).
        t80 = |{ t84 }|.
        DATA(t85) = strlen( t70 ).
        t69 = |{ t70 }{ t80 }|.
        DATA(t86) = |</td>|.
        DATA(t87) = strlen( t69 ).
        t68 = |{ t69 }{ t86 }|.
        DATA(t88) = strlen( t67 ).
        t66 = |{ t67 }{ t68 }|.
        t2 = t66.
      ELSE.
        DATA t89 TYPE string.
        DATA(t90) = t2.
        DATA(t91) = |<td></td><td></td>|.
        DATA(t92) = strlen( t90 ).
        t89 = |{ t90 }{ t91 }|.
        t2 = t89.
      ENDIF.
      DATA t93 TYPE string.
      DATA(t94) = t2.
      DATA(t95) = |</tr>|.
      DATA(t96) = strlen( t94 ).
      t93 = |{ t94 }{ t95 }|.
      t2 = t93.
    ENDDO.
    DATA t97 TYPE string.
    DATA(t98) = t2.
    DATA(t99) = |</table>|.
    DATA(t100) = strlen( t98 ).
    t97 = |{ t98 }{ t99 }|.
    t2 = t97.
    DATA(t101) = t2.
    result = t101.

  ENDMETHOD.

  METHOD build_statements.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA(t2) = VALUE string( ).
    DATA(t3) = ||.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA(t8) = t5.
    t7 = t8->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        CLEAR t13.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA(t14) = VALUE f( ).
      DATA(t15) = VALUE f( ).
      DATA t16 TYPE REF TO zcl_lnt_position.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_position.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t18.
      DATA(t19) = t9.
      t18 = t19.
      DATA t20 TYPE REF TO zcl_lnt_position.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t22.
      DATA(t23) = t18.
      t22 = t23->get_first_token( ).
      t21 = t22.
      DATA t24 TYPE REF TO zcl_lnt_position.
      CLEAR t24.
      DATA(t25) = t21.
      t24 = t25->start.
      t20 = t24.
      t17 = t20.
      t16 = t17.
      DATA(t26) = VALUE f( ).
      DATA(t27) = t16.
      t26 = t27->row.
      t15 = t26.
      t14 = t15.
      DATA(t28) = VALUE string( ).
      DATA(t29) = VALUE string( ).
      DATA(t30) = VALUE string( ).
      DATA(t31) = VALUE string( ).
      DATA(t32) = VALUE string( ).
      DATA(t33) = t2.
      DATA(t34) = VALUE string( ).
      DATA(t35) = t14.
      IF t35 <> trunc( t35 ) OR t35 > range_safe_integer OR t35 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t36) = CONV int8( t35 ).
      t34 = |{ t36 }|.
      DATA(t37) = strlen( t33 ).
      t32 = |{ t33 }{ t34 }|.
      DATA(t38) = |: |.
      DATA(t39) = strlen( t32 ).
      t31 = |{ t32 }{ t38 }|.
      DATA(t40) = VALUE string( ).
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      DATA t42 TYPE REF TO zif_lnt_statement.
      CLEAR t42.
      DATA(t43) = t9.
      t42 = t43->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      CLEAR t41.
      IF t42 IS BOUND.
        DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t44.
        DATA t45 TYPE REF TO object.
        CLEAR t45.
        CLEAR t44.
        t45 = t42.
        TRY.
            t41 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS NOT BOUND.
          TRY.
              t44 ?= t42.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t44 IS BOUND.
            t41 = t44->source( ).
          ENDIF.
          IF t41 IS NOT BOUND.
            CREATE OBJECT t41.
            t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t41->oval = t42.
          ENDIF.
        ENDIF.
      ENDIF.
      t40 = zcl_lnt_help=>link_to_statement( i_statement = t41 ).
      DATA(t46) = strlen( t31 ).
      t30 = |{ t31 }{ t40 }|.
      DATA(t47) = |</div></b>\n|.
      DATA(t48) = strlen( t30 ).
      t29 = |{ t30 }{ t47 }|.
      DATA(t49) = VALUE string( ).
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t51.
      DATA t52 TYPE REF TO zcl_lnt_abstract_node.
      CLEAR t52.
      DATA(t53) = t9.
      t52 = t53.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t54.
      DATA(t55) = t52.
      t54 = t55->children.
      t51 = t54.
      t50 ?= t51.
      t49 = zcl_lnt_help=>output_nodes( i_nodes_5198 = t50 ).
      DATA(t56) = strlen( t29 ).
      t28 = |{ t29 }{ t49 }|.
      t2 = t28.
    ENDDO.
    DATA(t57) = t2.
    result = t57.

  ENDMETHOD.

  METHOD build_structure.
    DATA(t1) = i_nodes_5198.
    DATA(t2) = VALUE string( ).
    DATA(t3) = |<ul>|.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zif_lnt_node.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        CLEAR t9.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t5.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_structure_node ).
      IF t10 = abap_true.
        DATA(t12) = VALUE string( ).
        DATA(t13) = VALUE string( ).
        DATA(t14) = VALUE string( ).
        DATA(t15) = VALUE string( ).
        DATA(t16) = VALUE string( ).
        DATA(t17) = t2.
        DATA(t18) = |<li>|.
        DATA(t19) = strlen( t17 ).
        t16 = |{ t17 }{ t18 }|.
        DATA(t20) = VALUE string( ).
        DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t21.
        DATA t22 TYPE REF TO zif_lnt_structure.
        CLEAR t22.
        DATA t23 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t23.
        DATA(t24) = t5.
        DATA t25 TYPE REF TO object.
        CLEAR t25.
        t25 = t24.
        t23 ?= t25.
        t22 = t23->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        CLEAR t21.
        IF t22 IS BOUND.
          DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t26.
          DATA t27 TYPE REF TO object.
          CLEAR t27.
          CLEAR t26.
          t27 = t22.
          TRY.
              t21 ?= t27.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t21 IS NOT BOUND.
            TRY.
                t26 ?= t22.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t26 IS BOUND.
              t21 = t26->source( ).
            ENDIF.
            IF t21 IS NOT BOUND.
              CREATE OBJECT t21.
              t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t21->oval = t22.
            ENDIF.
          ENDIF.
        ENDIF.
        t20 = zcl_lnt_help=>link_to_structure( i_structure = t21 ).
        DATA(t28) = strlen( t16 ).
        t15 = |{ t16 }{ t20 }|.
        DATA(t29) = |, Structure |.
        DATA(t30) = strlen( t15 ).
        t14 = |{ t15 }{ t29 }|.
        DATA(t31) = VALUE string( ).
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t32.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_abstract_node.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t35.
        DATA(t36) = t5.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t37 = t36.
        t35 ?= t37.
        t34 = t35.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t38.
        DATA(t39) = t34.
        t38 = t39->children.
        t33 = t38.
        t32 ?= t33.
        t31 = zcl_lnt_help=>build_structure( i_nodes_5198 = t32 ).
        DATA(t40) = strlen( t14 ).
        t13 = |{ t14 }{ t31 }|.
        DATA(t41) = |</li>|.
        DATA(t42) = strlen( t13 ).
        t12 = |{ t13 }{ t41 }|.
        t2 = t12.
      ELSE.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = t5.
        t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_statement_node ).
        IF t43 = abap_true.
          DATA(t45) = VALUE string( ).
          DATA(t46) = VALUE string( ).
          DATA(t47) = VALUE string( ).
          DATA(t48) = t2.
          DATA(t49) = |<li>|.
          DATA(t50) = strlen( t48 ).
          t47 = |{ t48 }{ t49 }|.
          DATA(t51) = VALUE string( ).
          DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t52.
          DATA t53 TYPE REF TO zif_lnt_statement.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t54.
          DATA(t55) = t5.
          DATA t56 TYPE REF TO object.
          CLEAR t56.
          t56 = t55.
          t54 ?= t56.
          t53 = t54->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          CLEAR t52.
          IF t53 IS BOUND.
            DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t57.
            DATA t58 TYPE REF TO object.
            CLEAR t58.
            CLEAR t57.
            t58 = t53.
            TRY.
                t52 ?= t58.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t52 IS NOT BOUND.
              TRY.
                  t57 ?= t53.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t57 IS BOUND.
                t52 = t57->source( ).
              ENDIF.
              IF t52 IS NOT BOUND.
                CREATE OBJECT t52.
                t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t52->oval = t53.
              ENDIF.
            ENDIF.
          ENDIF.
          t51 = zcl_lnt_help=>link_to_statement( i_statement = t52 ).
          DATA(t59) = strlen( t47 ).
          t46 = |{ t47 }{ t51 }|.
          DATA(t60) = |, Statement</li>|.
          DATA(t61) = strlen( t46 ).
          t45 = |{ t46 }{ t60 }|.
          t2 = t45.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t62) = VALUE string( ).
    DATA(t63) = t2.
    DATA(t64) = |</ul>|.
    DATA(t65) = strlen( t63 ).
    t62 = |{ t63 }{ t64 }|.
    result = t62.

  ENDMETHOD.

  METHOD dump_files.
    DATA(t1) = i_reg_f149.
    DATA(t2) = VALUE string( ).
    DATA(t3) = |<h3 id="_files">Files</h3><table>\n|.
    t2 = t3.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t6.
    DATA(t7) = t1.
    t6 = t7->get_objects( ).
    t5 = t6->iterate( ).
    t4 = t5.
    DO.
      DATA(t8) = abap_true.
      IF t8 = abap_false.
        EXIT.
      ENDIF.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t10.
      DATA(t11) = t4.
      t10 = t11->next( ).
      t9 = t10.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = t9.
      t12 = t13->done.
      IF t12 = abap_true.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_object.
      CLEAR t16.
      DATA(t17) = t9.
      t16 = t17->value.
      t15 = t16.
      t14 = t15.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = abap_false.
      t20 = t21.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          DATA(t23) = VALUE abap_bool( ).
          DATA(t24) = VALUE abap_bool( ).
          DATA(t25) = t1.
          DATA(t26) = t14.
          t24 = t25->is_dependency( i_obj_1ed0 = t26 ).
          DATA(t27) = abap_true.
          t23 = xsdbool( t24 = t27 ).
          t19 = t23.
          DATA(t28) = abap_true.
          t20 = t28.
        CATCH cx_root INTO t22.
          DATA(t29) = VALUE abap_bool( ).
          DATA(t30) = t20.
          t29 = xsdbool( t30 = abap_false ).
          IF t29 = abap_true.
            DATA(t31) = t4.
            t31->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = t20.
      t32 = xsdbool( t33 = abap_false ).
      IF t32 = abap_true.
        DATA(t34) = t4.
        t34->close( ).
      ENDIF.
      DATA(t35) = t19.
      t18 = t35.
      IF t18 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t36) = VALUE string( ).
      DATA(t37) = VALUE string( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = abap_false.
      t38 = t39.
      DATA t40 TYPE REF TO cx_root.
      CLEAR t40.
      TRY.
          DATA(t41) = VALUE string( ).
          DATA(t42) = VALUE string( ).
          DATA(t43) = VALUE string( ).
          DATA(t44) = VALUE string( ).
          DATA(t45) = VALUE string( ).
          DATA(t46) = t2.
          DATA(t47) = |<tr><td valign="top">|.
          DATA(t48) = strlen( t46 ).
          t45 = |{ t46 }{ t47 }|.
          DATA(t49) = VALUE string( ).
          DATA(t50) = t14.
          t49 = t50->get_type( ).
          DATA(t51) = strlen( t45 ).
          t44 = |{ t45 }{ t49 }|.
          DATA(t52) = | |.
          DATA(t53) = strlen( t44 ).
          t43 = |{ t44 }{ t52 }|.
          DATA(t54) = VALUE string( ).
          DATA(t55) = t14.
          t54 = t55->get_name( ).
          DATA(t56) = strlen( t43 ).
          t42 = |{ t43 }{ t54 }|.
          DATA(t57) = |</td><td>|.
          DATA(t58) = strlen( t42 ).
          t41 = |{ t42 }{ t57 }|.
          t37 = t41.
          DATA(t59) = abap_true.
          t38 = t59.
        CATCH cx_root INTO t40.
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = t38.
          t60 = xsdbool( t61 = abap_false ).
          IF t60 = abap_true.
            DATA(t62) = t4.
            t62->close( ).
          ENDIF.
          RAISE EXCEPTION t40.
      ENDTRY.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t38.
      t63 = xsdbool( t64 = abap_false ).
      IF t63 = abap_true.
        DATA(t65) = t4.
        t65->close( ).
      ENDIF.
      DATA(t66) = t37.
      t36 = t66.
      t2 = t36.
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t67.
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = abap_false.
      t69 = t70.
      DATA t71 TYPE REF TO cx_root.
      CLEAR t71.
      TRY.
          DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t72.
          DATA(t73) = t14.
          t72 = t73->get_files( ).
          t68 = t72.
          DATA(t74) = abap_true.
          t69 = t74.
        CATCH cx_root INTO t71.
          DATA(t75) = VALUE abap_bool( ).
          DATA(t76) = t69.
          t75 = xsdbool( t76 = abap_false ).
          IF t75 = abap_true.
            DATA(t77) = t4.
            t77->close( ).
          ENDIF.
          RAISE EXCEPTION t71.
      ENDTRY.
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = t69.
      t78 = xsdbool( t79 = abap_false ).
      IF t78 = abap_true.
        DATA(t80) = t4.
        t80->close( ).
      ENDIF.
      DATA(t81) = t68.
      t67 = t81.
      DATA t82 TYPE REF TO zif_lnt_file.
      CLEAR t82.
      DATA t83 TYPE REF TO object.
      CLEAR t83.
      DATA(t84) = VALUE i( ).
      DO.
        t67->load( ).
        IF t84 >= lines( t67->items ).
          EXIT.
        ENDIF.
        CLEAR t83.
        READ TABLE t67->items INDEX t84 + 1 INTO t83.
        t84 = t84 + 1.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        CLEAR t82.
        IF t83 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t85 ?= t83.
          DATA t86 TYPE REF TO object.
          CLEAR t86.
          t86 = t85->as_ref( ).
          t82 ?= t86.
        ELSE.
          t82 ?= t83.
        ENDIF.
        DATA(t87) = VALUE string( ).
        DATA(t88) = VALUE string( ).
        DATA(t89) = VALUE abap_bool( ).
        DATA(t90) = abap_false.
        t89 = t90.
        DATA t91 TYPE REF TO cx_root.
        CLEAR t91.
        TRY.
            DATA(t92) = VALUE string( ).
            DATA(t93) = VALUE string( ).
            DATA(t94) = t2.
            DATA(t95) = VALUE string( ).
            DATA(t96) = t82.
            t95 = t96->get_filename( ).
            DATA(t97) = strlen( t94 ).
            t93 = |{ t94 }{ t95 }|.
            DATA(t98) = |<br>|.
            DATA(t99) = strlen( t93 ).
            t92 = |{ t93 }{ t98 }|.
            t88 = t92.
            DATA(t100) = abap_true.
            t89 = t100.
          CATCH cx_root INTO t91.
            DATA(t101) = VALUE abap_bool( ).
            DATA(t102) = t89.
            t101 = xsdbool( t102 = abap_false ).
            IF t101 = abap_true.
              DATA(t103) = t4.
              t103->close( ).
            ENDIF.
            RAISE EXCEPTION t91.
        ENDTRY.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = t89.
        t104 = xsdbool( t105 = abap_false ).
        IF t104 = abap_true.
          DATA(t106) = t4.
          t106->close( ).
        ENDIF.
        DATA(t107) = t88.
        t87 = t107.
        t2 = t87.
      ENDDO.
      DATA(t108) = VALUE string( ).
      DATA(t109) = VALUE string( ).
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = abap_false.
      t110 = t111.
      DATA t112 TYPE REF TO cx_root.
      CLEAR t112.
      TRY.
          DATA(t113) = VALUE string( ).
          DATA(t114) = t2.
          DATA(t115) = |</td></tr>\n|.
          DATA(t116) = strlen( t114 ).
          t113 = |{ t114 }{ t115 }|.
          t109 = t113.
          DATA(t117) = abap_true.
          t110 = t117.
        CATCH cx_root INTO t112.
          DATA(t118) = VALUE abap_bool( ).
          DATA(t119) = t110.
          t118 = xsdbool( t119 = abap_false ).
          IF t118 = abap_true.
            DATA(t120) = t4.
            t120->close( ).
          ENDIF.
          RAISE EXCEPTION t112.
      ENDTRY.
      DATA(t121) = VALUE abap_bool( ).
      DATA(t122) = t110.
      t121 = xsdbool( t122 = abap_false ).
      IF t121 = abap_true.
        DATA(t123) = t4.
        t123->close( ).
      ENDIF.
      DATA(t124) = t109.
      t108 = t124.
      t2 = t108.
    ENDDO.
    DATA(t125) = VALUE string( ).
    DATA(t126) = t2.
    DATA(t127) = |</table>\n|.
    DATA(t128) = strlen( t126 ).
    t125 = |{ t126 }{ t127 }|.
    result = t125.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1168_2f3a7a8ccebe.
  ENDMETHOD.
ENDCLASS.
