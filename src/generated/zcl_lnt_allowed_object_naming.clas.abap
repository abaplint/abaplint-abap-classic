* TS: src/rules/allowed_object_naming.ts:12:1 AllowedObjectNaming
CLASS zcl_lnt_allowed_object_naming DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_allwd_objct_nmng_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_sr_rl_al_ob_nm_ts_al_ob_nm IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_allowed_object_naming.
    METHODS g_c_i_s_r_al_ob_nm_ts_al_ob_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_allwd_objct_nmng_cnf.
    METHODS s_c_i_s_r_al_ob_nm_ts_al_ob_nm IMPORTING i_conf TYPE REF TO zcl_lnt_allwd_objct_nmng_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_allowed_object_naming IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_allwd_objct_nmng_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |allowed_object_naming|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Allowed object naming|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Enforces basic name length and namespace restrictions, see n|.
    t7 = t7 && |ote SAP 104010|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Naming|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |SingleFile|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      DATA(t19) = |Syntax|.
      t18->load( ).
      APPEND t19 TO t18->items.
      t18->save( ).
      DATA(t20) = t12.
      t11 = t20.
      t9 = t11.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      t9 = t21.
    ENDIF.
    t8 = t9.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t22 i_good_example = t24 i_extended_information = t26 i_tags = t8 i_pragma = t28 i_pseudo_comment = t30 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t35 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t36) = |key|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |title|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |shortDescription|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    DATA(t42) = |tags|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD i_i_sr_rl_al_ob_nm_ts_al_ob_nm.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD g_c_i_s_r_al_ob_nm_ts_al_ob_nm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_al_ob_nm_ts_al_ob_nm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t3 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA(t4) = t1.
    t3 = t4->get_allowed_naming( ).
    t2 = t3.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = t1.
    t6 = t7->get_name( ).
    t5 = t6.
    DATA t8 TYPE string.
    DATA(t9) = ||.
    t8 = t9.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE f.
    DATA t12 TYPE i.
    DATA(t13) = t5.
    DATA(t14) = strlen( t13 ).
    t12 = t14.
    t11 = t12.
    DATA t15 TYPE f.
    DATA(t16) = t2.
    t15 = t16->max_length.
    t10 = xsdbool( t11 > t15 ).
    IF t10 = abap_true.
      DATA(t17) = VALUE string( ).
      DATA(t18) = |Name exceeds max length, allowed is |.
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE f.
      DATA(t21) = t2.
      t20 = t21->max_length.
      IF t20 <> trunc( t20 ) OR t20 > range_safe_integer OR t20 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t22) = CONV int8( t20 ).
      t19 = |{ t22 }|.
      DATA(t23) = strlen( t18 ).
      t17 = |{ t18 }{ t19 }|.
      t8 = t17.
    ELSE.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t2.
      t26 = t27->allow_namespace.
      DATA(t28) = abap_false.
      t25 = xsdbool( t26 = t28 ).
      t24 = t25.
      IF t25 = abap_true.
        DATA(t29) = VALUE abap_bool( ).
        DATA(t30) = VALUE i( ).
        DATA(t31) = t5.
        DATA(t32) = |/|.
        DATA(t33) = strlen( t31 ).
        IF t32 IS INITIAL.
          t30 = 0.
        ELSE.
          FIND t32 IN t31 MATCH OFFSET t30.
          IF sy-subrc <> 0.
            t30 = -1.
          ENDIF.
        ENDIF.
        DATA(t34) = 0.
        t29 = xsdbool( t30 >= t34 ).
        t24 = t29.
      ENDIF.
      IF t24 = abap_true.
        DATA(t35) = |Namespace not allowed for object type|.
        t8 = t35.
      ELSE.
        DATA(t36) = VALUE abap_bool( ).
        DATA t37 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA t38 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA(t39) = t2.
        t38 = t39->custom_regex.
        t37 = t38.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        t40 = t41.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = t37.
        IF t44 IS INITIAL.
          t43 = abap_true.
        ENDIF.
        t42 = xsdbool( t43 = abap_false ).
        t36 = t42.
        IF t36 = abap_true.
          DATA t45 TYPE abap_bool.
          DATA t46 TYPE string.
          DATA(t47) = t5.
          t46 = t47.
          DATA t48 TYPE abap_bool.
          DATA t49 TYPE abap_bool.
          DATA t50 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          DATA t51 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          DATA(t52) = t2.
          t51 = t52->custom_regex.
          t50 = t51.
          DATA(t53) = t46.
          t49 = t50->match_test( p0 = t53 ).
          t48 = xsdbool( t49 = abap_false ).
          t45 = t48.
          IF t45 = abap_true.
            DATA t54 TYPE string.
            DATA(t55) = |Name not allowed, expected to match |.
            DATA t56 TYPE string.
            DATA t57 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            DATA t58 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            DATA(t59) = t2.
            t58 = t59->custom_regex.
            t57 = t58.
            t56 = |/{ t57->source }/{ t57->flags }|.
            DATA(t60) = strlen( t55 ).
            t54 = |{ t55 }{ t56 }|.
            t8 = t54.
          ENDIF.
        ELSE.
          DATA(t61) = VALUE abap_bool( ).
          DATA t62 TYPE string.
          DATA(t63) = t5.
          t62 = t63.
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = VALUE abap_bool( ).
          DATA t66 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t66.
          IF zcl_lnt_allwd_objct_nmng_mdl=>zlnt_builtin_init_b4b04a677b0b = abap_false.
            zcl_lnt_allwd_objct_nmng_mdl=>zlnt_builtin_init_2b08683d792f( ).
          ENDIF.
          t66 = zcl_lnt_allwd_objct_nmng_mdl=>name_regex.
          DATA(t67) = t62.
          t65 = t66->match_test( p0 = t67 ).
          t64 = xsdbool( t65 = abap_false ).
          t61 = t64.
          IF t61 = abap_true.
            DATA(t68) = |Name not allowed|.
            t8 = t68.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t69 TYPE abap_bool.
    DATA t70 TYPE i.
    DATA(t71) = t8.
    DATA(t72) = strlen( t71 ).
    t70 = t72.
    DATA(t73) = 0.
    t69 = xsdbool( t70 > t73 ).
    IF t69 = abap_true.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t74.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t76.
      t75 = t76.
      DATA(t77) = t75.
      DATA t78 TYPE REF TO zcl_lnt_issue.
      CLEAR t78.
      DATA t79 TYPE REF TO zif_lnt_file.
      CLEAR t79.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t81) = t1.
      t80 = t81->get_files( ).
      DATA t82 TYPE REF TO object.
      CLEAR t82.
      t80->load( ).
      CLEAR t82.
      READ TABLE t80->items INDEX 1 INTO t82.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      CLEAR t79.
      IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t83 ?= t82.
        DATA t84 TYPE REF TO object.
        t84 = t83->as_ref( ).
        t79 ?= t84.
      ELSE.
        t79 ?= t82.
      ENDIF.
      DATA(t85) = CONV f( 1 ).
      DATA(t86) = t8.
      DATA(t87) = VALUE string( ).
      DATA t88 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t88.
      DATA t89 TYPE string.
      DATA(t90) = |allowed_object_naming|.
      t89 = t90.
      DATA t91 TYPE string.
      DATA(t92) = |Allowed object naming|.
      t91 = t92.
      DATA t93 TYPE string.
      DATA(t94) = |Enforces basic name length and namespace restrictions, see n|.
      t94 = t94 && |ote SAP 104010|.
      t93 = t94.
      DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t95.
      DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t96.
      DATA(t97) = abap_true.
      IF t97 = abap_true.
        DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t100.
        t99 = t100.
        DATA(t101) = t99.
        DATA(t102) = |Naming|.
        t101->load( ).
        APPEND t102 TO t101->items.
        t101->save( ).
        DATA(t103) = t99.
        DATA(t104) = |SingleFile|.
        t103->load( ).
        APPEND t104 TO t103->items.
        t103->save( ).
        DATA(t105) = t99.
        DATA(t106) = |Syntax|.
        t105->load( ).
        APPEND t106 TO t105->items.
        t105->save( ).
        DATA(t107) = t99.
        t98 = t107.
        t96 = t98.
      ELSE.
        DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t108.
        t96 = t108.
      ENDIF.
      t95 = t96.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t110.
      t109 = t110.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t112.
      t111 = t112.
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t114.
      t113 = t114.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t116.
      t115 = t116.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t118.
      t117 = t118.
      t88 = NEW zcl_lnt_irule_metadata( i_key = t89 i_title = t91 i_short_description = t93 i_bad_example = t109 i_good_example = t111 i_extended_information = t113 i_tags = t95 i_pragma = t115 i_pseudo_comment = t117 ).
      CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
      t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t119 ).
      ENDIF.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t120 ).
      ENDIF.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t121 ).
      ENDIF.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t122 ).
      ENDIF.
      CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
      t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t123) = |key|.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
      ENDIF.
      DATA(t125) = |title|.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
      ENDIF.
      DATA(t127) = |shortDescription|.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
      ENDIF.
      DATA(t129) = |tags|.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
      ENDIF.
      t87 = t88->key.
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t132) = me->conf.
      t131 = t132->zlnt_view_read_sr_15c06369f827( ).
      t78 = zcl_lnt_issue=>at_row( i_file = t79 i_row = t85 i_message_26cb = t86 i_key = t87 i_severity = t131 ).
      t77->load( ).
      APPEND t78 TO t77->items.
      t77->save( ).
      DATA(t133) = t75.
      t74 = t133.
      result = t74.
      RETURN.
    ENDIF.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t134.
    result = t134.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_allowed_object_naming.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_al_ob_nm_ts_al_ob_nm( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_allwd_objct_nmng_cnf( me->g_c_i_s_r_al_ob_nm_ts_al_ob_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_allwd_objct_nmng_cnf( me->g_c_i_s_r_al_ob_nm_ts_al_ob_nm( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_allwd_objct_nmng_cnf.
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
        t2 = NEW zcl_lnt_allwd_objct_nmng_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_al_ob_nm_ts_al_ob_nm( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1400_a0292771c97b.
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
