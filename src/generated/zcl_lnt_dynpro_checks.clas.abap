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
    DATA(t1) = NEW zcl_lnt_dynpro_checks_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |dynpro_checks|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Dynpro Checks|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Various Dynpro checks|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |* Check length of PUSH elements less than 132\n* Check for ov|.
      t11 = t11 && |erlapping screen elements|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Syntax|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |extendedInformation|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_dyn_chc_ts_dyn_chc.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_dy_ch_ts_dy_chc.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_dy_ch_ts_dy_chc.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_ob_program ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zif_lnt_file.
    DATA t9 TYPE REF TO zif_lnt_file.
    DATA t10 TYPE REF TO zcl_lnt_ob_program.
    DATA(t11) = t1.
    DATA t12 TYPE REF TO object.
    t12 = t11.
    t10 ?= t12.
    t9 = t10->get_xml_file( ).
    t8 = t9.
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zif_lnt_file.
    DATA(t15) = t8.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t16 = t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t14.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    t13 = t18.
    IF t13 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t20.
      result = t20.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_ob_program.
    DATA t23 TYPE REF TO zcl_lnt_ob_program.
    DATA(t24) = t1.
    DATA t25 TYPE REF TO object.
    t25 = t24.
    t23 ?= t25.
    t22 = t23.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA(t27) = t22.
    t27->parse_xml( ).
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA t32 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA(t33) = t22.
    t32 = t33->parsed_xml.
    t31 = t32.
    t30 = t31->dynpros.
    t29 = t30.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t34.
    DATA t35 TYPE abap_bool.
    DATA(t36) = t29.
    t35 = xsdbool( t36 IS BOUND ).
    IF t35 = abap_true.
      DATA(t37) = t29.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t38.
      t34 = t38.
    ENDIF.
    t28 = t34.
    t26 = t28.
    t21 = t26.
    DATA t39 TYPE REF TO zcl_lnt_dynpro_header.
    CLEAR t39.
    DATA t40 TYPE REF TO object.
    CLEAR t40.
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
      DATA(t45) = t39.
      t44 = t45->fields_464c.
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
        DATA(t54) = t46.
        t53 = t54->type_cba0.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA(t56) = abap_true.
        IF t56 = abap_true.
          DATA(t57) = |PUSH|.
          DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t58->has = abap_true.
          t58->value = t57.
          t55 = t58.
        ELSE.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          t55 = t59.
        ENDIF.
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
          DATA t62 TYPE abap_bool.
          DATA t63 TYPE f.
          DATA(t64) = t46.
          t63 = t64->length.
          DATA(t65) = CONV f( 132 ).
          t62 = xsdbool( t63 > t65 ).
          t51 = t62.
        ENDIF.
        IF t51 = abap_true.
          DATA(t66) = VALUE string( ).
          DATA(t67) = VALUE string( ).
          DATA(t68) = VALUE string( ).
          DATA(t69) = VALUE string( ).
          DATA(t70) = VALUE string( ).
          DATA(t71) = |Screen |.
          DATA(t72) = VALUE string( ).
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t75) = t39.
          t74 = t75->number.
          t73 = t74.
          DATA(t76) = VALUE string( ).
          DATA(t77) = VALUE abap_bool( ).
          DATA(t78) = t73.
          IF t78 IS INITIAL.
            t77 = abap_true.
          ELSEIF t78->has = abap_false.
            t77 = abap_true.
          ENDIF.
          IF t77 = abap_true.
            DATA(t79) = |undefined|.
            t76 = t79.
          ELSE.
            DATA t80 TYPE string.
            DATA(t81) = t73.
            t80 = t81->value.
            t76 = t80.
          ENDIF.
          t72 = t76.
          DATA(t82) = strlen( t71 ).
          t70 = |{ t71 }{ t72 }|.
          DATA(t83) = |, field |.
          DATA(t84) = strlen( t70 ).
          t69 = |{ t70 }{ t83 }|.
          DATA(t85) = VALUE string( ).
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t88) = t46.
          t87 = t88->name.
          t86 = t87.
          DATA(t89) = VALUE string( ).
          DATA(t90) = VALUE abap_bool( ).
          DATA(t91) = t86.
          IF t91 IS INITIAL.
            t90 = abap_true.
          ELSEIF t91->has = abap_false.
            t90 = abap_true.
          ENDIF.
          IF t90 = abap_true.
            DATA(t92) = |undefined|.
            t89 = t92.
          ELSE.
            DATA t93 TYPE string.
            DATA(t94) = t86.
            t93 = t94->value.
            t89 = t93.
          ENDIF.
          t85 = t89.
          DATA(t95) = strlen( t69 ).
          t68 = |{ t69 }{ t85 }|.
          DATA(t96) = | LENGTH longer than 132|.
          DATA(t97) = strlen( t68 ).
          t67 = |{ t68 }{ t96 }|.
          t66 = t67.
          DATA(t98) = t2.
          DATA t99 TYPE REF TO zcl_lnt_issue.
          CLEAR t99.
          DATA t100 TYPE REF TO zif_lnt_file.
          DATA(t101) = t8.
          t100 = t101.
          DATA t102 TYPE REF TO zcl_lnt_position.
          DATA(t103) = CONV f( 1 ).
          DATA(t104) = CONV f( 1 ).
          DATA(t105) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t105->has = abap_true.
          t105->value = t104.
          t102 = NEW zcl_lnt_position( i_row = t103 i_col = t105 ).
          DATA(t106) = t66.
          DATA(t107) = VALUE string( ).
          DATA t108 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t108.
          DATA t109 TYPE string.
          DATA(t110) = |dynpro_checks|.
          t109 = t110.
          DATA t111 TYPE string.
          DATA(t112) = |Dynpro Checks|.
          t111 = t112.
          DATA t113 TYPE string.
          DATA(t114) = |Various Dynpro checks|.
          t113 = t114.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          DATA(t117) = abap_true.
          IF t117 = abap_true.
            DATA(t118) = |* Check length of PUSH elements less than 132\n* Check for ov|.
            t118 = t118 && |erlapping screen elements|.
            DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t119->has = abap_true.
            t119->value = t118.
            t116 = t119.
          ELSE.
            DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t120.
            t116 = t120.
          ENDIF.
          t115 = t116.
          DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t121.
          DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t122.
          DATA(t123) = abap_true.
          IF t123 = abap_true.
            DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t126.
            t125 = t126.
            DATA(t127) = t125.
            DATA(t128) = |Syntax|.
            t127->load( ).
            APPEND t128 TO t127->items.
            t127->save( ).
            DATA(t129) = t125.
            t124 = t129.
            t122 = t124.
          ELSE.
            DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t130.
            t122 = t130.
          ENDIF.
          t121 = t122.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          t131 = t132.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          t133 = t134.
          DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          t135 = t136.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          t137 = t138.
          t108 = NEW zcl_lnt_irule_metadata( i_key = t109 i_title = t111 i_short_description = t113 i_bad_example = t131 i_good_example = t133 i_extended_information = t115 i_tags = t121 i_pragma = t135 i_pseudo_comment = t137 ).
          CREATE OBJECT t108->zlnt_view_ownkeys_b0e8086400eb.
          t108->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t139 ).
          ENDIF.
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
          DATA(t144) = |key|.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
          ENDIF.
          DATA(t146) = |title|.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t146 p1 = t147 ).
          ENDIF.
          DATA(t148) = |shortDescription|.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
          ENDIF.
          DATA(t150) = |extendedInformation|.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
          ENDIF.
          DATA(t152) = |tags|.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
          ENDIF.
          t107 = t108->key.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t155) = CAST zcl_lnt_dynpro_checks_conf( me->gt_cn_in_sr_rl_dy_ch_ts_dy_chc( ) ).
          t154 = t155->zlnt_view_read_sr_15c06369f827( ).
          DATA t156 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t156.
          t99 = zcl_lnt_issue=>at_position( i_file = t100 i_start = t102 i_message_26cb = t106 i_key = t107 i_severity = t154 i_fix = t156 ).
          t98->load( ).
          APPEND t99 TO t98->items.
          t98->save( ).
        ENDIF.
      ENDDO.
      DATA(t157) = VALUE i( ).
      DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t159) = t39.
      DATA t160 TYPE REF TO zif_lnt_file.
      DATA(t161) = t8.
      t160 = t161.
      t158 = me->find_overlapping_fields( i_dynpro = t159 i_file = t160 ).
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
        DATA(t167) = t2.
        DATA(t168) = t162.
        t167->load( ).
        APPEND t168 TO t167->items.
        t167->save( ).
      ENDDO.
      DATA t169 TYPE i.
      DATA(t170) = t2.
      t170->load( ).
      t169 = lines( t170->items ).
      t157 = t169.
    ENDDO.
    DATA(t171) = t2.
    result = t171.

  ENDMETHOD.

  METHOD find_overlapping_fields.
    DATA(t1) = i_dynpro.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE i.
    DATA(t6) = 0.
    t5 = t6.
    DO.
      DATA t7 TYPE abap_bool.
      DATA(t8) = t5.
      DATA t9 TYPE i.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t11) = t1.
      t10 = t11->fields_464c.
      t10->load( ).
      t9 = lines( t10->items ).
      t7 = xsdbool( t8 < t9 ).
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_dynpro_field.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_dynpro_field.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t15) = t1.
      t14 = t15->fields_464c.
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
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t25) = t12.
      t24 = t25->name.
      t23 = t24.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      t26 = t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t23.
      IF t29 IS INITIAL.
        t28 = abap_true.
      ELSEIF t29->has = abap_false.
        t28 = abap_true.
      ENDIF.
      t22 = t28.
      t21 = t22.
      IF t22 = abap_false.
        DATA(t30) = VALUE abap_bool( ).
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t32) = t12.
        t31 = t32->type_cba0.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        DATA(t34) = abap_true.
        IF t34 = abap_true.
          DATA(t35) = |FRAME|.
          DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t36->has = abap_true.
          t36->value = t35.
          t33 = t36.
        ELSE.
          DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t37.
          t33 = t37.
        ENDIF.
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
        DATA(t40) = VALUE abap_bool( ).
        DATA t41 TYPE REF TO zcl_lnt_dynpro_field.
        DATA(t42) = t12.
        t41 = t42.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = VALUE abap_bool( ).
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t47) = t41.
        t46 = t47->cont_type.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA(t49) = abap_true.
        IF t49 = abap_true.
          DATA(t50) = |TABLE_CTRL|.
          DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t51->has = abap_true.
          t51->value = t50.
          t48 = t51.
        ELSE.
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          t48 = t52.
        ENDIF.
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
          DATA(t57) = t41.
          t56 = t57->cont_type.
          DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t58.
          DATA(t59) = abap_true.
          IF t59 = abap_true.
            DATA(t60) = |LOOP|.
            DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t61->has = abap_true.
            t61->value = t60.
            t58 = t61.
          ELSE.
            DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t62.
            t58 = t62.
          ENDIF.
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
          DATA(t67) = t41.
          t66 = t67->cont_type.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          DATA(t69) = abap_true.
          IF t69 = abap_true.
            DATA(t70) = |STRIP_CTRL|.
            DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t71->has = abap_true.
            t71->value = t70.
            t68 = t71.
          ELSE.
            DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t72.
            t68 = t72.
          ENDIF.
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
        t40 = t43.
        t20 = t40.
      ENDIF.
      IF t20 = abap_true.
        DATA t75 TYPE i.
        DATA(t76) = t5.
        DATA(t77) = 1.
        t75 = t76 + t77.
        t5 = t75.
        CONTINUE.
      ENDIF.
      DATA t78 TYPE i.
      DATA t79 TYPE i.
      DATA(t80) = t5.
      DATA(t81) = 1.
      t79 = t80 + t81.
      t78 = t79.
      DO.
        DATA t82 TYPE abap_bool.
        DATA(t83) = t78.
        DATA t84 TYPE i.
        DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t86) = t1.
        t85 = t86->fields_464c.
        t85->load( ).
        t84 = lines( t85->items ).
        t82 = xsdbool( t83 < t84 ).
        IF t82 = abap_false.
          EXIT.
        ENDIF.
        DATA t87 TYPE REF TO zcl_lnt_dynpro_field.
        CLEAR t87.
        DATA t88 TYPE REF TO zcl_lnt_dynpro_field.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t90) = t1.
        t89 = t90->fields_464c.
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
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t101) = t87.
        t100 = t101->name.
        t99 = t100.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        t102 = t103.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = t99.
        IF t105 IS INITIAL.
          t104 = abap_true.
        ELSEIF t105->has = abap_false.
          t104 = abap_true.
        ENDIF.
        t98 = t104.
        t97 = t98.
        IF t98 = abap_false.
          DATA(t106) = VALUE abap_bool( ).
          DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t108) = t87.
          t107 = t108->type_cba0.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA(t110) = abap_true.
          IF t110 = abap_true.
            DATA(t111) = |FRAME|.
            DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t112->has = abap_true.
            t112->value = t111.
            t109 = t112.
          ELSE.
            DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t113.
            t109 = t113.
          ENDIF.
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
          DATA(t116) = VALUE abap_bool( ).
          DATA t117 TYPE REF TO zcl_lnt_dynpro_field.
          DATA(t118) = t87.
          t117 = t118.
          DATA(t119) = VALUE abap_bool( ).
          DATA(t120) = VALUE abap_bool( ).
          DATA(t121) = VALUE abap_bool( ).
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t123) = t117.
          t122 = t123->cont_type.
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t124.
          DATA(t125) = abap_true.
          IF t125 = abap_true.
            DATA(t126) = |TABLE_CTRL|.
            DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t127->has = abap_true.
            t127->value = t126.
            t124 = t127.
          ELSE.
            DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t128.
            t124 = t128.
          ENDIF.
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
            DATA(t133) = t117.
            t132 = t133->cont_type.
            DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t134.
            DATA(t135) = abap_true.
            IF t135 = abap_true.
              DATA(t136) = |LOOP|.
              DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t137->has = abap_true.
              t137->value = t136.
              t134 = t137.
            ELSE.
              DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t138.
              t134 = t138.
            ENDIF.
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
            DATA(t143) = t117.
            t142 = t143->cont_type.
            DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t144.
            DATA(t145) = abap_true.
            IF t145 = abap_true.
              DATA(t146) = |STRIP_CTRL|.
              DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t147->has = abap_true.
              t147->value = t146.
              t144 = t147.
            ELSE.
              DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t148.
              t144 = t148.
            ENDIF.
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
          t116 = t119.
          t96 = t116.
        ENDIF.
        t95 = t96.
        IF t96 = abap_false.
          DATA t151 TYPE abap_bool.
          DATA t152 TYPE abap_bool.
          DATA(t153) = t12.
          DATA(t154) = t87.
          t152 = me->overlaps( i_first = t153 i_second = t154 ).
          DATA(t155) = abap_false.
          t151 = xsdbool( t152 = t155 ).
          t95 = t151.
        ENDIF.
        IF t95 = abap_true.
          DATA t156 TYPE i.
          DATA(t157) = t78.
          DATA(t158) = 1.
          t156 = t157 + t158.
          t78 = t156.
          CONTINUE.
        ENDIF.
        DATA(t159) = VALUE string( ).
        DATA(t160) = VALUE string( ).
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
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t174) = t1.
        t173 = t174->number.
        t172 = t173.
        DATA(t175) = VALUE string( ).
        DATA(t176) = VALUE abap_bool( ).
        DATA(t177) = t172.
        IF t177 IS INITIAL.
          t176 = abap_true.
        ELSEIF t177->has = abap_false.
          t176 = abap_true.
        ENDIF.
        IF t176 = abap_true.
          DATA(t178) = |undefined|.
          t175 = t178.
        ELSE.
          DATA t179 TYPE string.
          DATA(t180) = t172.
          t179 = t180->value.
          t175 = t179.
        ENDIF.
        t171 = t175.
        DATA(t181) = strlen( t170 ).
        t169 = |{ t170 }{ t171 }|.
        DATA(t182) = |, |.
        DATA(t183) = strlen( t169 ).
        t168 = |{ t169 }{ t182 }|.
        DATA(t184) = VALUE string( ).
        DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t187) = t12.
        t186 = t187->type_cba0.
        t185 = t186.
        DATA(t188) = VALUE string( ).
        DATA(t189) = VALUE abap_bool( ).
        DATA(t190) = t185.
        IF t190 IS INITIAL.
          t189 = abap_true.
        ELSEIF t190->has = abap_false.
          t189 = abap_true.
        ENDIF.
        IF t189 = abap_true.
          DATA(t191) = |undefined|.
          t188 = t191.
        ELSE.
          DATA t192 TYPE string.
          DATA(t193) = t185.
          t192 = t193->value.
          t188 = t192.
        ENDIF.
        t184 = t188.
        DATA(t194) = strlen( t168 ).
        t167 = |{ t168 }{ t184 }|.
        DATA(t195) = | |.
        DATA(t196) = strlen( t167 ).
        t166 = |{ t167 }{ t195 }|.
        DATA(t197) = VALUE string( ).
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t200) = t12.
        t199 = t200->name.
        t198 = t199.
        DATA(t201) = VALUE string( ).
        DATA(t202) = VALUE abap_bool( ).
        DATA(t203) = t198.
        IF t203 IS INITIAL.
          t202 = abap_true.
        ELSEIF t203->has = abap_false.
          t202 = abap_true.
        ENDIF.
        IF t202 = abap_true.
          DATA(t204) = |undefined|.
          t201 = t204.
        ELSE.
          DATA t205 TYPE string.
          DATA(t206) = t198.
          t205 = t206->value.
          t201 = t205.
        ENDIF.
        t197 = t201.
        DATA(t207) = strlen( t166 ).
        t165 = |{ t166 }{ t197 }|.
        DATA(t208) = | and |.
        DATA(t209) = strlen( t165 ).
        t164 = |{ t165 }{ t208 }|.
        DATA(t210) = VALUE string( ).
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t213) = t87.
        t212 = t213->type_cba0.
        t211 = t212.
        DATA(t214) = VALUE string( ).
        DATA(t215) = VALUE abap_bool( ).
        DATA(t216) = t211.
        IF t216 IS INITIAL.
          t215 = abap_true.
        ELSEIF t216->has = abap_false.
          t215 = abap_true.
        ENDIF.
        IF t215 = abap_true.
          DATA(t217) = |undefined|.
          t214 = t217.
        ELSE.
          DATA t218 TYPE string.
          DATA(t219) = t211.
          t218 = t219->value.
          t214 = t218.
        ENDIF.
        t210 = t214.
        DATA(t220) = strlen( t164 ).
        t163 = |{ t164 }{ t210 }|.
        DATA(t221) = | |.
        DATA(t222) = strlen( t163 ).
        t162 = |{ t163 }{ t221 }|.
        DATA(t223) = VALUE string( ).
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t226) = t87.
        t225 = t226->name.
        t224 = t225.
        DATA(t227) = VALUE string( ).
        DATA(t228) = VALUE abap_bool( ).
        DATA(t229) = t224.
        IF t229 IS INITIAL.
          t228 = abap_true.
        ELSEIF t229->has = abap_false.
          t228 = abap_true.
        ENDIF.
        IF t228 = abap_true.
          DATA(t230) = |undefined|.
          t227 = t230.
        ELSE.
          DATA t231 TYPE string.
          DATA(t232) = t224.
          t231 = t232->value.
          t227 = t231.
        ENDIF.
        t223 = t227.
        DATA(t233) = strlen( t162 ).
        t161 = |{ t162 }{ t223 }|.
        DATA(t234) = | are overlapping|.
        DATA(t235) = strlen( t161 ).
        t160 = |{ t161 }{ t234 }|.
        t159 = t160.
        DATA(t236) = t3.
        DATA t237 TYPE REF TO zcl_lnt_issue.
        CLEAR t237.
        DATA(t238) = t2.
        DATA t239 TYPE REF TO zcl_lnt_position.
        DATA(t240) = CONV f( 1 ).
        DATA(t241) = CONV f( 1 ).
        DATA(t242) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t242->has = abap_true.
        t242->value = t241.
        t239 = NEW zcl_lnt_position( i_row = t240 i_col = t242 ).
        DATA(t243) = t159.
        DATA(t244) = VALUE string( ).
        DATA t245 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t245.
        DATA t246 TYPE string.
        DATA(t247) = |dynpro_checks|.
        t246 = t247.
        DATA t248 TYPE string.
        DATA(t249) = |Dynpro Checks|.
        t248 = t249.
        DATA t250 TYPE string.
        DATA(t251) = |Various Dynpro checks|.
        t250 = t251.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        DATA(t254) = abap_true.
        IF t254 = abap_true.
          DATA(t255) = |* Check length of PUSH elements less than 132\n* Check for ov|.
          t255 = t255 && |erlapping screen elements|.
          DATA(t256) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t256->has = abap_true.
          t256->value = t255.
          t253 = t256.
        ELSE.
          DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t257.
          t253 = t257.
        ENDIF.
        t252 = t253.
        DATA t258 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t258.
        DATA t259 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t259.
        DATA(t260) = abap_true.
        IF t260 = abap_true.
          DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t262 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t263 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t263.
          t262 = t263.
          DATA(t264) = t262.
          DATA(t265) = |Syntax|.
          t264->load( ).
          APPEND t265 TO t264->items.
          t264->save( ).
          DATA(t266) = t262.
          t261 = t266.
          t259 = t261.
        ELSE.
          DATA t267 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t267.
          t259 = t267.
        ENDIF.
        t258 = t259.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t269.
        t268 = t269.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        t270 = t271.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t273.
        t272 = t273.
        DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t275.
        t274 = t275.
        t245 = NEW zcl_lnt_irule_metadata( i_key = t246 i_title = t248 i_short_description = t250 i_bad_example = t268 i_good_example = t270 i_extended_information = t252 i_tags = t258 i_pragma = t272 i_pseudo_comment = t274 ).
        CREATE OBJECT t245->zlnt_view_ownkeys_b0e8086400eb.
        t245->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t276.
        IF t245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t276 ).
        ENDIF.
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
        DATA(t281) = |key|.
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t281 p1 = t282 ).
        ENDIF.
        DATA(t283) = |title|.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
        ENDIF.
        DATA(t285) = |shortDescription|.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
        ENDIF.
        DATA(t287) = |extendedInformation|.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
        ENDIF.
        DATA(t289) = |tags|.
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        IF t245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t289 p1 = t290 ).
        ENDIF.
        t244 = t245->key.
        DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t292) = CAST zcl_lnt_dynpro_checks_conf( me->gt_cn_in_sr_rl_dy_ch_ts_dy_chc( ) ).
        t291 = t292->zlnt_view_read_sr_15c06369f827( ).
        DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t293.
        t237 = zcl_lnt_issue=>at_position( i_file = t238 i_start = t239 i_message_26cb = t243 i_key = t244 i_severity = t291 i_fix = t293 ).
        t236->load( ).
        APPEND t237 TO t236->items.
        t236->save( ).
        DATA t294 TYPE i.
        DATA(t295) = t78.
        DATA(t296) = 1.
        t294 = t295 + t296.
        t78 = t294.
      ENDDO.
      DATA t297 TYPE i.
      DATA(t298) = t5.
      DATA(t299) = 1.
      t297 = t298 + t299.
      t5 = t297.
    ENDDO.
    DATA(t300) = t3.
    result = t300.

  ENDMETHOD.

  METHOD hs_cntnr_rltv_crdnts.
    DATA(t1) = i_field_d104.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = t1.
    t5 = t6->cont_type.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |TABLE_CTRL|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t9.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t7 = t11.
    ENDIF.
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
      DATA(t16) = t1.
      t15 = t16->cont_type.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = |LOOP|.
        DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t17 = t21.
      ENDIF.
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
      DATA(t26) = t1.
      t25 = t26->cont_type.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA(t29) = |STRIP_CTRL|.
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t29.
        t27 = t30.
      ELSE.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t27 = t31.
      ENDIF.
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
    DATA t7 TYPE f.
    DATA(t8) = t1.
    t7 = t8->line.
    DATA(t9) = CONV f( 0 ).
    t6 = xsdbool( t7 = t9 ).
    t5 = t6.
    IF t6 = abap_false.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE f.
      DATA(t12) = t2.
      t11 = t12->line.
      DATA(t13) = CONV f( 0 ).
      t10 = xsdbool( t11 = t13 ).
      t5 = t10.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE f.
      DATA(t16) = t1.
      t15 = t16->column.
      DATA(t17) = CONV f( 0 ).
      t14 = xsdbool( t15 = t17 ).
      t4 = t14.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE f.
      DATA(t20) = t2.
      t19 = t20->column.
      DATA(t21) = CONV f( 0 ).
      t18 = xsdbool( t19 = t21 ).
      t3 = t18.
    ENDIF.
    IF t3 = abap_true.
      DATA(t22) = abap_false.
      result = t22.
      RETURN.
    ENDIF.
    DATA(t23) = VALUE f( ).
    DATA t24 TYPE f.
    DATA t25 TYPE f.
    DATA(t26) = t1.
    t25 = t26->height.
    DATA(t27) = CONV f( 1 ).
    t24 = t27.
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
    DATA(t31) = t2.
    t30 = t31->height.
    DATA(t32) = CONV f( 1 ).
    t29 = t32.
    IF t29 = 0 AND t30 = 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF t30 > t29.
      t29 = t30.
    ENDIF.
    t28 = t29.
    DATA t33 TYPE f.
    DATA t34 TYPE f.
    DATA t35 TYPE f.
    DATA t36 TYPE f.
    DATA(t37) = t1.
    t36 = t37->line.
    DATA(t38) = t23.
    t35 = t36 + t38.
    DATA(t39) = CONV f( 1 ).
    t34 = t35 - t39.
    t33 = t34.
    DATA t40 TYPE f.
    DATA t41 TYPE f.
    DATA t42 TYPE f.
    DATA t43 TYPE f.
    DATA(t44) = t2.
    t43 = t44->line.
    DATA(t45) = t28.
    t42 = t43 + t45.
    DATA(t46) = CONV f( 1 ).
    t41 = t42 - t46.
    t40 = t41.
    DATA t47 TYPE abap_bool.
    DATA t48 TYPE abap_bool.
    DATA(t49) = t33.
    DATA t50 TYPE f.
    DATA(t51) = t2.
    t50 = t51->line.
    t48 = xsdbool( t49 < t50 ).
    t47 = t48.
    IF t48 = abap_false.
      DATA t52 TYPE abap_bool.
      DATA(t53) = t40.
      DATA t54 TYPE f.
      DATA(t55) = t1.
      t54 = t55->line.
      t52 = xsdbool( t53 < t54 ).
      t47 = t52.
    ENDIF.
    IF t47 = abap_true.
      DATA(t56) = abap_false.
      result = t56.
      RETURN.
    ENDIF.
    DATA(t57) = VALUE f( ).
    DATA(t58) = VALUE f( ).
    DATA(t59) = VALUE f( ).
    DATA t60 TYPE f.
    DATA(t61) = t1.
    t60 = t61->column.
    DATA(t62) = VALUE f( ).
    DATA(t63) = VALUE f( ).
    DATA t64 TYPE f.
    DATA t65 TYPE f.
    DATA(t66) = t1.
    t65 = t66->vislength.
    t64 = t65.
    DATA(t67) = VALUE f( ).
    DATA t68 TYPE abap_bool.
    DATA(t69) = t64.
    t68 = xsdbool( t69 IS NOT INITIAL ).
    IF t68 = abap_true.
      DATA(t70) = t64.
      t67 = t70.
    ELSE.
      DATA t71 TYPE f.
      DATA(t72) = t1.
      t71 = t72->length.
      t67 = t71.
    ENDIF.
    t63 = t67.
    DATA(t73) = CONV f( 1 ).
    t62 = t73.
    IF t62 = 0 AND t63 = 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF t63 > t62.
      t62 = t63.
    ENDIF.
    t59 = t60 + t62.
    DATA(t74) = CONV f( 1 ).
    t58 = t59 - t74.
    t57 = t58.
    DATA(t75) = VALUE f( ).
    DATA(t76) = VALUE f( ).
    DATA(t77) = VALUE f( ).
    DATA t78 TYPE f.
    DATA(t79) = t2.
    t78 = t79->column.
    DATA(t80) = VALUE f( ).
    DATA(t81) = VALUE f( ).
    DATA t82 TYPE f.
    DATA t83 TYPE f.
    DATA(t84) = t2.
    t83 = t84->vislength.
    t82 = t83.
    DATA(t85) = VALUE f( ).
    DATA t86 TYPE abap_bool.
    DATA(t87) = t82.
    t86 = xsdbool( t87 IS NOT INITIAL ).
    IF t86 = abap_true.
      DATA(t88) = t82.
      t85 = t88.
    ELSE.
      DATA t89 TYPE f.
      DATA(t90) = t2.
      t89 = t90->length.
      t85 = t89.
    ENDIF.
    t81 = t85.
    DATA(t91) = CONV f( 1 ).
    t80 = t91.
    IF t80 = 0 AND t81 = 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF t81 > t80.
      t80 = t81.
    ENDIF.
    t77 = t78 + t80.
    DATA(t92) = CONV f( 1 ).
    t76 = t77 - t92.
    t75 = t76.
    DATA t93 TYPE abap_bool.
    DATA t94 TYPE abap_bool.
    DATA t95 TYPE f.
    DATA(t96) = t1.
    t95 = t96->column.
    DATA(t97) = t75.
    t94 = xsdbool( t95 <= t97 ).
    t93 = t94.
    IF t94 = abap_true.
      DATA t98 TYPE abap_bool.
      DATA t99 TYPE f.
      DATA(t100) = t2.
      t99 = t100->column.
      DATA(t101) = t57.
      t98 = xsdbool( t99 <= t101 ).
      t93 = t98.
    ENDIF.
    result = t93.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_dynpro_checks.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_dyn_chc_ts_dyn_chc( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_dynpro_checks_conf( me->gt_cn_in_sr_rl_dy_ch_ts_dy_chc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_dynpro_checks_conf( me->gt_cn_in_sr_rl_dy_ch_ts_dy_chc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_dynpro_checks_conf.
    CLEAR t2.
    DATA(t3) = t1.
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t4.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_dynpro_checks_conf( view_source = t3 ).
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
