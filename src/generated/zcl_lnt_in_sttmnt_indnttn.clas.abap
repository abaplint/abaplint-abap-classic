* TS: src/rules/in_statement_indentation.ts:21:1 InStatementIndentation
CLASS zcl_lnt_in_sttmnt_indnttn DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_in_st_in_ts_in_st_in RETURNING VALUE(result) TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    METHODS s_c_i_s_r_in_st_in_ts_in_st_in IMPORTING i_conf TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    METHODS r_p_i_s_r_in_st_in_ts_in_st_in IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_in_sttmnt_indnttn IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_in_sttmnt_indnttn_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks alignment within statements which span multiple lines|.
    t7 = t7 && |.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Lines following the first line should be indented once (2 sp|.
    t11 = t11 && |aces).\n\nFor block declaration statements, lines after the fi|.
    t11 = t11 && |rst should be indented an additional time (default: +2 space|.
    t11 = t11 && |s)\nto distinguish them better from code within the block.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = |IF 1 = 1\n  AND 2 = 2.\n  WRITE 'hello' &&\n  'world'.\nENDIF.|.
    t14 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = |IF 1 = 1\n    AND 2 = 2.\n  WRITE 'hello' &&\n    'world'.\nENDI|.
    t23 = t23 && |F.|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    t20 = t24.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t30.
    t30->load( ).
    APPEND |Whitespace| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |Quickfix| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |SingleFile| TO t30->items.
    t30->save( ).
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |in_statement_indentation| i_title = |In-statement indentation| i_short_description = t6 i_bad_example = t14 i_good_example = t20 i_extended_information = t8 i_tags = t30 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t52 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Fix in-statement indentation|.

  ENDMETHOD.

  METHOD g_c_i_s_r_in_st_in_ts_in_st_in.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_in_st_in_ts_in_st_in.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_in_st_in_ts_in_st_in.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    DATA(t7) = me->reg.
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t7 ).
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ) = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t12 TYPE REF TO zcl_lnt_class.
      DATA t13 TYPE REF TO zcl_lnt_class.
      t13 ?= t2.
      t12 = t13.
      DATA t17 TYPE REF TO zif_lnt_abap_file_information.
      DATA t19 TYPE REF TO zcl_lnt_abap_file.
      t19 = t12->get_main_abap_file( ).
      DATA t22 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t19 IS INITIAL ) = abap_true.
      ELSE.
        t22 = t19->info.
      ENDIF.
      t17 = t22.
      DATA t32 TYPE REF TO zcl_lnt_info_class_definition.
      IF xsdbool( t17 IS INITIAL ) = abap_true.
      ELSE.
        DATA t37 TYPE REF TO zif_lnt_abap_file_information.
        t37 = t17.
        DATA t39 TYPE string.
        DATA t40 TYPE REF TO zcl_lnt_abstract_object.
        t40 = t12.
        t39 = t40->name.
        t32 = t37->get_class_definition_by_name( i_name = t39 ).
      ENDIF.
      t10 = t32.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t10 IS INITIAL ) = abap_true.
        CREATE OBJECT result.
        RETURN.
      ELSE.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t54 = me->conf->zlnt_view_read_sr_d976ff72e120( ).
        IF t54 IS BOUND.
          IF t54->has = abap_true.
            t53 = xsdbool( t54->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t52 = t53.
        IF t53 = abap_true.
          DATA t58 TYPE REF TO zcl_lnt_info_class_definition.
          t58 = t10.
          DATA t63 TYPE REF TO zcl_lnt_class.
          t63 ?= t2.
          t52 = t6->is_exception( i_def = t58 i_obj_ac26 = t63 ).
        ENDIF.
        IF t52 = abap_true.
          CREATE OBJECT result.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t67 = t1->statements.
    DATA t72 TYPE REF TO zcl_lnt_statement_node.
    DATA t73 TYPE REF TO object.
    DATA(t74) = VALUE i( ).
    DO.
      t67->load( ).
      IF t74 >= lines( t67->items ).
        EXIT.
      ENDIF.
      CLEAR t73.
      READ TABLE t67->items INDEX t74 + 1 INTO t73.
      t74 = t74 + 1.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      CLEAR t72.
      IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t75 ?= t73.
        DATA t76 TYPE REF TO object.
        t76 = t75->as_ref( ).
        t72 ?= t76.
      ELSE.
        t72 ?= t73.
      ENDIF.
      DATA(t77) = VALUE abap_bool( ).
      DATA t78 TYPE abap_bool.
      DATA t79 TYPE abap_bool.
      DATA t80 TYPE REF TO zif_lnt_statement.
      t80 = t72->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_st_comment ).
      t78 = t79.
      IF t79 = abap_false.
        DATA t83 TYPE REF TO zif_lnt_statement.
        t83 = t72->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t78 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_unknown ).
      ENDIF.
      t77 = t78.
      IF t78 = abap_false.
        DATA t86 TYPE REF TO zif_lnt_statement.
        t86 = t72->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t77 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_native_sql ).
      ENDIF.
      IF t77 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t88 = t72->get_tokens( ).
      t88->load( ).
      IF xsdbool( lines( t88->items ) = 0 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t95) = VALUE f( ).
      DATA t98 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t98.
      DATA t100 TYPE REF TO object.
      CLEAR t100.
      t88->load( ).
      CLEAR t100.
      READ TABLE t88->items INDEX 1 INTO t100.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      CLEAR t98.
      IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t101 ?= t100.
        DATA t102 TYPE REF TO object.
        t102 = t101->as_ref( ).
        t98 ?= t102.
      ELSE.
        t98 ?= t100.
      ENDIF.
      t95 = t98->start->row.
      DATA t109 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t109.
      DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t111.
      DATA t113 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t113.
      DATA t115 TYPE REF TO object.
      CLEAR t115.
      t88->load( ).
      CLEAR t115.
      READ TABLE t88->items INDEX 1 INTO t115.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      CLEAR t113.
      IF t115 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t116 ?= t115.
        DATA t117 TYPE REF TO object.
        t117 = t116->as_ref( ).
        t113 ?= t117.
      ELSE.
        t113 ?= t115.
      ENDIF.
      t111 = t113->start->col.
      DATA(t125) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t125->has = abap_true.
      t125->value = CONV f( 2 ).
      t109 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t111 right = t125 op = `+` ).
      DATA t126 TYPE REF TO zif_lnt_statement.
      t126 = t72->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA(t129) = VALUE abap_bool( ).
      DATA(t130) = VALUE abap_bool( ).
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = VALUE abap_bool( ).
      DATA(t133) = VALUE abap_bool( ).
      DATA(t134) = VALUE abap_bool( ).
      DATA(t135) = VALUE abap_bool( ).
      DATA(t136) = VALUE abap_bool( ).
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      DATA(t140) = VALUE abap_bool( ).
      DATA(t141) = VALUE abap_bool( ).
      DATA(t142) = VALUE abap_bool( ).
      DATA t143 TYPE abap_bool.
      DATA t144 TYPE abap_bool.
      t144 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_if ).
      t143 = t144.
      IF t144 = abap_false.
        t143 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_while ).
      ENDIF.
      t142 = t143.
      IF t143 = abap_false.
        t142 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_module ).
      ENDIF.
      t141 = t142.
      IF t142 = abap_false.
        t141 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_select_loop ).
      ENDIF.
      t140 = t141.
      IF t141 = abap_false.
        t140 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_function_module ).
      ENDIF.
      t139 = t140.
      IF t140 = abap_false.
        t139 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_do ).
      ENDIF.
      t138 = t139.
      IF t139 = abap_false.
        t138 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_at ).
      ENDIF.
      t137 = t138.
      IF t138 = abap_false.
        t137 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_catch ).
      ENDIF.
      t136 = t137.
      IF t137 = abap_false.
        t136 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_case ).
      ENDIF.
      t135 = t136.
      IF t136 = abap_false.
        t135 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_when ).
      ENDIF.
      t134 = t135.
      IF t135 = abap_false.
        t134 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_cleanup ).
      ENDIF.
      t133 = t134.
      IF t134 = abap_false.
        t133 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_loop ).
      ENDIF.
      t132 = t133.
      IF t133 = abap_false.
        t132 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_form ).
      ENDIF.
      t131 = t132.
      IF t132 = abap_false.
        t131 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_else ).
      ENDIF.
      t130 = t131.
      IF t131 = abap_false.
        t130 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_else_if ).
      ENDIF.
      t129 = t130.
      IF t130 = abap_false.
        t129 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
      ENDIF.
      IF t129 = abap_true.
        DATA t178 TYPE f.
        t178 = me->conf->zlnt_view_read_sr_aaaa533f3d3f( ).
        DATA(t180) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t180->has = abap_true.
        t180->value = t178.
        t109 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t109 right = t180 op = `+` ).
      ENDIF.
      DATA t182 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t182.
      DATA t183 TYPE REF TO object.
      CLEAR t183.
      DATA(t184) = VALUE i( ).
      DO.
        t88->load( ).
        IF t184 >= lines( t88->items ).
          EXIT.
        ENDIF.
        CLEAR t183.
        READ TABLE t88->items INDEX t184 + 1 INTO t183.
        t184 = t184 + 1.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t185.
        CLEAR t182.
        IF t183 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t185 ?= t183.
          DATA t186 TYPE REF TO object.
          t186 = t185->as_ref( ).
          t182 ?= t186.
        ELSE.
          t182 ?= t183.
        ENDIF.
        IF xsdbool( t182->start->row = t95 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t206 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t206 = t182->start->col.
        IF zlnt_runtime_numb_290eb04a9758=>compare( left = t206 right = t109 op = `<` ) = abap_true.
          DATA t210 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t210.
          DATA t212 TYPE REF TO zcl_lnt_position.
          DATA t213 TYPE f.
          t213 = t182->start->row.
          DATA(t223) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t223->has = abap_true.
          t223->value = CONV f( 1 ).
          t212 = NEW zcl_lnt_position( i_row = t213 i_col = t223 ).
          DATA t224 TYPE REF TO zcl_lnt_position.
          t224 = t182->start.
          DATA t230 TYPE string.
          t230 = | |.
          DATA(t232) = VALUE string( ).
          DATA t234 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t237) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t237->has = abap_true.
          t237->value = CONV f( 1 ).
          t234 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t109 right = t237 op = `-` ).
          DATA(t238) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t234 ) ).
          DATA(t239) = strlen( t230 ).
          DATA(t240) = CONV f( trunc( t238 ) ).
          IF t240 < 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t230 IS NOT INITIAL.
            IF t240 > 2147483647 OR t240 * strlen( t230 ) > 2147483647.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t232 = repeat( val = t230 occ = CONV i( t240 ) ).
          ENDIF.
          t210 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t212 i_end = t224 i_text = t232 ).
          DATA t242 TYPE REF TO zcl_lnt_issue.
          CLEAR t242.
          DATA(t246) = VALUE string( ).
          DATA t247 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t252 TYPE string.
          DATA(t253) = |Checks alignment within statements which span multiple lines|.
          t253 = t253 && |.|.
          t252 = t253.
          DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t254.
          DATA(t257) = |Lines following the first line should be indented once (2 sp|.
          t257 = t257 && |aces).\n\nFor block declaration statements, lines after the fi|.
          t257 = t257 && |rst should be indented an additional time (default: +2 space|.
          t257 = t257 && |s)\nto distinguish them better from code within the block.|.
          DATA(t258) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t258->has = abap_true.
          t258->value = t257.
          t254 = t258.
          DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t260.
          DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t264->has = abap_true.
          t264->value = |IF 1 = 1\n  AND 2 = 2.\n  WRITE 'hello' &&\n  'world'.\nENDIF.|.
          t260 = t264.
          DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t266.
          DATA(t269) = |IF 1 = 1\n    AND 2 = 2.\n  WRITE 'hello' &&\n    'world'.\nENDI|.
          t269 = t269 && |F.|.
          DATA(t270) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t270->has = abap_true.
          t270->value = t269.
          t266 = t270.
          DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t272.
          DATA t276 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t276.
          t276->load( ).
          APPEND |Whitespace| TO t276->items.
          t276->save( ).
          t276->load( ).
          APPEND |Quickfix| TO t276->items.
          t276->save( ).
          t276->load( ).
          APPEND |SingleFile| TO t276->items.
          t276->save( ).
          t272 = t276.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t286.
          DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t288.
          t247 = NEW zcl_lnt_irule_metadata( i_key = |in_statement_indentation| i_title = |In-statement indentation| i_short_description = t252 i_bad_example = t260 i_good_example = t266 i_extended_information = t254 i_tags = t272 i_pragma = t286 i_pseudo_comment = t288 ).
          CREATE OBJECT t247->zlnt_view_ownkeys_b0e8086400eb.
          t247->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t290.
          t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t290 ).
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t291.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t291 ).
          ENDIF.
          DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t292.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t292 ).
          ENDIF.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t293 ).
          ENDIF.
          DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t294.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t294 ).
          ENDIF.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t295.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t295 ).
          ENDIF.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t296 ).
          ENDIF.
          CREATE OBJECT t247->zlnt_json_ownkeys_70e5fd461788.
          t247->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t298 ).
          DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t300.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t300 ).
          ENDIF.
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t302.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t302 ).
          ENDIF.
          DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t304.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t304 ).
          ENDIF.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t306.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t306 ).
          ENDIF.
          DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t308.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t308 ).
          ENDIF.
          DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t310.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t310 ).
          ENDIF.
          t246 = t247->key.
          t242 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t182 i_message_26cb = |Fix in-statement indentation| i_key = t246 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t210 ).
          t3->load( ).
          APPEND t242 TO t3->items.
          t3->save( ).
          EXIT.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_in_sttmnt_indnttn_cnf( me->g_c_i_s_r_in_st_in_ts_in_st_in( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_in_sttmnt_indnttn_cnf( me->g_c_i_s_r_in_st_in_ts_in_st_in( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_in_sttmnt_indnttn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_in_st_in_ts_in_st_in( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_in_st_in_ts_in_st_in( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1542_de7d4e6d2a91.
  ENDMETHOD.
ENDCLASS.
