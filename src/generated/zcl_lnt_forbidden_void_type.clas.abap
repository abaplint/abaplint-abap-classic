* TS: src/rules/forbidden_void_type.ts:22:1 ForbiddenVoidType
CLASS zcl_lnt_forbidden_void_type DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_frbddn_vd_typ_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_fr_vd_ty_ts_fr_vd_ty RETURNING VALUE(result) TYPE REF TO zcl_lnt_frbddn_vd_typ_cnf.
    METHODS s_c_i_s_r_fr_vd_ty_ts_fr_vd_ty IMPORTING i_conf TYPE REF TO zcl_lnt_frbddn_vd_typ_cnf.
    METHODS i_i_sr_rl_fr_vd_ty_ts_fr_vd_ty IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_forbidden_void_type.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_forbidden_type IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_forbidden_name IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE abap_bool.
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
CLASS zcl_lnt_forbidden_void_type IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_frbddn_vd_typ_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA(t11) = |Inspiration:\nBOOLEAN, BOOLE_D, CHAR01, CHAR1, CHAR10, CHAR12|.
    t11 = t11 && |, CHAR128, CHAR2, CHAR20, CHAR4, CHAR70,\nDATS, TIMS, DATUM, |.
    t11 = t11 && |FLAG, INT4, NUMC3, NUMC4, SAP_BOOL, TEXT25, TEXT80, X255, XF|.
    t11 = t11 && |ELD|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |forbidden_void_type| i_title = |Forbidden Void Types| i_short_description = |Avoid usage of specified void types.| i_bad_example = t14 i_good_example = t16 i_extended_information = t12 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
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

  METHOD g_c_i_s_r_fr_vd_ty_ts_fr_vd_ty.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_fr_vd_ty_ts_fr_vd_ty.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_b42982868281( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11->zlnt_view_write_s_664d83bee218( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD i_i_sr_rl_fr_vd_ty_ts_fr_vd_ty.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t8 = me->conf->zlnt_view_read_sr_b42982868281( ).
      t8->load( ).
      t2 = xsdbool( lines( t8->items ) = 0 ).
    ENDIF.
    IF t2 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t17) = me->reg.
    DATA t18 TYPE REF TO zcl_lnt_abap_object.
    DATA t20 TYPE REF TO object.
    t20 = t1.
    t18 ?= t20.
    result = me->traverse( i_node = NEW zcl_lnt_syntax_logic( i_reg_f149 = t17 i_object_19cd = t18 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ) ).

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE string.
    t4 = |Forbidden void type: |.
    DATA t7 TYPE string.
    t7 = t1->get_identifier( )->stype.
    IF xsdbool( t7 <> |_builtin| ) = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t11 = t1->get_data( )->references.
      DATA t14 TYPE REF TO zcl_lnt_ireference.
      DATA t15 TYPE REF TO object.
      DATA(t16) = VALUE i( ).
      DO.
        t11->load( ).
        IF t16 >= lines( t11->items ).
          EXIT.
        ENDIF.
        CLEAR t15.
        READ TABLE t11->items INDEX t16 + 1 INTO t15.
        t16 = t16 + 1.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        CLEAR t14.
        IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t17 ?= t15.
          DATA t18 TYPE REF TO object.
          t18 = t17->as_ref( ).
          t14 ?= t18.
        ELSE.
          t14 ?= t15.
        ENDIF.
        DATA(t19) = VALUE abap_bool( ).
        DATA t20 TYPE abap_bool.
        DATA t21 TYPE abap_bool.
        t21 = xsdbool( t14->reference_type = |Object (Void)| ).
        t20 = t21.
        IF t21 = abap_true.
          DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t26.
          DATA t28 TYPE REF TO zcl_lnt_ireference_extras.
          t28 = t14->extra.
          DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t31.
          IF xsdbool( t28 IS INITIAL ) = abap_true.
            CLEAR t31.
          ELSE.
            t31 = t28->oo_name.
          ENDIF.
          t26 = t31.
          DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t38.
          DATA(t41) = VALUE abap_bool( ).
          IF t26 IS INITIAL.
            t41 = abap_true.
          ELSEIF t26->has = abap_false.
            t41 = abap_true.
          ENDIF.
          t20 = xsdbool( t41 = abap_false ).
        ENDIF.
        t19 = t20.
        IF t20 = abap_true.
          DATA t47 TYPE REF TO zcl_lnt_ireference_extras.
          t47 = t14->extra.
          DATA(t51) = VALUE string( ).
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          IF xsdbool( t47 IS INITIAL ) = abap_true.
            CLEAR t52.
          ELSE.
            t52 = t47->oo_name.
          ENDIF.
          t51 = t52->value.
          DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t58->has = abap_true.
          t58->value = t51.
          t19 = me->is_forbidden_name( i_name = t58 ).
        ENDIF.
        IF t19 = abap_true.
          DATA(t60) = t2.
          DATA t61 TYPE REF TO zcl_lnt_issue.
          CLEAR t61.
          DATA t62 TYPE REF TO zcl_lnt_fi_identifier.
          t62 = t14->position_7b94.
          DATA(t64) = VALUE string( ).
          DATA(t66) = VALUE string( ).
          DATA t67 TYPE REF TO zcl_lnt_ireference_extras.
          t67 = t14->extra.
          DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t72.
          IF xsdbool( t67 IS INITIAL ) = abap_true.
            CLEAR t72.
          ELSE.
            t72 = t67->oo_name.
          ENDIF.
          t66 = t72->value.
          DATA(t78) = strlen( t4 ).
          t64 = |{ t4 }{ t66 }|.
          DATA(t79) = VALUE string( ).
          DATA t80 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          DATA(t90) = |Inspiration:\nBOOLEAN, BOOLE_D, CHAR01, CHAR1, CHAR10, CHAR12|.
          t90 = t90 && |, CHAR128, CHAR2, CHAR20, CHAR4, CHAR70,\nDATS, TIMS, DATUM, |.
          t90 = t90 && |FLAG, INT4, NUMC3, NUMC4, SAP_BOOL, TEXT25, TEXT80, X255, XF|.
          t90 = t90 && |ELD|.
          DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t91->has = abap_true.
          t91->value = t90.
          t87 = t91.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t97.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t99.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t101.
          t80 = NEW zcl_lnt_irule_metadata( i_key = |forbidden_void_type| i_title = |Forbidden Void Types| i_short_description = |Avoid usage of specified void types.| i_bad_example = t93 i_good_example = t95 i_extended_information = t87 i_tags = t97 i_pragma = t99 i_pseudo_comment = t101 ).
          CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
          t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t103 ).
          DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t104.
          IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t104 ).
          ENDIF.
          DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t105.
          IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t105 ).
          ENDIF.
          DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t106.
          IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t106 ).
          ENDIF.
          CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
          t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t108.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t108 ).
          DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t110.
          IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t110 ).
          ENDIF.
          DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t112.
          IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t112 ).
          ENDIF.
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t114 ).
          ENDIF.
          t79 = t80->key.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t115 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t117 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t117.
          t61 = zcl_lnt_issue=>at_identifier( i_identifier = t62 i_message_26cb = t64 i_key = t79 i_severity = t115 i_fix = t117 ).
          t60->load( ).
          APPEND t61 TO t60->items.
          t60->save( ).
        ENDIF.
        DATA(t118) = VALUE abap_bool( ).
        DATA t119 TYPE abap_bool.
        DATA t120 TYPE abap_bool.
        t120 = xsdbool( t14->reference_type = |Type (Void)| ).
        t119 = t120.
        IF t120 = abap_false.
          t119 = xsdbool( t14->reference_type = |Table (Void)| ).
        ENDIF.
        t118 = t119.
        IF t119 = abap_true.
          DATA t136 TYPE string.
          t136 = t14->position_7b94->token->str.
          DATA(t144) = VALUE string( ).
          DATA(t145) = t136.
          DATA(t146) = 0.
          DATA(t147) = 1.
          DATA(t148) = strlen( t145 ).
          IF t146 < 0.
            t146 = t146 + t148.
            IF t146 < 0.
              t146 = 0.
            ENDIF.
          ENDIF.
          IF t146 > t148 OR t147 <= 0.
          ELSE.
            IF t147 > t148 - t146.
              t147 = t148 - t146.
            ENDIF.
            t144 = t145+t146(t147).
          ENDIF.
          IF xsdbool( t144 = |!| ) = abap_true.
            DATA t151 TYPE string.
            t151 = t136.
            DATA(t153) = VALUE string( ).
            DATA(t155) = 1.
            DATA t156 TYPE i.
            t156 = strlen( t151 ).
            DATA(t159) = strlen( t151 ).
            IF t155 < 0.
              t155 = t155 + t159.
              IF t155 < 0.
                t155 = 0.
              ENDIF.
            ENDIF.
            IF t155 > t159 OR t156 <= 0.
            ELSE.
              IF t156 > t159 - t155.
                t156 = t159 - t155.
              ENDIF.
              t153 = t151+t155(t156).
            ENDIF.
            t136 = t153.
          ENDIF.
          DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t161->has = abap_true.
          t161->value = t136.
          t118 = me->is_forbidden_name( i_name = t161 ).
        ENDIF.
        IF t118 = abap_true.
          DATA(t163) = t2.
          DATA t164 TYPE REF TO zcl_lnt_issue.
          CLEAR t164.
          DATA t165 TYPE REF TO zcl_lnt_fi_identifier.
          t165 = t14->position_7b94.
          DATA(t167) = VALUE string( ).
          DATA(t169) = VALUE string( ).
          DATA t174 TYPE string.
          t174 = t14->position_7b94->token->str.
          DATA(t182) = VALUE string( ).
          DATA(t183) = t174.
          DATA(t184) = 0.
          DATA(t185) = 1.
          DATA(t186) = strlen( t183 ).
          IF t184 < 0.
            t184 = t184 + t186.
            IF t184 < 0.
              t184 = 0.
            ENDIF.
          ENDIF.
          IF t184 > t186 OR t185 <= 0.
          ELSE.
            IF t185 > t186 - t184.
              t185 = t186 - t184.
            ENDIF.
            t182 = t183+t184(t185).
          ENDIF.
          IF xsdbool( t182 = |!| ) = abap_true.
            DATA t189 TYPE string.
            t189 = t174.
            DATA(t191) = VALUE string( ).
            DATA(t193) = 1.
            DATA t194 TYPE i.
            t194 = strlen( t189 ).
            DATA(t197) = strlen( t189 ).
            IF t193 < 0.
              t193 = t193 + t197.
              IF t193 < 0.
                t193 = 0.
              ENDIF.
            ENDIF.
            IF t193 > t197 OR t194 <= 0.
            ELSE.
              IF t194 > t197 - t193.
                t194 = t197 - t193.
              ENDIF.
              t191 = t189+t193(t194).
            ENDIF.
            t174 = t191.
          ENDIF.
          t169 = t174.
          DATA(t199) = strlen( t4 ).
          t167 = |{ t4 }{ t169 }|.
          DATA(t200) = VALUE string( ).
          DATA t201 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t208.
          DATA(t211) = |Inspiration:\nBOOLEAN, BOOLE_D, CHAR01, CHAR1, CHAR10, CHAR12|.
          t211 = t211 && |, CHAR128, CHAR2, CHAR20, CHAR4, CHAR70,\nDATS, TIMS, DATUM, |.
          t211 = t211 && |FLAG, INT4, NUMC3, NUMC4, SAP_BOOL, TEXT25, TEXT80, X255, XF|.
          t211 = t211 && |ELD|.
          DATA(t212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t212->has = abap_true.
          t212->value = t211.
          t208 = t212.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t214.
          DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t216.
          DATA t218 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t218.
          DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t220.
          DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t222.
          t201 = NEW zcl_lnt_irule_metadata( i_key = |forbidden_void_type| i_title = |Forbidden Void Types| i_short_description = |Avoid usage of specified void types.| i_bad_example = t214 i_good_example = t216 i_extended_information = t208 i_tags = t218 i_pragma = t220 i_pseudo_comment = t222 ).
          CREATE OBJECT t201->zlnt_view_ownkeys_b0e8086400eb.
          t201->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t224.
          t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t224 ).
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t225 ).
          ENDIF.
          DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t226.
          IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t226 ).
          ENDIF.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t227 ).
          ENDIF.
          CREATE OBJECT t201->zlnt_json_ownkeys_70e5fd461788.
          t201->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t229 ).
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t231 ).
          ENDIF.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t233 ).
          ENDIF.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t235 ).
          ENDIF.
          t200 = t201->key.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t236 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t238 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t238.
          t164 = zcl_lnt_issue=>at_identifier( i_identifier = t165 i_message_26cb = t167 i_key = t200 i_severity = t236 i_fix = t238 ).
          t163->load( ).
          APPEND t164 TO t163->items.
          t163->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t239 = t1->get_children( ).
    DATA t241 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t242 TYPE REF TO object.
    DATA(t243) = VALUE i( ).
    DO.
      t239->load( ).
      IF t243 >= lines( t239->items ).
        EXIT.
      ENDIF.
      CLEAR t242.
      READ TABLE t239->items INDEX t243 + 1 INTO t242.
      t243 = t243 + 1.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t244.
      CLEAR t241.
      IF t242 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t244 ?= t242.
        DATA t245 TYPE REF TO object.
        t245 = t244->as_ref( ).
        t241 ?= t245.
      ELSE.
        t241 ?= t242.
      ENDIF.
      t2 = t2->concat( p0 = me->traverse( i_node = t241 ) ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD is_forbidden_type.
    DATA(t1) = i_type_9913.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
      DATA(t5) = VALUE abap_bool( ).
      t5 = abap_false.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t9 TYPE REF TO zcl_lnt_structure_type.
      t9 ?= t1.
      t7 = t9->components.
      DATA t13 TYPE REF TO zcl_lnt_istructure_component.
      DATA t14 TYPE REF TO object.
      DATA(t15) = VALUE i( ).
      DO.
        t7->load( ).
        IF t15 >= lines( t7->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t7->items INDEX t15 + 1 INTO t14.
        t15 = t15 + 1.
        DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t16.
        CLEAR t13.
        IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t16 ?= t14.
          CLEAR t13.
          IF t16 IS BOUND.
            IF t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t13 ?= t16->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t13 IS NOT BOUND.
              IF t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t17.
                IF t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t17 ?= t16->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t17->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t18) = VALUE string( ).
              DATA t19 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t19.
              DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t20.
              DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t21.
              t13 = NEW zcl_lnt_istructure_component( view_source = t16 i_name = t18 i_type_9913 = t19 i_as_include = t20 i_suffix = t21 ).
            ENDIF.
          ENDIF.
        ELSE.
          t13 ?= t14.
        ENDIF.
        IF me->is_forbidden_type( i_type_9913 = t13->zlnt_view_read_sr_455340cd1e80( ) ) = abap_true.
          t5 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      result = t5.
      RETURN.
    ENDIF.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.

    DATA t34 TYPE REF TO zcl_lnt_void_type.
    t34 ?= t1.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t36 = t34->voided.
    result = me->is_forbidden_name( i_name = t36 ).

  ENDMETHOD.

  METHOD is_forbidden_name.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t10 = me->conf->zlnt_view_read_sr_b42982868281( ).
    DATA(t12) = VALUE string( ).
    t10->dense( ).
    DATA(t13) = VALUE i( ).
    DO.
      t10->load( ).
      IF t13 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t10->items INDEX t13 + 1 INTO t12.
      IF t10->has( t13 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t13 = t13 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t15 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t12 flags = |i|.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t22 = t1.
      DATA(t24) = VALUE string( ).
      DATA(t25) = VALUE abap_bool( ).
      IF t22 IS INITIAL.
        t25 = abap_true.
      ELSEIF t22->has = abap_false.
        t25 = abap_true.
      ENDIF.
      IF t25 = abap_true.
        t24 = |undefined|.
      ELSE.
        t24 = t22->value.
      ENDIF.
      IF xsdbool( t15->test( p0 = t24 ) = abap_true ) = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_frbddn_vd_typ_cnf( me->g_c_i_s_r_fr_vd_ty_ts_fr_vd_ty( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_frbddn_vd_typ_cnf( me->g_c_i_s_r_fr_vd_ty_ts_fr_vd_ty( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_frbddn_vd_typ_cnf.
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
        t2 = NEW zcl_lnt_frbddn_vd_typ_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_fr_vd_ty_ts_fr_vd_ty( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_sr_rl_fr_vd_ty_ts_fr_vd_ty( i_reg_f149 = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1510_520873557365.
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
