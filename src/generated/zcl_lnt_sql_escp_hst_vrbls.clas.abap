* TS: src/rules/sql_escape_host_variables.ts:15:1 SQLEscapeHostVariables
CLASS zcl_lnt_sql_escp_hst_vrbls DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_sql_escp_hst_vrbls_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_s_e_h_v_t_s_es_hs_vr RETURNING VALUE(result) TYPE REF TO zcl_lnt_sql_escp_hst_vrbls_cnf.
    METHODS s_c_i_s_r_s_e_h_v_t_s_es_hs_vr IMPORTING i_conf TYPE REF TO zcl_lnt_sql_escp_hst_vrbls_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_escp_hst_vrbls IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_sql_escp_hst_vrbls_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#avoid-obsolete-language-elements|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Upport| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Syntax| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |SELECT * FROM tab INTO TABLE res WHERE field = val.|.
    t30 = t34.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = |SELECT * FROM tab INTO TABLE @res WHERE field = @val.|.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |sql_escape_host_variables| i_title = |Escape SQL host variables| i_short_description = |Escape SQL host variables, from 740sp05 and in open-abap| i_bad_example = t30 i_good_example = t40 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t54 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_s_e_h_v_t_s_es_hs_vr.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_s_e_h_v_t_s_es_hs_vr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE string.
    t5 = t2->get_type( ).
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE abap_bool.
    t9 = xsdbool( t5 = |INTF| ).
    t8 = t9.
    IF t9 = abap_false.
      t8 = xsdbool( t5 = |TYPE| ).
    ENDIF.
    IF t8 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zcl_lnt_abap_release.
    t20 = me->reg->get_config( )->get_release( ).
    DATA t25 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t25 = zcl_lnt_version_module=>release_b8cd.
    t18 = xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t20 i_required = t25->get( p0 = |v740sp02| ) ) = abap_false ).
    t17 = t18.
    IF t18 = abap_true.
      DATA t28 TYPE string.
      t28 = me->reg->get_config( )->get_language_version( ).
      t17 = xsdbool( t28 <> |Cloud| ).
    ENDIF.
    t16 = t17.
    IF t17 = abap_true.
      DATA t33 TYPE abap_bool.
      t33 = me->reg->get_config( )->is_open_abap( ).
      t16 = xsdbool( t33 = abap_false ).
    ENDIF.
    IF t16 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t37 = t1->statements.
    DATA t42 TYPE REF TO zcl_lnt_statement_node.
    DATA t43 TYPE REF TO object.
    DATA(t44) = VALUE i( ).
    DO.
      t37->load( ).
      IF t44 >= lines( t37->items ).
        EXIT.
      ENDIF.
      CLEAR t43.
      READ TABLE t37->items INDEX t44 + 1 INTO t43.
      t44 = t44 + 1.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      CLEAR t42.
      IF t43 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t45 ?= t43.
        DATA t46 TYPE REF TO object.
        t46 = t45->as_ref( ).
        t42 ?= t46.
      ELSE.
        t42 ?= t43.
      ENDIF.
      DATA t47 TYPE REF TO zif_lnt_statement.
      t47 = t42->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = VALUE abap_bool( ).
      DATA t54 TYPE abap_bool.
      DATA t55 TYPE abap_bool.
      t55 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_update_database ).
      t54 = t55.
      IF t55 = abap_false.
        t54 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_modify_database ).
      ENDIF.
      t53 = t54.
      IF t54 = abap_false.
        t53 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_statem_select ).
      ENDIF.
      t52 = t53.
      IF t53 = abap_false.
        t52 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_select_loop ).
      ENDIF.
      t51 = t52.
      IF t52 = abap_false.
        t51 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_insert_database ).
      ENDIF.
      t50 = t51.
      IF t51 = abap_false.
        t50 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_delete_database ).
      ENDIF.
      IF t50 = abap_true.
        DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t70.
        DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
        t70->load( ).
        APPEND t73 TO t70->items.
        t70->save( ).
        DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10.
        t70->load( ).
        APPEND t75 TO t70->items.
        t70->save( ).
        t69 = t70.
        DATA t77 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t77.
        t67 = t42->find_all_expressions_multi( i_type_9913 = t69 i_recursive = t77 ).
        DATA t78 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t78.
        DATA t79 TYPE REF TO object.
        CLEAR t79.
        DATA(t80) = VALUE i( ).
        DO.
          t67->load( ).
          IF t80 >= lines( t67->items ).
            EXIT.
          ENDIF.
          CLEAR t79.
          READ TABLE t67->items INDEX t80 + 1 INTO t79.
          t80 = t80 + 1.
          DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t81.
          CLEAR t78.
          IF t79 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t81 ?= t79.
            DATA t82 TYPE REF TO object.
            t82 = t81->as_ref( ).
            t78 ?= t82.
          ELSE.
            t78 ?= t79.
          ENDIF.
          DATA t83 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t83.
          DATA t84 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t84.
          DATA t85 TYPE REF TO zif_lnt_node.
          CLEAR t85.
          DATA t86 TYPE REF TO zcl_lnt_abstract_node.
          t86 = t78.
          DATA t90 TYPE REF TO zif_lnt_node.
          CLEAR t90.
          DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t91 = t86->children.
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
          t85 = t90.
          t84 ?= t85.
          t83 = t84.
          DATA(t97) = VALUE abap_bool( ).
          DATA(t98) = VALUE abap_bool( ).
          DATA(t99) = VALUE abap_bool( ).
          DATA t100 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t100.
          DATA t101 TYPE REF TO zif_lnt_union_4cf1d054.
          t101 = t83.
          DATA t103 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t103.
          IF xsdbool( t101 IS INITIAL ) = abap_true.
            CLEAR t103.
          ELSE.
            DATA t107 TYPE REF TO zif_lnt_union_daf022d4.
            DATA t111 TYPE REF TO object.
            t111 = t101->get_db65( ).
            t107 ?= t111.
            t103 = t107.
          ENDIF.
          t100 = t103.
          t99 = xsdbool( t100 IS BOUND AND t100 IS INSTANCE OF zcl_lnt_st_source ).
          t98 = t99.
          IF t99 = abap_true.
            DATA t113 TYPE REF TO object.
            CLEAR t113.
            DATA t114 TYPE REF TO zif_lnt_node.
            CLEAR t114.
            DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t115 = t83->get_children( ).
            DATA t118 TYPE REF TO object.
            CLEAR t118.
            t115->load( ).
            CLEAR t118.
            READ TABLE t115->items INDEX 1 INTO t118.
            DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t119.
            CLEAR t114.
            IF t118 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t119 ?= t118.
              DATA t120 TYPE REF TO object.
              t120 = t119->as_ref( ).
              t114 ?= t120.
            ELSE.
              t114 ?= t118.
            ENDIF.
            t113 = t114->get_db65( ).
            t98 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_st_field_chain ).
          ENDIF.
          t97 = t98.
          IF t98 = abap_false.
            DATA(t121) = VALUE abap_bool( ).
            DATA(t122) = VALUE abap_bool( ).
            DATA t123 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t123.
            DATA t124 TYPE REF TO zif_lnt_union_4cf1d054.
            t124 = t83.
            DATA t126 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t126.
            IF xsdbool( t124 IS INITIAL ) = abap_true.
              CLEAR t126.
            ELSE.
              DATA t130 TYPE REF TO zif_lnt_union_daf022d4.
              DATA t134 TYPE REF TO object.
              t134 = t124->get_db65( ).
              t130 ?= t134.
              t126 = t130.
            ENDIF.
            t123 = t126.
            t122 = xsdbool( t123 IS BOUND AND t123 IS INSTANCE OF zcl_lnt_simple_source3 ).
            t121 = t122.
            IF t122 = abap_true.
              DATA t136 TYPE REF TO object.
              CLEAR t136.
              DATA t137 TYPE REF TO zif_lnt_node.
              CLEAR t137.
              DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t138 = t83->get_children( ).
              DATA t141 TYPE REF TO object.
              CLEAR t141.
              t138->load( ).
              CLEAR t141.
              READ TABLE t138->items INDEX 1 INTO t141.
              DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t142.
              CLEAR t137.
              IF t141 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t142 ?= t141.
                DATA t143 TYPE REF TO object.
                t143 = t142->as_ref( ).
                t137 ?= t143.
              ELSE.
                t137 ?= t141.
              ENDIF.
              t136 = t137->get_db65( ).
              t121 = xsdbool( t136 IS BOUND AND t136 IS INSTANCE OF zcl_lnt_st_field_chain ).
            ENDIF.
            t97 = t121.
          ENDIF.
          IF t97 = abap_true.
            DATA t144 TYPE abap_bool.
            DATA t145 TYPE abap_bool.
            t145 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_modify_database ).
            t144 = t145.
            IF t145 = abap_true.
              DATA(t147) = VALUE abap_bool( ).
              DATA t148 TYPE string.
              DATA t149 TYPE string.
              t149 = t83->get_first_token( )->str.
              DATA(t156) = strlen( t149 ).
              t148 = t149.
              IF t148 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t148 TO UPPER CASE.
              ELSE.
                t148 = zlnt_runtime_uppe_91169605024d=>full( t148 ).
              ENDIF.
              DATA(t157) = |LS_|.
              DATA(t158) = strlen( t148 ).
              DATA t159 TYPE i.
              DATA(t160) = VALUE i( ).
              DATA(t161) = VALUE string( ).
              t159 = strlen( t157 ).
              IF t159 = 0.
                t147 = abap_true.
              ELSEIF t159 <= t158.
                t160 = 0.
                t161 = t148+t160(t159).
                IF t161 = t157.
                  t147 = abap_true.
                ENDIF.
              ENDIF.
              t144 = t147.
            ENDIF.
            IF t144 = abap_true.
              CONTINUE.
            ENDIF.
            DATA t164 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t164.
            DATA t167 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t167.
            DATA t168 TYPE REF TO zif_lnt_node.
            CLEAR t168.
            DATA t169 TYPE REF TO zcl_lnt_abstract_node.
            t169 = t78.
            DATA t173 TYPE REF TO zif_lnt_node.
            CLEAR t173.
            DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t174 = t169->children.
            DATA t176 TYPE REF TO object.
            CLEAR t176.
            t174->load( ).
            CLEAR t176.
            READ TABLE t174->items INDEX 1 INTO t176.
            DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t177.
            CLEAR t173.
            IF t176 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t177 ?= t176.
              DATA t178 TYPE REF TO object.
              t178 = t177->as_ref( ).
              t173 ?= t178.
            ELSE.
              t173 ?= t176.
            ENDIF.
            t168 = t173.
            t167 ?= t168.
            t164 = t167->get_first_token( ).
            DATA t181 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t181.
            DATA(t185) = |@|.
            DATA(t186) = VALUE string( ).
            DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t187.
            DATA t189 TYPE REF TO zcl_lnt_abstract_token.
            t189 = t164.
            DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t191.
            IF xsdbool( t189 IS INITIAL ) = abap_true.
              CLEAR t191.
            ELSE.
              DATA t198 TYPE string.
              t198 = t189->str.
              DATA(t200) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t200->has = abap_true.
              t200->value = t198.
              t191 = t200.
            ENDIF.
            t187 = t191.
            DATA(t201) = VALUE string( ).
            DATA(t202) = VALUE abap_bool( ).
            IF t187 IS INITIAL.
              t202 = abap_true.
            ELSEIF t187->has = abap_false.
              t202 = abap_true.
            ENDIF.
            IF t202 = abap_true.
              t201 = |undefined|.
            ELSE.
              t201 = t187->value.
            ENDIF.
            t186 = t201.
            DATA(t207) = strlen( t185 ).
            t181 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t164 i_text = |{ t185 }{ t186 }| ).
            DATA t209 TYPE REF TO zcl_lnt_issue.
            CLEAR t209.
            DATA t211 TYPE REF TO zcl_lnt_abstract_token.
            t211 = t83->get_first_token( ).
            DATA(t215) = VALUE string( ).
            DATA t216 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t216.
            DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t223.
            DATA(t226) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t226 = t226 && |nABAP.md#avoid-obsolete-language-elements|.
            DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t227->has = abap_true.
            t227->value = t226.
            t223 = t227.
            DATA t229 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t229.
            DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t233.
            t233->load( ).
            APPEND |Upport| TO t233->items.
            t233->save( ).
            t233->load( ).
            APPEND |Styleguide| TO t233->items.
            t233->save( ).
            t233->load( ).
            APPEND |Quickfix| TO t233->items.
            t233->save( ).
            t233->load( ).
            APPEND |Syntax| TO t233->items.
            t233->save( ).
            t229 = t233.
            DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t245.
            DATA(t249) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t249->has = abap_true.
            t249->value = |SELECT * FROM tab INTO TABLE res WHERE field = val.|.
            t245 = t249.
            DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t251.
            DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t255->has = abap_true.
            t255->value = |SELECT * FROM tab INTO TABLE @res WHERE field = @val.|.
            t251 = t255.
            DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t257.
            DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t259.
            t216 = NEW zcl_lnt_irule_metadata( i_key = |sql_escape_host_variables| i_title = |Escape SQL host variables| i_short_description = |Escape SQL host variables, from 740sp05 and in open-abap| i_bad_example = t245 i_good_example = t251 i_extended_information = t223 i_tags = t229 i_pragma = t257 i_pseudo_comment = t259 ).
            CREATE OBJECT t216->zlnt_view_ownkeys_b0e8086400eb.
            t216->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t261.
            t216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t261 ).
            DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t262.
            IF t216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t262 ).
            ENDIF.
            DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t263.
            IF t216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t263 ).
            ENDIF.
            DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t264.
            IF t216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t264 ).
            ENDIF.
            DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t265.
            IF t216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t265 ).
            ENDIF.
            DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t266.
            IF t216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t266 ).
            ENDIF.
            DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t267.
            IF t216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t267 ).
            ENDIF.
            CREATE OBJECT t216->zlnt_json_ownkeys_70e5fd461788.
            t216->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t269.
            t216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t269 ).
            DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t271.
            IF t216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t271 ).
            ENDIF.
            DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t273.
            IF t216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t273 ).
            ENDIF.
            DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t275.
            IF t216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t275 ).
            ENDIF.
            DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t277.
            IF t216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t277 ).
            ENDIF.
            DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t279.
            IF t216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t279 ).
            ENDIF.
            DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t281.
            IF t216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t281 ).
            ENDIF.
            t215 = t216->key.
            t209 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t211 i_message_26cb = |Escape SQL host variables| i_key = t215 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t181 ).
            t3->load( ).
            APPEND t209 TO t3->items.
            t3->save( ).
            EXIT.
          ENDIF.
        ENDDO.
        DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t292) = zlnt_runtime_desc_78196487750d=>zlnt_member_d333_b60636864266.
        t290 = t42->find_all_expressions( i_type_9913 = t292 ).
        DATA t293 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t293.
        DATA t294 TYPE REF TO object.
        CLEAR t294.
        DATA(t295) = VALUE i( ).
        DO.
          t290->load( ).
          IF t295 >= lines( t290->items ).
            EXIT.
          ENDIF.
          CLEAR t294.
          READ TABLE t290->items INDEX t295 + 1 INTO t294.
          t295 = t295 + 1.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          CLEAR t293.
          IF t294 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t296 ?= t294.
            DATA t297 TYPE REF TO object.
            t297 = t296->as_ref( ).
            t293 ?= t297.
          ELSE.
            t293 ?= t294.
          ENDIF.
          DATA t299 TYPE REF TO zcl_lnt_abstract_token.
          t299 = t293->find_direct_token_by_text( i_text = |@| ).
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          IF xsdbool( xsdbool( t299 IS INITIAL ) = abap_false ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t312 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t312.
          DATA t315 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t315.
          DATA t316 TYPE REF TO zif_lnt_node.
          CLEAR t316.
          DATA t317 TYPE REF TO zcl_lnt_abstract_node.
          t317 = t293.
          DATA t321 TYPE REF TO zif_lnt_node.
          CLEAR t321.
          DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t322 = t317->children.
          DATA t324 TYPE REF TO object.
          CLEAR t324.
          t322->load( ).
          CLEAR t324.
          READ TABLE t322->items INDEX 1 INTO t324.
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t325.
          CLEAR t321.
          IF t324 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t325 ?= t324.
            DATA t326 TYPE REF TO object.
            t326 = t325->as_ref( ).
            t321 ?= t326.
          ELSE.
            t321 ?= t324.
          ENDIF.
          t316 = t321.
          t315 ?= t316.
          t312 = t315->get_first_token( ).
          DATA t329 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t329.
          DATA(t333) = |@|.
          DATA(t334) = VALUE string( ).
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t335.
          DATA t337 TYPE REF TO zcl_lnt_abstract_token.
          t337 = t312.
          DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t339.
          IF xsdbool( t337 IS INITIAL ) = abap_true.
            CLEAR t339.
          ELSE.
            DATA t346 TYPE string.
            t346 = t337->str.
            DATA(t348) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t348->has = abap_true.
            t348->value = t346.
            t339 = t348.
          ENDIF.
          t335 = t339.
          DATA(t349) = VALUE string( ).
          DATA(t350) = VALUE abap_bool( ).
          IF t335 IS INITIAL.
            t350 = abap_true.
          ELSEIF t335->has = abap_false.
            t350 = abap_true.
          ENDIF.
          IF t350 = abap_true.
            t349 = |undefined|.
          ELSE.
            t349 = t335->value.
          ENDIF.
          t334 = t349.
          DATA(t355) = strlen( t333 ).
          t329 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t312 i_text = |{ t333 }{ t334 }| ).
          DATA t357 TYPE REF TO zcl_lnt_issue.
          CLEAR t357.
          DATA t359 TYPE REF TO zcl_lnt_abstract_token.
          t359 = t293->get_first_token( ).
          DATA(t362) = VALUE string( ).
          DATA t363 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t363.
          DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t370.
          DATA(t373) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t373 = t373 && |nABAP.md#avoid-obsolete-language-elements|.
          DATA(t374) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t374->has = abap_true.
          t374->value = t373.
          t370 = t374.
          DATA t376 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t376.
          DATA t380 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t380.
          t380->load( ).
          APPEND |Upport| TO t380->items.
          t380->save( ).
          t380->load( ).
          APPEND |Styleguide| TO t380->items.
          t380->save( ).
          t380->load( ).
          APPEND |Quickfix| TO t380->items.
          t380->save( ).
          t380->load( ).
          APPEND |Syntax| TO t380->items.
          t380->save( ).
          t376 = t380.
          DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t392.
          DATA(t396) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t396->has = abap_true.
          t396->value = |SELECT * FROM tab INTO TABLE res WHERE field = val.|.
          t392 = t396.
          DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t398.
          DATA(t402) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t402->has = abap_true.
          t402->value = |SELECT * FROM tab INTO TABLE @res WHERE field = @val.|.
          t398 = t402.
          DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t404.
          DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t406.
          t363 = NEW zcl_lnt_irule_metadata( i_key = |sql_escape_host_variables| i_title = |Escape SQL host variables| i_short_description = |Escape SQL host variables, from 740sp05 and in open-abap| i_bad_example = t392 i_good_example = t398 i_extended_information = t370 i_tags = t376 i_pragma = t404 i_pseudo_comment = t406 ).
          CREATE OBJECT t363->zlnt_view_ownkeys_b0e8086400eb.
          t363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t408.
          t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t408 ).
          DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t409.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t409 ).
          ENDIF.
          DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t410.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t410 ).
          ENDIF.
          DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t411.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t411 ).
          ENDIF.
          DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t412.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t412 ).
          ENDIF.
          DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t413.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t413 ).
          ENDIF.
          DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t414.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t414 ).
          ENDIF.
          CREATE OBJECT t363->zlnt_json_ownkeys_70e5fd461788.
          t363->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t416.
          t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t416 ).
          DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t418.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t418 ).
          ENDIF.
          DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t420.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t420 ).
          ENDIF.
          DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t422.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t422 ).
          ENDIF.
          DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t424.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t424 ).
          ENDIF.
          DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t426.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t426 ).
          ENDIF.
          DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t428.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t428 ).
          ENDIF.
          t362 = t363->key.
          t357 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t359 i_message_26cb = |Escape SQL host variables| i_key = t362 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t329 ).
          t3->load( ).
          APPEND t357 TO t3->items.
          t3->save( ).
          EXIT.
        ENDDO.
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_sql_escp_hst_vrbls_cnf( me->g_c_i_s_r_s_e_h_v_t_s_es_hs_vr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_sql_escp_hst_vrbls_cnf( me->g_c_i_s_r_s_e_h_v_t_s_es_hs_vr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_sql_escp_hst_vrbls_cnf.
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
        t1 = NEW zcl_lnt_sql_escp_hst_vrbls_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_s_e_h_v_t_s_es_hs_vr( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1710_b440cd1f06a7.
  ENDMETHOD.
ENDCLASS.
