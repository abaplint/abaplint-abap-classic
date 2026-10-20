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
    t4 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t1 i_filename = t2->zlnt_view_read_no_0041136eb871( ) ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t4 IS INITIAL ) = abap_false ) = abap_true.
      result = zcl_lnt_help=>dump_abap( i_file = t4 i_reg_f149 = t1 i_text_document = t2 i_position_a3fd = t3 ).
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zif_lnt_file.
    t23 = t1->get_file_by_name( i_filename = t2->zlnt_view_read_no_0041136eb871( ) ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t23 IS INITIAL ) = abap_true.
      DATA(t36) = |File not found: |.
      DATA t37 TYPE string.
      t37 = t2->zlnt_view_read_no_0041136eb871( ).
      DATA(t39) = strlen( t36 ).
      result = |{ t36 }{ t37 }|.
      RETURN.
    ENDIF.
    DATA t40 TYPE REF TO zif_lnt_object.
    DATA t41 TYPE REF TO zif_lnt_object.
    DATA t42 TYPE REF TO zif_lnt_object.
    t42 = t1->find_object_for_file( i_file = t23 ).
    t41 ?= t42.
    t40 = t41.
    IF xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_ob_data_definition ) = abap_true.
      DATA t49 TYPE REF TO zcl_lnt_ob_data_definition.
      DATA t51 TYPE REF TO object.
      t51 = t40.
      t49 ?= t51.
      result = zcl_lnt_help=>dump_ddls( i_obj_1ed0 = t49 i_reg_f149 = t1 ).
      RETURN.
    ENDIF.
    DATA(t54) = |Unhandled object type: |.
    DATA t55 TYPE string.
    t55 = t40->get_type( ).
    DATA(t57) = strlen( t54 ).
    result = |{ t54 }{ t55 }|.

  ENDMETHOD.

  METHOD dump_ddls.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_reg_f149.
    DATA(t3) = VALUE string( ).
    t3 = ||.
    DATA(t6) = t3.
    DATA(t7) = VALUE string( ).
    DATA(t8) = VALUE string( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA(t11) = |<h1>|.
    DATA t13 TYPE REF TO zcl_lnt_ob_data_definition.
    t13 = t1.
    DATA(t16) = strlen( t11 ).
    t10 = |{ t11 }{ |DDLS| }|.
    DATA(t18) = strlen( t10 ).
    t9 = |{ t10 }{ | | }|.
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE REF TO zcl_lnt_abstract_object.
    t20 = t1.
    t19 = t20->name.
    DATA(t24) = strlen( t9 ).
    t8 = |{ t9 }{ t19 }|.
    DATA(t26) = strlen( t8 ).
    t7 = |{ t8 }{ |</h1>\n| }|.
    DATA(t27) = strlen( t6 ).
    t3 = |{ t6 }{ t7 }|.
    DATA(t29) = t3.
    DATA(t30) = VALUE string( ).
    DATA(t31) = VALUE string( ).
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zcl_lnt_ob_data_definition.
    t34 = t1.
    DATA t37 TYPE REF TO zcl_lnt_iparse_result.
    t37 = t34->pr_in_src_obj_dt_dfn_ts_dt_dfn( ).
    DATA t40 TYPE REF TO zcl_lnt_parsed_data_definition.
    t40 = t34->parsed_data.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t40 IS INITIAL ) = abap_true.
    ELSE.
      t43 = t40->description.
    ENDIF.
    t32 = t43.
    DATA(t50) = VALUE string( ).
    DATA(t51) = VALUE abap_bool( ).
    IF t32 IS INITIAL.
      t51 = abap_true.
    ELSEIF t32->has = abap_false.
      t51 = abap_true.
    ENDIF.
    IF t51 = abap_true.
      t50 = |undefined|.
    ELSE.
      t50 = t32->value.
    ENDIF.
    t31 = t50.
    DATA(t57) = strlen( t31 ).
    t30 = |{ t31 }{ |\n| }|.
    DATA(t58) = strlen( t29 ).
    t3 = |{ t29 }{ t30 }|.
    DATA(t60) = t3.
    DATA(t61) = VALUE string( ).
    DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t63.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t66 TYPE REF TO zcl_lnt_abstract_object.
    t66 = t1.
    t65 = t66->old.
    DATA t70 TYPE REF TO zcl_lnt_issue.
    DATA t71 TYPE REF TO object.
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
        t74 = t73->as_ref( ).
        t70 ?= t74.
      ELSE.
        t70 ?= t71.
      ENDIF.
      DATA(t76) = VALUE string( ).
      t76 = t70->data_56cc->message_25cb.
      t63->load( ).
      APPEND t76 TO t63->items.
      t63->save( ).
    ENDDO.
    t62 = t63.
    DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t84->has = abap_true.
    t84->value = |<br>\n|.
    t61 = t62->join( p0 = t84 ).
    DATA(t85) = strlen( t60 ).
    t3 = |{ t60 }{ t61 }|.
    DATA(t87) = t3.
    DATA(t89) = strlen( t87 ).
    t3 = |{ t87 }{ |<hr>\n| }|.
    DATA t90 TYPE REF TO zcl_lnt_parsed_data_definition.
    t90 = t1->parsed_data.
    DATA(t96) = VALUE abap_bool( ).
    DATA t97 TYPE REF TO zcl_lnt_parsed_data_definition.
    t97 = t90.
    DATA(t99) = VALUE abap_bool( ).
    IF xsdbool( t97 IS INITIAL ) = abap_true.
      t99 = abap_true.
    ELSE.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t105 TYPE REF TO zcl_lnt_parsed_data_definition.
      t105 = t97.
      IF t105 IS BOUND.
        DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t108 TYPE REF TO object.
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
      t99 = t104->delete( p0 = |tree| ).
    ENDIF.
    t96 = t99.
    DATA(t111) = t3.
    DATA(t112) = VALUE string( ).
    DATA(t113) = VALUE string( ).
    DATA(t114) = |<pre>|.
    DATA(t115) = VALUE string( ).
    DATA(t116) = VALUE string( ).
    DATA t118 TYPE REF TO zlnt_runtime_conf_5b63794eccef.
    CREATE OBJECT t118.
    t116 = t118->zlnt_json_write_s_402e6e8e9b2d( t90 ).
    IF t116 IS INITIAL.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    t115 = zlnt_runtime_json_5744959ea211=>format( p0 = t116 p1 = |  | ).
    DATA(t120) = strlen( t114 ).
    t113 = |{ t114 }{ t115 }|.
    DATA(t122) = strlen( t113 ).
    t112 = |{ t113 }{ |</pre>\n| }|.
    DATA(t123) = strlen( t111 ).
    t3 = |{ t111 }{ t112 }|.
    DATA(t125) = t3.
    DATA(t127) = strlen( t125 ).
    t3 = |{ t125 }{ |<hr>\n| }|.
    DATA(t129) = t3.
    DATA(t130) = VALUE string( ).
    DATA(t131) = VALUE string( ).
    DATA(t132) = |<pre>|.
    DATA(t133) = VALUE string( ).
    DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t133 = t1->parse_type( i_reg_f149 = t2 i_data_element = t137 i_description = t138 )->to_text( i_level = CONV f( 0 ) ).
    DATA(t140) = strlen( t132 ).
    t131 = |{ t132 }{ t133 }|.
    DATA(t142) = strlen( t131 ).
    t130 = |{ t131 }{ |</pre>\n| }|.
    DATA(t143) = strlen( t129 ).
    t3 = |{ t129 }{ t130 }|.
    DATA(t145) = t3.
    DATA(t147) = strlen( t145 ).
    t3 = |{ t145 }{ |<hr>\n| }|.
    DATA t148 TYPE REF TO zif_lnt_file.
    t148 = t1->find_source_file( ).
    IF xsdbool( t148 IS BOUND ) = abap_true.
      DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t153 = zcl_lnt_cds_lexer=>run( i_file = t148 ).
      DATA(t158) = t3.
      DATA(t160) = strlen( t158 ).
      t3 = |{ t158 }{ |<h3>Tokens</h3>\n<pre>\n| }|.
      DATA t162 TYPE REF TO zcl_lnt_abstract_token.
      DATA t163 TYPE REF TO object.
      DATA(t164) = VALUE i( ).
      DO.
        t153->load( ).
        IF t164 >= lines( t153->items ).
          EXIT.
        ENDIF.
        CLEAR t163.
        READ TABLE t153->items INDEX t164 + 1 INTO t163.
        t164 = t164 + 1.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        CLEAR t162.
        IF t163 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t165 ?= t163.
          DATA t166 TYPE REF TO object.
          t166 = t165->as_ref( ).
          t162 ?= t166.
        ELSE.
          t162 ?= t163.
        ENDIF.
        DATA(t168) = t3.
        DATA(t169) = VALUE string( ).
        DATA(t170) = VALUE string( ).
        DATA(t171) = VALUE string( ).
        DATA(t172) = VALUE string( ).
        DATA t174 TYPE REF TO zlnt_runtime_conf_5b63794eccef.
        CREATE OBJECT t174.
        t172 = t174->zlnt_json_write_s_bf7dc546f7f6( t162 ).
        IF t172 IS INITIAL.
          RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
        ENDIF.
        DATA(t176) = strlen( t172 ).
        t171 = |{ t172 }{ | | }|.
        DATA(t177) = VALUE string( ).
        t177 = t162->zlnt_builtin_clas_3f891b097658( )->name.
        DATA(t180) = strlen( t171 ).
        t170 = |{ t171 }{ t177 }|.
        DATA(t182) = strlen( t170 ).
        t169 = |{ t170 }{ |\n| }|.
        DATA(t183) = strlen( t168 ).
        t3 = |{ t168 }{ t169 }|.
      ENDDO.
      DATA(t185) = t3.
      DATA(t187) = strlen( t185 ).
      t3 = |{ t185 }{ |</pre>\n| }|.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD dump_abap.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA(t2) = i_reg_f149.
    DATA(t3) = i_text_document.
    DATA(t4) = i_position_a3fd.
    DATA t5 TYPE string.
    t5 = ||.
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
    DATA(t16) = strlen( t14 ).
    t13 = |{ t14 }{ |<tt>| }|.
    DATA t17 TYPE string.
    t17 = t3->zlnt_view_read_no_0041136eb871( ).
    DATA(t19) = strlen( t13 ).
    t12 = |{ t13 }{ t17 }|.
    DATA(t21) = strlen( t12 ).
    t11 = |{ t12 }{ | (| }|.
    DATA(t22) = VALUE string( ).
    DATA t23 TYPE f.
    DATA t24 TYPE f.
    t24 = t4->zlnt_view_read_no_30cccf3c929a( ).
    DATA(t26) = CONV f( 1 ).
    t23 = t24 + t26.
    IF t23 <> trunc( t23 ) OR t23 > range_safe_integer OR t23 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t27) = CONV int8( t23 ).
    t22 = |{ t27 }|.
    DATA(t28) = strlen( t11 ).
    t10 = |{ t11 }{ t22 }|.
    DATA(t30) = strlen( t10 ).
    t9 = |{ t10 }{ |, | }|.
    DATA t31 TYPE string.
    DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t33 = t4->zlnt_view_read_no_a9574d1ec283( ).
    DATA(t36) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t36->has = abap_true.
    t36->value = CONV f( 1 ).
    t31 = zlnt_runtime_numb_290eb04a9758=>text( zlnt_runtime_numb_290eb04a9758=>calculate( left = t33 right = t36 op = `+` ) ).
    DATA(t37) = strlen( t9 ).
    t8 = |{ t9 }{ t31 }|.
    DATA(t39) = strlen( t8 ).
    t5 = |{ t8 }{ |)</tt>| }|.
    DATA(t41) = t5.
    DATA(t43) = strlen( t41 ).
    t5 = |{ t41 }{ |<hr>| }|.
    DATA(t45) = t5.
    DATA t46 TYPE string.
    t46 = zcl_lnt_help=>cursor_information( i_reg_f149 = t2 i_text_document = t3 i_position_a3fd = t4 i_file = t1 ).
    DATA(t51) = strlen( t45 ).
    t5 = |{ t45 }{ t46 }|.
    DATA(t53) = t5.
    DATA t54 TYPE string.
    t54 = zcl_lnt_help=>file_information( i_file = t1 ).
    DATA(t56) = strlen( t53 ).
    t5 = |{ t53 }{ t54 }|.
    DATA(t58) = t5.
    DATA(t60) = strlen( t58 ).
    t5 = |{ t58 }{ |<hr>| }|.
    DATA(t62) = t5.
    DATA t63 TYPE string.
    t63 = zcl_lnt_help=>dump_files( i_reg_f149 = t2 ).
    DATA(t65) = strlen( t62 ).
    t5 = |{ t62 }{ t63 }|.
    DATA(t67) = t5.
    DATA(t69) = strlen( t67 ).
    t5 = |{ t67 }{ |<hr>| }|.
    DATA(t71) = t5.
    DATA t72 TYPE string.
    t72 = zcl_lnt_help=>dump_info( i_file = t1 ).
    DATA(t74) = strlen( t71 ).
    t5 = |{ t71 }{ t72 }|.
    result = t5.

  ENDMETHOD.

  METHOD dump_info.
    DATA t2 TYPE REF TO zif_lnt_abap_file_information.
    t2 = i_file->info.
    DATA t9 TYPE REF TO zcl_lnt_shape_f5fbbc32.
    t9 = NEW zcl_lnt_shape_f5fbbc32( i_class_definitions = t2->list_class_definitions( ) i_class_implementations = t2->list_class_implementations( ) i_interface_definitions = t2->list_interface_definitions( ) i_forms = t2->list_form_definitions( ) ).
    CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
    t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `classDefinitions` p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `classImplementations` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaceDefinitions` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `forms` p1 = t37 ).
    ENDIF.
    CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
    t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |classDefinitions| p1 = t39 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |classImplementations| p1 = t41 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |interfaceDefinitions| p1 = t43 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |forms| p1 = t45 ).
    ENDIF.
    DATA(t46) = VALUE string( ).
    DATA t48 TYPE string.
    DATA t50 TYPE REF TO zlnt_runtime_conf_5b63794eccef.
    CREATE OBJECT t50.
    t48 = t50->zlnt_json_write_s_8fd05c1f540c( t9 ).
    IF t48 IS INITIAL.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    t46 = zlnt_runtime_json_5744959ea211=>format( p0 = t48 p1 = |  | ).
    DATA t53 TYPE string.
    DATA(t54) = |<h3 id="_info">Info Dump</h3><pre>|.
    DATA(t56) = strlen( t54 ).
    t53 = |{ t54 }{ t46 }|.
    DATA(t58) = strlen( t53 ).
    result = |{ t53 }{ |</pre>| }|.

  ENDMETHOD.

  METHOD cursor_information.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_text_document.
    DATA(t4) = i_file.
    DATA(t5) = VALUE string( ).
    t5 = ||.
    DATA t7 TYPE REF TO zcl_lnt_icursor_data.
    DATA t10 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms.
    DATA t11 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    t11 = t2.
    DATA t13 TYPE REF TO zcl_lnt_no_position.
    t13 = i_position_a3fd.
    t10 = NEW zcl_lnt_itxt_dcmnt_pstn_prms( i_text_document = t11 i_position_a3fd = t13 ).
    CREATE OBJECT t10->zlnt_view_ownkeys_b0e8086400eb.
    t10->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t15 ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t10->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t10->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t16 ).
    ENDIF.
    CREATE OBJECT t10->zlnt_json_ownkeys_70e5fd461788.
    t10->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t18 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t10->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t10->zlnt_json_ownkeys_70e5fd461788->put( p0 = |position| p1 = t20 ).
    ENDIF.
    t7 = zcl_lnt_lsp_utils=>find_cursor( i_reg_f149 = t1 i_pos = t10 ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t7 IS INITIAL ) = abap_false ) = abap_true.
      DATA(t30) = VALUE string( ).
      DATA(t31) = VALUE string( ).
      DATA(t32) = VALUE string( ).
      DATA(t33) = VALUE string( ).
      DATA(t34) = VALUE string( ).
      DATA(t35) = |Statement: |.
      DATA(t36) = VALUE string( ).
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t38 TYPE REF TO zif_lnt_statement.
      t38 = t7->snode->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF t38 IS BOUND.
        DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t43 TYPE REF TO object.
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
      DATA(t46) = strlen( t34 ).
      t33 = |{ t34 }{ |<br>\n| }|.
      DATA(t48) = strlen( t33 ).
      t32 = |{ t33 }{ |Token: | }|.
      DATA(t49) = VALUE string( ).
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      t51 = t7->token.
      t49 = t51->zlnt_builtin_clas_3f891b097658( )->name.
      DATA(t54) = strlen( t32 ).
      t31 = |{ t32 }{ t49 }|.
      DATA(t56) = strlen( t31 ).
      t30 = |{ t31 }{ |<br>\n| }|.
      DATA(t57) = VALUE string( ).
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      t60 = t7->token.
      t57 = zcl_lnt_help=>full_path( i_file = t4 i_token = t60 )->value.
      DATA(t63) = strlen( t30 ).
      t5 = |{ t30 }{ t57 }|.
    ELSE.
      t5 = |No token found at cursor position|.
    ENDIF.
    DATA t65 TYPE REF TO zif_lnt_object.
    DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t69 TYPE REF TO zcl_lnt_abstract_file.
    t69 = t4.
    DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t74) = VALUE string( ).
    t74 = t69->base_name( ).
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
    DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t84 = t73->get( p0 = 1 ).
    DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t89) = VALUE abap_bool( ).
    IF t84 IS INITIAL.
      t89 = abap_true.
    ELSEIF t84->has = abap_false.
      t89 = abap_true.
    ENDIF.
    IF t89 = abap_true.
    ELSE.
      DATA(t92) = VALUE string( ).
      DATA(t93) = VALUE string( ).
      t93 = t84->value.
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
    t68 = t88.
    DATA t100 TYPE REF TO zcl_lnt_abstract_file.
    t100 = t4.
    DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t105) = VALUE string( ).
    t105 = t100->base_name( ).
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
    DATA(t117) = VALUE string( ).
    IF t103->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t103->load( ).
    READ TABLE t103->items INDEX 1 INTO t117.
    DATA t119 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t119 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%23| flags = |g| checked = abap_true.
    DATA(t123) = strlen( t117 ).
    t103->put( p0 = 0 p1 = t119->replace( p0 = t117 p1 = |#| ) ).
    DATA(t127) = VALUE string( ).
    IF t103->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t103->load( ).
    READ TABLE t103->items INDEX 1 INTO t127.
    DATA t129 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t129 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3e| flags = |g| checked = abap_true.
    DATA(t133) = strlen( t127 ).
    t103->put( p0 = 0 p1 = t129->replace( p0 = t127 p1 = |>| ) ).
    DATA(t137) = VALUE string( ).
    IF t103->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t103->load( ).
    READ TABLE t103->items INDEX 1 INTO t137.
    DATA t139 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t139 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3c| flags = |g| checked = abap_true.
    DATA(t143) = strlen( t137 ).
    t103->put( p0 = 0 p1 = t139->replace( p0 = t137 p1 = |<| ) ).
    DATA(t147) = VALUE string( ).
    DATA(t148) = VALUE string( ).
    IF t103->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t103->load( ).
    READ TABLE t103->items INDEX 1 INTO t148.
    DATA(t150) = strlen( t148 ).
    t147 = t148.
    IF t147 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t147 TO UPPER CASE.
    ELSE.
      t147 = zlnt_runtime_uppe_91169605024d=>full( t147 ).
    ENDIF.
    DATA t151 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t151 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |#| flags = |g| checked = abap_true.
    DATA(t155) = strlen( t147 ).
    t103->put( p0 = 0 p1 = t151->replace( p0 = t147 p1 = |/| ) ).
    DATA(t158) = VALUE string( ).
    DATA(t159) = VALUE string( ).
    IF t103->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t103->load( ).
    READ TABLE t103->items INDEX 1 INTO t159.
    DATA(t161) = |(|.
    DATA(t162) = |/|.
    DATA(t163) = strlen( t159 ).
    t158 = t159.
    REPLACE ALL OCCURRENCES OF t161 IN t158 WITH t162.
    t103->put( p0 = 0 p1 = t158 ).
    DATA(t166) = VALUE string( ).
    DATA(t167) = VALUE string( ).
    IF t103->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t103->load( ).
    READ TABLE t103->items INDEX 1 INTO t167.
    DATA(t169) = |)|.
    DATA(t170) = |/|.
    DATA(t171) = strlen( t167 ).
    t166 = t167.
    REPLACE ALL OCCURRENCES OF t169 IN t166 WITH t170.
    t103->put( p0 = 0 p1 = t166 ).
    DATA(t172) = VALUE string( ).
    IF t103->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t103->load( ).
    READ TABLE t103->items INDEX 1 INTO t172.
    DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t174->has = abap_true.
    t174->value = t172.
    t65 = t1->get_object( i_type_9913 = t68 i_name = t174 ).
    IF xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_abap_object ) = abap_true.
      DATA t178 TYPE REF TO zif_lnt_spaghetti_scope.
      DATA t183 TYPE REF TO zcl_lnt_abap_object.
      DATA t185 TYPE REF TO object.
      t185 = t65.
      t183 ?= t185.
      t178 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t1 i_object_19cd = t183 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( ).
      DATA(t187) = t5.
      DATA(t188) = VALUE string( ).
      t188 = zcl_lnt_dump_scope=>dump( i_spaghetti = t178 ).
      DATA(t190) = strlen( t187 ).
      t5 = |{ t187 }{ t188 }|.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( xsdbool( t7 IS INITIAL ) = abap_false ) = abap_true.
        DATA(t200) = t5.
        DATA(t202) = strlen( t200 ).
        t5 = |{ t200 }{ |<hr>Spaghetti Scope by Cursor Position:<br><br>\n| }|.
        DATA t203 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA t206 TYPE REF TO zcl_lnt_position.
        t206 = t7->token->start.
        DATA(t218) = VALUE string( ).
        t218 = t2->zlnt_view_read_no_0041136eb871( ).
        DATA(t220) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t220->has = abap_true.
        t220->value = t218.
        t203 = t178->lookup_position( i_p = t206 i_filename = t220 ).
        IF xsdbool( t203 IS BOUND ) = abap_true.
          DATA t224 TYPE REF TO zcl_lnt_iscope_identifier.
          t224 = t203->get_identifier( ).
          DATA(t229) = VALUE string( ).
          DATA(t230) = VALUE string( ).
          DATA(t231) = VALUE string( ).
          DATA(t232) = VALUE string( ).
          DATA(t233) = VALUE string( ).
          DATA(t234) = t5.
          DATA(t236) = strlen( t234 ).
          t233 = |{ t234 }{ |<u>| }|.
          DATA(t237) = VALUE string( ).
          t237 = t224->stype.
          DATA(t239) = strlen( t233 ).
          t232 = |{ t233 }{ t237 }|.
          DATA(t241) = strlen( t232 ).
          t231 = |{ t232 }{ |, <tt>| }|.
          DATA(t242) = VALUE string( ).
          t242 = t224->sname.
          DATA(t244) = strlen( t231 ).
          t230 = |{ t231 }{ t242 }|.
          DATA(t246) = strlen( t230 ).
          t229 = |{ t230 }{ |</tt>, | }|.
          DATA(t247) = VALUE string( ).
          t247 = t224->filename.
          DATA(t249) = strlen( t229 ).
          t5 = |{ t229 }{ t247 }|.
          DATA(t251) = VALUE string( ).
          DATA(t252) = VALUE string( ).
          DATA(t253) = VALUE string( ).
          DATA(t254) = VALUE string( ).
          DATA(t255) = t5.
          DATA(t257) = strlen( t255 ).
          t254 = |{ t255 }{ |, (| }|.
          DATA(t258) = VALUE string( ).
          DATA(t259) = VALUE f( ).
          t259 = t224->start->row.
          IF t259 <> trunc( t259 ) OR t259 > range_safe_integer OR t259 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t265) = CONV int8( t259 ).
          t258 = |{ t265 }|.
          DATA(t266) = strlen( t254 ).
          t253 = |{ t254 }{ t258 }|.
          DATA(t268) = strlen( t253 ).
          t252 = |{ t253 }{ |, | }|.
          DATA(t269) = VALUE string( ).
          DATA t274 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t274 = t224->start->col.
          t269 = zlnt_runtime_numb_290eb04a9758=>text( t274 ).
          DATA(t276) = strlen( t252 ).
          t251 = |{ t252 }{ t269 }|.
          DATA(t278) = strlen( t251 ).
          t5 = |{ t251 }{ |)</u><br>| }|.
        ELSE.
          DATA(t280) = t5.
          DATA(t282) = strlen( t280 ).
          t5 = |{ t280 }{ |Not found| }|.
        ENDIF.
      ENDIF.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD full_path.
    DATA(t2) = i_token.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    t3 = i_file->structure.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_shape_88a44908.
      t16 = NEW zcl_lnt_shape_88a44908( i_value = || i_keyword = abap_false ).
      CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
      t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t21 ).
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t22 ).
      ENDIF.
      CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
      t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t24 ).
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyword| p1 = t26 ).
      ENDIF.
      result = t16.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zcl_lnt_shape_88a44908.
    t27 = zcl_lnt_help=>traverse( i_node = t3 i_parents = || i_search_b3ca = t2 ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t27 IS INITIAL ) = abap_true.
      DATA t40 TYPE REF TO zcl_lnt_shape_88a44908.
      t40 = NEW zcl_lnt_shape_88a44908( i_value = || i_keyword = abap_false ).
      CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
      t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t45 ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t46 ).
      ENDIF.
      CREATE OBJECT t40->zlnt_json_ownkeys_70e5fd461788.
      t40->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t48 ).
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyword| p1 = t50 ).
      ENDIF.
      result = t40.
      RETURN.
    ENDIF.
    DATA t51 TYPE REF TO zcl_lnt_shape_88a44908.
    DATA t52 TYPE string.
    DATA(t54) = |\n\n|.
    DATA t55 TYPE string.
    t55 = t27->value.
    DATA(t58) = strlen( t54 ).
    t52 = |{ t54 }{ t55 }|.
    DATA t60 TYPE abap_bool.
    t60 = t27->keyword.
    t51 = NEW zcl_lnt_shape_88a44908( i_value = t52 i_keyword = t60 ).
    CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
    t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t63 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t64 ).
    ENDIF.
    CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
    t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t66 ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyword| p1 = t68 ).
    ENDIF.
    result = t51.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA(t3) = i_search_b3ca.
    DATA(t4) = VALUE string( ).
    t4 = i_parents.
    IF xsdbool( t4 <> || ) = abap_true.
      DATA(t10) = t4.
      DATA(t12) = strlen( t10 ).
      t4 = |{ t10 }{ | -> | }|.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_node ) = abap_true.
      DATA(t16) = VALUE string( ).
      DATA(t17) = t4.
      DATA(t19) = strlen( t17 ).
      t16 = |{ t17 }{ |Structure: | }|.
      DATA(t20) = VALUE string( ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t22 TYPE REF TO zif_lnt_structure.
      DATA t23 TYPE REF TO zcl_lnt_structure_node.
      DATA t25 TYPE REF TO object.
      t25 = t1.
      t23 ?= t25.
      t22 = t23->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
      IF t22 IS BOUND.
        DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t27 TYPE REF TO object.
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
      t4 = |{ t16 }{ t20 }|.
    ELSE.
      IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        DATA(t32) = VALUE string( ).
        DATA(t33) = t4.
        DATA(t35) = strlen( t33 ).
        t32 = |{ t33 }{ |Statement: | }|.
        DATA(t36) = VALUE string( ).
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t38 TYPE REF TO zif_lnt_statement.
        DATA t39 TYPE REF TO zcl_lnt_statement_node.
        DATA t41 TYPE REF TO object.
        t41 = t1.
        t39 ?= t41.
        t38 = t39->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF t38 IS BOUND.
          DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t43 TYPE REF TO object.
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
        t4 = |{ t32 }{ t36 }|.
      ELSE.
        IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ) = abap_true.
          DATA(t48) = VALUE string( ).
          DATA(t49) = t4.
          DATA(t51) = strlen( t49 ).
          t48 = |{ t49 }{ |Expression: | }|.
          DATA(t52) = VALUE string( ).
          DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t54 TYPE REF TO zif_lnt_statement_runnable.
          DATA t55 TYPE REF TO zcl_lnt_expression_node.
          DATA t57 TYPE REF TO object.
          t57 = t1.
          t55 ?= t57.
          t54 = t55->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          IF t54 IS BOUND.
            DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
            DATA t59 TYPE REF TO object.
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
          t4 = |{ t48 }{ t52 }|.
        ELSE.
          IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
            DATA(t64) = VALUE string( ).
            DATA(t65) = t4.
            DATA(t67) = strlen( t65 ).
            t64 = |{ t65 }{ |Token: | }|.
            DATA(t68) = VALUE string( ).
            DATA t71 TYPE REF TO zcl_lnt_token_node.
            DATA t73 TYPE REF TO object.
            t73 = t1.
            t71 ?= t73.
            t68 = t71->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->zlnt_builtin_clas_3f891b097658( )->name.
            DATA(t74) = strlen( t64 ).
            t4 = |{ t64 }{ t68 }|.
            DATA t75 TYPE REF TO zcl_lnt_abstract_token.
            DATA t77 TYPE REF TO zcl_lnt_token_node.
            DATA t79 TYPE REF TO object.
            t79 = t1.
            t77 ?= t79.
            t75 = t77->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
            DATA(t80) = VALUE abap_bool( ).
            DATA(t81) = VALUE abap_bool( ).
            DATA(t82) = VALUE abap_bool( ).
            t82 = xsdbool( t75->str = t3->str ).
            t81 = t82.
            IF t82 = abap_true.
              DATA t94 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t94 = t75->start->col.
              DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t110 = t3->start->col.
              t81 = zlnt_runtime_numb_290eb04a9758=>compare( left = t94 right = t110 op = `==` ).
            ENDIF.
            t80 = t81.
            IF t81 = abap_true.
              t80 = xsdbool( t75->start->row = t3->start->row ).
            ENDIF.
            IF t80 = abap_true.
              DATA t137 TYPE REF TO zcl_lnt_shape_88a44908.
              t137 = NEW zcl_lnt_shape_88a44908( i_value = t4 i_keyword = xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_token_node_regex ) = abap_false ) ).
              CREATE OBJECT t137->zlnt_view_ownkeys_b0e8086400eb.
              t137->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t142 ).
              DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t137->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t137->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyword` p1 = t143 ).
              ENDIF.
              CREATE OBJECT t137->zlnt_json_ownkeys_70e5fd461788.
              t137->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t137->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t145 ).
              DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t137->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t137->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyword| p1 = t147 ).
              ENDIF.
              result = t137.
              RETURN.
            ENDIF.
          ELSE.
            DATA t149 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
            DATA t150 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
            DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t154->has = abap_true.
            t154->value = |hover, traverse, unexpected node type|.
            t150 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t154 ).
            t149 = NEW #( ).
            t149->payload = t150.
            CLEAR t149->source_value.
            DATA t156 TYPE REF TO zlnt_view_storage_74017ca272ac.
            DATA t157 TYPE REF TO object.
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
            RAISE EXCEPTION t149.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t159 TYPE REF TO zif_lnt_union_1e9858bf.
    t159 ?= t1.
    t158 = t159->get_children( ).
    DATA t161 TYPE REF TO zif_lnt_node.
    DATA t162 TYPE REF TO object.
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
        t165 = t164->as_ref( ).
        t161 ?= t165.
      ELSE.
        t161 ?= t162.
      ENDIF.
      DATA t166 TYPE REF TO zcl_lnt_shape_88a44908.
      t166 = zcl_lnt_help=>traverse( i_node = t161 i_parents = t4 i_search_b3ca = t3 ).
      IF xsdbool( t166 IS BOUND ) = abap_true.
        result = t166.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD file_information.
    DATA(t1) = i_file.
    DATA t2 TYPE string.
    t2 = ||.
    DATA(t5) = t2.
    DATA(t7) = strlen( t5 ).
    t2 = |{ t5 }{ |<hr><h3 id="_tokens">Tokens</h3>\n| }|.
    DATA(t9) = t2.
    DATA t10 TYPE string.
    t10 = zcl_lnt_help=>tokens( i_file = t1 ).
    DATA(t12) = strlen( t9 ).
    t2 = |{ t9 }{ t10 }|.
    DATA(t14) = t2.
    DATA(t16) = strlen( t14 ).
    t2 = |{ t14 }{ |<hr><h3 id="_statements">Statements</h3>\n| }|.
    DATA(t18) = t2.
    DATA t19 TYPE string.
    t19 = zcl_lnt_help=>build_statements( i_file = t1 ).
    DATA(t21) = strlen( t18 ).
    t2 = |{ t18 }{ t19 }|.
    DATA(t23) = t2.
    DATA(t25) = strlen( t23 ).
    t2 = |{ t23 }{ |<hr><h3 id="_structure">Structure</h3>\n| }|.
    DATA t26 TYPE REF TO zcl_lnt_structure_node.
    t26 = t1->structure.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t26 IS INITIAL ) = abap_false ) = abap_true.
      DATA(t41) = t2.
      DATA t42 TYPE string.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t44.
      DATA t47 TYPE REF TO zcl_lnt_structure_node.
      t47 = t26.
      t44->load( ).
      APPEND t47 TO t44->items.
      t44->save( ).
      t42 = zcl_lnt_help=>build_structure( i_nodes_5198 = t44 ).
      DATA(t50) = strlen( t41 ).
      t2 = |{ t41 }{ t42 }|.
    ELSE.
      DATA(t52) = t2.
      DATA(t54) = strlen( t52 ).
      t2 = |{ t52 }{ |structure undefined| }|.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD escape.
    DATA(t1) = i_str.
    DATA(t3) = t1.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t4 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |&| flags = |g| checked = abap_true.
    DATA(t8) = strlen( t3 ).
    t1 = t4->replace( p0 = t3 p1 = |&amp;| ).
    DATA(t10) = t1.
    DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t11 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |>| flags = |g| checked = abap_true.
    DATA(t15) = strlen( t10 ).
    t1 = t11->replace( p0 = t10 p1 = |&gt;| ).
    DATA(t17) = t1.
    DATA t18 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t18 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |<| flags = |g| checked = abap_true.
    DATA(t22) = strlen( t17 ).
    t1 = t18->replace( p0 = t17 p1 = |&lt;| ).
    DATA(t24) = t1.
    DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t25 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |"| flags = |g| checked = abap_true.
    DATA(t29) = strlen( t24 ).
    t1 = t25->replace( p0 = t24 p1 = |&quot;| ).
    DATA(t31) = t1.
    DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t32 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |'| flags = |g| checked = abap_true.
    DATA(t36) = strlen( t31 ).
    t1 = t32->replace( p0 = t31 p1 = |&#039;| ).
    result = t1.

  ENDMETHOD.

  METHOD link_to_statement.
    DATA(t1) = i_statement.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t6) = |<a href="https://syntax.abaplint.org/#/statement/|.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8 = t1->get( p0 = |constructor| )->get( p0 = |name| ).
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
    DATA(t23) = strlen( t5 ).
    t4 = |{ t5 }{ |" target="_blank">| }|.
    DATA(t24) = VALUE string( ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t25 = t1->get( p0 = |constructor| )->get( p0 = |name| ).
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
    DATA(t40) = strlen( t3 ).
    result = |{ t3 }{ |</a>\n| }|.

  ENDMETHOD.

  METHOD link_to_structure.
    DATA(t1) = i_structure.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t6) = |<a href="https://syntax.abaplint.org/#/structure/|.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8 = t1->get( p0 = |constructor| )->get( p0 = |name| ).
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
    DATA(t23) = strlen( t5 ).
    t4 = |{ t5 }{ |" target="_blank">| }|.
    DATA(t24) = VALUE string( ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t25 = t1->get( p0 = |constructor| )->get( p0 = |name| ).
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
    DATA(t40) = strlen( t3 ).
    result = |{ t3 }{ |</a>\n| }|.

  ENDMETHOD.

  METHOD link_to_expression.
    DATA(t1) = i_expression.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t6) = |<a href="https://syntax.abaplint.org/#/expression/|.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8 = t1->get( p0 = |constructor| )->get( p0 = |name| ).
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
    DATA(t23) = strlen( t5 ).
    t4 = |{ t5 }{ |" target="_blank">| }|.
    DATA(t24) = VALUE string( ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t25 = t1->get( p0 = |constructor| )->get( p0 = |name| ).
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
    DATA(t40) = strlen( t3 ).
    result = |{ t3 }{ |</a>\n| }|.

  ENDMETHOD.

  METHOD output_nodes.
    DATA(t1) = i_nodes_5198.
    DATA(t2) = VALUE string( ).
    t2 = |<ul>|.
    DATA t5 TYPE REF TO zif_lnt_node.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t1->load( ).
      IF t7 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t1->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t10) = VALUE string( ).
      t10 = ||.
      DATA(t12) = VALUE string( ).
      t12 = t5->zlnt_builtin_clas_3f891b097658( )->name.
      IF xsdbool( t12 = |TokenNode| ) = abap_true.
        DATA(t20) = VALUE string( ).
        DATA(t21) = VALUE string( ).
        DATA(t22) = VALUE string( ).
        DATA t24 TYPE REF TO object.
        t24 = t5->get_db65( ).
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
        t22 = t26->zlnt_builtin_nati_72359f490bf2( )->name.
        DATA(t28) = strlen( t22 ).
        t21 = |{ t22 }{ |, "| }|.
        DATA(t29) = VALUE string( ).
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        DATA t32 TYPE REF TO object.
        t32 = t5->get_db65( ).
        CLEAR t31.
        IF t32 IS BOUND.
          DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t34.
          DATA t35 TYPE REF TO object.
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
        CLEAR t30.
        IF t37 = abap_false AND t31->oval IS INSTANCE OF zcl_lnt_association_name.
          DATA t38 TYPE REF TO zcl_lnt_association_name.
          CLEAR t38.
          t38 ?= t31->oval.
          DATA(t39) = CONV string( t38->get_str( ) ).
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
        DATA(t144) = strlen( t20 ).
        t10 = |{ t20 }{ |"| }|.
      ELSE.
        IF xsdbool( t12 = |TokenNodeRegex| ) = abap_true.
          DATA(t149) = VALUE string( ).
          DATA(t150) = VALUE string( ).
          DATA(t151) = VALUE string( ).
          DATA t153 TYPE REF TO object.
          t153 = t5->get_db65( ).
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
          t151 = t155->zlnt_builtin_nati_72359f490bf2( )->name.
          DATA(t157) = strlen( t151 ).
          t150 = |{ t151 }{ |, "| }|.
          DATA(t158) = VALUE string( ).
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          DATA t161 TYPE REF TO object.
          t161 = t5->get_db65( ).
          CLEAR t160.
          IF t161 IS BOUND.
            DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t163.
            DATA t164 TYPE REF TO object.
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
          CLEAR t159.
          IF t166 = abap_false AND t160->oval IS INSTANCE OF zcl_lnt_association_name.
            DATA t167 TYPE REF TO zcl_lnt_association_name.
            CLEAR t167.
            t167 ?= t160->oval.
            DATA(t168) = CONV string( t167->get_str( ) ).
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
          DATA(t273) = strlen( t149 ).
          t10 = |{ t149 }{ |"| }|.
        ELSE.
          IF xsdbool( t12 = |ExpressionNode| ) = abap_true.
            DATA(t278) = VALUE string( ).
            DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t279.
            DATA t280 TYPE REF TO object.
            t280 = t5->get_db65( ).
            CLEAR t279.
            IF t280 IS BOUND.
              DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t282.
              DATA t283 TYPE REF TO object.
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
            t284 = zcl_lnt_help=>output_nodes( i_nodes_5198 = t5->get_children( ) ).
            DATA(t287) = strlen( t278 ).
            t10 = |{ t278 }{ t284 }|.
          ELSE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t289) = VALUE string( ).
      DATA(t290) = VALUE string( ).
      DATA(t291) = VALUE string( ).
      DATA(t292) = VALUE string( ).
      DATA(t293) = t2.
      DATA(t295) = strlen( t293 ).
      t292 = |{ t293 }{ |<li>| }|.
      DATA(t296) = VALUE string( ).
      t296 = t5->zlnt_builtin_clas_3f891b097658( )->name.
      DATA(t299) = strlen( t292 ).
      t291 = |{ t292 }{ t296 }|.
      DATA(t301) = strlen( t291 ).
      t290 = |{ t291 }{ |, | }|.
      DATA(t303) = strlen( t290 ).
      t289 = |{ t290 }{ t10 }|.
      DATA(t305) = strlen( t289 ).
      t2 = |{ t289 }{ |</li>| }|.
    ENDDO.
    DATA(t309) = strlen( t2 ).
    result = |{ t2 }{ |</ul>| }|.

  ENDMETHOD.

  METHOD tokens.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA t2 TYPE string.
    DATA(t3) = |<table><tr><td><b>String</b></td><td><b>Type</b></td>\n    <t|.
    t3 = t3 && |d><b>Row</b></td><td><b>Column</b></td>\n    <td><b>vRow</b><|.
    t3 = t3 && |/td><td><b>vColumn</b></td>\n    </tr>|.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t4 = i_file->get_tokens( i_with_pragmas = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO object.
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
      t12 = t7->start.
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
      DATA t33 TYPE string.
      t33 = t7->str.
      t29 = zcl_lnt_help=>escape( i_str = t33 ).
      DATA(t35) = strlen( t28 ).
      t27 = |{ t28 }{ t29 }|.
      DATA(t37) = strlen( t27 ).
      t26 = |{ t27 }{ |</tt></td><td>| }|.
      DATA t38 TYPE string.
      t38 = t7->zlnt_builtin_clas_3f891b097658( )->name.
      DATA(t41) = strlen( t26 ).
      t25 = |{ t26 }{ t38 }|.
      DATA(t43) = strlen( t25 ).
      t24 = |{ t25 }{ |</td><td align="right">| }|.
      DATA(t44) = VALUE string( ).
      DATA t45 TYPE f.
      t45 = t12->row.
      IF t45 <> trunc( t45 ) OR t45 > range_safe_integer OR t45 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t50) = CONV int8( t45 ).
      t44 = |{ t50 }|.
      DATA(t51) = strlen( t24 ).
      t23 = |{ t24 }{ t44 }|.
      DATA(t53) = strlen( t23 ).
      t22 = |{ t23 }{ |</td><td align="right">| }|.
      DATA t54 TYPE string.
      DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t58 = t12->col.
      t54 = zlnt_runtime_numb_290eb04a9758=>text( t58 ).
      DATA(t60) = strlen( t22 ).
      t21 = |{ t22 }{ t54 }|.
      DATA(t62) = strlen( t21 ).
      t20 = |{ t21 }{ |</td>| }|.
      DATA(t63) = strlen( t19 ).
      t2 = |{ t19 }{ t20 }|.
      IF xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_true.
        DATA(t67) = t2.
        DATA(t68) = VALUE string( ).
        DATA(t69) = VALUE string( ).
        DATA t70 TYPE string.
        DATA t71 TYPE string.
        DATA(t72) = |<td>|.
        DATA t73 TYPE string.
        DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t75 TYPE REF TO zcl_lnt_virtual_position.
        t75 ?= t12.
        t74 = t75->vcol.
        t73 = zlnt_runtime_numb_290eb04a9758=>text( t74 ).
        DATA(t77) = strlen( t72 ).
        t71 = |{ t72 }{ t73 }|.
        DATA(t79) = strlen( t71 ).
        t70 = |{ t71 }{ |</td><td>| }|.
        DATA(t80) = VALUE string( ).
        DATA t81 TYPE f.
        DATA t82 TYPE REF TO zcl_lnt_virtual_position.
        t82 ?= t12.
        t81 = t82->vrow.
        IF t81 <> trunc( t81 ) OR t81 > range_safe_integer OR t81 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t84) = CONV int8( t81 ).
        t80 = |{ t84 }|.
        DATA(t85) = strlen( t70 ).
        t69 = |{ t70 }{ t80 }|.
        DATA(t87) = strlen( t69 ).
        t68 = |{ t69 }{ |</td>| }|.
        DATA(t88) = strlen( t67 ).
        t2 = |{ t67 }{ t68 }|.
      ELSE.
        DATA(t90) = t2.
        DATA(t92) = strlen( t90 ).
        t2 = |{ t90 }{ |<td></td><td></td>| }|.
      ENDIF.
      DATA(t94) = t2.
      DATA(t96) = strlen( t94 ).
      t2 = |{ t94 }{ |</tr>| }|.
    ENDDO.
    DATA(t98) = t2.
    DATA(t100) = strlen( t98 ).
    t2 = |{ t98 }{ |</table>| }|.
    result = t2.

  ENDMETHOD.

  METHOD build_statements.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t2) = VALUE string( ).
    t2 = ||.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = i_file->statements.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
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
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA(t14) = VALUE f( ).
      t14 = t9->get_first_token( )->start->row.
      DATA(t29) = VALUE string( ).
      DATA(t30) = VALUE string( ).
      DATA(t31) = VALUE string( ).
      DATA(t32) = VALUE string( ).
      DATA(t33) = t2.
      DATA(t34) = VALUE string( ).
      IF t14 <> trunc( t14 ) OR t14 > range_safe_integer OR t14 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t36) = CONV int8( t14 ).
      t34 = |{ t36 }|.
      DATA(t37) = strlen( t33 ).
      t32 = |{ t33 }{ t34 }|.
      DATA(t39) = strlen( t32 ).
      t31 = |{ t32 }{ |: | }|.
      DATA(t40) = VALUE string( ).
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      DATA t42 TYPE REF TO zif_lnt_statement.
      t42 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      CLEAR t41.
      IF t42 IS BOUND.
        DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t44.
        DATA t45 TYPE REF TO object.
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
      DATA(t48) = strlen( t30 ).
      t29 = |{ t30 }{ |</div></b>\n| }|.
      DATA(t49) = VALUE string( ).
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t52 TYPE REF TO zcl_lnt_abstract_node.
      t52 = t9.
      t51 = t52->children.
      t50 ?= t51.
      t49 = zcl_lnt_help=>output_nodes( i_nodes_5198 = t50 ).
      DATA(t56) = strlen( t29 ).
      t2 = |{ t29 }{ t49 }|.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD build_structure.
    DATA(t1) = i_nodes_5198.
    DATA(t2) = VALUE string( ).
    t2 = |<ul>|.
    DATA t5 TYPE REF TO zif_lnt_node.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t1->load( ).
      IF t7 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t1->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      IF xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_structure_node ) = abap_true.
        DATA(t13) = VALUE string( ).
        DATA(t14) = VALUE string( ).
        DATA(t15) = VALUE string( ).
        DATA(t16) = VALUE string( ).
        DATA(t17) = t2.
        DATA(t19) = strlen( t17 ).
        t16 = |{ t17 }{ |<li>| }|.
        DATA(t20) = VALUE string( ).
        DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t21.
        DATA t22 TYPE REF TO zif_lnt_structure.
        DATA t23 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t23.
        DATA t25 TYPE REF TO object.
        t25 = t5.
        t23 ?= t25.
        t22 = t23->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        CLEAR t21.
        IF t22 IS BOUND.
          DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t26.
          DATA t27 TYPE REF TO object.
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
        DATA(t30) = strlen( t15 ).
        t14 = |{ t15 }{ |, Structure | }|.
        DATA(t31) = VALUE string( ).
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t32.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zcl_lnt_abstract_node.
        DATA t35 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t35.
        DATA t37 TYPE REF TO object.
        t37 = t5.
        t35 ?= t37.
        t34 = t35.
        t33 = t34->children.
        t32 ?= t33.
        t31 = zcl_lnt_help=>build_structure( i_nodes_5198 = t32 ).
        DATA(t40) = strlen( t14 ).
        t13 = |{ t14 }{ t31 }|.
        DATA(t42) = strlen( t13 ).
        t2 = |{ t13 }{ |</li>| }|.
      ELSE.
        IF xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
          DATA(t46) = VALUE string( ).
          DATA(t47) = VALUE string( ).
          DATA(t48) = t2.
          DATA(t50) = strlen( t48 ).
          t47 = |{ t48 }{ |<li>| }|.
          DATA(t51) = VALUE string( ).
          DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t52.
          DATA t53 TYPE REF TO zif_lnt_statement.
          DATA t54 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t54.
          DATA t56 TYPE REF TO object.
          t56 = t5.
          t54 ?= t56.
          t53 = t54->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          CLEAR t52.
          IF t53 IS BOUND.
            DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t57.
            DATA t58 TYPE REF TO object.
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
          DATA(t61) = strlen( t46 ).
          t2 = |{ t46 }{ |, Statement</li>| }|.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t65) = strlen( t2 ).
    result = |{ t2 }{ |</ul>| }|.

  ENDMETHOD.

  METHOD dump_files.
    DATA(t1) = i_reg_f149.
    DATA(t2) = VALUE string( ).
    t2 = |<h3 id="_files">Files</h3><table>\n|.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t4 = t1->get_objects( )->iterate( ).
    DO.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      t9 = t4->next( ).
      IF t9->done = abap_true.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      t14 = t9->value.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      t20 = abap_false.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          t19 = xsdbool( t1->is_dependency( i_obj_1ed0 = t14 ) = abap_true ).
          t20 = abap_true.
        CATCH cx_root INTO t22.
          IF xsdbool( t20 = abap_false ) = abap_true.
            t4->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      IF xsdbool( t20 = abap_false ) = abap_true.
        t4->close( ).
      ENDIF.
      IF t19 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t37) = VALUE string( ).
      DATA(t38) = VALUE abap_bool( ).
      t38 = abap_false.
      DATA t40 TYPE REF TO cx_root.
      CLEAR t40.
      TRY.
          DATA(t42) = VALUE string( ).
          DATA(t43) = VALUE string( ).
          DATA(t44) = VALUE string( ).
          DATA(t45) = VALUE string( ).
          DATA(t46) = t2.
          DATA(t48) = strlen( t46 ).
          t45 = |{ t46 }{ |<tr><td valign="top">| }|.
          DATA(t49) = VALUE string( ).
          t49 = t14->get_type( ).
          DATA(t51) = strlen( t45 ).
          t44 = |{ t45 }{ t49 }|.
          DATA(t53) = strlen( t44 ).
          t43 = |{ t44 }{ | | }|.
          DATA(t54) = VALUE string( ).
          t54 = t14->get_name( ).
          DATA(t56) = strlen( t43 ).
          t42 = |{ t43 }{ t54 }|.
          DATA(t58) = strlen( t42 ).
          t37 = |{ t42 }{ |</td><td>| }|.
          t38 = abap_true.
        CATCH cx_root INTO t40.
          IF xsdbool( t38 = abap_false ) = abap_true.
            t4->close( ).
          ENDIF.
          RAISE EXCEPTION t40.
      ENDTRY.
      IF xsdbool( t38 = abap_false ) = abap_true.
        t4->close( ).
      ENDIF.
      t2 = t37.
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t67.
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t68.
      DATA(t69) = VALUE abap_bool( ).
      t69 = abap_false.
      DATA t71 TYPE REF TO cx_root.
      CLEAR t71.
      TRY.
          t68 = t14->get_files( ).
          t69 = abap_true.
        CATCH cx_root INTO t71.
          IF xsdbool( t69 = abap_false ) = abap_true.
            t4->close( ).
          ENDIF.
          RAISE EXCEPTION t71.
      ENDTRY.
      IF xsdbool( t69 = abap_false ) = abap_true.
        t4->close( ).
      ENDIF.
      t67 = t68.
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
          t86 = t85->as_ref( ).
          t82 ?= t86.
        ELSE.
          t82 ?= t83.
        ENDIF.
        DATA(t88) = VALUE string( ).
        DATA(t89) = VALUE abap_bool( ).
        t89 = abap_false.
        DATA t91 TYPE REF TO cx_root.
        CLEAR t91.
        TRY.
            DATA(t93) = VALUE string( ).
            DATA(t94) = t2.
            DATA(t95) = VALUE string( ).
            t95 = t82->get_filename( ).
            DATA(t97) = strlen( t94 ).
            t93 = |{ t94 }{ t95 }|.
            DATA(t99) = strlen( t93 ).
            t88 = |{ t93 }{ |<br>| }|.
            t89 = abap_true.
          CATCH cx_root INTO t91.
            IF xsdbool( t89 = abap_false ) = abap_true.
              t4->close( ).
            ENDIF.
            RAISE EXCEPTION t91.
        ENDTRY.
        IF xsdbool( t89 = abap_false ) = abap_true.
          t4->close( ).
        ENDIF.
        t2 = t88.
      ENDDO.
      DATA(t109) = VALUE string( ).
      DATA(t110) = VALUE abap_bool( ).
      t110 = abap_false.
      DATA t112 TYPE REF TO cx_root.
      CLEAR t112.
      TRY.
          DATA(t114) = t2.
          DATA(t116) = strlen( t114 ).
          t109 = |{ t114 }{ |</td></tr>\n| }|.
          t110 = abap_true.
        CATCH cx_root INTO t112.
          IF xsdbool( t110 = abap_false ) = abap_true.
            t4->close( ).
          ENDIF.
          RAISE EXCEPTION t112.
      ENDTRY.
      IF xsdbool( t110 = abap_false ) = abap_true.
        t4->close( ).
      ENDIF.
      t2 = t109.
    ENDDO.
    DATA(t128) = strlen( t2 ).
    result = |{ t2 }{ |</table>\n| }|.

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
