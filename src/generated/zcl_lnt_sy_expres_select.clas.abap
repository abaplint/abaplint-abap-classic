* TS: src/abap/5_syntax/expressions/select.ts:26:1 Select
CLASS zcl_lnt_sy_expres_select DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_skip_implicit_into TYPE REF TO zlnt_runtime_opti_7f2541396f43 i_select_loop_6767 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLASS-METHODS up_to_uses_host_variable IMPORTING i_up TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS build_up_to_rows_fix IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_up TYPE REF TO zcl_lnt_expression_node i_into_expression TYPE REF TO zcl_lnt_expression_node
    RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLASS-METHODS is_strict_mode IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS strict_mode_checks IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    CLASS-METHODS handle_into IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_db_sources TYPE REF TO
    zlnt_runtime_arra_b72089862d0f i_from TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    CLASS-METHODS count_result_type IMPORTING i_scope TYPE REF TO zcl_lnt_current_scope RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS build_structure_type IMPORTING i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_db_sources TYPE REF TO zlnt_runtime_arra_b72089862d0f i_scope TYPE REF TO zcl_lnt_current_scope RETURNING VALUE(result) TYPE REF TO
    zcl_lnt_abstract_type.
    CLASS-METHODS build_table_type IMPORTING i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_db_sources TYPE REF TO zlnt_runtime_arra_b72089862d0f i_scope TYPE REF TO zcl_lnt_current_scope i_from TYPE REF TO
    zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zif_lnt_union_89dd54d5.
    CLASS-METHODS build_database_source_infos IMPORTING i_from TYPE REF TO zcl_lnt_expression_node i_db_sources TYPE REF TO zlnt_runtime_arra_b72089862d0f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS find_field_type IMPORTING i_code TYPE string i_source_infos TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_scope TYPE REF TO zcl_lnt_current_scope RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS find_fields IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_expres_select IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_skip_implicit_into.
    DATA(t4) = i_select_loop_6767.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t3.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t10->has = abap_true.
      t10->value = abap_false.
      t3 = t10.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t4.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ELSEIF t13->has = abap_false.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA(t17) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t17->has = abap_true.
      t17->value = abap_false.
      t4 = t17.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    t20 = t1->get_first_token( ).
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
    t22 = t1->find_direct_expression( i_type_9913 = t25 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t22 IS INITIAL ) = abap_true.
      DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
      t22 = t1->find_first_expression( i_type_9913 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    DATA t37 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    IF xsdbool( t22 IS BOUND ) = abap_true.
      t37 = zcl_lnt_sy_sql_from=>run_syntax( i_node = t22 i_input_967e = t2 ).
    ELSE.
      CREATE OBJECT t37.
    ENDIF.
    t36 = t37.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t22 IS INITIAL ) = abap_true.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t54 = t2->issues.
      DATA t56 TYPE REF TO zcl_lnt_issue.
      DATA t61 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t56 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Missing FROM| i_fix = t61 ).
      t54->load( ).
      APPEND t56 TO t54->items.
      t54->save( ).
      RETURN.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t62 = zcl_lnt_sy_expres_select=>find_fields( i_node = t1 i_input_967e = t2 ).
    DATA(t66) = VALUE abap_bool( ).
    DATA t67 TYPE abap_bool.
    DATA t68 TYPE abap_bool.
    t62->load( ).
    t68 = xsdbool( lines( t62->items ) = 0 ).
    t67 = t68.
    IF t68 = abap_true.
      DATA t74 TYPE REF TO zcl_lnt_expression_node.
      DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d318_e4aedf15dc12.
      t74 = t1->find_direct_expression( i_type_9913 = t76 ).
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t67 = xsdbool( t74 IS INITIAL ).
    ENDIF.
    t66 = t67.
    IF t67 = abap_true.
      DATA t83 TYPE REF TO zcl_lnt_expression_node.
      DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
      t83 = t1->find_direct_expression( i_type_9913 = t85 ).
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t66 = xsdbool( t83 IS INITIAL ).
    ENDIF.
    IF t66 = abap_true.
      DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t92 = t2->issues.
      DATA t94 TYPE REF TO zcl_lnt_issue.
      DATA t99 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t94 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |SELECT: fields missing| i_fix = t99 ).
      t92->load( ).
      APPEND t94 TO t92->items.
      t92->save( ).
      RETURN.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t101.
    DATA t104 TYPE REF TO zcl_lnt_shape_14fea903.
    DATA t105 TYPE REF TO object.
    DATA(t106) = VALUE i( ).
    DO.
      t62->load( ).
      IF t106 >= lines( t62->items ).
        EXIT.
      ENDIF.
      CLEAR t105.
      READ TABLE t62->items INDEX t106 + 1 INTO t105.
      t106 = t106 + 1.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      CLEAR t104.
      IF t105 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t107 ?= t105.
        DATA t108 TYPE REF TO object.
        t108 = t107->as_ref( ).
        t104 ?= t108.
      ELSE.
        t104 ?= t105.
      ENDIF.
      DATA t110 TYPE string.
      t110 = t104->code.
      t101->load( ).
      APPEND t110 TO t101->items.
      t101->save( ).
    ENDDO.
    zcl_lnt_chck_dtbs_flds_mdl=>check_database_fields( i_fields_62af = t101 i_db_sources = t36 i_input_967e = t2 i_token = t1->get_first_token( ) ).
    DATA t117 TYPE REF TO zcl_lnt_expression_node.
    t117 = zcl_lnt_sy_expres_select=>handle_into( i_node = t1 i_input_967e = t2 i_fields_62af = t62 i_db_sources = t36 i_from = t22 ).
    DATA t125 TYPE REF TO zcl_lnt_expression_node.
    DATA(t128) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    t125 = t1->find_direct_expression( i_type_9913 = t128 ).
    IF xsdbool( t125 IS BOUND ) = abap_true.
      DATA t131 TYPE REF TO zcl_lnt_current_scope.
      t131 = t2->scope.
      DATA t138 TYPE REF TO zcl_lnt_position.
      t138 = t20->start.
      DATA t141 TYPE string.
      t141 = t2->filename.
      DATA t143 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t144 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t153 TYPE REF TO zcl_lnt_position.
      t144 = NEW zcl_lnt_iscope_identifier( i_stype = |open_sql| i_sname = |SELECT| i_filename = t141 i_start = t138 i_end = t153 ).
      CREATE OBJECT t144->zlnt_view_ownkeys_b0e8086400eb.
      t144->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t155 ).
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t156 ).
      ENDIF.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t157 ).
      ENDIF.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t158 ).
      ENDIF.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t159 ).
      ENDIF.
      CREATE OBJECT t144->zlnt_json_ownkeys_70e5fd461788.
      t144->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t161 ).
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t163 ).
      ENDIF.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t165 ).
      ENDIF.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t167 ).
      ENDIF.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t169 ).
      ENDIF.
      t143 = t144.
      DATA t172 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t172 = t131->current.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t172 IS INITIAL ) = abap_true.
        DATA t183 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t131->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t143 i_parent = t183 ).
        DELETE t131->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t185 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t185 = t131->current.
        t131->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t143 i_parent = t185 ).
        DELETE t131->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t201 = t131->current.
        t185->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t201 ).
      ENDIF.
      zcl_lnt_sy_sql_for_all_entries=>run_syntax( i_node = t125 i_input_967e = t2 ).
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t208) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t206 = t1->find_all_expressions( i_type_9913 = t208 ).
    DATA t209 TYPE REF TO zcl_lnt_expression_node.
    DATA t210 TYPE REF TO object.
    DATA(t211) = VALUE i( ).
    DO.
      t206->load( ).
      IF t211 >= lines( t206->items ).
        EXIT.
      ENDIF.
      CLEAR t210.
      READ TABLE t206->items INDEX t211 + 1 INTO t210.
      t211 = t211 + 1.
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      CLEAR t209.
      IF t210 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t212 ?= t210.
        DATA t213 TYPE REF TO object.
        t213 = t212->as_ref( ).
        t209 ?= t213.
      ELSE.
        t209 ?= t210.
      ENDIF.
      DATA t214 TYPE REF TO zcl_lnt_abstract_type.
      t214 = zcl_lnt_sy_target=>run_syntax( i_node = t209 i_input_967e = t2 ).
    ENDDO.
    DATA(t217) = VALUE abap_bool( ).
    DATA(t218) = VALUE abap_bool( ).
    DATA t219 TYPE abap_bool.
    DATA t220 TYPE abap_bool.
    t220 = xsdbool( t3->value = abap_false ).
    t219 = t220.
    IF t220 = abap_true.
      DATA t226 TYPE REF TO zcl_lnt_expression_node.
      DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
      t226 = t1->find_direct_expression( i_type_9913 = t228 ).
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t219 = xsdbool( t226 IS INITIAL ).
    ENDIF.
    t218 = t219.
    IF t219 = abap_true.
      DATA t235 TYPE REF TO zcl_lnt_expression_node.
      DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
      t235 = t1->find_direct_expression( i_type_9913 = t237 ).
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t218 = xsdbool( t235 IS INITIAL ).
    ENDIF.
    t217 = t218.
    IF t218 = abap_true.
      DATA t244 TYPE REF TO zcl_lnt_expression_node.
      DATA(t246) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
      t244 = t1->find_direct_expression( i_type_9913 = t246 ).
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t217 = xsdbool( t244 IS INITIAL ).
    ENDIF.
    IF t217 = abap_true.
      DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t253 TYPE REF TO zcl_lnt_expression_node.
      DATA(t256) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
      t253 = t1->find_first_expression( i_type_9913 = t256 ).
      DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t253 IS INITIAL ) = abap_true.
      ELSE.
        DATA t261 TYPE string.
        t261 = t253->concat_tokens( ).
        DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t264->has = abap_true.
        t264->value = t261.
        t257 = t264.
      ENDIF.
      t251 = t257.
      DATA t266 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t268) = `^count\([`.
      t268 = t268 && |\t\n|.
      DATA t269 TYPE c LENGTH 1.
      t269 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t268 t269 INTO t268 RESPECTING BLANKS.
      DATA t270 TYPE c LENGTH 1.
      t270 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t268 t270 INTO t268 RESPECTING BLANKS.
      t268 = t268 && |\r    - |.
      DATA t271 TYPE c LENGTH 1.
      t271 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t268 t271 INTO t268 RESPECTING BLANKS.
      DATA t272 TYPE c LENGTH 1.
      t272 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t268 t272 INTO t268 RESPECTING BLANKS.
      t268 = t268 && |  　|.
      DATA t273 TYPE c LENGTH 1.
      t273 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t268 t273 INTO t268 RESPECTING BLANKS.
      t268 = t268 && `]*\*[`.
      t268 = t268 && |\t\n|.
      DATA t274 TYPE c LENGTH 1.
      t274 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t268 t274 INTO t268 RESPECTING BLANKS.
      DATA t275 TYPE c LENGTH 1.
      t275 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t268 t275 INTO t268 RESPECTING BLANKS.
      t268 = t268 && |\r    - |.
      DATA t276 TYPE c LENGTH 1.
      t276 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t268 t276 INTO t268 RESPECTING BLANKS.
      DATA t277 TYPE c LENGTH 1.
      t277 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t268 t277 INTO t268 RESPECTING BLANKS.
      t268 = t268 && |  　|.
      DATA t278 TYPE c LENGTH 1.
      t278 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t268 t278 INTO t268 RESPECTING BLANKS.
      t268 = t268 && `]*\)$`.
      CREATE OBJECT t266 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t268 flags = |i|.
      t266->source = `^count\(\s*\*\s*\)$`.
      DATA(t280) = VALUE abap_bool( ).
      DATA(t281) = VALUE abap_bool( ).
      DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t282 = t251.
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t286) = VALUE abap_bool( ).
      IF t282 IS INITIAL.
        t286 = abap_true.
      ELSEIF t282->has = abap_false.
        t286 = abap_true.
      ENDIF.
      t281 = t286.
      t280 = t281.
      IF t281 = abap_false.
        DATA t291 TYPE string.
        t291 = t251->value.
        t280 = xsdbool( t266->test( p0 = t291 ) = abap_false ).
      ENDIF.
      IF t280 = abap_true.
        DATA t294 TYPE REF TO zcl_lnt_expression_node.
        DATA t296 TYPE REF TO zcl_lnt_expression_node.
        t296 = t22.
        DATA t299 TYPE REF TO zcl_lnt_expression_node.
        IF xsdbool( t296 IS INITIAL ) = abap_true.
        ELSE.
          DATA(t305) = zlnt_runtime_desc_78196487750d=>zlnt_member_d322_c628df08c7dc.
          t299 = t296->find_direct_expression( i_type_9913 = t305 ).
        ENDIF.
        t294 = t299.
        DO.
          IF xsdbool( t294 IS BOUND ) = abap_false.
            EXIT.
          ENDIF.
          DATA t308 TYPE REF TO zcl_lnt_expression_node.
          DATA t310 TYPE REF TO zcl_lnt_expression_node.
          t310 = t294.
          DATA(t312) = zlnt_runtime_desc_78196487750d=>zlnt_member_d322_c628df08c7dc.
          t308 = t310->find_direct_expression( i_type_9913 = t312 ).
          DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t316.
          IF xsdbool( t308 IS INITIAL ) = abap_true.
            EXIT.
          ENDIF.
          t294 = t308.
        ENDDO.
        DATA t325 TYPE REF TO zcl_lnt_expression_node.
        DATA t327 TYPE REF TO zcl_lnt_expression_node.
        t327 = t294.
        DATA t329 TYPE REF TO zcl_lnt_expression_node.
        IF xsdbool( t327 IS INITIAL ) = abap_true.
        ELSE.
          DATA t334 TYPE REF TO zcl_lnt_expression_node.
          t334 = t327.
          DATA(t336) = zlnt_runtime_desc_78196487750d=>zlnt_member_d321_17502cdda795.
          t329 = t334->find_direct_expression( i_type_9913 = t336 ).
        ENDIF.
        t325 = t329.
        IF xsdbool( t325 IS BOUND ) = abap_true.
          DATA t339 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t341 TYPE REF TO zcl_lnt_current_scope.
          t341 = t2->scope.
          DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t347 TYPE string.
          t347 = t325->concat_tokens( ).
          DATA(t350) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t350->has = abap_true.
          t350->value = t347.
          t344 = t350.
          DATA t352 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t354 = t344.
          DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t358) = VALUE abap_bool( ).
          IF t354 IS INITIAL.
            t358 = abap_true.
          ELSEIF t354->has = abap_false.
            t358 = abap_true.
          ENDIF.
          IF t358 = abap_true.
          ELSE.
            DATA t362 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t364 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t364 = t341->current.
            DATA t367 TYPE REF TO zcl_lnt_typed_identifier.
            IF xsdbool( t364 IS INITIAL ) = abap_true.
            ELSE.
              DATA t372 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t372 = t364.
              DATA t374 TYPE string.
              t374 = t344->value.
              t367 = t372->find_variable( i_name = t374 ).
            ENDIF.
            t362 = t367.
            DATA t376 TYPE REF TO zcl_lnt_typed_identifier.
            IF xsdbool( t362 IS BOUND ) = abap_true.
              t376 = t362.
            ELSE.
              DATA t388 TYPE string.
              t388 = t344->value.
              DATA(t390) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t390->has = abap_true.
              t390->value = t388.
              t376 = t341->find_type_pool_constant( i_name = t390 ).
            ENDIF.
            t352 = t376.
          ENDIF.
          t339 = t352.
          IF xsdbool( t339 IS BOUND ) = abap_true.
            DATA t394 TYPE REF TO zcl_lnt_current_scope.
            t394 = t2->scope.
            DATA t396 TYPE REF TO zcl_lnt_abstract_token.
            t396 = t325->get_first_token( ).
            DATA t402 TYPE REF TO zcl_lnt_typed_identifier.
            t402 = t339.
            DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CREATE OBJECT t404.
            t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t404->sval = |Write To|.
            DATA t406 TYPE string.
            t406 = t2->filename.
            DATA t408 TYPE REF TO zcl_lnt_ireference_extras.
            t394->add_reference( i_usage = t396 i_referencing = t402 i_type_9913 = t404 i_filename = t406 i_extra = t408 ).
          ELSE.
            DATA t410 TYPE string.
            DATA t411 TYPE string.
            DATA(t412) = |Target variable |.
            DATA t413 TYPE string.
            t413 = t325->concat_tokens( ).
            DATA(t416) = strlen( t412 ).
            t411 = |{ t412 }{ t413 }|.
            DATA(t418) = strlen( t411 ).
            t410 = |{ t411 }{ | not found in scope| }|.
            DATA t419 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t419 = t2->issues.
            DATA t421 TYPE REF TO zcl_lnt_issue.
            DATA t426 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t421 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t410 i_fix = t426 ).
            t419->load( ).
            APPEND t421 TO t419->items.
            t419->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t427 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t429) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    t427 = t1->find_direct_expressions( i_type_9913 = t429 ).
    DATA t430 TYPE REF TO zcl_lnt_expression_node.
    DATA t431 TYPE REF TO object.
    DATA(t432) = VALUE i( ).
    DO.
      t427->load( ).
      IF t432 >= lines( t427->items ).
        EXIT.
      ENDIF.
      CLEAR t431.
      READ TABLE t427->items INDEX t432 + 1 INTO t431.
      t432 = t432 + 1.
      DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t433.
      CLEAR t430.
      IF t431 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t433 ?= t431.
        DATA t434 TYPE REF TO object.
        t434 = t433->as_ref( ).
        t430 ?= t434.
      ELSE.
        t430 ?= t431.
      ENDIF.
      DATA t435 TYPE REF TO zcl_lnt_abstract_type.
      t435 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t430 i_input_967e = t2 ).
    ENDDO.
    DATA t438 TYPE REF TO zcl_lnt_expression_node.
    DATA(t441) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    t438 = t1->find_direct_expression( i_type_9913 = t441 ).
    DATA t442 TYPE abap_bool.
    DATA t450 TYPE REF TO zif_lnt_registry.
    t450 = t2->scope->reg.
    t442 = xsdbool( t450->get_config( )->get_language_version( ) = |Cloud| ).
    DATA t453 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t455) = zlnt_runtime_desc_78196487750d=>zlnt_member_d268_bc2d6eaf7263.
    t453 = t1->find_direct_expressions( i_type_9913 = t455 ).
    DATA t456 TYPE REF TO zcl_lnt_expression_node.
    DATA t457 TYPE REF TO object.
    DATA(t458) = VALUE i( ).
    DO.
      t453->load( ).
      IF t458 >= lines( t453->items ).
        EXIT.
      ENDIF.
      CLEAR t457.
      READ TABLE t453->items INDEX t458 + 1 INTO t457.
      t458 = t458 + 1.
      DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t459.
      CLEAR t456.
      IF t457 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t459 ?= t457.
        DATA t460 TYPE REF TO object.
        t460 = t459->as_ref( ).
        t456 ?= t460.
      ELSE.
        t456 ?= t457.
      ENDIF.
      DATA(t462) = VALUE abap_bool( ).
      DATA(t463) = VALUE abap_bool( ).
      DATA(t464) = VALUE abap_bool( ).
      DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t467.
      t464 = xsdbool( xsdbool( t438 IS INITIAL ) = abap_false ).
      t463 = t464.
      IF t464 = abap_true.
        DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t475.
        t463 = xsdbool( xsdbool( t117 IS INITIAL ) = abap_false ).
      ENDIF.
      t462 = t463.
      IF t463 = abap_true.
        DATA t481 TYPE REF TO zcl_lnt_position.
        t481 = t117->get_first_token( )->start.
        DATA t493 TYPE REF TO zcl_lnt_position.
        t493 = t438->get_first_token( )->start.
        t462 = t481->is_after( i_p = t493 ).
      ENDIF.
      DATA(t495) = VALUE abap_bool( ).
      DATA(t496) = VALUE abap_bool( ).
      DATA(t497) = VALUE abap_bool( ).
      DATA(t498) = VALUE abap_bool( ).
      DATA t499 TYPE abap_bool.
      DATA t500 TYPE abap_bool.
      t500 = xsdbool( t117 IS BOUND ).
      t499 = t500.
      IF t500 = abap_true.
        t499 = zcl_lnt_sy_expres_select=>is_strict_mode( i_node = t1 i_input_967e = t2 ).
      ENDIF.
      t498 = t499.
      IF t499 = abap_true.
        DATA t505 TYPE abap_bool.
        t505 = t442.
        IF t442 = abap_false.
          DATA t507 TYPE abap_bool.
          DATA t508 TYPE abap_bool.
          t508 = zcl_lnt_sy_expres_select=>up_to_uses_host_variable( i_up = t456 ).
          t507 = t508.
          IF t508 = abap_true.
            t507 = t462.
          ENDIF.
          t505 = t507.
        ENDIF.
        t498 = t505.
      ENDIF.
      t497 = t498.
      IF t498 = abap_true.
        DATA t511 TYPE abap_bool.
        DATA t512 TYPE abap_bool.
        t512 = xsdbool( t4->value = abap_false ).
        t511 = t512.
        IF t512 = abap_false.
          t511 = t442.
        ENDIF.
        t497 = t511.
      ENDIF.
      t496 = t497.
      IF t497 = abap_true.
        DATA t518 TYPE REF TO zcl_lnt_position.
        t518 = t22->get_first_token( )->start.
        DATA t526 TYPE REF TO zcl_lnt_position.
        t526 = t456->get_first_token( )->start.
        DATA t533 TYPE abap_bool.
        DATA t534 TYPE abap_bool.
        t534 = xsdbool( t518->row < t526->row ).
        t533 = t534.
        IF t534 = abap_false.
          DATA t539 TYPE abap_bool.
          DATA t540 TYPE abap_bool.
          t540 = xsdbool( t518->row = t526->row ).
          t539 = t540.
          IF t540 = abap_true.
            DATA t546 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t546 = t518->col.
            DATA t548 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t548 = t526->col.
            t539 = zlnt_runtime_numb_290eb04a9758=>compare( left = t546 right = t548 op = `<` ).
          ENDIF.
          t533 = t539.
        ENDIF.
        t496 = t533.
      ENDIF.
      t495 = t496.
      IF t496 = abap_true.
        DATA t551 TYPE REF TO zcl_lnt_position.
        t551 = t456->get_first_token( )->start.
        DATA t558 TYPE REF TO zcl_lnt_position.
        t558 = t117->get_first_token( )->start.
        DATA t566 TYPE abap_bool.
        DATA t567 TYPE abap_bool.
        t567 = xsdbool( t551->row < t558->row ).
        t566 = t567.
        IF t567 = abap_false.
          DATA t572 TYPE abap_bool.
          DATA t573 TYPE abap_bool.
          t573 = xsdbool( t551->row = t558->row ).
          t572 = t573.
          IF t573 = abap_true.
            DATA t579 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t579 = t551->col.
            DATA t581 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t581 = t558->col.
            t572 = zlnt_runtime_numb_290eb04a9758=>compare( left = t579 right = t581 op = `<` ).
          ENDIF.
          t566 = t572.
        ENDIF.
        t495 = t566.
      ENDIF.
      IF t495 = abap_true.
        DATA(t584) = |The addition "UP TO n ROWS" must only be placed after the IN|.
        t584 = t584 && |TO/APPENDING clause.|.
        DATA t585 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t585 = t2->issues.
        DATA t587 TYPE REF TO zcl_lnt_issue.
        t587 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t456->get_first_token( ) i_message_26cb = t584 i_fix = zcl_lnt_sy_expres_select=>build_up_to_rows_fix( i_node = t1 i_input_967e = t2 i_up = t456 i_into_expression = t117 ) ).
        t585->load( ).
        APPEND t587 TO t585->items.
        t585->save( ).
      ENDIF.
      DATA t601 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t603) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
      t601 = t456->find_direct_expressions( i_type_9913 = t603 ).
      DATA t604 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t604.
      DATA t605 TYPE REF TO object.
      CLEAR t605.
      DATA(t606) = VALUE i( ).
      DO.
        t601->load( ).
        IF t606 >= lines( t601->items ).
          EXIT.
        ENDIF.
        CLEAR t605.
        READ TABLE t601->items INDEX t606 + 1 INTO t605.
        t606 = t606 + 1.
        DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t607.
        CLEAR t604.
        IF t605 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t607 ?= t605.
          DATA t608 TYPE REF TO object.
          t608 = t607->as_ref( ).
          t604 ?= t608.
        ELSE.
          t604 ?= t605.
        ENDIF.
        DATA t609 TYPE REF TO zcl_lnt_abstract_type.
        t609 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t604 i_input_967e = t2 ).
      ENDDO.
    ENDDO.
    DATA t612 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t614) = zlnt_runtime_desc_78196487750d=>zlnt_member_d274_5d558843257f.
    t612 = t1->find_direct_expressions( i_type_9913 = t614 ).
    DATA t615 TYPE REF TO zcl_lnt_expression_node.
    DATA t616 TYPE REF TO object.
    DATA(t617) = VALUE i( ).
    DO.
      t612->load( ).
      IF t617 >= lines( t612->items ).
        EXIT.
      ENDIF.
      CLEAR t616.
      READ TABLE t612->items INDEX t617 + 1 INTO t616.
      t617 = t617 + 1.
      DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t618.
      CLEAR t615.
      IF t616 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t618 ?= t616.
        DATA t619 TYPE REF TO object.
        t619 = t618->as_ref( ).
        t615 ?= t619.
      ELSE.
        t615 ?= t616.
      ENDIF.
      DATA t620 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t622) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
      t620 = t615->find_direct_expressions( i_type_9913 = t622 ).
      DATA t623 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t623.
      DATA t624 TYPE REF TO object.
      CLEAR t624.
      DATA(t625) = VALUE i( ).
      DO.
        t620->load( ).
        IF t625 >= lines( t620->items ).
          EXIT.
        ENDIF.
        CLEAR t624.
        READ TABLE t620->items INDEX t625 + 1 INTO t624.
        t625 = t625 + 1.
        DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t626.
        CLEAR t623.
        IF t624 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t626 ?= t624.
          DATA t627 TYPE REF TO object.
          t627 = t626->as_ref( ).
          t623 ?= t627.
        ELSE.
          t623 ?= t624.
        ENDIF.
        DATA t628 TYPE REF TO zcl_lnt_abstract_type.
        t628 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t623 i_input_967e = t2 ).
      ENDDO.
    ENDDO.
    DATA t631 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t633) = zlnt_runtime_desc_78196487750d=>zlnt_member_d301_61c04e5b3781.
    t631 = t1->find_all_expressions( i_type_9913 = t633 ).
    DATA t634 TYPE REF TO zcl_lnt_expression_node.
    DATA t635 TYPE REF TO object.
    DATA(t636) = VALUE i( ).
    DO.
      t631->load( ).
      IF t636 >= lines( t631->items ).
        EXIT.
      ENDIF.
      CLEAR t635.
      READ TABLE t631->items INDEX t636 + 1 INTO t635.
      t636 = t636 + 1.
      DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t637.
      CLEAR t634.
      IF t635 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t637 ?= t635.
        DATA t638 TYPE REF TO object.
        t638 = t637->as_ref( ).
        t634 ?= t638.
      ELSE.
        t634 ?= t635.
      ENDIF.
      zcl_lnt_sy_sql_compare=>run_syntax( i_node = t634 i_input_967e = t2 i_tables_8d5a = t36 ).
    ENDDO.
    DATA t642 TYPE REF TO zcl_lnt_expression_node.
    DATA(t645) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
    t642 = t1->find_direct_expression( i_type_9913 = t645 ).
    IF xsdbool( t642 IS BOUND ) = abap_true.
      zcl_lnt_sy_sql_order_by=>run_syntax( i_node = t642 i_input_967e = t2 ).
      DATA t651 TYPE REF TO zcl_lnt_expression_node.
      DATA(t654) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
      t651 = t1->find_direct_expression( i_type_9913 = t654 ).
      DATA(t655) = VALUE abap_bool( ).
      DATA(t656) = VALUE abap_bool( ).
      DATA(t657) = VALUE abap_bool( ).
      DATA t658 TYPE abap_bool.
      DATA t659 TYPE abap_bool.
      t659 = xsdbool( t117 IS BOUND ).
      t658 = t659.
      IF t659 = abap_true.
        t658 = xsdbool( t651 IS BOUND ).
      ENDIF.
      t657 = t658.
      IF t658 = abap_true.
        DATA t664 TYPE REF TO zcl_lnt_position.
        t664 = t117->get_first_token( )->start.
        DATA t672 TYPE REF TO zcl_lnt_position.
        t672 = t642->get_first_token( )->start.
        DATA t680 TYPE abap_bool.
        DATA t681 TYPE abap_bool.
        t681 = xsdbool( t664->row < t672->row ).
        t680 = t681.
        IF t681 = abap_false.
          DATA t686 TYPE abap_bool.
          DATA t687 TYPE abap_bool.
          t687 = xsdbool( t664->row = t672->row ).
          t686 = t687.
          IF t687 = abap_true.
            DATA t693 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t693 = t664->col.
            DATA t695 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t695 = t672->col.
            t686 = zlnt_runtime_numb_290eb04a9758=>compare( left = t693 right = t695 op = `<` ).
          ENDIF.
          t680 = t686.
        ENDIF.
        t657 = t680.
      ENDIF.
      t656 = t657.
      IF t657 = abap_true.
        DATA t698 TYPE REF TO zcl_lnt_position.
        t698 = t651->get_first_token( )->start.
        DATA t706 TYPE REF TO zcl_lnt_position.
        t706 = t642->get_first_token( )->start.
        DATA t714 TYPE abap_bool.
        DATA t715 TYPE abap_bool.
        t715 = xsdbool( t698->row < t706->row ).
        t714 = t715.
        IF t715 = abap_false.
          DATA t720 TYPE abap_bool.
          DATA t721 TYPE abap_bool.
          t721 = xsdbool( t698->row = t706->row ).
          t720 = t721.
          IF t721 = abap_true.
            DATA t727 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t727 = t698->col.
            DATA t729 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t729 = t706->col.
            t720 = zlnt_runtime_numb_290eb04a9758=>compare( left = t727 right = t729 op = `<` ).
          ENDIF.
          t714 = t720.
        ENDIF.
        t656 = t714.
      ENDIF.
      t655 = t656.
      IF t656 = abap_true.
        DATA t732 TYPE REF TO zcl_lnt_position.
        t732 = t651->get_first_token( )->start.
        DATA t740 TYPE REF TO zcl_lnt_position.
        t740 = t117->get_first_token( )->start.
        DATA t748 TYPE abap_bool.
        DATA t749 TYPE abap_bool.
        t749 = xsdbool( t732->row < t740->row ).
        t748 = t749.
        IF t749 = abap_false.
          DATA t754 TYPE abap_bool.
          DATA t755 TYPE abap_bool.
          t755 = xsdbool( t732->row = t740->row ).
          t754 = t755.
          IF t755 = abap_true.
            DATA t761 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t761 = t732->col.
            DATA t763 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t763 = t740->col.
            t754 = zlnt_runtime_numb_290eb04a9758=>compare( left = t761 right = t763 op = `<` ).
          ENDIF.
          t748 = t754.
        ENDIF.
        t655 = t748.
      ENDIF.
      IF t655 = abap_true.
        DATA t767 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t767 = t2->issues.
        DATA t769 TYPE REF TO zcl_lnt_issue.
        DATA t775 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t769 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t642->get_first_token( ) i_message_26cb = |ORDER BY must be before INTO, after WHERE| i_fix = t775 ).
        t767->load( ).
        APPEND t769 TO t767->items.
        t767->save( ).
      ENDIF.
    ENDIF.
    IF zcl_lnt_sy_expres_select=>is_strict_mode( i_node = t1 i_input_967e = t2 ) = abap_true.
      zcl_lnt_sy_expres_select=>strict_mode_checks( i_node = t1 i_input_967e = t2 ).
    ENDIF.
    IF xsdbool( t2->scope->get_type( ) = |open_sql| ) = abap_true.
      DATA t786 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t787 TYPE REF TO zcl_lnt_current_scope.
      t787 = t2->scope.
      DATA t790 TYPE REF TO zcl_lnt_abstract_token.
      t790 = t1->get_last_token( ).
      DATA t794 TYPE f.
      t794 = t790->start->row.
      DATA t801 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t801 = t790->start->col.
      DATA t807 TYPE f.
      t807 = strlen( t790->str ).
      DATA(t812) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t812->has = abap_true.
      t812->value = t807.
      t786 = t787->pop( i_end = NEW zcl_lnt_position( i_row = t794 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t801 right = t812 op = `+` ) ) ).
    ENDIF.
  ENDMETHOD.

  METHOD up_to_uses_host_variable.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    t6 = i_up->find_first_expression( i_type_9913 = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t10 = t6->get_first_token( ).
    ENDIF.
    t4 = t10.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
    ELSE.
      DATA t25 TYPE string.
      t25 = t4->str.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t25.
      t17 = t27.
    ENDIF.
    t3 = t17.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t31->has = abap_true.
    t31->value = |@|.
    t28 = t31.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE abap_bool( ).
    IF t3 IS BOUND.
      t33 = t3->has.
    ENDIF.
    IF t28 IS BOUND.
      t34 = t28->has.
    ENDIF.
    IF t33 = t34.
      IF t33 = abap_false.
        t2 = abap_true.
      ELSEIF t3->value = t28->value.
        t2 = abap_true.
      ENDIF.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD build_up_to_rows_fix.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_up.
    DATA(t4) = i_into_expression.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = i_node->get_tokens( ).
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    t8 = t3->get_last_token( ).
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t14) = VALUE i( ).
    DATA(t15) = VALUE f( ).
    DATA(t16) = VALUE f( ).
    DATA(t17) = VALUE f( ).
    t17 = CONV f( -1 ).
    DATA(t19) = VALUE f( ).
    t19 = CONV f( -1 ).
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t5->load( ).
      IF t24 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t5->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA(t29) = CONV f( 1 ).
      t17 = t17 + t29.
      DATA(t30) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t33.
      IF t22 IS BOUND.
        DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t35.
        t36 = t22.
        TRY.
            t33 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS NOT BOUND.
          TRY.
              t35 ?= t22.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t35 IS BOUND.
            t33 = t35->source( ).
          ENDIF.
          IF t33 IS NOT BOUND.
            CREATE OBJECT t33.
            t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t33->oval = t22.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t34.
      IF t8 IS BOUND.
        DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t37.
        DATA t38 TYPE REF TO object.
        CLEAR t37.
        t38 = t8.
        TRY.
            t34 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS NOT BOUND.
          TRY.
              t37 ?= t8.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t37 IS BOUND.
            t34 = t37->source( ).
          ENDIF.
          IF t34 IS NOT BOUND.
            CREATE OBJECT t34.
            t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t34->oval = t8.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t33 IS BOUND.
        t30 = t33->strict_equals( t34 ).
      ELSE.
        t30 = xsdbool( t34 IS NOT BOUND ).
      ENDIF.
      IF t30 = abap_true.
        t19 = t17.
        EXIT.
      ENDIF.
    ENDDO.
    t16 = t19.
    DATA(t41) = CONV f( 1 ).
    t15 = t16 + t41.
    IF t15 > range_i32_upper.
      t14 = range_i32_upper.
    ELSEIF t15 < range_i32_lower.
      t14 = range_i32_lower.
    ELSE.
      t14 = trunc( t15 ).
    ENDIF.
    t14 = t14 + 1.
    DATA t42 TYPE REF TO object.
    t5->load( ).
    READ TABLE t5->items INDEX t14 INTO t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t43 ?= t42.
      DATA t44 TYPE REF TO object.
      t44 = t43->as_ref( ).
      t12 ?= t44.
    ELSE.
      t12 ?= t42.
    ENDIF.
    DATA t47 TYPE REF TO zcl_lnt_position.
    DATA t49 TYPE REF TO zcl_lnt_abstract_token.
    t49 = t12.
    DATA t51 TYPE REF TO zcl_lnt_position.
    IF xsdbool( t49 IS INITIAL ) = abap_true.
    ELSE.
      t51 = t49->start.
    ENDIF.
    t47 = t51.
    DATA t60 TYPE REF TO zcl_lnt_position.
    IF xsdbool( t47 IS BOUND ) = abap_true.
      t60 = t47.
    ELSE.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      t66 = t8.
      DATA(t69) = VALUE f( ).
      t69 = t66->start->row.
      DATA t76 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t76 = t66->start->col.
      DATA(t82) = VALUE f( ).
      t82 = strlen( t66->str ).
      DATA(t87) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t87->has = abap_true.
      t87->value = t82.
      t60 = NEW zcl_lnt_position( i_row = t69 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t76 right = t87 op = `+` ) ).
    ENDIF.
    DATA t89 TYPE REF TO zcl_lnt_irange.
    DATA t95 TYPE REF TO zcl_lnt_position.
    t95 = t3->get_first_token( )->start.
    t89 = NEW zcl_lnt_irange( i_start = t95 i_end = t60 ).
    CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
    t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t99 ).
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t100 ).
    ENDIF.
    CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
    t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t102 ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t104 ).
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t106 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t108 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t110) = VALUE string( ).
    t110 = t2->filename.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t113.
    DATA t116 TYPE REF TO zcl_lnt_itext_edit.
    DATA t117 TYPE REF TO zcl_lnt_irange.
    DATA t118 TYPE REF TO zcl_lnt_irange.
    DATA t119 TYPE REF TO zcl_lnt_position.
    DATA t121 TYPE REF TO zcl_lnt_abstract_token.
    t121 = t4->get_last_token( ).
    DATA(t125) = VALUE f( ).
    t125 = t121->start->row.
    DATA t132 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t132 = t121->start->col.
    DATA(t138) = VALUE f( ).
    t138 = strlen( t121->str ).
    DATA(t143) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t143->has = abap_true.
    t143->value = t138.
    t119 = NEW zcl_lnt_position( i_row = t125 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t132 right = t143 op = `+` ) ).
    DATA t146 TYPE REF TO zcl_lnt_abstract_token.
    t146 = t4->get_last_token( ).
    DATA(t150) = VALUE f( ).
    t150 = t146->start->row.
    DATA t157 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t157 = t146->start->col.
    DATA(t163) = VALUE f( ).
    t163 = strlen( t146->str ).
    DATA(t168) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t168->has = abap_true.
    t168->value = t163.
    t118 = NEW zcl_lnt_irange( i_start = t119 i_end = NEW zcl_lnt_position( i_row = t150 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t157 right = t168 op = `+` ) ) ).
    CREATE OBJECT t118->zlnt_view_ownkeys_b0e8086400eb.
    t118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t169 ).
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t170 ).
    ENDIF.
    CREATE OBJECT t118->zlnt_json_ownkeys_70e5fd461788.
    t118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t172 ).
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t174 ).
    ENDIF.
    t117 = t118.
    DATA(t177) = | |.
    DATA(t178) = VALUE string( ).
    t178 = t3->concat_tokens( ).
    DATA(t180) = strlen( t177 ).
    t116 = NEW zcl_lnt_itext_edit( i_range = t117 i_new_text = |{ t177 }{ t178 }| ).
    CREATE OBJECT t116->zlnt_view_ownkeys_b0e8086400eb.
    t116->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t181 ).
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t182 ).
    ENDIF.
    CREATE OBJECT t116->zlnt_json_ownkeys_70e5fd461788.
    t116->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t184 ).
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t186 ).
    ENDIF.
    t113->load( ).
    APPEND t116 TO t113->items.
    t113->save( ).
    DATA t188 TYPE REF TO zcl_lnt_itext_edit.
    t188 = NEW zcl_lnt_itext_edit( i_range = t89 i_new_text = || ).
    CREATE OBJECT t188->zlnt_view_ownkeys_b0e8086400eb.
    t188->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t193 ).
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t194 ).
    ENDIF.
    CREATE OBJECT t188->zlnt_json_ownkeys_70e5fd461788.
    t188->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t196 ).
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t198 ).
    ENDIF.
    t113->load( ).
    APPEND t188 TO t113->items.
    t113->save( ).
    t108 = t106->set( p0 = t110 p1 = t113 ).
    result = t106.

  ENDMETHOD.

  METHOD is_strict_mode.
    DATA(t1) = i_node.
    DATA t10 TYPE REF TO zif_lnt_registry.
    t10 = i_input_967e->scope->reg.
    IF xsdbool( t10->get_config( )->get_language_version( ) = |Cloud| ) = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
    t19->load( ).
    APPEND t22 TO t19->items.
    t19->save( ).
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
    t19->load( ).
    APPEND t24 TO t19->items.
    t19->save( ).
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t19->load( ).
    APPEND t26 TO t19->items.
    t19->save( ).
    t16 = t1->find_direct_expressions_multi( i_type_9913 = t19 ).
    DATA t28 TYPE REF TO object.
    t16->load( ).
    READ TABLE t16->items INDEX 1 INTO t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t29 ?= t28.
      DATA t30 TYPE REF TO object.
      t30 = t29->as_ref( ).
      t15 ?= t30.
    ELSE.
      t15 ?= t28.
    ENDIF.
    t14 = t15.
    DATA t31 TYPE REF TO zcl_lnt_expression_node.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    t31 = t1->find_direct_expression( i_type_9913 = t34 ).
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE abap_bool.
    DATA t37 TYPE abap_bool.
    t37 = xsdbool( t14 IS BOUND ).
    t36 = t37.
    IF t37 = abap_true.
      t36 = xsdbool( t31 IS BOUND ).
    ENDIF.
    t35 = t36.
    IF t36 = abap_true.
      DATA t42 TYPE REF TO zcl_lnt_position.
      t42 = t14->get_first_token( )->start.
      DATA t53 TYPE REF TO zcl_lnt_position.
      t53 = t31->get_first_token( )->start.
      t35 = t42->is_after( i_p = t53 ).
    ENDIF.
    IF t35 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d319_3b9487add007.
    t57 = t1->find_first_expression( i_type_9913 = t59 ).
    IF xsdbool( t57 IS BOUND ) = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    t61 = t1->find_all_expressions( i_type_9913 = t63 ).
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    DATA t65 TYPE REF TO object.
    DATA(t66) = VALUE i( ).
    DO.
      t61->load( ).
      IF t66 >= lines( t61->items ).
        EXIT.
      ENDIF.
      CLEAR t65.
      READ TABLE t61->items INDEX t66 + 1 INTO t65.
      t66 = t66 + 1.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      CLEAR t64.
      IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t67 ?= t65.
        DATA t68 TYPE REF TO object.
        t68 = t67->as_ref( ).
        t64 ?= t68.
      ELSE.
        t64 ?= t65.
      ENDIF.
      DATA t70 TYPE string.
      t70 = t64->get_first_token( )->str.
      IF xsdbool( t70 = |@| ) = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t78 TYPE REF TO zcl_lnt_expression_node.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d317_252b4f448498.
    t78 = t1->find_first_expression( i_type_9913 = t81 ).
    DATA t82 TYPE abap_bool.
    DATA t83 TYPE abap_bool.
    t83 = xsdbool( t78 IS BOUND ).
    t82 = t83.
    IF t83 = abap_true.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      t86 = t78->find_direct_token_by_text( i_text = |,| ).
      t82 = xsdbool( t86 IS BOUND ).
    ENDIF.
    IF t82 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD strict_mode_checks.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    t3 = t1->find_all_expressions( i_type_9913 = t6 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t3->load( ).
      IF t10 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t3->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t13.
      DATA t14 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_node.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_abstract_node.
      t16 = t8.
      DATA t20 TYPE REF TO zif_lnt_node.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t21 = t16->children.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      t21->load( ).
      CLEAR t23.
      READ TABLE t21->items INDEX 1 INTO t23.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t20.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t23.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t20 ?= t25.
      ELSE.
        t20 ?= t23.
      ENDIF.
      t15 = t20.
      t14 ?= t15.
      t13 = t14.
      DATA t28 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t28.
      DATA t29 TYPE REF TO zif_lnt_union_4cf1d054.
      t29 = t13.
      DATA t31 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t31.
      IF xsdbool( t29 IS INITIAL ) = abap_true.
        CLEAR t31.
      ELSE.
        DATA t35 TYPE REF TO zif_lnt_union_daf022d4.
        DATA t39 TYPE REF TO object.
        t39 = t29->get_db65( ).
        t35 ?= t39.
        t31 = t35.
      ENDIF.
      t28 = t31.
      IF xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_sql_alias_field ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t40) = VALUE abap_bool( ).
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t42.
      DATA t44 TYPE REF TO zif_lnt_union_4cf1d054.
      t44 = t13.
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t46.
      IF xsdbool( t44 IS INITIAL ) = abap_true.
        CLEAR t46.
      ELSE.
        t46 = t44->get_first_token( ).
      ENDIF.
      t42 = t46.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      IF xsdbool( t42 IS INITIAL ) = abap_true.
        CLEAR t53.
      ELSE.
        DATA t61 TYPE string.
        t61 = t42->str.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t61.
        t53 = t63.
      ENDIF.
      t41 = t53.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t67->has = abap_true.
      t67->value = |@|.
      t64 = t67.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE abap_bool( ).
      IF t41 IS BOUND.
        t69 = t41->has.
      ENDIF.
      IF t64 IS BOUND.
        t70 = t64->has.
      ENDIF.
      IF t69 = t70.
        IF t69 = abap_false.
          t40 = abap_true.
        ELSEIF t41->value = t64->value.
          t40 = abap_true.
        ENDIF.
      ENDIF.
      IF t40 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      DATA t73 TYPE REF TO zif_lnt_node.
      CLEAR t73.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t75.
      DATA t77 TYPE REF TO zif_lnt_union_4cf1d054.
      t77 = t13.
      DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t79.
      IF xsdbool( t77 IS INITIAL ) = abap_true.
        CLEAR t79.
      ELSE.
        t79 = t77->get_children( ).
      ENDIF.
      t75 = t79.
      DATA t86 TYPE REF TO zif_lnt_node.
      CLEAR t86.
      IF xsdbool( t75 IS INITIAL ) = abap_true.
        CLEAR t86.
      ELSE.
        DATA t90 TYPE REF TO zif_lnt_node.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t91 = t75.
        DATA t93 TYPE REF TO object.
        CLEAR t93.
        t91->load( ).
        CLEAR t93.
        READ TABLE t91->items INDEX 1 INTO t93.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        CLEAR t90.
        IF t93 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t94 ?= t93.
          DATA t95 TYPE REF TO object.
          t95 = t94->as_ref( ).
          t90 ?= t95.
        ELSE.
          t90 ?= t93.
        ENDIF.
        t86 = t90.
      ENDIF.
      t73 = t86.
      DATA t96 TYPE REF TO object.
      CLEAR t96.
      IF xsdbool( t73 IS INITIAL ) = abap_true.
        CLEAR t96.
      ELSE.
        t96 = t73->get_db65( ).
      ENDIF.
      t72 = t96.
      IF xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_st_expres_constant ) = abap_true.
        CONTINUE.
      ENDIF.


      DATA t104 TYPE string.
      DATA t105 TYPE string.
      DATA(t106) = |SELECT: "|.
      DATA t107 TYPE string.
      t107 = t8->concat_tokens( ).
      DATA(t109) = strlen( t106 ).
      t105 = |{ t106 }{ t107 }|.
      DATA(t111) = strlen( t105 ).
      t104 = |{ t105 }{ |" must be escaped with @ in strict mode| }|.
      DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t112 = t2->issues.
      DATA t114 TYPE REF TO zcl_lnt_issue.
      DATA t116 TYPE REF TO zcl_lnt_abstract_token.
      t116 = t1->get_first_token( ).
      DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t119.
      t114 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t116 i_message_26cb = t104 i_fix = t119 ).
      t112->load( ).
      APPEND t114 TO t112->items.
      t112->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD handle_into.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_fields_62af.
    DATA(t4) = i_db_sources.
    DATA(t5) = i_from.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
    t6 = t1->find_direct_expression( i_type_9913 = t9 ).
    IF xsdbool( t6 IS BOUND ) = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      t14 = t6.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t12 = t14->find_first_expression( i_type_9913 = t16 ).
      IF xsdbool( t12 IS BOUND ) = abap_true.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        t19 = t12.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        DATA t25 TYPE REF TO zif_lnt_union_89dd54d5.
        DATA t28 TYPE REF TO zcl_lnt_current_scope.
        t28 = t2->scope.
        t25 = zcl_lnt_sy_expres_select=>build_table_type( i_fields_62af = t3 i_db_sources = t4 i_scope = t28 i_from = t5 ).
        t24 ?= t25.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t19 i_input_967e = t2 i_type_9913 = t24 ).
      ENDIF.
      result = t6.
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
    t37 = t1->find_direct_expression( i_type_9913 = t40 ).
    IF xsdbool( t37 IS BOUND ) = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t45 TYPE REF TO zcl_lnt_expression_node.
      t45 = t37.
      DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t43 = t45->find_all_expressions( i_type_9913 = t47 ).
      t43->load( ).
      IF xsdbool( lines( t43->items ) = 1 ) = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        DATA t54 TYPE REF TO object.
        t43->load( ).
        READ TABLE t43->items INDEX 1 INTO t54.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t54 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t55 ?= t54.
          DATA t56 TYPE REF TO object.
          t56 = t55->as_ref( ).
          t52 ?= t56.
        ELSE.
          t52 ?= t54.
        ENDIF.
        DATA t61 TYPE REF TO zcl_lnt_current_scope.
        t61 = t2->scope.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t52 i_input_967e = t2 i_type_9913 = zcl_lnt_sy_expres_select=>build_structure_type( i_fields_62af = t3 i_db_sources = t4 i_scope = t61 ) ).
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        DATA t65 TYPE REF TO object.
        DATA(t66) = VALUE i( ).
        DO.
          t43->load( ).
          IF t66 >= lines( t43->items ).
            EXIT.
          ENDIF.
          CLEAR t65.
          READ TABLE t43->items INDEX t66 + 1 INTO t65.
          t66 = t66 + 1.
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t67.
          CLEAR t64.
          IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t67 ?= t65.
            DATA t68 TYPE REF TO object.
            t68 = t67->as_ref( ).
            t64 ?= t68.
          ELSE.
            t64 ?= t65.
          ENDIF.
          DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t72.
          DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t75->has = abap_true.
          t75->value = |SELECT_todo1|.
          t72 = t75.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t64 i_input_967e = t2 i_type_9913 = zcl_lnt_void_type=>get_db65( i_voided = t72 i_qualified_name = t77 ) ).
        ENDDO.
      ENDIF.
      result = t37.
      RETURN.
    ENDIF.
    DATA t83 TYPE REF TO zcl_lnt_expression_node.
    DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
    t83 = t1->find_direct_expression( i_type_9913 = t86 ).
    IF xsdbool( t83 IS BOUND ) = abap_true.
      DATA(t89) = VALUE abap_bool( ).
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      t3->load( ).
      t91 = xsdbool( lines( t3->items ) = 1 ).
      t90 = t91.
      IF t91 = abap_true.
        DATA t97 TYPE REF TO zcl_lnt_expression_node.
        DATA t98 TYPE REF TO zcl_lnt_expression_node.
        DATA t99 TYPE REF TO zcl_lnt_shape_14fea903.
        DATA t101 TYPE REF TO object.
        t3->load( ).
        READ TABLE t3->items INDEX 1 INTO t101.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t101 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t102 ?= t101.
          DATA t103 TYPE REF TO object.
          t103 = t102->as_ref( ).
          t99 ?= t103.
        ELSE.
          t99 ?= t101.
        ENDIF.
        t98 = t99->expression.
        DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
        t97 = t98->find_direct_expression( i_type_9913 = t104 ).
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t90 = xsdbool( xsdbool( t97 IS INITIAL ) = abap_false ).
      ENDIF.
      t89 = t90.
      DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t112 TYPE REF TO zcl_lnt_expression_node.
      t112 = t83.
      DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d333_b60636864266.
      t110 = t112->find_direct_expressions( i_type_9913 = t114 ).
      DATA t115 TYPE abap_bool.
      DATA t116 TYPE abap_bool.
      DATA t117 TYPE i.
      t110->load( ).
      t117 = lines( t110->items ).
      t3->load( ).
      t116 = xsdbool( t117 <> lines( t3->items ) ).
      t115 = t116.
      IF t116 = abap_true.
        t115 = xsdbool( t89 <> abap_true ).
      ENDIF.
      IF t115 = abap_true.
        DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t126 = t2->issues.
        DATA t128 TYPE REF TO zcl_lnt_issue.
        DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t128 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |number of fields selected vs list does not match| i_fix = t133 ).
        t126->load( ).
        APPEND t128 TO t126->items.
        t126->save( ).
        CLEAR result.
        RETURN.
      ENDIF.
      DATA t135 TYPE i.
      t135 = 0.
      DO.
        t110->load( ).
        IF xsdbool( t135 < lines( t110->items ) ) = abap_false.
          EXIT.
        ENDIF.
        DATA t142 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t142.
        DATA(t144) = t135.
        t144 = t144 + 1.
        DATA t145 TYPE REF TO object.
        CLEAR t145.
        t110->load( ).
        CLEAR t145.
        READ TABLE t110->items INDEX t144 INTO t145.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        CLEAR t142.
        IF t145 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t146 ?= t145.
          DATA t147 TYPE REF TO object.
          t147 = t146->as_ref( ).
          t142 ?= t147.
        ELSE.
          t142 ?= t145.
        ENDIF.
        DATA t148 TYPE REF TO zcl_lnt_shape_14fea903.
        CLEAR t148.
        DATA t149 TYPE REF TO zcl_lnt_shape_14fea903.
        CLEAR t149.
        DATA(t151) = t135.
        t151 = t151 + 1.
        DATA t152 TYPE REF TO object.
        CLEAR t152.
        t3->load( ).
        CLEAR t152.
        READ TABLE t3->items INDEX t151 INTO t152.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        CLEAR t149.
        IF t152 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t153 ?= t152.
          DATA t154 TYPE REF TO object.
          t154 = t153->as_ref( ).
          t149 ?= t154.
        ELSE.
          t149 ?= t152.
        ENDIF.
        t148 = t149.
        DATA t155 TYPE REF TO zcl_lnt_expression_node.
        DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t155 = t142->find_first_expression( i_type_9913 = t158 ).
        IF xsdbool( t155 IS BOUND ) = abap_true.
          IF t89 = abap_true.
            DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t164 = t2->issues.
            DATA t166 TYPE REF TO zcl_lnt_issue.
            DATA t168 TYPE REF TO zcl_lnt_abstract_token.
            t168 = t1->get_first_token( ).
            DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t171.
            t166 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t168 i_message_26cb = |dynamic field list, inlining not possible| i_fix = t171 ).
            t164->load( ).
            APPEND t166 TO t164->items.
            t164->save( ).
            CLEAR result.
            RETURN.
          ENDIF.
          DATA t173 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t173.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          DATA(t178) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t178->has = abap_true.
          t178->value = |SELECT_todo2|.
          t175 = t178.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t180.
          t173 = zcl_lnt_void_type=>get_db65( i_voided = t175 i_qualified_name = t180 ).
          DATA t182 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t182.
          IF zcl_lnt_select_module=>zlnt_builtin_init_c235efeb32fb = abap_false.
            zcl_lnt_select_module=>zlnt_builtin_init_bca3e12ebc13( ).
          ENDIF.
          t182 = zcl_lnt_select_module=>is_simple.
          DATA t183 TYPE string.
          t183 = t148->code.
          IF t182->test( p0 = t183 ) = abap_true.
            DATA t186 TYPE REF TO zif_lnt_union_c74a232f.
            CLEAR t186.
            DATA(t187) = VALUE i( ).
            DO.
              t4->load( ).
              IF t187 >= lines( t4->items ).
                EXIT.
              ENDIF.
              CLEAR t186.
              READ TABLE t4->items INDEX t187 + 1 INTO t186.
              t187 = t187 + 1.
              DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t191.
              IF xsdbool( t186 IS INITIAL ) = abap_true.
                CONTINUE.
              ENDIF.
              DATA t195 TYPE REF TO zcl_lnt_abstract_type.
              DATA t197 TYPE REF TO zif_lnt_union_c74a232f.
              t197 = t186.
              DATA t199 TYPE REF TO zif_lnt_registry.
              t199 = t2->scope->reg.
              DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t205.
              DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t206.
              t195 = t197->parse_type( i_reg_f149 = t199 i_data_element = t205 i_description = t206 ).
              IF xsdbool( t195 IS BOUND AND t195 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
                DATA t209 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t209.
                DATA t212 TYPE REF TO zcl_lnt_structure_type.
                t212 ?= t195.
                DATA t214 TYPE string.
                t214 = t148->code.
                DATA t218 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
                t218 = t212->indexed.
                DATA t220 TYPE string.
                DATA(t222) = strlen( t214 ).
                t220 = t214.
                IF t220 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t220 TO UPPER CASE.
                ELSE.
                  t220 = zlnt_runtime_uppe_91169605024d=>full( t220 ).
                ENDIF.
                t209 = t218->get( p0 = t220 ).
                IF xsdbool( t209 IS BOUND ) = abap_true.
                  t173 = t209.
                  EXIT.
                ENDIF.
              ENDIF.
            ENDDO.
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t155 i_input_967e = t2 i_type_9913 = t173 ).
        ENDIF.
        DATA(t236) = 1.
        t135 = t135 + t236.
      ENDDO.
      result = t83.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD count_result_type.
    DATA(t1) = i_scope.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    t5 = t1->reg->get_config( )->get_release( ).
    DATA t14 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t14 = zcl_lnt_version_module=>release_b8cd.
    t4 = zcl_lnt_version_module=>release_at_least( i_running = t5 i_required = t14->get( p0 = |v750| ) ).
    t3 = t4.
    IF t4 = abap_false.
      t3 = t1->reg->get_config( )->is_open_abap( ).
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      t2 = xsdbool( t1->reg->get_config( )->get_language_version( ) = |Cloud| ).
    ENDIF.
    IF t2 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type_data.
      result = NEW zcl_lnt_integer8_type( i_input_967e = t33 ).
      RETURN.
    ENDIF.
    DATA t35 TYPE REF TO zcl_lnt_abstract_type_data.
    result = zcl_lnt_integer_type=>get_db65( i_input_967e = t35 ).


  ENDMETHOD.

  METHOD build_structure_type.
    DATA(t1) = i_fields_62af.
    DATA(t2) = i_db_sources.
    DATA(t3) = i_scope.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    t1->load( ).
    t5 = xsdbool( lines( t1->items ) = 1 ).
    t4 = t5.
    IF t5 = abap_true.
      t2->load( ).
      t4 = xsdbool( lines( t2->items ) = 1 ).
    ENDIF.
    IF t4 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t16) = `^count\([`.
      t16 = t16 && |\t\n|.
      DATA t17 TYPE c LENGTH 1.
      t17 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t16 t17 INTO t16 RESPECTING BLANKS.
      DATA t18 TYPE c LENGTH 1.
      t18 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t16 t18 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |\r    - |.
      DATA t19 TYPE c LENGTH 1.
      t19 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t16 t19 INTO t16 RESPECTING BLANKS.
      DATA t20 TYPE c LENGTH 1.
      t20 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t16 t20 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |  　|.
      DATA t21 TYPE c LENGTH 1.
      t21 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t16 t21 INTO t16 RESPECTING BLANKS.
      t16 = t16 && `]*\*[`.
      t16 = t16 && |\t\n|.
      DATA t22 TYPE c LENGTH 1.
      t22 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t16 t22 INTO t16 RESPECTING BLANKS.
      DATA t23 TYPE c LENGTH 1.
      t23 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t16 t23 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |\r    - |.
      DATA t24 TYPE c LENGTH 1.
      t24 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t16 t24 INTO t16 RESPECTING BLANKS.
      DATA t25 TYPE c LENGTH 1.
      t25 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t16 t25 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |  　|.
      DATA t26 TYPE c LENGTH 1.
      t26 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t16 t26 INTO t16 RESPECTING BLANKS.
      t16 = t16 && `]*\)$`.
      CREATE OBJECT t14 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t16 flags = |i|.
      t14->source = `^count\(\s*\*\s*\)$`.
      DATA(t28) = VALUE string( ).
      DATA t29 TYPE REF TO zcl_lnt_shape_14fea903.
      DATA t31 TYPE REF TO object.
      t1->load( ).
      READ TABLE t1->items INDEX 1 INTO t31.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t31.
        DATA t33 TYPE REF TO object.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t31.
      ENDIF.
      t28 = t29->code.
      IF t14->test( p0 = t28 ) = abap_true.
        result = zcl_lnt_sy_expres_select=>count_result_type( i_scope = t3 ).
        RETURN.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      DATA t41 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t42 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t45 TYPE REF TO object.
      t45 = t2->get( p0 = 0 ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t46 ?= t45.
        DATA t47 TYPE REF TO object.
        t47 = t46->as_ref( ).
        t42 ?= t47.
      ELSE.
        t42 ?= t45.
      ENDIF.
      t41 = t42.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      IF xsdbool( t41 IS INITIAL ) = abap_true.
      ELSE.
        DATA t53 TYPE REF TO zif_lnt_union_c74a232f.
        t53 = t41.
        DATA t55 TYPE REF TO zif_lnt_registry.
        t55 = t3->reg.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t48 = t53->parse_type( i_reg_f149 = t55 i_data_element = t60 i_description = t61 ).
      ENDIF.
      t39 = t48.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t39 IS INITIAL ) = abap_true.
        DATA(t69) = VALUE string( ).
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t73 TYPE REF TO zif_lnt_union_c74a232f.
        DATA t74 TYPE REF TO zif_lnt_union_c74a232f.
        DATA t77 TYPE REF TO object.
        t77 = t2->get( p0 = 0 ).
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t78 ?= t77.
          DATA t79 TYPE REF TO object.
          t79 = t78->as_ref( ).
          t74 ?= t79.
        ELSE.
          t74 ?= t77.
        ENDIF.
        t73 = t74.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t73 IS INITIAL ) = abap_true.
        ELSE.
          DATA t84 TYPE string.
          t84 = t73->get_name( ).
          DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t87->has = abap_true.
          t87->value = t84.
          t80 = t87.
        ENDIF.
        t71 = t80.
        DATA(t88) = VALUE string( ).
        DATA(t89) = VALUE abap_bool( ).
        IF t71 IS BOUND.
          IF t71->has = abap_true.
            t89 = xsdbool( strlen( t71->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t89 = abap_true.
          t88 = t71->value.
        ELSE.
          t88 = |buildStructureTypeError|.
        ENDIF.
        t69 = t88.
        DATA t99 TYPE REF TO zif_lnt_registry.
        t99 = t3->reg.
        IF xsdbool( t99->in_error_namespace( i_name = t69 ) = abap_true ) = abap_true.
          DATA t105 TYPE string.
          DATA(t106) = |Select, |.
          DATA(t108) = strlen( t106 ).
          t105 = |{ t106 }{ t69 }|.
          DATA(t110) = strlen( t105 ).
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = NEW zcl_lnt_unknown_type( i_error = |{ t105 }{ | not found| }| i_qualified_name = t111 ).
          RETURN.
        ELSE.
          DATA t114 TYPE REF TO zif_lnt_union_c74a232f.
          DATA t115 TYPE REF TO zif_lnt_union_c74a232f.
          DATA t118 TYPE REF TO object.
          t118 = t2->get( p0 = 0 ).
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t118 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t119 ?= t118.
            DATA t120 TYPE REF TO object.
            t120 = t119->as_ref( ).
            t115 ?= t120.
          ELSE.
            t115 ?= t118.
          ENDIF.
          t114 = t115.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t114 IS INITIAL ) = abap_true.
          ELSE.
            DATA t125 TYPE string.
            t125 = t114->get_name( ).
            DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t128->has = abap_true.
            t128->value = t125.
            t121 = t128.
          ENDIF.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t121 i_qualified_name = t129 ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA t132 TYPE REF TO zcl_lnt_shape_14fea903.
      DATA t134 TYPE REF TO object.
      t1->load( ).
      READ TABLE t1->items INDEX 1 INTO t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t134 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t135 ?= t134.
        DATA t136 TYPE REF TO object.
        t136 = t135->as_ref( ).
        t132 ?= t136.
      ELSE.
        t132 ?= t134.
      ENDIF.
      IF xsdbool( t132->code = |*| ) = abap_true.
        result = t39.
        RETURN.
      ELSE.
        IF xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
          DATA t145 TYPE REF TO zcl_lnt_abstract_type.
          DATA t148 TYPE REF TO zcl_lnt_structure_type.
          t148 ?= t39.
          DATA(t150) = VALUE string( ).
          DATA t152 TYPE REF TO zcl_lnt_shape_14fea903.
          DATA t154 TYPE REF TO object.
          t1->load( ).
          READ TABLE t1->items INDEX 1 INTO t154.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t154 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t155 ?= t154.
            DATA t156 TYPE REF TO object.
            t156 = t155->as_ref( ).
            t152 ?= t156.
          ELSE.
            t152 ?= t154.
          ENDIF.
          t150 = t152->code.
          DATA t158 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
          t158 = t148->indexed.
          DATA t160 TYPE string.
          DATA(t162) = strlen( t150 ).
          t160 = t150.
          IF t160 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t160 TO UPPER CASE.
          ELSE.
            t160 = zlnt_runtime_uppe_91169605024d=>full( t160 ).
          ENDIF.
          t145 = t158->get( p0 = t160 ).
          IF xsdbool( t145 IS BOUND ) = abap_true.
            result = t145.
            RETURN.
          ELSE.
            DATA t172 TYPE REF TO zcl_lnt_shape_14fea903.
            DATA t174 TYPE REF TO object.
            t1->load( ).
            READ TABLE t1->items INDEX 1 INTO t174.
            DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t174 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t175 ?= t174.
              DATA t176 TYPE REF TO object.
              t176 = t175->as_ref( ).
              t172 ?= t176.
            ELSE.
              t172 ?= t174.
            ENDIF.
            IF xsdbool( t172->code = |COUNT(*)| ) = abap_true.
              DATA(t178) = VALUE abap_bool( ).
              DATA(t179) = VALUE abap_bool( ).
              DATA(t180) = VALUE abap_bool( ).
              DATA t181 TYPE REF TO zcl_lnt_abap_release.
              t181 = t3->reg->get_config( )->get_release( ).
              DATA t190 TYPE REF TO zlnt_runtime_map__201f3699a39e.
              IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
                zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
              ENDIF.
              t190 = zcl_lnt_version_module=>release_b8cd.
              t180 = zcl_lnt_version_module=>release_at_least( i_running = t181 i_required = t190->get( p0 = |v750| ) ).
              t179 = t180.
              IF t180 = abap_false.
                t179 = t3->reg->get_config( )->is_open_abap( ).
              ENDIF.
              t178 = t179.
              IF t179 = abap_false.
                t178 = xsdbool( t3->reg->get_config( )->get_language_version( ) = |Cloud| ).
              ENDIF.
              IF t178 = abap_true.
                DATA t209 TYPE REF TO zcl_lnt_abstract_type_data.
                result = NEW zcl_lnt_integer8_type( i_input_967e = t209 ).
                RETURN.
              ELSE.
                DATA t211 TYPE REF TO zcl_lnt_abstract_type_data.
                result = zcl_lnt_integer_type=>get_db65( i_input_967e = t211 ).
                RETURN.
              ENDIF.
            ELSE.
              DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t216->has = abap_true.
              t216->value = |SELECT_todo11|.
              DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              result = zcl_lnt_void_type=>get_db65( i_voided = t216 i_qualified_name = t218 ).
              RETURN.
            ENDIF.
          ENDIF.
        ELSE.
          DATA(t223) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t223->has = abap_true.
          t223->value = |SELECT_todo10|.
          DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t223 i_qualified_name = t225 ).
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      t2->load( ).
      IF xsdbool( lines( t2->items ) = 1 ) = abap_true.
        DATA t230 TYPE REF TO zcl_lnt_abstract_type.
        DATA t232 TYPE REF TO zif_lnt_union_c74a232f.
        DATA t233 TYPE REF TO zif_lnt_union_c74a232f.
        DATA t236 TYPE REF TO object.
        t236 = t2->get( p0 = 0 ).
        DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t236 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t237 ?= t236.
          DATA t238 TYPE REF TO object.
          t238 = t237->as_ref( ).
          t233 ?= t238.
        ELSE.
          t233 ?= t236.
        ENDIF.
        t232 = t233.
        DATA t239 TYPE REF TO zcl_lnt_abstract_type.
        IF xsdbool( t232 IS INITIAL ) = abap_true.
        ELSE.
          DATA t244 TYPE REF TO zif_lnt_union_c74a232f.
          t244 = t232.
          DATA t246 TYPE REF TO zif_lnt_registry.
          t246 = t3->reg.
          DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t239 = t244->parse_type( i_reg_f149 = t246 i_data_element = t251 i_description = t252 ).
        ENDIF.
        t230 = t239.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t230 IS INITIAL ) = abap_true.
          DATA(t260) = VALUE string( ).
          DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t264 TYPE REF TO zif_lnt_union_c74a232f.
          DATA t265 TYPE REF TO zif_lnt_union_c74a232f.
          DATA t268 TYPE REF TO object.
          t268 = t2->get( p0 = 0 ).
          DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t268 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t269 ?= t268.
            DATA t270 TYPE REF TO object.
            t270 = t269->as_ref( ).
            t265 ?= t270.
          ELSE.
            t265 ?= t268.
          ENDIF.
          t264 = t265.
          DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t264 IS INITIAL ) = abap_true.
          ELSE.
            DATA t275 TYPE string.
            t275 = t264->get_name( ).
            DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t278->has = abap_true.
            t278->value = t275.
            t271 = t278.
          ENDIF.
          t262 = t271.
          DATA(t279) = VALUE string( ).
          DATA(t280) = VALUE abap_bool( ).
          IF t262 IS BOUND.
            IF t262->has = abap_true.
              t280 = xsdbool( strlen( t262->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t280 = abap_true.
            t279 = t262->value.
          ELSE.
            t279 = |buildStructureTypeError|.
          ENDIF.
          t260 = t279.
          DATA t290 TYPE REF TO zif_lnt_registry.
          t290 = t3->reg.
          IF xsdbool( t290->in_error_namespace( i_name = t260 ) = abap_true ) = abap_true.
            DATA t296 TYPE string.
            DATA(t297) = |Select, |.
            DATA(t299) = strlen( t297 ).
            t296 = |{ t297 }{ t260 }|.
            DATA(t301) = strlen( t296 ).
            DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = NEW zcl_lnt_unknown_type( i_error = |{ t296 }{ | not found| }| i_qualified_name = t302 ).
            RETURN.
          ELSE.
            DATA t305 TYPE REF TO zif_lnt_union_c74a232f.
            DATA t306 TYPE REF TO zif_lnt_union_c74a232f.
            DATA t309 TYPE REF TO object.
            t309 = t2->get( p0 = 0 ).
            DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t309 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t310 ?= t309.
              DATA t311 TYPE REF TO object.
              t311 = t310->as_ref( ).
              t306 ?= t311.
            ELSE.
              t306 ?= t309.
            ENDIF.
            t305 = t306.
            DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            IF xsdbool( t305 IS INITIAL ) = abap_true.
            ELSE.
              DATA t316 TYPE string.
              t316 = t305->get_name( ).
              DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t319->has = abap_true.
              t319->value = t316.
              t312 = t319.
            ENDIF.
            DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = zcl_lnt_void_type=>get_db65( i_voided = t312 i_qualified_name = t320 ).
            RETURN.
          ENDIF.
        ENDIF.
        IF xsdbool( xsdbool( t230 IS BOUND AND t230 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
          DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t328->has = abap_true.
          t328->value = |SELECT_todo14|.
          DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t328 i_qualified_name = t330 ).
          RETURN.
        ENDIF.
        DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t333 = t1.
        DATA t335 TYPE i.
        t333->load( ).
        t335 = lines( t333->items ).
        DATA t338 TYPE i.
        t338 = 0.
        DATA t340 TYPE abap_bool.
        t340 = abap_true.
        DO.
          IF xsdbool( t338 < t335 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t347 TYPE REF TO zcl_lnt_shape_14fea903.
          CLEAR t347.
          DATA t350 TYPE REF TO object.
          t350 = t333->get( p0 = t338 ).
          DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t351.
          CLEAR t347.
          IF t350 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t351 ?= t350.
            DATA t352 TYPE REF TO object.
            t352 = t351->as_ref( ).
            t347 ?= t352.
          ELSE.
            t347 ?= t350.
          ENDIF.
          DATA t355 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t355.
          IF zcl_lnt_select_module=>zlnt_builtin_init_c235efeb32fb = abap_false.
            zcl_lnt_select_module=>zlnt_builtin_init_bca3e12ebc13( ).
          ENDIF.
          t355 = zcl_lnt_select_module=>is_simple.
          DATA t356 TYPE string.
          t356 = t347->code.
          IF xsdbool( t355->test( p0 = t356 ) = abap_false ) = abap_true.
            t340 = abap_false.
            EXIT.
          ENDIF.
          DATA(t361) = 1.
          t338 = t338 + t361.
        ENDDO.
        IF xsdbool( t340 = abap_true ) = abap_true.
          DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t366.
          DATA t369 TYPE REF TO zcl_lnt_shape_14fea903.
          DATA t370 TYPE REF TO object.
          DATA(t371) = VALUE i( ).
          DO.
            t1->load( ).
            IF t371 >= lines( t1->items ).
              EXIT.
            ENDIF.
            CLEAR t370.
            READ TABLE t1->items INDEX t371 + 1 INTO t370.
            t371 = t371 + 1.
            DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t372.
            CLEAR t369.
            IF t370 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t372 ?= t370.
              DATA t373 TYPE REF TO object.
              t373 = t372->as_ref( ).
              t369 ?= t373.
            ELSE.
              t369 ?= t370.
            ENDIF.
            DATA t374 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t374.
            DATA t377 TYPE REF TO zcl_lnt_structure_type.
            t377 ?= t230.
            DATA t379 TYPE string.
            t379 = t369->code.
            DATA t383 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            t383 = t377->indexed.
            DATA t385 TYPE string.
            DATA(t387) = strlen( t379 ).
            t385 = t379.
            IF t385 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t385 TO UPPER CASE.
            ELSE.
              t385 = zlnt_runtime_uppe_91169605024d=>full( t385 ).
            ENDIF.
            t374 = t383->get( p0 = t385 ).
            DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t391.
            IF xsdbool( t374 IS INITIAL ) = abap_true.
              DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t396.
              DATA(t399) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t399->has = abap_true.
              t399->value = |SELECT_todo9|.
              t396 = t399.
              DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t401.
              result = zcl_lnt_void_type=>get_db65( i_voided = t396 i_qualified_name = t401 ).
              RETURN.
            ENDIF.
            DATA t403 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t403.
            DATA(t404) = VALUE string( ).
            DATA t406 TYPE string.
            t406 = t369->as.
            DATA(t409) = VALUE string( ).
            IF xsdbool( strlen( t406 ) > 0 ) = abap_true.
              t409 = t406.
            ELSE.
              t409 = t369->code.
            ENDIF.
            t404 = t409.
            DATA t415 TYPE REF TO zcl_lnt_abstract_type.
            t415 = t374.
            DATA t418 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t418.
            DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t420.
            t403 = NEW zcl_lnt_istructure_component( i_name = t404 i_type_9913 = t415 i_as_include = t418 i_suffix = t420 ).
            CREATE OBJECT t403->zlnt_view_ownkeys_b0e8086400eb.
            t403->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t422.
            t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t422 ).
            DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t423.
            IF t403->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t423 ).
            ENDIF.
            CREATE OBJECT t403->zlnt_json_ownkeys_70e5fd461788.
            t403->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t425.
            t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t425 ).
            DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t427.
            IF t403->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t427 ).
            ENDIF.
            t366->load( ).
            APPEND t403 TO t366->items.
            t366->save( ).
          ENDDO.
          DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = NEW zcl_lnt_structure_type( i_components = t366 i_qualified_name = t430 i_ddic_name = t431 i_description = t432 ).
          RETURN.
        ENDIF.
        DATA(t437) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t437->has = abap_true.
        t437->value = |SELECT_todo12|.
        DATA t439 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t437 i_qualified_name = t439 ).
        RETURN.
      ELSE.
        DATA(t444) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t444->has = abap_true.
        t444->value = |SELECT_todo13|.
        DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t444 i_qualified_name = t446 ).
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD build_table_type.
    DATA(t1) = i_fields_62af.
    DATA(t2) = i_db_sources.
    DATA(t3) = i_scope.
    DATA(t4) = i_from.
    DATA t5 TYPE REF TO zcl_lnt_itable_options.
    DATA t6 TYPE REF TO zcl_lnt_itable_options.
    DATA t11 TYPE REF TO zcl_lnt_itable_key.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = NEW zcl_lnt_itable_options( i_with_header = abap_false i_key_type = |EMPTY| i_primary_key = t11 i_secondary = t13 ).
    CREATE OBJECT t6->zlnt_view_ownkeys_b0e8086400eb.
    t6->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t15 ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t16 ).
    ENDIF.
    CREATE OBJECT t6->zlnt_json_ownkeys_70e5fd461788.
    t6->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t18 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t20 ).
    ENDIF.
    t5 = t6.
    t2->load( ).
    IF xsdbool( lines( t2->items ) > 1 ) = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t25 = zcl_lnt_sy_expres_select=>build_database_source_infos( i_from = t4 i_db_sources = t2 ).
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE abap_bool.
      t1->load( ).
      t30 = xsdbool( lines( t1->items ) = 1 ).
      t29 = t30.
      IF t30 = abap_true.
        DATA t36 TYPE REF TO zcl_lnt_shape_14fea903.
        DATA t38 TYPE REF TO object.
        t1->load( ).
        READ TABLE t1->items INDEX 1 INTO t38.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t39 ?= t38.
          DATA t40 TYPE REF TO object.
          t40 = t39->as_ref( ).
          t36 ?= t40.
        ELSE.
          t36 ?= t38.
        ENDIF.
        t29 = xsdbool( t36->code = |*| ).
      ENDIF.
      IF t29 = abap_true.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t42.
        DATA t45 TYPE REF TO zcl_lnt_database_source_info.
        DATA t46 TYPE REF TO object.
        DATA(t47) = VALUE i( ).
        DO.
          t25->load( ).
          IF t47 >= lines( t25->items ).
            EXIT.
          ENDIF.
          CLEAR t46.
          READ TABLE t25->items INDEX t47 + 1 INTO t46.
          t47 = t47 + 1.
          DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t48.
          CLEAR t45.
          IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t48 ?= t46.
            DATA t49 TYPE REF TO object.
            t49 = t48->as_ref( ).
            t45 ?= t49.
          ELSE.
            t45 ?= t46.
          ENDIF.
          DATA t50 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t50.
          DATA t52 TYPE REF TO zif_lnt_union_c74a232f.
          t52 = t45->source.
          DATA t55 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t55.
          IF xsdbool( t52 IS INITIAL ) = abap_true.
            CLEAR t55.
          ELSE.
            DATA t60 TYPE REF TO zif_lnt_union_c74a232f.
            t60 = t52.
            DATA t62 TYPE REF TO zif_lnt_registry.
            t62 = t3->reg.
            DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t67.
            DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t68.
            t55 = t60->parse_type( i_reg_f149 = t62 i_data_element = t67 i_description = t68 ).
          ENDIF.
          t50 = t55.
          IF xsdbool( xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
            DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t73.
            DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t76->has = abap_true.
            t76->value = |SELECT_todo3|.
            t73 = t76.
            DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t78.
            result = zcl_lnt_void_type=>get_db65( i_voided = t73 i_qualified_name = t78 ).
            RETURN.
          ENDIF.
          DATA t80 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t80.
          DATA(t81) = VALUE string( ).
          DATA t83 TYPE string.
          t83 = t45->alias.
          DATA(t86) = VALUE string( ).
          IF xsdbool( strlen( t83 ) > 0 ) = abap_true.
            t86 = t83.
          ELSE.
            t86 = t45->name.
          ENDIF.
          t81 = t86.
          DATA t92 TYPE REF TO zcl_lnt_abstract_type.
          DATA t93 TYPE REF TO zcl_lnt_structure_type.
          t93 ?= t50.
          t92 = t93.
          DATA t95 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t95.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          t80 = NEW zcl_lnt_istructure_component( i_name = t81 i_type_9913 = t92 i_as_include = t95 i_suffix = t97 ).
          CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
          t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t99.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t99 ).
          DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t100.
          IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t100 ).
          ENDIF.
          CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
          t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t102.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t102 ).
          DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t104.
          IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t104 ).
          ENDIF.
          t42->load( ).
          APPEND t80 TO t42->items.
          t42->save( ).
        ENDDO.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = NEW zcl_lnt_ty_table_type( i_row_type = NEW zcl_lnt_structure_type( i_components = t42 i_qualified_name = t108 i_ddic_name = t109 i_description = t110 ) i_options = t5 i_qualified_name = t112 i_description = t113 ).
        RETURN.
      ENDIF.
      DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t114.
      DATA t117 TYPE REF TO zcl_lnt_shape_14fea903.
      DATA t118 TYPE REF TO object.
      DATA(t119) = VALUE i( ).
      DO.
        t1->load( ).
        IF t119 >= lines( t1->items ).
          EXIT.
        ENDIF.
        CLEAR t118.
        READ TABLE t1->items INDEX t119 + 1 INTO t118.
        t119 = t119 + 1.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        CLEAR t117.
        IF t118 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t120 ?= t118.
          DATA t121 TYPE REF TO object.
          t121 = t120->as_ref( ).
          t117 ?= t121.
        ELSE.
          t117 ?= t118.
        ENDIF.
        DATA t122 TYPE REF TO zcl_lnt_abstract_type.
        DATA t124 TYPE string.
        t124 = t117->code.
        t122 = zcl_lnt_sy_expres_select=>find_field_type( i_code = t124 i_source_infos = t25 i_scope = t3 ).
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF xsdbool( t122 IS INITIAL ) = abap_true.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t139->has = abap_true.
          t139->value = |SELECT_todo3|.
          t136 = t139.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          result = zcl_lnt_void_type=>get_db65( i_voided = t136 i_qualified_name = t141 ).
          RETURN.
        ENDIF.
        DATA t144 TYPE string.
        t144 = t117->as.
        DATA(t147) = VALUE string( ).
        IF xsdbool( strlen( t144 ) > 0 ) = abap_true.
          t147 = t144.
        ELSE.
          DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t154 TYPE string.
          t154 = t117->code.
          DATA(t156) = |~|.
          DATA(t157) = strlen( t154 ).
          DATA t158 TYPE i.
          DATA(t159) = VALUE i( ).
          DATA(t160) = VALUE i( ).
          DATA t161 TYPE i.
          DATA(t162) = VALUE string( ).
          CREATE OBJECT t153.
          t161 = strlen( t156 ).
          t158 = 0.
          IF t161 = 0.
            WHILE t158 < t157.
              t162 = t154+t158(1).
              APPEND t162 TO t153->items.
              t158 = t158 + 1.
            ENDWHILE.
          ELSE.
            WHILE t158 <= t157.
              FIND FIRST OCCURRENCE OF t156 IN SECTION OFFSET t158 OF t154 MATCH OFFSET t159.
              IF sy-subrc = 0.
                t160 = t159 - t158.
              ELSE.
                t159 = -1.
                t160 = t157 - t158.
              ENDIF.
              CLEAR t162.
              IF t160 > 0.
                t162 = t154+t158(t160).
              ENDIF.
              APPEND t162 TO t153->items.
              IF t159 < 0.
                EXIT.
              ENDIF.
              t158 = t159 + t161.
            ENDWHILE.
          ENDIF.
          t147 = t153->pop( )->value.
        ENDIF.
        DATA t164 TYPE REF TO zcl_lnt_istructure_component.
        DATA t165 TYPE string.
        t165 = t147.
        DATA t167 TYPE REF TO zcl_lnt_abstract_type.
        t167 = t122.
        DATA t170 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t170.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        t164 = NEW zcl_lnt_istructure_component( i_name = t165 i_type_9913 = t167 i_as_include = t170 i_suffix = t172 ).
        CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
        t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t174 ).
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t175 ).
        ENDIF.
        CREATE OBJECT t164->zlnt_json_ownkeys_70e5fd461788.
        t164->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t177 ).
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t179 ).
        ENDIF.
        t114->load( ).
        APPEND t164 TO t114->items.
        t114->save( ).
      ENDDO.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_ty_table_type( i_row_type = NEW zcl_lnt_structure_type( i_components = t114 i_qualified_name = t183 i_ddic_name = t184 i_description = t185 ) i_options = t5 i_qualified_name = t187 i_description = t188 ).
      RETURN.
    ENDIF.
    t2->load( ).
    IF xsdbool( lines( t2->items ) <> 1 ) = abap_true.
      DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t197->has = abap_true.
      t197->value = |SELECT_todo3|.
      DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t197 i_qualified_name = t199 ).
      RETURN.
    ENDIF.

    DATA t202 TYPE REF TO zif_lnt_union_c74a232f.
    t2->load( ).
    READ TABLE t2->items INDEX 1 INTO t202.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t202 IS INITIAL ) = abap_true.
      DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t213->has = abap_true.
      t213->value = |SELECT_todo4|.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_ty_table_type( i_row_type = zcl_lnt_void_type=>get_db65( i_voided = t213 i_qualified_name = t215 ) i_options = t5 i_qualified_name = t217 i_description = t218 ).
      RETURN.
    ENDIF.
    DATA t219 TYPE REF TO zcl_lnt_abstract_type.
    DATA t221 TYPE REF TO zif_lnt_union_c74a232f.
    DATA t222 TYPE REF TO zif_lnt_union_c74a232f.
    t2->load( ).
    READ TABLE t2->items INDEX 1 INTO t222.
    t221 = t222.
    DATA t224 TYPE REF TO zif_lnt_registry.
    t224 = t3->reg.
    DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t219 = t221->parse_type( i_reg_f149 = t224 i_data_element = t229 i_description = t230 ).
    IF xsdbool( xsdbool( t219 IS BOUND AND t219 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
      DATA(t238) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t238->has = abap_true.
      t238->value = |SELECT_todo5|.
      DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t238 i_qualified_name = t240 ).
      RETURN.
    ENDIF.
    DATA t241 TYPE abap_bool.
    DATA t242 TYPE abap_bool.
    t1->load( ).
    t242 = xsdbool( lines( t1->items ) = 1 ).
    t241 = t242.
    IF t242 = abap_true.
      DATA t248 TYPE REF TO zcl_lnt_shape_14fea903.
      DATA t250 TYPE REF TO object.
      t1->load( ).
      READ TABLE t1->items INDEX 1 INTO t250.
      DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t250 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t251 ?= t250.
        DATA t252 TYPE REF TO object.
        t252 = t251->as_ref( ).
        t248 ?= t252.
      ELSE.
        t248 ?= t250.
      ENDIF.
      t241 = xsdbool( t248->code = |*| ).
    ENDIF.
    IF t241 = abap_true.
      DATA t255 TYPE REF TO zcl_lnt_structure_type.
      t255 ?= t219.
      DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_ty_table_type( i_row_type = t255 i_options = t5 i_qualified_name = t258 i_description = t259 ).
      RETURN.
    ENDIF.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t262 = t1.
    DATA t264 TYPE i.
    t262->load( ).
    t264 = lines( t262->items ).
    DATA t267 TYPE i.
    t267 = 0.
    DATA t269 TYPE abap_bool.
    t269 = abap_true.
    DO.
      IF xsdbool( t267 < t264 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t276 TYPE REF TO zcl_lnt_shape_14fea903.
      CLEAR t276.
      DATA t279 TYPE REF TO object.
      t279 = t262->get( p0 = t267 ).
      DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t280.
      CLEAR t276.
      IF t279 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t280 ?= t279.
        DATA t281 TYPE REF TO object.
        t281 = t280->as_ref( ).
        t276 ?= t281.
      ELSE.
        t276 ?= t279.
      ENDIF.
      DATA t284 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t284.
      IF zcl_lnt_select_module=>zlnt_builtin_init_c235efeb32fb = abap_false.
        zcl_lnt_select_module=>zlnt_builtin_init_bca3e12ebc13( ).
      ENDIF.
      t284 = zcl_lnt_select_module=>is_simple.
      DATA t285 TYPE string.
      t285 = t276->code.
      IF xsdbool( t284->test( p0 = t285 ) = abap_false ) = abap_true.
        t269 = abap_false.
        EXIT.
      ENDIF.
      DATA(t290) = 1.
      t267 = t267 + t290.
    ENDDO.
    IF xsdbool( t269 = abap_true ) = abap_true.
      DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t295.
      DATA t298 TYPE REF TO zcl_lnt_shape_14fea903.
      DATA t299 TYPE REF TO object.
      DATA(t300) = VALUE i( ).
      DO.
        t1->load( ).
        IF t300 >= lines( t1->items ).
          EXIT.
        ENDIF.
        CLEAR t299.
        READ TABLE t1->items INDEX t300 + 1 INTO t299.
        t300 = t300 + 1.
        DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t301.
        CLEAR t298.
        IF t299 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t301 ?= t299.
          DATA t302 TYPE REF TO object.
          t302 = t301->as_ref( ).
          t298 ?= t302.
        ELSE.
          t298 ?= t299.
        ENDIF.
        DATA t303 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t303.
        DATA t306 TYPE REF TO zcl_lnt_structure_type.
        t306 ?= t219.
        DATA t308 TYPE string.
        t308 = t298->code.
        DATA t312 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        t312 = t306->indexed.
        DATA t314 TYPE string.
        DATA(t316) = strlen( t308 ).
        t314 = t308.
        IF t314 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t314 TO UPPER CASE.
        ELSE.
          t314 = zlnt_runtime_uppe_91169605024d=>full( t314 ).
        ENDIF.
        t303 = t312->get( p0 = t314 ).
        DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t320.
        IF xsdbool( t303 IS INITIAL ) = abap_true.
          DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t325.
          DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t328->has = abap_true.
          t328->value = |SELECT_todo6|.
          t325 = t328.
          DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t330.
          result = zcl_lnt_void_type=>get_db65( i_voided = t325 i_qualified_name = t330 ).
          RETURN.
        ENDIF.
        DATA t332 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t332.
        DATA(t333) = VALUE string( ).
        DATA t335 TYPE string.
        t335 = t298->as.
        DATA(t338) = VALUE string( ).
        IF xsdbool( strlen( t335 ) > 0 ) = abap_true.
          t338 = t335.
        ELSE.
          t338 = t298->code.
        ENDIF.
        t333 = t338.
        DATA t344 TYPE REF TO zcl_lnt_abstract_type.
        t344 = t303.
        DATA t347 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t347.
        DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t349.
        t332 = NEW zcl_lnt_istructure_component( i_name = t333 i_type_9913 = t344 i_as_include = t347 i_suffix = t349 ).
        CREATE OBJECT t332->zlnt_view_ownkeys_b0e8086400eb.
        t332->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t351.
        t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t351 ).
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t352.
        IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t352 ).
        ENDIF.
        CREATE OBJECT t332->zlnt_json_ownkeys_70e5fd461788.
        t332->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t354 ).
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t356 ).
        ENDIF.
        t295->load( ).
        APPEND t332 TO t295->items.
        t295->save( ).
      ENDDO.
      DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_ty_table_type( i_row_type = NEW zcl_lnt_structure_type( i_components = t295 i_qualified_name = t360 i_ddic_name = t361 i_description = t362 ) i_options = t5 i_qualified_name = t364 i_description = t365 ).
      RETURN.
    ENDIF.
    DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t370->has = abap_true.
    t370->value = |SELECT_todo7|.
    DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    result = zcl_lnt_void_type=>get_db65( i_voided = t370 i_qualified_name = t372 ).

  ENDMETHOD.

  METHOD build_database_source_infos.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t2) = i_db_sources.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d321_17502cdda795.
    t3 = i_from->find_all_expressions( i_type_9913 = t6 ).
    DATA t8 TYPE f.
    t8 = CONV f( -1 ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t13 TYPE REF TO zif_lnt_union_c74a232f.
    DATA(t14) = VALUE i( ).
    DO.
      t2->load( ).
      IF t14 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t2->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA(t17) = CONV f( 1 ).
      t8 = t8 + t17.
      DATA t19 TYPE REF TO zcl_lnt_database_source_info.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t21.
      DATA(t23) = VALUE i( ).
      IF t8 > range_i32_upper.
        t23 = range_i32_upper.
      ELSEIF t8 < range_i32_lower.
        t23 = range_i32_lower.
      ELSE.
        t23 = trunc( t8 ).
      ENDIF.
      t23 = t23 + 1.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      t3->load( ).
      CLEAR t25.
      READ TABLE t3->items INDEX t23 INTO t25.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t21.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t25.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t21 ?= t27.
      ELSE.
        t21 ?= t25.
      ENDIF.
      t20 = t21.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t36.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t38.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      t40 = t20.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t42.
      IF xsdbool( t40 IS INITIAL ) = abap_true.
        CLEAR t42.
      ELSE.
        DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
        t42 = t40->find_first_expression( i_type_9913 = t48 ).
      ENDIF.
      t38 = t42.
      DATA t49 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t49.
      IF xsdbool( t38 IS INITIAL ) = abap_true.
        CLEAR t49.
      ELSE.
        t49 = t38->get_first_token( ).
      ENDIF.
      t36 = t49.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      IF xsdbool( t36 IS INITIAL ) = abap_true.
        CLEAR t56.
      ELSE.
        DATA t64 TYPE string.
        t64 = t36->str.
        DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t66->has = abap_true.
        t66->value = t64.
        t56 = t66.
      ENDIF.
      t34 = t56.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA(t68) = VALUE abap_bool( ).
      IF t34 IS INITIAL.
        t68 = abap_true.
      ELSEIF t34->has = abap_false.
        t68 = abap_true.
      ENDIF.
      IF t68 = abap_true.
        CLEAR t67.
      ELSE.
        DATA t71 TYPE string.
        DATA t72 TYPE string.
        t72 = t34->value.
        DATA t74 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CREATE OBJECT t74 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^\*` flags = ||.
        DATA(t78) = strlen( t72 ).
        t71 = t74->replace( p0 = t72 p1 = || ).
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = t71.
        t67 = t79.
      ENDIF.
      t32 = t67.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      DATA(t81) = VALUE abap_bool( ).
      IF t32 IS INITIAL.
        t81 = abap_true.
      ELSEIF t32->has = abap_false.
        t81 = abap_true.
      ENDIF.
      IF t81 = abap_true.
        CLEAR t80.
      ELSE.
        DATA t84 TYPE string.
        DATA t85 TYPE string.
        t85 = t32->value.
        DATA(t87) = strlen( t85 ).
        t84 = t85.
        IF t84 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t84 TO UPPER CASE.
        ELSE.
          t84 = zlnt_runtime_uppe_91169605024d=>full( t84 ).
        ENDIF.
        DATA(t88) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t88->has = abap_true.
        t88->value = t84.
        t80 = t88.
      ENDIF.
      t30 = t80.
      DATA(t89) = VALUE string( ).
      DATA(t90) = VALUE abap_bool( ).
      IF t30 IS BOUND.
        IF t30->has = abap_true.
          t90 = xsdbool( strlen( t30->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t90 = abap_true.
        t89 = t30->value.
      ELSE.
        t89 = ||.
      ENDIF.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      DATA t101 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t101.
      DATA t103 TYPE REF TO zcl_lnt_expression_node.
      t103 = t20.
      DATA t105 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t105.
      IF xsdbool( t103 IS INITIAL ) = abap_true.
        CLEAR t105.
      ELSE.
        DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
        t105 = t103->find_direct_expression( i_type_9913 = t111 ).
      ENDIF.
      t101 = t105.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t112.
      IF xsdbool( t101 IS INITIAL ) = abap_true.
        CLEAR t112.
      ELSE.
        DATA t116 TYPE string.
        t116 = t101->concat_tokens( ).
        DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t119->has = abap_true.
        t119->value = t116.
        t112 = t119.
      ENDIF.
      t99 = t112.
      DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t120.
      DATA(t121) = VALUE abap_bool( ).
      IF t99 IS INITIAL.
        t121 = abap_true.
      ELSEIF t99->has = abap_false.
        t121 = abap_true.
      ENDIF.
      IF t121 = abap_true.
        CLEAR t120.
      ELSE.
        DATA t124 TYPE string.
        DATA t125 TYPE string.
        t125 = t99->value.
        DATA(t127) = strlen( t125 ).
        t124 = t125.
        IF t124 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t124 TO UPPER CASE.
        ELSE.
          t124 = zlnt_runtime_uppe_91169605024d=>full( t124 ).
        ENDIF.
        DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t128->has = abap_true.
        t128->value = t124.
        t120 = t128.
      ENDIF.
      t97 = t120.
      DATA(t129) = VALUE string( ).
      DATA(t130) = VALUE abap_bool( ).
      IF t97 IS BOUND.
        IF t97->has = abap_true.
          t130 = xsdbool( strlen( t97->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t130 = abap_true.
        t129 = t97->value.
      ELSE.
        t129 = ||.
      ENDIF.
      DATA t135 TYPE REF TO zcl_lnt_database_source_info.
      t135 = NEW zcl_lnt_database_source_info( i_source_75cf = t13 i_name = t89 i_alias = t129 ).
      CREATE OBJECT t135->zlnt_view_ownkeys_b0e8086400eb.
      t135->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `source` p1 = t142 ).
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t143 ).
      ENDIF.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `alias` p1 = t144 ).
      ENDIF.
      CREATE OBJECT t135->zlnt_json_ownkeys_70e5fd461788.
      t135->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t146.
      t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = |source| p1 = t146 ).
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t148 ).
      ENDIF.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = |alias| p1 = t150 ).
      ENDIF.
      t19 = t135.
      t10->load( ).
      APPEND t19 TO t10->items.
      t10->save( ).
    ENDDO.
    result = t10.

  ENDMETHOD.

  METHOD find_field_type.
    DATA(t1) = i_code.
    DATA(t2) = i_source_infos.
    DATA(t3) = i_scope.
    DATA(t4) = VALUE i( ).
    DATA(t5) = VALUE i( ).
    DATA(t7) = |~|.
    DATA(t8) = strlen( t1 ).
    IF t7 IS INITIAL.
      t5 = 0.
    ELSE.
      FIND t7 IN t1 MATCH OFFSET t5.
      IF sy-subrc <> 0.
        t5 = -1.
      ENDIF.
    ENDIF.
    t4 = t5.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t4 >= 0 ) = abap_true.
      DATA(t16) = VALUE string( ).
      DATA(t18) = 0.
      DATA(t19) = t4.
      DATA(t20) = strlen( t1 ).
      t18 = COND i( WHEN t18 < 0 THEN 0 WHEN t18 > t20 THEN t20 ELSE t18 ).
      t19 = COND i( WHEN t19 < 0 THEN 0 WHEN t19 > t20 THEN t20 ELSE t19 ).
      IF t18 > t19.
        t20 = t18.
        t18 = t19.
        t19 = t20.
      ENDIF.
      t20 = t19 - t18.
      t16 = t1+t18(t20).
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t16.
      t10 = t21.
    ELSE.
      CLEAR t10.
    ENDIF.
    t9 = t10.
    DATA(t24) = VALUE string( ).
    DATA(t25) = VALUE string( ).
    IF xsdbool( t4 >= 0 ) = abap_true.
      DATA t30 TYPE string.
      t30 = t1.
      DATA(t32) = VALUE string( ).
      DATA t34 TYPE i.
      DATA(t36) = 1.
      t34 = t4 + t36.
      DATA t37 TYPE i.
      t37 = strlen( t30 ).
      DATA(t40) = strlen( t30 ).
      t34 = COND i( WHEN t34 < 0 THEN 0 WHEN t34 > t40 THEN t40 ELSE t34 ).
      t37 = COND i( WHEN t37 < 0 THEN 0 WHEN t37 > t40 THEN t40 ELSE t37 ).
      IF t34 > t37.
        t40 = t34.
        t34 = t37.
        t37 = t40.
      ENDIF.
      t40 = t37 - t34.
      t32 = t30+t34(t40).
      t25 = t32.
    ELSE.
      t25 = t1.
    ENDIF.
    t24 = t25.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t45 = t9.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = VALUE abap_bool( ).
    IF t45 IS INITIAL.
      t49 = abap_true.
    ELSEIF t45->has = abap_false.
      t49 = abap_true.
    ENDIF.
    IF t49 = abap_true.
      t43 = t2.
    ELSE.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t53.
      DATA t56 TYPE REF TO zcl_lnt_database_source_info.
      DATA t57 TYPE REF TO object.
      DATA(t58) = VALUE i( ).
      DO.
        t2->load( ).
        IF t58 >= lines( t2->items ).
          EXIT.
        ENDIF.
        CLEAR t57.
        READ TABLE t2->items INDEX t58 + 1 INTO t57.
        t58 = t58 + 1.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        CLEAR t56.
        IF t57 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t59 ?= t57.
          DATA t60 TYPE REF TO object.
          t60 = t59->as_ref( ).
          t56 ?= t60.
        ELSE.
          t56 ?= t57.
        ENDIF.
        DATA t61 TYPE abap_bool.
        DATA t62 TYPE abap_bool.
        t62 = xsdbool( t56->alias = t9->value ).
        t61 = t62.
        IF t62 = abap_false.
          t61 = xsdbool( t56->name = t9->value ).
        ENDIF.
        IF t61 = abap_true.
          t53->load( ).
          APPEND t56 TO t53->items.
          t53->save( ).
        ENDIF.
      ENDDO.
      t43 = t53.
    ENDIF.
    t42 = t43.
    DATA t76 TYPE REF TO zcl_lnt_database_source_info.
    DATA t77 TYPE REF TO object.
    DATA(t78) = VALUE i( ).
    DO.
      t42->load( ).
      IF t78 >= lines( t42->items ).
        EXIT.
      ENDIF.
      CLEAR t77.
      READ TABLE t42->items INDEX t78 + 1 INTO t77.
      t78 = t78 + 1.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      CLEAR t76.
      IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t79 ?= t77.
        DATA t80 TYPE REF TO object.
        t80 = t79->as_ref( ).
        t76 ?= t80.
      ELSE.
        t76 ?= t77.
      ENDIF.
      DATA t81 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t81.
      DATA t83 TYPE REF TO zif_lnt_union_c74a232f.
      t83 = t76->source.
      DATA t86 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t86.
      IF xsdbool( t83 IS INITIAL ) = abap_true.
        CLEAR t86.
      ELSE.
        DATA t91 TYPE REF TO zif_lnt_union_c74a232f.
        t91 = t83.
        DATA t93 TYPE REF TO zif_lnt_registry.
        t93 = t3->reg.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        t86 = t91->parse_type( i_reg_f149 = t93 i_data_element = t98 i_description = t99 ).
      ENDIF.
      t81 = t86.
      DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t102) = |-|.
      DATA(t103) = strlen( t24 ).
      DATA t104 TYPE i.
      DATA(t105) = VALUE i( ).
      DATA(t106) = VALUE i( ).
      DATA t107 TYPE i.
      DATA(t108) = VALUE string( ).
      CREATE OBJECT t100.
      t107 = strlen( t102 ).
      t104 = 0.
      IF t107 = 0.
        WHILE t104 < t103.
          t108 = t24+t104(1).
          APPEND t108 TO t100->items.
          t104 = t104 + 1.
        ENDWHILE.
      ELSE.
        WHILE t104 <= t103.
          FIND FIRST OCCURRENCE OF t102 IN SECTION OFFSET t104 OF t24 MATCH OFFSET t105.
          IF sy-subrc = 0.
            t106 = t105 - t104.
          ELSE.
            t105 = -1.
            t106 = t103 - t104.
          ENDIF.
          CLEAR t108.
          IF t106 > 0.
            t108 = t24+t104(t106).
          ENDIF.
          APPEND t108 TO t100->items.
          IF t105 < 0.
            EXIT.
          ENDIF.
          t104 = t105 + t107.
        ENDWHILE.
      ENDIF.
      DATA(t109) = VALUE string( ).
      t100->dense( ).
      DATA(t110) = VALUE i( ).
      DO.
        t100->load( ).
        IF t110 >= lines( t100->items ).
          EXIT.
        ENDIF.
        CLEAR t109.
        READ TABLE t100->items INDEX t110 + 1 INTO t109.
        IF t100->has( t110 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t110 = t110 + 1.
        DATA(t113) = t81.
        IF xsdbool( xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
          CLEAR t81.
          EXIT.
        ENDIF.
        DATA t117 TYPE REF TO zcl_lnt_structure_type.
        t117 ?= t81.
        DATA t119 TYPE string.
        t119 = t109.
        DATA t122 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        t122 = t117->indexed.
        DATA t124 TYPE string.
        DATA(t126) = strlen( t119 ).
        t124 = t119.
        IF t124 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t124 TO UPPER CASE.
        ELSE.
          t124 = zlnt_runtime_uppe_91169605024d=>full( t124 ).
        ENDIF.
        t81 = t122->get( p0 = t124 ).
      ENDDO.
      IF xsdbool( t81 IS BOUND ) = abap_true.
        result = t81.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_fields.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d317_252b4f448498.
    t3 = t1->find_first_expression( i_type_9913 = t9 ).
    DATA t11 TYPE REF TO zif_lnt_union_daf022d4.
    DATA t12 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    t14 = t3.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    IF xsdbool( t14 IS INITIAL ) = abap_true.
    ELSE.
      DATA t20 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t22 TYPE REF TO zcl_lnt_abstract_node.
      t22 = t14.
      DATA t27 TYPE REF TO zif_lnt_node.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t28 = t22->children.
      DATA t30 TYPE REF TO object.
      t28->load( ).
      READ TABLE t28->items INDEX 1 INTO t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t30.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t27 ?= t32.
      ELSE.
        t27 ?= t30.
      ENDIF.
      t20 ?= t27.
      t16 = t20.
    ENDIF.
    t12 = t16.
    DATA t34 TYPE REF TO zif_lnt_union_daf022d4.
    IF xsdbool( t12 IS INITIAL ) = abap_true.
    ELSE.
      DATA t38 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t42 TYPE REF TO object.
      t42 = t12->get_db65( ).
      t38 ?= t42.
      t34 = t38.
    ENDIF.
    t11 = t34.
    IF xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_st_dynamic ) = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA t44 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t46 TYPE REF TO zcl_lnt_abstract_node.
      t46 = t3.
      DATA t51 TYPE REF TO zif_lnt_node.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t52 = t46->children.
      DATA t54 TYPE REF TO object.
      t52->load( ).
      READ TABLE t52->items INDEX 1 INTO t54.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t54 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t55 ?= t54.
        DATA t56 TYPE REF TO object.
        t56 = t55->as_ref( ).
        t51 ?= t56.
      ELSE.
        t51 ?= t54.
      ENDIF.
      t44 ?= t51.
      t43 ?= t44.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t43 i_input_967e = t2 ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    t62 = t3.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t62 IS INITIAL ) = abap_true.
    ELSE.
      DATA t69 TYPE REF TO zcl_lnt_expression_node.
      t69 = t62.
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t72.
      DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
      t72->load( ).
      APPEND t75 TO t72->items.
      t72->save( ).
      DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
      t72->load( ).
      APPEND t77 TO t72->items.
      t72->save( ).
      DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
      t72->load( ).
      APPEND t79 TO t72->items.
      t72->save( ).
      t64 = t69->find_direct_expressions_multi( i_type_9913 = t72 ).
    ENDIF.
    t60 = t64.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t60 IS BOUND ) = abap_true.
      t81 = t60.
    ELSE.
      CREATE OBJECT t81.
    ENDIF.
    t59 = t81.
    DATA t87 TYPE REF TO zcl_lnt_expression_node.
    DATA t88 TYPE REF TO object.
    DATA(t89) = VALUE i( ).
    DO.
      t59->load( ).
      IF t89 >= lines( t59->items ).
        EXIT.
      ENDIF.
      CLEAR t88.
      READ TABLE t59->items INDEX t89 + 1 INTO t88.
      t89 = t89 + 1.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      CLEAR t87.
      IF t88 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t90 ?= t88.
        DATA t91 TYPE REF TO object.
        t91 = t90->as_ref( ).
        t87 ?= t91.
      ELSE.
        t87 ?= t88.
      ENDIF.
      DATA(t92) = VALUE string( ).
      DATA t93 TYPE string.
      DATA t94 TYPE string.
      t94 = t87->concat_tokens( ).
      DATA(t96) = strlen( t94 ).
      t93 = t94.
      IF t93 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t93 TO UPPER CASE.
      ELSE.
        t93 = zlnt_runtime_uppe_91169605024d=>full( t93 ).
      ENDIF.
      t92 = t93.
      DATA(t97) = VALUE string( ).
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      DATA t101 TYPE REF TO zcl_lnt_expression_node.
      DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
      t101 = t87->find_direct_expression( i_type_9913 = t104 ).
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t105.
      IF xsdbool( t101 IS INITIAL ) = abap_true.
        CLEAR t105.
      ELSE.
        DATA t109 TYPE string.
        t109 = t101->concat_tokens( ).
        DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t112->has = abap_true.
        t112->value = t109.
        t105 = t112.
      ENDIF.
      t99 = t105.
      DATA(t113) = VALUE string( ).
      DATA(t114) = VALUE abap_bool( ).
      IF t99 IS BOUND.
        IF t99->has = abap_true.
          t114 = xsdbool( strlen( t99->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t114 = abap_true.
        t113 = t99->value.
      ELSE.
        t113 = ||.
      ENDIF.
      t97 = t113.
      IF xsdbool( t97 <> || ) = abap_true.
        DATA(t122) = VALUE string( ).
        DATA(t123) = t92.
        DATA(t124) = VALUE string( ).
        DATA(t125) = | AS |.
        DATA t126 TYPE string.
        DATA(t128) = strlen( t97 ).
        t126 = t97.
        IF t126 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t126 TO UPPER CASE.
        ELSE.
          t126 = zlnt_runtime_uppe_91169605024d=>full( t126 ).
        ENDIF.
        DATA(t129) = strlen( t125 ).
        t124 = |{ t125 }{ t126 }|.
        DATA(t130) = ||.
        DATA(t131) = strlen( t123 ).
        t122 = t123.
        IF t124 = ``.
          t122 = |{ t130 }{ t123 }|.
        ELSE.
          REPLACE FIRST OCCURRENCE OF t124 IN t122 WITH t130.
        ENDIF.
        t92 = t122.
      ENDIF.
      DATA t133 TYPE REF TO zcl_lnt_shape_14fea903.
      t133 = NEW zcl_lnt_shape_14fea903( i_code = t92 i_as = t97 i_expression = t87 ).
      CREATE OBJECT t133->zlnt_view_ownkeys_b0e8086400eb.
      t133->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `code` p1 = t143 ).
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `as` p1 = t144 ).
      ENDIF.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t145.
      IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `expression` p1 = t145 ).
      ENDIF.
      CREATE OBJECT t133->zlnt_json_ownkeys_70e5fd461788.
      t133->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = |code| p1 = t147 ).
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = |as| p1 = t149 ).
      ENDIF.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = |expression| p1 = t151 ).
      ENDIF.
      t5->load( ).
      APPEND t133 TO t5->items.
      t5->save( ).
    ENDDO.
    DATA t152 TYPE abap_bool.
    DATA t153 TYPE abap_bool.
    t5->load( ).
    t153 = xsdbool( lines( t5->items ) = 0 ).
    t152 = t153.
    IF t153 = abap_true.
      t152 = xsdbool( t3 IS BOUND ).
    ENDIF.
    IF t152 = abap_true.
      DATA t160 TYPE REF TO zcl_lnt_shape_14fea903.
      t160 = NEW zcl_lnt_shape_14fea903( i_code = t3->concat_tokens( ) i_as = || i_expression = t3 ).
      CREATE OBJECT t160->zlnt_view_ownkeys_b0e8086400eb.
      t160->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `code` p1 = t173 ).
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t160->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `as` p1 = t174 ).
      ENDIF.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t160->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `expression` p1 = t175 ).
      ENDIF.
      CREATE OBJECT t160->zlnt_json_ownkeys_70e5fd461788.
      t160->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = |code| p1 = t177 ).
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t160->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = |as| p1 = t179 ).
      ENDIF.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t160->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = |expression| p1 = t181 ).
      ENDIF.
      t5->load( ).
      APPEND t160 TO t5->items.
      t5->save( ).
    ENDIF.
    result = t5.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d831_ef901d590872.
  ENDMETHOD.
ENDCLASS.
