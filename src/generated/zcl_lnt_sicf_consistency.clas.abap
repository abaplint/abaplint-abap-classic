* TS: src/rules/sicf_consistency.ts:17:1 SICFConsistency
CLASS zcl_lnt_sicf_consistency DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_sicf_consistency_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_sc_cn_ts_sc_cns RETURNING VALUE(result) TYPE REF TO zcl_lnt_sicf_consistency_conf.
    METHODS st_cn_in_sr_rl_sc_cn_ts_sc_cns IMPORTING i_conf TYPE REF TO zcl_lnt_sicf_consistency_conf.
    METHODS in_in_sr_rl_scf_cns_ts_scf_cns IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_sicf_consistency.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_implementing IMPORTING i_def TYPE REF TO zcl_lnt_info_class_definition RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sicf_consistency IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_sicf_consistency_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA(t11) = |* Class defined in handler must exist\n* Class must not have |.
    t11 = t11 && |any syntax errors\n* Class must implement interface IF_HTTP_E|.
    t11 = t11 && |XTENSION|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |sicf_consistency| i_title = |SICF consistency| i_short_description = |Checks the validity of ICF services| i_bad_example = t14 i_good_example = t16 i_extended_information = t12 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t24 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t26 ).
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t29 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t31 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t33 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t35 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sc_cn_ts_sc_cns.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sc_cn_ts_sc_cns.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_b7c3dc457f77( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11->zlnt_view_write_s_ee32e6506d75( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD in_in_sr_rl_scf_cns_ts_scf_cns.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_icfservice ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t10 TYPE REF TO zcl_lnt_icfservice.
    DATA t11 TYPE REF TO zcl_lnt_icfservice.
    DATA t13 TYPE REF TO object.
    t13 = t1.
    t11 ?= t13.
    t10 = t11.
    DATA t15 TYPE REF TO zcl_lnt_iparse_result.
    t15 = t10->pr_in_sr_ob_icf_srv_ts_icf_srv( ).
    DATA t18 TYPE REF TO zcl_lnt_shape_c9bc8812.
    t18 = t10->parsed_xml.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
    ELSE.
      t21 = t18->handlers.
    ENDIF.
    t8 = t21.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t36 = t8.
    DATA(t38) = VALUE string( ).
    t36->dense( ).
    DATA(t39) = VALUE i( ).
    DO.
      t36->load( ).
      IF t39 >= lines( t36->items ).
        EXIT.
      ENDIF.
      CLEAR t38.
      READ TABLE t36->items INDEX t39 + 1 INTO t38.
      IF t36->has( t39 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t39 = t39 + 1.
      DATA t40 TYPE REF TO zcl_lnt_class.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_class.
      CLEAR t41.
      DATA(t43) = me->reg.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t47->has = abap_true.
      t47->value = |CLAS|.
      t44 = t47.
      DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t52->has = abap_true.
      t52->value = t38.
      DATA t54 TYPE REF TO object.
      t54 = t43->get_object( i_type_9913 = t44 i_name = t52 ).
      t41 ?= t54.
      t40 = t41.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      IF xsdbool( t40 IS INITIAL ) = abap_true.
        DATA t62 TYPE abap_bool.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t64 = me->conf->zlnt_view_read_sr_b7c3dc457f77( ).
        t63 = xsdbool( t64 IS BOUND ).
        t62 = t63.
        IF t63 = abap_true.
          DATA t67 TYPE abap_bool.
          t67 = abap_false.
          DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t69 = me->conf->zlnt_view_read_sr_b7c3dc457f77( ).
          DATA(t72) = VALUE string( ).
          t69->dense( ).
          DATA(t73) = VALUE i( ).
          DO.
            t69->load( ).
            IF t73 >= lines( t69->items ).
              EXIT.
            ENDIF.
            CLEAR t72.
            READ TABLE t69->items INDEX t73 + 1 INTO t72.
            IF t69->has( t73 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t73 = t73 + 1.
            DATA t75 TYPE string.
            DATA(t77) = strlen( t72 ).
            t75 = t72.
            IF t75 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t75 TO UPPER CASE.
            ELSE.
              t75 = zlnt_runtime_uppe_91169605024d=>full( t75 ).
            ENDIF.
            DATA t78 TYPE string.
            DATA(t80) = strlen( t38 ).
            t78 = t38.
            IF t78 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t78 TO UPPER CASE.
            ELSE.
              t78 = zlnt_runtime_uppe_91169605024d=>full( t78 ).
            ENDIF.
            IF xsdbool( t75 = t78 ) = abap_true.
              t67 = abap_true.
              EXIT.
            ENDIF.
          ENDDO.
          t62 = t67.
        ENDIF.
        IF t62 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t84 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t84.
        CREATE OBJECT t84 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = me->reg->get_config( )->get_syntax_setttings( )->zlnt_view_read_sr_912daad1f2d5( ) flags = |i|.
        IF xsdbool( t84->test( p0 = t38 ) = abap_true ) = abap_true.
          DATA t96 TYPE string.
          DATA t97 TYPE string.
          DATA(t98) = |Handler class |.
          DATA(t100) = strlen( t98 ).
          t97 = |{ t98 }{ t38 }|.
          DATA(t102) = strlen( t97 ).
          t96 = |{ t97 }{ | not found| }|.
          DATA t104 TYPE REF TO zcl_lnt_issue.
          CLEAR t104.
          DATA t105 TYPE REF TO zif_lnt_file.
          CLEAR t105.
          DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t107 TYPE REF TO zcl_lnt_abstract_object.
          DATA t108 TYPE REF TO zcl_lnt_icfservice.
          DATA t110 TYPE REF TO object.
          t110 = t1.
          t108 ?= t110.
          t107 = t108.
          t106 = t107->files.
          DATA t113 TYPE REF TO object.
          CLEAR t113.
          t106->load( ).
          CLEAR t113.
          READ TABLE t106->items INDEX 1 INTO t113.
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          CLEAR t105.
          IF t113 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t114 ?= t113.
            DATA t115 TYPE REF TO object.
            t115 = t114->as_ref( ).
            t105 ?= t115.
          ELSE.
            t105 ?= t113.
          ENDIF.
          DATA t116 TYPE REF TO zcl_lnt_position.
          DATA(t119) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t119->has = abap_true.
          t119->value = CONV f( 1 ).
          t116 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t119 ).
          DATA(t121) = VALUE string( ).
          DATA t122 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t122.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          DATA(t132) = |* Class defined in handler must exist\n* Class must not have |.
          t132 = t132 && |any syntax errors\n* Class must implement interface IF_HTTP_E|.
          t132 = t132 && |XTENSION|.
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t132.
          t129 = t133.
          DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t135.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t139.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
          t122 = NEW zcl_lnt_irule_metadata( i_key = |sicf_consistency| i_title = |SICF consistency| i_short_description = |Checks the validity of ICF services| i_bad_example = t135 i_good_example = t137 i_extended_information = t129 i_tags = t139 i_pragma = t141 i_pseudo_comment = t143 ).
          CREATE OBJECT t122->zlnt_view_ownkeys_b0e8086400eb.
          t122->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t145 ).
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t146 ).
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t147 ).
          ENDIF.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t148 ).
          ENDIF.
          CREATE OBJECT t122->zlnt_json_ownkeys_70e5fd461788.
          t122->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t150 ).
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t152 ).
          ENDIF.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t154 ).
          ENDIF.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t156 ).
          ENDIF.
          t121 = t122->key.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t157 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t159 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t159.
          t104 = zcl_lnt_issue=>at_position( i_file = t105 i_start = t116 i_message_26cb = t96 i_key = t121 i_severity = t157 i_fix = t159 ).
          t2->load( ).
          APPEND t104 TO t2->items.
          t2->save( ).
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t162 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t162.
      DATA t164 TYPE REF TO zcl_lnt_class.
      t164 = t40.
      DATA t168 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t168.
      DATA t170 TYPE REF TO zcl_lnt_abap_file.
      t170 = t164->get_main_abap_file( ).
      DATA t173 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t173.
      IF xsdbool( t170 IS INITIAL ) = abap_true.
        CLEAR t173.
      ELSE.
        t173 = t170->info.
      ENDIF.
      t168 = t173.
      DATA t183 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t183.
      IF xsdbool( t168 IS INITIAL ) = abap_true.
        CLEAR t183.
      ELSE.
        DATA t188 TYPE REF TO zif_lnt_abap_file_information.
        t188 = t168.
        DATA t190 TYPE string.
        DATA t191 TYPE REF TO zcl_lnt_abstract_object.
        t191 = t164.
        t190 = t191->name.
        t183 = t188->get_class_definition_by_name( i_name = t190 ).
      ENDIF.
      t162 = t183.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      IF xsdbool( t162 IS INITIAL ) = abap_true.
        DATA t203 TYPE string.
        DATA(t204) = |Syntax error in class |.
        DATA(t206) = strlen( t204 ).
        t203 = |{ t204 }{ t38 }|.
        DATA t208 TYPE REF TO zcl_lnt_issue.
        CLEAR t208.
        DATA t209 TYPE REF TO zif_lnt_file.
        CLEAR t209.
        DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t211 TYPE REF TO zcl_lnt_abstract_object.
        DATA t212 TYPE REF TO zcl_lnt_icfservice.
        DATA t214 TYPE REF TO object.
        t214 = t1.
        t212 ?= t214.
        t211 = t212.
        t210 = t211->files.
        DATA t217 TYPE REF TO object.
        CLEAR t217.
        t210->load( ).
        CLEAR t217.
        READ TABLE t210->items INDEX 1 INTO t217.
        DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t218.
        CLEAR t209.
        IF t217 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t218 ?= t217.
          DATA t219 TYPE REF TO object.
          t219 = t218->as_ref( ).
          t209 ?= t219.
        ELSE.
          t209 ?= t217.
        ENDIF.
        DATA t220 TYPE REF TO zcl_lnt_position.
        DATA(t223) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t223->has = abap_true.
        t223->value = CONV f( 1 ).
        t220 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t223 ).
        DATA(t225) = VALUE string( ).
        DATA t226 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t226.
        DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t233.
        DATA(t236) = |* Class defined in handler must exist\n* Class must not have |.
        t236 = t236 && |any syntax errors\n* Class must implement interface IF_HTTP_E|.
        t236 = t236 && |XTENSION|.
        DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t237->has = abap_true.
        t237->value = t236.
        t233 = t237.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t239.
        DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t241.
        DATA t243 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t243.
        DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t245.
        DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t247.
        t226 = NEW zcl_lnt_irule_metadata( i_key = |sicf_consistency| i_title = |SICF consistency| i_short_description = |Checks the validity of ICF services| i_bad_example = t239 i_good_example = t241 i_extended_information = t233 i_tags = t243 i_pragma = t245 i_pseudo_comment = t247 ).
        CREATE OBJECT t226->zlnt_view_ownkeys_b0e8086400eb.
        t226->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t249.
        t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t249 ).
        DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t250.
        IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t250 ).
        ENDIF.
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t251.
        IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t251 ).
        ENDIF.
        DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t252.
        IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t252 ).
        ENDIF.
        CREATE OBJECT t226->zlnt_json_ownkeys_70e5fd461788.
        t226->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t254.
        t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t254 ).
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t256 ).
        ENDIF.
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t258.
        IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t258 ).
        ENDIF.
        DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t260.
        IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t260 ).
        ENDIF.
        t225 = t226->key.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t261 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t263 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t263.
        t208 = zcl_lnt_issue=>at_position( i_file = t209 i_start = t220 i_message_26cb = t203 i_key = t225 i_severity = t261 i_fix = t263 ).
        t2->load( ).
        APPEND t208 TO t2->items.
        t2->save( ).
        CONTINUE.
      ENDIF.
      DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t266 = me->find_implementing( i_def = t162 ).
      DATA t272 TYPE f.
      t272 = CONV f( -1 ).
      DATA t274 TYPE f.
      t274 = CONV f( -1 ).
      DATA t277 TYPE REF TO zcl_lnt_info_implementing.
      CLEAR t277.
      DATA t278 TYPE REF TO object.
      CLEAR t278.
      DATA(t279) = VALUE i( ).
      DO.
        t266->load( ).
        IF t279 >= lines( t266->items ).
          EXIT.
        ENDIF.
        CLEAR t278.
        READ TABLE t266->items INDEX t279 + 1 INTO t278.
        t279 = t279 + 1.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        CLEAR t277.
        IF t278 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t280 ?= t278.
          DATA t281 TYPE REF TO object.
          t281 = t280->as_ref( ).
          t277 ?= t281.
        ELSE.
          t277 ?= t278.
        ENDIF.
        DATA(t284) = CONV f( 1 ).
        t272 = t272 + t284.
        DATA t286 TYPE string.
        DATA t287 TYPE string.
        t287 = t277->name.
        DATA(t289) = strlen( t287 ).
        t286 = t287.
        IF t286 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t286 TO UPPER CASE.
        ELSE.
          t286 = zlnt_runtime_uppe_91169605024d=>full( t286 ).
        ENDIF.
        IF xsdbool( t286 = |IF_HTTP_EXTENSION| ) = abap_true.
          t274 = t272.
          EXIT.
        ENDIF.
      ENDDO.
      IF xsdbool( t274 < CONV f( 0 ) ) = abap_true.
        DATA t295 TYPE string.
        DATA t296 TYPE string.
        DATA(t297) = |Handler class |.
        DATA(t299) = strlen( t297 ).
        t296 = |{ t297 }{ t38 }|.
        DATA(t301) = strlen( t296 ).
        t295 = |{ t296 }{ | must implement IF_HTTP_EXTENSION| }|.
        DATA t303 TYPE REF TO zcl_lnt_issue.
        CLEAR t303.
        DATA t304 TYPE REF TO zif_lnt_file.
        CLEAR t304.
        DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t306 TYPE REF TO zcl_lnt_abstract_object.
        DATA t307 TYPE REF TO zcl_lnt_icfservice.
        DATA t309 TYPE REF TO object.
        t309 = t1.
        t307 ?= t309.
        t306 = t307.
        t305 = t306->files.
        DATA t312 TYPE REF TO object.
        CLEAR t312.
        t305->load( ).
        CLEAR t312.
        READ TABLE t305->items INDEX 1 INTO t312.
        DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t313.
        CLEAR t304.
        IF t312 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t313 ?= t312.
          DATA t314 TYPE REF TO object.
          t314 = t313->as_ref( ).
          t304 ?= t314.
        ELSE.
          t304 ?= t312.
        ENDIF.
        DATA t315 TYPE REF TO zcl_lnt_position.
        DATA(t318) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t318->has = abap_true.
        t318->value = CONV f( 1 ).
        t315 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t318 ).
        DATA(t320) = VALUE string( ).
        DATA t321 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t321.
        DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t328.
        DATA(t331) = |* Class defined in handler must exist\n* Class must not have |.
        t331 = t331 && |any syntax errors\n* Class must implement interface IF_HTTP_E|.
        t331 = t331 && |XTENSION|.
        DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t332->has = abap_true.
        t332->value = t331.
        t328 = t332.
        DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t334.
        DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t336.
        DATA t338 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t338.
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t340.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t342.
        t321 = NEW zcl_lnt_irule_metadata( i_key = |sicf_consistency| i_title = |SICF consistency| i_short_description = |Checks the validity of ICF services| i_bad_example = t334 i_good_example = t336 i_extended_information = t328 i_tags = t338 i_pragma = t340 i_pseudo_comment = t342 ).
        CREATE OBJECT t321->zlnt_view_ownkeys_b0e8086400eb.
        t321->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t344.
        t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t344 ).
        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t345.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t345 ).
        ENDIF.
        DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t346.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t346 ).
        ENDIF.
        DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t347.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t347 ).
        ENDIF.
        CREATE OBJECT t321->zlnt_json_ownkeys_70e5fd461788.
        t321->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t349.
        t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t349 ).
        DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t351.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t351 ).
        ENDIF.
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t353.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t353 ).
        ENDIF.
        DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t355.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t355 ).
        ENDIF.
        t320 = t321->key.
        DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t356 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t358 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t358.
        t303 = zcl_lnt_issue=>at_position( i_file = t304 i_start = t315 i_message_26cb = t295 i_key = t320 i_severity = t356 i_fix = t358 ).
        t2->load( ).
        APPEND t303 TO t2->items.
        t2->save( ).
        CONTINUE.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_implementing.
    DATA(t1) = i_def.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = t1->interfaces.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = t1->super_class_name.
    DO.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t9 = t5.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      DATA(t14) = VALUE abap_bool( ).
      IF t9 IS INITIAL.
        t14 = abap_true.
      ELSEIF t9->has = abap_false.
        t14 = abap_true.
      ENDIF.
      IF xsdbool( t14 = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zcl_lnt_class.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_class.
      CLEAR t17.
      DATA(t19) = me->reg.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t23->has = abap_true.
      t23->value = |CLAS|.
      t20 = t23.
      DATA t27 TYPE string.
      t27 = t5->value.
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t27.
      DATA t31 TYPE REF TO object.
      t31 = t19->get_object( i_type_9913 = t20 i_name = t29 ).
      t17 ?= t31.
      t16 = t17.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      IF xsdbool( t16 IS INITIAL ) = abap_true.
        EXIT.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t39.
      DATA t41 TYPE REF TO zcl_lnt_class.
      t41 = t16.
      DATA t45 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t45.
      DATA t47 TYPE REF TO zcl_lnt_abap_file.
      t47 = t41->get_main_abap_file( ).
      DATA t50 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t50.
      IF xsdbool( t47 IS INITIAL ) = abap_true.
        CLEAR t50.
      ELSE.
        t50 = t47->info.
      ENDIF.
      t45 = t50.
      DATA t60 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t60.
      IF xsdbool( t45 IS INITIAL ) = abap_true.
        CLEAR t60.
      ELSE.
        DATA t65 TYPE REF TO zif_lnt_abap_file_information.
        t65 = t45.
        DATA t67 TYPE string.
        DATA t68 TYPE REF TO zcl_lnt_abstract_object.
        t68 = t41.
        t67 = t68->name.
        t60 = t65->get_class_definition_by_name( i_name = t67 ).
      ENDIF.
      t39 = t60.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      IF xsdbool( t39 IS INITIAL ) = abap_true.
        EXIT.
      ENDIF.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t81 = t39->interfaces.
      t2 = t2->concat( p0 = t81 ).
      t5 = t39->super_class_name.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_sicf_consistency_conf( me->gt_cn_in_sr_rl_sc_cn_ts_sc_cns( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_sicf_consistency_conf( me->gt_cn_in_sr_rl_sc_cn_ts_sc_cns( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_sicf_consistency_conf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_sicf_consistency_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sc_cn_ts_sc_cns( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_scf_cns_ts_scf_cns( i_reg_f149 = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1700_f5fd4de9e272.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
