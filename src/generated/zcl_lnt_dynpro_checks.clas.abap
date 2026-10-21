* TS: src/rules/dynpro_checks.ts:14:1 DynproChecks
CLASS zcl_lnt_dynpro_checks DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_dynpro_checks_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS in_in_sr_rl_dyn_chc_ts_dyn_chc IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_dynpro_checks.
    METHODS gt_cn_in_sr_rl_dy_ch_ts_dy_chc RETURNING VALUE(result) TYPE REF TO zcl_lnt_dynpro_checks_conf.
    METHODS st_cn_in_sr_rl_dy_ch_ts_dy_chc IMPORTING i_conf TYPE REF TO zcl_lnt_dynpro_checks_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_overlapping_fields IMPORTING i_dynpro TYPE REF TO zcl_lnt_dynpro_header i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS hs_cntnr_rltv_crdnts IMPORTING i_field_d104 TYPE REF TO zcl_lnt_dynpro_field RETURNING VALUE(result) TYPE abap_bool.
    METHODS overlaps IMPORTING i_first TYPE REF TO zcl_lnt_dynpro_field i_second TYPE REF TO zcl_lnt_dynpro_field RETURNING VALUE(result) TYPE abap_bool.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dynpro_checks IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_dynpro_checks_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |* Check length of PUSH elements less than 132\n* Check for ov|.
    t11 = t11 && |erlapping screen elements|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Syntax| TO t18->items.
    t18->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |dynpro_checks| i_title = |Dynpro Checks| i_short_description = |Various Dynpro checks| i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t18 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t38 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t40 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_dyn_chc_ts_dyn_chc.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_dy_ch_ts_dy_chc.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_dy_ch_ts_dy_chc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_program ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zif_lnt_file.
    DATA t10 TYPE REF TO zcl_lnt_ob_program.
    t10 ?= t1.
    t8 = t10->get_xml_file( ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_ob_program.
    DATA t23 TYPE REF TO zcl_lnt_ob_program.
    t23 ?= t1.
    t22 = t23.
    t22->parse_xml( ).
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t29 = t22->parsed_xml->dynpros.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t29 IS BOUND ) = abap_true.
      t34 = t29.
    ELSE.
      CREATE OBJECT t34.
    ENDIF.
    t21 = t34.
    DATA t39 TYPE REF TO zcl_lnt_dynpro_header.
    DATA t40 TYPE REF TO object.
    DATA(t41) = VALUE i( ).
    DO.
      t21->load( ).
      IF t41 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t40.
      READ TABLE t21->items INDEX t41 + 1 INTO t40.
      t41 = t41 + 1.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      CLEAR t39.
      IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t42 ?= t40.
        DATA t43 TYPE REF TO object.
        t43 = t42->as_ref( ).
        t39 ?= t43.
      ELSE.
        t39 ?= t40.
      ENDIF.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t44 = t39->fields_464c.
      DATA t46 TYPE REF TO zcl_lnt_dynpro_field.
      CLEAR t46.
      DATA t47 TYPE REF TO object.
      CLEAR t47.
      DATA(t48) = VALUE i( ).
      DO.
        t44->load( ).
        IF t48 >= lines( t44->items ).
          EXIT.
        ENDIF.
        CLEAR t47.
        READ TABLE t44->items INDEX t48 + 1 INTO t47.
        t48 = t48 + 1.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        CLEAR t46.
        IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t49 ?= t47.
          DATA t50 TYPE REF TO object.
          t50 = t49->as_ref( ).
          t46 ?= t50.
        ELSE.
          t46 ?= t47.
        ENDIF.
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = VALUE abap_bool( ).
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t53 = t46->type_cba0.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t58->has = abap_true.
        t58->value = |PUSH|.
        t55 = t58.
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = VALUE abap_bool( ).
        IF t53 IS BOUND.
          t60 = t53->has.
        ENDIF.
        IF t55 IS BOUND.
          t61 = t55->has.
        ENDIF.
        IF t60 = t61.
          IF t60 = abap_false.
            t52 = abap_true.
          ELSEIF t53->value = t55->value.
            t52 = abap_true.
          ENDIF.
        ENDIF.
        t51 = t52.
        IF t52 = abap_true.
          t51 = xsdbool( t46->length > CONV f( 132 ) ).
        ENDIF.
        IF t51 = abap_true.
          DATA(t66) = VALUE string( ).
          DATA(t68) = VALUE string( ).
          DATA(t69) = VALUE string( ).
          DATA(t70) = VALUE string( ).
          DATA(t71) = |Screen |.
          DATA(t72) = VALUE string( ).
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t73 = t39->number.
          DATA(t76) = VALUE string( ).
          DATA(t77) = VALUE abap_bool( ).
          IF t73 IS INITIAL.
            t77 = abap_true.
          ELSEIF t73->has = abap_false.
            t77 = abap_true.
          ENDIF.
          IF t77 = abap_true.
            t76 = |undefined|.
          ELSE.
            t76 = t73->value.
          ENDIF.
          t72 = t76.
          DATA(t82) = strlen( t71 ).
          t70 = |{ t71 }{ t72 }|.
          DATA(t84) = strlen( t70 ).
          t69 = |{ t70 }{ |, field | }|.
          DATA(t85) = VALUE string( ).
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t86 = t46->name.
          DATA(t89) = VALUE string( ).
          DATA(t90) = VALUE abap_bool( ).
          IF t86 IS INITIAL.
            t90 = abap_true.
          ELSEIF t86->has = abap_false.
            t90 = abap_true.
          ENDIF.
          IF t90 = abap_true.
            t89 = |undefined|.
          ELSE.
            t89 = t86->value.
          ENDIF.
          t85 = t89.
          DATA(t95) = strlen( t69 ).
          t68 = |{ t69 }{ t85 }|.
          DATA(t97) = strlen( t68 ).
          t66 = |{ t68 }{ | LENGTH longer than 132| }|.
          DATA t99 TYPE REF TO zcl_lnt_issue.
          CLEAR t99.
          DATA t100 TYPE REF TO zif_lnt_file.
          t100 = t8.
          DATA t102 TYPE REF TO zcl_lnt_position.
          DATA(t105) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t105->has = abap_true.
          t105->value = CONV f( 1 ).
          t102 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t105 ).
          DATA(t107) = VALUE string( ).
          DATA t108 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA(t118) = |* Check length of PUSH elements less than 132\n* Check for ov|.
          t118 = t118 && |erlapping screen elements|.
          DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t119->has = abap_true.
          t119->value = t118.
          t115 = t119.
          DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t121.
          DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t125.
          t125->load( ).
          APPEND |Syntax| TO t125->items.
          t125->save( ).
          t121 = t125.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t135.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          t108 = NEW zcl_lnt_irule_metadata( i_key = |dynpro_checks| i_title = |Dynpro Checks| i_short_description = |Various Dynpro checks| i_bad_example = t131 i_good_example = t133 i_extended_information = t115 i_tags = t121 i_pragma = t135 i_pseudo_comment = t137 ).
          CREATE OBJECT t108->zlnt_view_ownkeys_b0e8086400eb.
          t108->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t139 ).
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t140 ).
          ENDIF.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t141 ).
          ENDIF.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t142 ).
          ENDIF.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t143 ).
          ENDIF.
          CREATE OBJECT t108->zlnt_json_ownkeys_70e5fd461788.
          t108->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t145 ).
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t147 ).
          ENDIF.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t149 ).
          ENDIF.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t151 ).
          ENDIF.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t153 ).
          ENDIF.
          t107 = t108->key.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t154 = CAST zcl_lnt_dynpro_checks_conf( me->gt_cn_in_sr_rl_dy_ch_ts_dy_chc( ) )->zlnt_view_read_sr_15c06369f827( ).
          DATA t156 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t156.
          t99 = zcl_lnt_issue=>at_position( i_file = t100 i_start = t102 i_message_26cb = t66 i_key = t107 i_severity = t154 i_fix = t156 ).
          t2->load( ).
          APPEND t99 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
      DATA(t157) = VALUE i( ).
      DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t158 = me->find_overlapping_fields( i_dynpro = t39 i_file = t8 ).
      DATA t162 TYPE REF TO zcl_lnt_issue.
      CLEAR t162.
      DATA t163 TYPE REF TO object.
      CLEAR t163.
      DATA(t164) = VALUE i( ).
      DO.
        t158->load( ).
        IF t164 >= lines( t158->items ).
          EXIT.
        ENDIF.
        CLEAR t163.
        READ TABLE t158->items INDEX t164 + 1 INTO t163.
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
        t2->load( ).
        APPEND t162 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t157 = lines( t2->items ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_overlapping_fields.
    DATA(t1) = i_dynpro.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE i.
    t5 = 0.
    DO.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t10 = t1->fields_464c.
      t10->load( ).
      IF xsdbool( t5 < lines( t10->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_dynpro_field.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_dynpro_field.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t14 = t1->fields_464c.
      DATA(t16) = t5.
      t16 = t16 + 1.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      t14->load( ).
      CLEAR t17.
      READ TABLE t14->items INDEX t16 INTO t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t13.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t17.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t13 ?= t19.
      ELSE.
        t13 ?= t17.
      ENDIF.
      t12 = t13.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t23 = t12->name.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      DATA(t28) = VALUE abap_bool( ).
      IF t23 IS INITIAL.
        t28 = abap_true.
      ELSEIF t23->has = abap_false.
        t28 = abap_true.
      ENDIF.
      t22 = t28.
      t21 = t22.
      IF t22 = abap_false.
        DATA(t30) = VALUE abap_bool( ).
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t31 = t12->type_cba0.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t36->has = abap_true.
        t36->value = |FRAME|.
        t33 = t36.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE abap_bool( ).
        IF t31 IS BOUND.
          t38 = t31->has.
        ENDIF.
        IF t33 IS BOUND.
          t39 = t33->has.
        ENDIF.
        IF t38 = t39.
          IF t38 = abap_false.
            t30 = abap_true.
          ELSEIF t31->value = t33->value.
            t30 = abap_true.
          ENDIF.
        ENDIF.
        t21 = t30.
      ENDIF.
      t20 = t21.
      IF t21 = abap_false.
        DATA t41 TYPE REF TO zcl_lnt_dynpro_field.
        t41 = t12.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = VALUE abap_bool( ).
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t46 = t41->cont_type.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = |TABLE_CTRL|.
        t48 = t51.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = VALUE abap_bool( ).
        IF t46 IS BOUND.
          t53 = t46->has.
        ENDIF.
        IF t48 IS BOUND.
          t54 = t48->has.
        ENDIF.
        IF t53 = t54.
          IF t53 = abap_false.
            t45 = abap_true.
          ELSEIF t46->value = t48->value.
            t45 = abap_true.
          ENDIF.
        ENDIF.
        t44 = t45.
        IF t45 = abap_false.
          DATA(t55) = VALUE abap_bool( ).
          DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t56 = t41->cont_type.
          DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = |LOOP|.
          t58 = t61.
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = VALUE abap_bool( ).
          IF t56 IS BOUND.
            t63 = t56->has.
          ENDIF.
          IF t58 IS BOUND.
            t64 = t58->has.
          ENDIF.
          IF t63 = t64.
            IF t63 = abap_false.
              t55 = abap_true.
            ELSEIF t56->value = t58->value.
              t55 = abap_true.
            ENDIF.
          ENDIF.
          t44 = t55.
        ENDIF.
        t43 = t44.
        IF t44 = abap_false.
          DATA(t65) = VALUE abap_bool( ).
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t66 = t41->cont_type.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t71->has = abap_true.
          t71->value = |STRIP_CTRL|.
          t68 = t71.
          DATA(t73) = VALUE abap_bool( ).
          DATA(t74) = VALUE abap_bool( ).
          IF t66 IS BOUND.
            t73 = t66->has.
          ENDIF.
          IF t68 IS BOUND.
            t74 = t68->has.
          ENDIF.
          IF t73 = t74.
            IF t73 = abap_false.
              t65 = abap_true.
            ELSEIF t66->value = t68->value.
              t65 = abap_true.
            ENDIF.
          ENDIF.
          t43 = t65.
        ENDIF.
        t20 = t43.
      ENDIF.
      IF t20 = abap_true.
        DATA(t77) = 1.
        t5 = t5 + t77.
        CONTINUE.
      ENDIF.
      DATA t78 TYPE i.
      DATA(t81) = 1.
      t78 = t5 + t81.
      DO.
        DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t85 = t1->fields_464c.
        t85->load( ).
        IF xsdbool( t78 < lines( t85->items ) ) = abap_false.
          EXIT.
        ENDIF.
        DATA t87 TYPE REF TO zcl_lnt_dynpro_field.
        CLEAR t87.
        DATA t88 TYPE REF TO zcl_lnt_dynpro_field.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t89 = t1->fields_464c.
        DATA(t91) = t78.
        t91 = t91 + 1.
        DATA t92 TYPE REF TO object.
        CLEAR t92.
        t89->load( ).
        CLEAR t92.
        READ TABLE t89->items INDEX t91 INTO t92.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        CLEAR t88.
        IF t92 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t93 ?= t92.
          DATA t94 TYPE REF TO object.
          t94 = t93->as_ref( ).
          t88 ?= t94.
        ELSE.
          t88 ?= t92.
        ENDIF.
        t87 = t88.
        DATA(t95) = VALUE abap_bool( ).
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = VALUE abap_bool( ).
        DATA(t98) = VALUE abap_bool( ).
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t99 = t87->name.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        DATA(t104) = VALUE abap_bool( ).
        IF t99 IS INITIAL.
          t104 = abap_true.
        ELSEIF t99->has = abap_false.
          t104 = abap_true.
        ENDIF.
        t98 = t104.
        t97 = t98.
        IF t98 = abap_false.
          DATA(t106) = VALUE abap_bool( ).
          DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t107 = t87->type_cba0.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t112->has = abap_true.
          t112->value = |FRAME|.
          t109 = t112.
          DATA(t114) = VALUE abap_bool( ).
          DATA(t115) = VALUE abap_bool( ).
          IF t107 IS BOUND.
            t114 = t107->has.
          ENDIF.
          IF t109 IS BOUND.
            t115 = t109->has.
          ENDIF.
          IF t114 = t115.
            IF t114 = abap_false.
              t106 = abap_true.
            ELSEIF t107->value = t109->value.
              t106 = abap_true.
            ENDIF.
          ENDIF.
          t97 = t106.
        ENDIF.
        t96 = t97.
        IF t97 = abap_false.
          DATA t117 TYPE REF TO zcl_lnt_dynpro_field.
          t117 = t87.
          DATA(t119) = VALUE abap_bool( ).
          DATA(t120) = VALUE abap_bool( ).
          DATA(t121) = VALUE abap_bool( ).
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t122 = t117->cont_type.
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t127->has = abap_true.
          t127->value = |TABLE_CTRL|.
          t124 = t127.
          DATA(t129) = VALUE abap_bool( ).
          DATA(t130) = VALUE abap_bool( ).
          IF t122 IS BOUND.
            t129 = t122->has.
          ENDIF.
          IF t124 IS BOUND.
            t130 = t124->has.
          ENDIF.
          IF t129 = t130.
            IF t129 = abap_false.
              t121 = abap_true.
            ELSEIF t122->value = t124->value.
              t121 = abap_true.
            ENDIF.
          ENDIF.
          t120 = t121.
          IF t121 = abap_false.
            DATA(t131) = VALUE abap_bool( ).
            DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t132 = t117->cont_type.
            DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t137->has = abap_true.
            t137->value = |LOOP|.
            t134 = t137.
            DATA(t139) = VALUE abap_bool( ).
            DATA(t140) = VALUE abap_bool( ).
            IF t132 IS BOUND.
              t139 = t132->has.
            ENDIF.
            IF t134 IS BOUND.
              t140 = t134->has.
            ENDIF.
            IF t139 = t140.
              IF t139 = abap_false.
                t131 = abap_true.
              ELSEIF t132->value = t134->value.
                t131 = abap_true.
              ENDIF.
            ENDIF.
            t120 = t131.
          ENDIF.
          t119 = t120.
          IF t120 = abap_false.
            DATA(t141) = VALUE abap_bool( ).
            DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t142 = t117->cont_type.
            DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t147->has = abap_true.
            t147->value = |STRIP_CTRL|.
            t144 = t147.
            DATA(t149) = VALUE abap_bool( ).
            DATA(t150) = VALUE abap_bool( ).
            IF t142 IS BOUND.
              t149 = t142->has.
            ENDIF.
            IF t144 IS BOUND.
              t150 = t144->has.
            ENDIF.
            IF t149 = t150.
              IF t149 = abap_false.
                t141 = abap_true.
              ELSEIF t142->value = t144->value.
                t141 = abap_true.
              ENDIF.
            ENDIF.
            t119 = t141.
          ENDIF.
          t96 = t119.
        ENDIF.
        t95 = t96.
        IF t96 = abap_false.
          DATA t152 TYPE abap_bool.
          t152 = me->overlaps( i_first = t12 i_second = t87 ).
          t95 = xsdbool( t152 = abap_false ).
        ENDIF.
        IF t95 = abap_true.
          DATA(t158) = 1.
          t78 = t78 + t158.
          CONTINUE.
        ENDIF.
        DATA(t159) = VALUE string( ).
        DATA(t161) = VALUE string( ).
        DATA(t162) = VALUE string( ).
        DATA(t163) = VALUE string( ).
        DATA(t164) = VALUE string( ).
        DATA(t165) = VALUE string( ).
        DATA(t166) = VALUE string( ).
        DATA(t167) = VALUE string( ).
        DATA(t168) = VALUE string( ).
        DATA(t169) = VALUE string( ).
        DATA(t170) = |Screen |.
        DATA(t171) = VALUE string( ).
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t172 = t1->number.
        DATA(t175) = VALUE string( ).
        DATA(t176) = VALUE abap_bool( ).
        IF t172 IS INITIAL.
          t176 = abap_true.
        ELSEIF t172->has = abap_false.
          t176 = abap_true.
        ENDIF.
        IF t176 = abap_true.
          t175 = |undefined|.
        ELSE.
          t175 = t172->value.
        ENDIF.
        t171 = t175.
        DATA(t181) = strlen( t170 ).
        t169 = |{ t170 }{ t171 }|.
        DATA(t183) = strlen( t169 ).
        t168 = |{ t169 }{ |, | }|.
        DATA(t184) = VALUE string( ).
        DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t185 = t12->type_cba0.
        DATA(t188) = VALUE string( ).
        DATA(t189) = VALUE abap_bool( ).
        IF t185 IS INITIAL.
          t189 = abap_true.
        ELSEIF t185->has = abap_false.
          t189 = abap_true.
        ENDIF.
        IF t189 = abap_true.
          t188 = |undefined|.
        ELSE.
          t188 = t185->value.
        ENDIF.
        t184 = t188.
        DATA(t194) = strlen( t168 ).
        t167 = |{ t168 }{ t184 }|.
        DATA(t196) = strlen( t167 ).
        t166 = |{ t167 }{ | | }|.
        DATA(t197) = VALUE string( ).
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t198 = t12->name.
        DATA(t201) = VALUE string( ).
        DATA(t202) = VALUE abap_bool( ).
        IF t198 IS INITIAL.
          t202 = abap_true.
        ELSEIF t198->has = abap_false.
          t202 = abap_true.
        ENDIF.
        IF t202 = abap_true.
          t201 = |undefined|.
        ELSE.
          t201 = t198->value.
        ENDIF.
        t197 = t201.
        DATA(t207) = strlen( t166 ).
        t165 = |{ t166 }{ t197 }|.
        DATA(t209) = strlen( t165 ).
        t164 = |{ t165 }{ | and | }|.
        DATA(t210) = VALUE string( ).
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t211 = t87->type_cba0.
        DATA(t214) = VALUE string( ).
        DATA(t215) = VALUE abap_bool( ).
        IF t211 IS INITIAL.
          t215 = abap_true.
        ELSEIF t211->has = abap_false.
          t215 = abap_true.
        ENDIF.
        IF t215 = abap_true.
          t214 = |undefined|.
        ELSE.
          t214 = t211->value.
        ENDIF.
        t210 = t214.
        DATA(t220) = strlen( t164 ).
        t163 = |{ t164 }{ t210 }|.
        DATA(t222) = strlen( t163 ).
        t162 = |{ t163 }{ | | }|.
        DATA(t223) = VALUE string( ).
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t224 = t87->name.
        DATA(t227) = VALUE string( ).
        DATA(t228) = VALUE abap_bool( ).
        IF t224 IS INITIAL.
          t228 = abap_true.
        ELSEIF t224->has = abap_false.
          t228 = abap_true.
        ENDIF.
        IF t228 = abap_true.
          t227 = |undefined|.
        ELSE.
          t227 = t224->value.
        ENDIF.
        t223 = t227.
        DATA(t233) = strlen( t162 ).
        t161 = |{ t162 }{ t223 }|.
        DATA(t235) = strlen( t161 ).
        t159 = |{ t161 }{ | are overlapping| }|.
        DATA t237 TYPE REF TO zcl_lnt_issue.
        CLEAR t237.
        DATA t239 TYPE REF TO zcl_lnt_position.
        DATA(t242) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t242->has = abap_true.
        t242->value = CONV f( 1 ).
        t239 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t242 ).
        DATA(t244) = VALUE string( ).
        DATA t245 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        DATA(t255) = |* Check length of PUSH elements less than 132\n* Check for ov|.
        t255 = t255 && |erlapping screen elements|.
        DATA(t256) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t256->has = abap_true.
        t256->value = t255.
        t252 = t256.
        DATA t258 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t258.
        DATA t262 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t262.
        t262->load( ).
        APPEND |Syntax| TO t262->items.
        t262->save( ).
        t258 = t262.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t268.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t270.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t272.
        DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t274.
        t245 = NEW zcl_lnt_irule_metadata( i_key = |dynpro_checks| i_title = |Dynpro Checks| i_short_description = |Various Dynpro checks| i_bad_example = t268 i_good_example = t270 i_extended_information = t252 i_tags = t258 i_pragma = t272 i_pseudo_comment = t274 ).
        CREATE OBJECT t245->zlnt_view_ownkeys_b0e8086400eb.
        t245->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t276.
        t245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t276 ).
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        IF t245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t277 ).
        ENDIF.
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        IF t245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t278 ).
        ENDIF.
        DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t279.
        IF t245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t279 ).
        ENDIF.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        IF t245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t280 ).
        ENDIF.
        CREATE OBJECT t245->zlnt_json_ownkeys_70e5fd461788.
        t245->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t282 ).
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t284 ).
        ENDIF.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t286 ).
        ENDIF.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t288 ).
        ENDIF.
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t290 ).
        ENDIF.
        t244 = t245->key.
        DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t291 = CAST zcl_lnt_dynpro_checks_conf( me->gt_cn_in_sr_rl_dy_ch_ts_dy_chc( ) )->zlnt_view_read_sr_15c06369f827( ).
        DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t293.
        t237 = zcl_lnt_issue=>at_position( i_file = t2 i_start = t239 i_message_26cb = t159 i_key = t244 i_severity = t291 i_fix = t293 ).
        t3->load( ).
        APPEND t237 TO t3->items.
        t3->save( ).
        DATA(t296) = 1.
        t78 = t78 + t296.
      ENDDO.
      DATA(t299) = 1.
      t5 = t5 + t299.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD hs_cntnr_rltv_crdnts.
    DATA(t1) = i_field_d104.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = t1->cont_type.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = |TABLE_CTRL|.
    t7 = t10.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    IF t5 IS BOUND.
      t12 = t5->has.
    ENDIF.
    IF t7 IS BOUND.
      t13 = t7->has.
    ENDIF.
    IF t12 = t13.
      IF t12 = abap_false.
        t4 = abap_true.
      ELSEIF t5->value = t7->value.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t15 = t1->cont_type.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = |LOOP|.
      t17 = t20.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      IF t15 IS BOUND.
        t22 = t15->has.
      ENDIF.
      IF t17 IS BOUND.
        t23 = t17->has.
      ENDIF.
      IF t22 = t23.
        IF t22 = abap_false.
          t14 = abap_true.
        ELSEIF t15->value = t17->value.
          t14 = abap_true.
        ENDIF.
      ENDIF.
      t3 = t14.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t25 = t1->cont_type.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = |STRIP_CTRL|.
      t27 = t30.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      IF t25 IS BOUND.
        t32 = t25->has.
      ENDIF.
      IF t27 IS BOUND.
        t33 = t27->has.
      ENDIF.
      IF t32 = t33.
        IF t32 = abap_false.
          t24 = abap_true.
        ELSEIF t25->value = t27->value.
          t24 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t24.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD overlaps.
    DATA(t1) = i_first.
    DATA(t2) = i_second.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    t6 = xsdbool( t1->line = CONV f( 0 ) ).
    t5 = t6.
    IF t6 = abap_false.
      t5 = xsdbool( t2->line = CONV f( 0 ) ).
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      t4 = xsdbool( t1->column = CONV f( 0 ) ).
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      t3 = xsdbool( t2->column = CONV f( 0 ) ).
    ENDIF.
    IF t3 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t23) = VALUE f( ).
    DATA t24 TYPE f.
    DATA t25 TYPE f.
    t25 = t1->height.
    t24 = CONV f( 1 ).
    IF t24 = 0 AND t25 = 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF t25 > t24.
      t24 = t25.
    ENDIF.
    t23 = t24.
    DATA(t28) = VALUE f( ).
    DATA t29 TYPE f.
    DATA t30 TYPE f.
    t30 = t2->height.
    t29 = CONV f( 1 ).
    IF t29 = 0 AND t30 = 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF t30 > t29.
      t29 = t30.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE f.
    DATA t35 TYPE f.
    DATA t36 TYPE f.
    t36 = t1->line.
    t35 = t36 + t23.
    DATA(t39) = CONV f( 1 ).
    t34 = t35 - t39.
    DATA t41 TYPE f.
    DATA t42 TYPE f.
    DATA t43 TYPE f.
    t43 = t2->line.
    t42 = t43 + t28.
    DATA(t46) = CONV f( 1 ).
    t41 = t42 - t46.
    DATA t47 TYPE abap_bool.
    DATA t48 TYPE abap_bool.
    t48 = xsdbool( t34 < t2->line ).
    t47 = t48.
    IF t48 = abap_false.
      t47 = xsdbool( t41 < t1->line ).
    ENDIF.
    IF t47 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t57) = VALUE f( ).
    DATA(t59) = VALUE f( ).
    DATA t60 TYPE f.
    t60 = t1->column.
    DATA(t62) = VALUE f( ).
    DATA(t63) = VALUE f( ).
    DATA t64 TYPE f.
    t64 = t1->vislength.
    DATA(t67) = VALUE f( ).
    IF xsdbool( t64 IS NOT INITIAL ) = abap_true.
      t67 = t64.
    ELSE.
      t67 = t1->length.
    ENDIF.
    t63 = t67.
    t62 = CONV f( 1 ).
    IF t62 = 0 AND t63 = 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF t63 > t62.
      t62 = t63.
    ENDIF.
    t59 = t60 + t62.
    DATA(t74) = CONV f( 1 ).
    t57 = t59 - t74.
    DATA(t75) = VALUE f( ).
    DATA(t77) = VALUE f( ).
    DATA t78 TYPE f.
    t78 = t2->column.
    DATA(t80) = VALUE f( ).
    DATA(t81) = VALUE f( ).
    DATA t82 TYPE f.
    t82 = t2->vislength.
    DATA(t85) = VALUE f( ).
    IF xsdbool( t82 IS NOT INITIAL ) = abap_true.
      t85 = t82.
    ELSE.
      t85 = t2->length.
    ENDIF.
    t81 = t85.
    t80 = CONV f( 1 ).
    IF t80 = 0 AND t81 = 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF t81 > t80.
      t80 = t81.
    ENDIF.
    t77 = t78 + t80.
    DATA(t92) = CONV f( 1 ).
    t75 = t77 - t92.
    DATA t93 TYPE abap_bool.
    DATA t94 TYPE abap_bool.
    t94 = xsdbool( t1->column <= t75 ).
    t93 = t94.
    IF t94 = abap_true.
      t93 = xsdbool( t2->column <= t57 ).
    ENDIF.
    result = t93.

  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_dyn_chc_ts_dyn_chc( i_reg_d009 = t3 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_dynpro_checks_conf( me->gt_cn_in_sr_rl_dy_ch_ts_dy_chc( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_dynpro_checks_conf( me->gt_cn_in_sr_rl_dy_ch_ts_dy_chc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_dynpro_checks_conf.
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
        t2 = NEW zcl_lnt_dynpro_checks_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_dy_ch_ts_dy_chc( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1486_c548d2cb8999.
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
