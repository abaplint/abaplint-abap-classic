* TS: src/objects/authorization_check_field.ts:8:1 AuthorizationCheckField
CLASS zcl_lnt_athrztn_chck_fld DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_e3559bc5.
    INTERFACES zif_lnt_union_42a36aec.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_90553f00.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_data_element_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS p_t_i_s_o_at_ch_fl_ts_at_ch_fl IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS p_i_sr_ob_at_ch_fl_ts_at_ch_fl RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS parse REDEFINITION.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_athrztn_chck_fld IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |AUTH|.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 30 ).
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = abap_true.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t7.
    t6 = t7.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t4 i_custom_regex = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t8 ).
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t9 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t10) = |maxLength|.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t10 p1 = t11 ).
    ENDIF.
    DATA(t12) = |allowNamespace|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_90553f00.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_description.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    result = t1.

  ENDMETHOD.

  METHOD get_data_element_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->p_i_sr_ob_at_ch_fl_ts_at_ch_fl( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_90553f00.
    DATA(t4) = me->parsed_xml.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_90553f00.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->rollname_3628.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD p_t_i_s_o_at_ch_fl_ts_at_ch_fl.
    DATA(t1) = i_reg_f149.
    DATA(t2) = CAST zcl_lnt_iparse_result( me->p_i_sr_ob_at_ch_fl_ts_at_ch_fl( ) ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    DATA(t7) = t1.
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t7 ).
    t5 = t6.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_shape_90553f00.
    DATA(t11) = me->parsed_xml.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t10.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t17 TYPE REF TO zcl_lnt_shape_90553f00.
      DATA(t18) = t10.
      t17 = t18.
      t16 = t17->rollname_3628.
      t12 = t16.
    ENDIF.
    t9 = t12.
    IF t9 IS BOUND.
      IF t9->has = abap_true.
        t8 = xsdbool( strlen( t9->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t8 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_ddic.
      DATA(t22) = t5.
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA(t25) = abap_true.
      IF t25 = abap_true.
        DATA t26 TYPE string.
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t28 TYPE REF TO zcl_lnt_shape_90553f00.
        DATA(t29) = me->parsed_xml.
        t28 = t29.
        t27 = t28->rollname_3628.
        t26 = t27->value.
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t26.
        t24 = t30.
      ELSE.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t24 = t31.
      ENDIF.
      t23 = t24.
      DATA t32 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t35) = t23.
      t34 = t35.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      t36 = t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = t34.
      IF t39 IS INITIAL.
        t38 = abap_true.
      ELSEIF t39->has = abap_false.
        t38 = abap_true.
      ENDIF.
      t33 = t38.
      IF t33 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        DATA t42 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t43) = |undefined, lookupDataElement|.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        t42 = NEW zcl_lnt_unknown_type( i_error = t43 i_qualified_name = t44 ).
        t41 = t42.
        DATA t45 TYPE REF TO zif_lnt_object.
        DATA t46 TYPE REF TO zif_lnt_object.
        CLEAR t46.
        t45 = t46.
        t40 = NEW zcl_lnt_ilookup_result( i_type_9913 = t41 i_object_19cd = t45 ).
        CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
        t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t47 ).
        ENDIF.
        CREATE OBJECT t40->zlnt_json_ownkeys_70e5fd461788.
        t40->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t48) = |type|.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
        ENDIF.
        t32 = t40.
      ELSE.
        DATA t50 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t50.
        DATA t51 TYPE REF TO zcl_lnt_data_element.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_data_element.
        CLEAR t52.
        DATA t53 TYPE REF TO zif_lnt_object.
        CLEAR t53.
        DATA t54 TYPE REF TO zif_lnt_registry.
        DATA(t55) = t21.
        t54 = t55->reg.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA(t58) = |DTEL|.
          DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t59->has = abap_true.
          t59->value = t58.
          t56 = t59.
        ELSE.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          t56 = t60.
        ENDIF.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA(t62) = abap_true.
        IF t62 = abap_true.
          DATA t63 TYPE string.
          DATA(t64) = t23.
          t63 = t64->value.
          DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t65->has = abap_true.
          t65->value = t63.
          t61 = t65.
        ELSE.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t66.
          t61 = t66.
        ENDIF.
        t53 = t54->get_object( i_type_9913 = t56 i_name = t61 ).
        DATA t67 TYPE REF TO object.
        t67 = t53.
        t52 ?= t67.
        t51 = t52.
        DATA t68 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t68.
        DATA t69 TYPE abap_bool.
        DATA(t70) = t51.
        t69 = xsdbool( t70 IS BOUND ).
        IF t69 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t72 TYPE REF TO zcl_lnt_abstract_type.
          DATA t73 TYPE REF TO zcl_lnt_abstract_type.
          DATA t74 TYPE REF TO zcl_lnt_data_element.
          DATA(t75) = t51.
          t74 = t75.
          DATA t76 TYPE REF TO zif_lnt_registry.
          DATA(t77) = t21.
          t76 = t77->reg.
          DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t78.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          t73 = t74->parse_type( i_reg_f149 = t76 i_data_element = t78 i_description = t79 ).
          t72 = t73.
          DATA t80 TYPE REF TO zif_lnt_object.
          DATA t81 TYPE REF TO zcl_lnt_data_element.
          DATA(t82) = t51.
          t81 = t82.
          t80 = t81.
          t71 = NEW zcl_lnt_ilookup_result( i_type_9913 = t72 i_object_19cd = t80 ).
          CREATE OBJECT t71->zlnt_view_ownkeys_b0e8086400eb.
          t71->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t83 ).
          ENDIF.
          DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t84.
          IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t84 ).
          ENDIF.
          CREATE OBJECT t71->zlnt_json_ownkeys_70e5fd461788.
          t71->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t85) = |type|.
          DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t86.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
          ENDIF.
          DATA(t87) = |object|.
          DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t88.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
          ENDIF.
          t68 = t71.
        ELSE.
          DATA t89 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t89.
          DATA t90 TYPE abap_bool.
          DATA t91 TYPE REF TO zif_lnt_registry.
          DATA(t92) = t21.
          t91 = t92->reg.
          DATA t93 TYPE string.
          DATA(t94) = t23.
          t93 = t94->value.
          t90 = t91->in_error_namespace( i_name = t93 ).
          IF t90 = abap_true.
            DATA t95 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t96 TYPE REF TO zcl_lnt_abstract_type.
            DATA t97 TYPE REF TO zcl_lnt_unknown_type.
            DATA t98 TYPE string.
            DATA t99 TYPE string.
            DATA(t100) = t23.
            t99 = t100->value.
            DATA(t101) = | not found, lookupDataElement|.
            DATA(t102) = strlen( t99 ).
            t98 = |{ t99 }{ t101 }|.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            t97 = NEW zcl_lnt_unknown_type( i_error = t98 i_qualified_name = t103 ).
            t96 = t97.
            DATA t104 TYPE REF TO zif_lnt_object.
            DATA t105 TYPE REF TO zif_lnt_object.
            CLEAR t105.
            t104 = t105.
            t95 = NEW zcl_lnt_ilookup_result( i_type_9913 = t96 i_object_19cd = t104 ).
            CREATE OBJECT t95->zlnt_view_ownkeys_b0e8086400eb.
            t95->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t106.
            IF t95->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t106 ).
            ENDIF.
            CREATE OBJECT t95->zlnt_json_ownkeys_70e5fd461788.
            t95->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t107) = |type|.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            IF t95->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
            ENDIF.
            t89 = t95.
          ELSE.
            DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t109.
            DATA t110 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t110.
            DATA t111 TYPE REF TO zcl_lnt_void_type.
            CLEAR t111.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t112.
            DATA(t113) = abap_true.
            IF t113 = abap_true.
              DATA t114 TYPE string.
              DATA(t115) = t23.
              t114 = t115->value.
              DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t116->has = abap_true.
              t116->value = t114.
              t112 = t116.
            ELSE.
              DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t117.
              t112 = t117.
            ENDIF.
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t118.
            t111 = zcl_lnt_void_type=>get_db65( i_voided = t112 i_qualified_name = t118 ).
            t110 = t111.
            DATA t119 TYPE REF TO zif_lnt_object.
            DATA t120 TYPE REF TO zif_lnt_object.
            CLEAR t120.
            t119 = t120.
            t109 = NEW zcl_lnt_ilookup_result( i_type_9913 = t110 i_object_19cd = t119 ).
            CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
            t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t121.
            IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t121 ).
            ENDIF.
            CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
            t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t122) = |type|.
            DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t123.
            IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
            ENDIF.
            t89 = t109.
          ENDIF.
          t68 = t89.
        ENDIF.
        t50 = t68.
        t32 = t50.
      ENDIF.
      t20 = t32.
      t19 = t20.
      DATA t124 TYPE abap_bool.
      DATA t125 TYPE REF TO zif_lnt_object.
      DATA(t126) = t19.
      t125 = t126->zlnt_view_read_sr_2de0200e6505( ).
      t124 = xsdbool( t125 IS BOUND ).
      IF t124 = abap_true.
        DATA(t127) = t3.
        DATA t128 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t128.
        DATA t129 TYPE REF TO zif_lnt_object.
        CLEAR t129.
        DATA t130 TYPE REF TO zif_lnt_object.
        CLEAR t130.
        DATA(t131) = abap_true.
        IF t131 = abap_true.
          DATA t132 TYPE REF TO zif_lnt_object.
          DATA t133 TYPE REF TO zif_lnt_object.
          DATA(t134) = t19.
          t133 = t134->zlnt_view_read_sr_2de0200e6505( ).
          t132 = t133.
          t130 = t132.
        ELSE.
          DATA t135 TYPE REF TO zif_lnt_object.
          CLEAR t135.
          t130 = t135.
        ENDIF.
        t129 = t130.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        DATA t137 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t137.
        t136 = t137.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        t138 = t139.
        t128 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t129 i_token = t136 i_filename = t138 ).
        CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
        t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t140 ).
        ENDIF.
        CREATE OBJECT t128->zlnt_json_ownkeys_70e5fd461788.
        t128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t141) = |object|.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
        ENDIF.
        t127->load( ).
        APPEND t128 TO t127->items.
        t127->save( ).
        DATA t143 TYPE REF TO zif_lnt_ddic_references.
        DATA(t144) = t1.
        t143 = t144->get_ddic_references( ).
        DATA(t145) = me.
        DATA(t146) = t3.
        t143->set_using( i_obj_1ed0 = t145 i_using = t146 ).
        DATA t147 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t148) = t19.
        t147 = t148->zlnt_view_read_sr_9be58e2d4893( ).
        result = t147.
        RETURN.
      ELSE.
        DATA(t149) = VALUE abap_bool( ).
        DATA t150 TYPE REF TO zcl_lnt_ddic.
        DATA(t151) = t5.
        t150 = t151.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t152.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        DATA(t154) = abap_true.
        IF t154 = abap_true.
          DATA t155 TYPE string.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t157 TYPE REF TO zcl_lnt_shape_90553f00.
          DATA(t158) = me->parsed_xml.
          t157 = t158.
          t156 = t157->rollname_3628.
          t155 = t156->value.
          DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t159->has = abap_true.
          t159->value = t155.
          t153 = t159.
        ELSE.
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t160.
          t153 = t160.
        ENDIF.
        t152 = t153.
        DATA(t161) = VALUE abap_bool( ).
        DATA(t162) = VALUE abap_bool( ).
        DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t164) = t152.
        t163 = t164.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        t165 = t166.
        DATA(t167) = VALUE abap_bool( ).
        DATA(t168) = t163.
        IF t168 IS INITIAL.
          t167 = abap_true.
        ELSEIF t168->has = abap_false.
          t167 = abap_true.
        ENDIF.
        t162 = t167.
        IF t162 = abap_true.
          DATA(t169) = abap_true.
          t161 = t169.
        ELSE.
          DATA t170 TYPE abap_bool.
          DATA t171 TYPE REF TO zif_lnt_registry.
          DATA(t172) = t150.
          t171 = t172->reg.
          DATA t173 TYPE string.
          DATA(t174) = t152.
          t173 = t174->value.
          t170 = t171->in_error_namespace( i_name = t173 ).
          t161 = t170.
        ENDIF.
        t149 = t161.
        IF t149 = abap_true.
          DATA t175 TYPE REF TO zcl_lnt_unknown_type.
          DATA t176 TYPE string.
          DATA t177 TYPE string.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t179 TYPE REF TO zcl_lnt_shape_90553f00.
          DATA(t180) = me->parsed_xml.
          t179 = t180.
          t178 = t179->rollname_3628.
          t177 = t178->value.
          DATA(t181) = | not found|.
          DATA(t182) = strlen( t177 ).
          t176 = |{ t177 }{ t181 }|.
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t183.
          t175 = NEW zcl_lnt_unknown_type( i_error = t176 i_qualified_name = t183 ).
          result = t175.
          RETURN.
        ELSE.
          DATA t184 TYPE REF TO zcl_lnt_void_type.
          CLEAR t184.
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t185.
          DATA(t186) = abap_true.
          IF t186 = abap_true.
            DATA t187 TYPE string.
            DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t189 TYPE REF TO zcl_lnt_shape_90553f00.
            DATA(t190) = me->parsed_xml.
            t189 = t190.
            t188 = t189->rollname_3628.
            t187 = t188->value.
            DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t191->has = abap_true.
            t191->value = t187.
            t185 = t191.
          ELSE.
            DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t192.
            t185 = t192.
          ENDIF.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t193.
          t184 = zcl_lnt_void_type=>get_db65( i_voided = t185 i_qualified_name = t193 ).
          result = t184.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t194 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t195) = |Parsing error|.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t196.
      t194 = NEW zcl_lnt_unknown_type( i_error = t195 i_qualified_name = t196 ).
      result = t194.

    ENDIF.
  ENDMETHOD.

  METHOD p_i_sr_ob_at_ch_fl_ts_at_ch_fl.
    DATA t1 TYPE abap_bool.
    DATA(t2) = me->parsed_xml.
    t1 = xsdbool( t2 IS BOUND ).
    IF t1 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      DATA t4 TYPE abap_bool.
      DATA(t5) = abap_false.
      t4 = t5.
      DATA t6 TYPE f.
      DATA(t7) = CONV f( 0 ).
      t6 = t7.
      DATA t8 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t9 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t9.
      t8 = t9.
      t3 = NEW zcl_lnt_iparse_result( i_updated = t4 i_runtime = t6 i_runtime_extra = t8 ).
      CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
      t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t10 ).
      ENDIF.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t11 ).
      ENDIF.
      CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
      t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t12) = |updated|.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
      ENDIF.
      DATA(t14) = |runtime|.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
      ENDIF.
      result = t3.
      RETURN.
    ENDIF.
    DATA t16 TYPE f.
    DATA t17 TYPE f.
    DATA(t18) = 0.
    t17 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t16 = t17.
    DATA t19 TYPE REF TO zcl_lnt_shape_90553f00.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_shape_90553f00.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t22 = t23.
      t21 = NEW zcl_lnt_shape_90553f00( i_rollname_aa57 = t22 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t19 = t21.
    ELSE.
      DATA t24 TYPE REF TO zcl_lnt_shape_90553f00.
      CLEAR t24.
      t19 = t24.
    ENDIF.
    me->parsed_xml = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t25.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      t28 = t31.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t33) = t25.
      t32 = t33.
      t28 = t32.
    ENDIF.
    t27 = t28.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = t27.
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    t39 = t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = t37.
    IF t42 IS INITIAL.
      t41 = abap_true.
    ENDIF.
    t36 = t41.
    t35 = t36.
    IF t36 = abap_false.
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t47) = t27.
      t46 = t47.
      DATA(t48) = |abapGit|.
      t45 = t46->get( p0 = t48 ).
      t44 = t45.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      t49 = t50.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = t44.
      IF t52 IS INITIAL.
        t51 = abap_true.
      ENDIF.
      t43 = t51.
      t35 = t43.
    ENDIF.
    t34 = t35.
    IF t35 = abap_false.
      DATA(t53) = VALUE abap_bool( ).
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t61) = t27.
      t60 = t61.
      DATA(t62) = |abapGit|.
      t59 = t60->get( p0 = t62 ).
      t58 = t59.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = t58.
      IF t65 IS NOT BOUND.
        t64 = abap_true.
      ELSE.
        t64 = xsdbool( t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t64 = abap_true.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        t63 = t66.
      ELSE.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t68) = t58.
        DATA(t69) = |asx:abap|.
        t67 = t68->get( p0 = t69 ).
        t63 = t67.
      ENDIF.
      t57 = t63.
      t56 = t57.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      DATA(t73) = t56.
      CLEAR t72.
      IF t73 IS BOUND.
        t72 = t73.
      ENDIF.
      IF t72 IS NOT BOUND.
        t71 = abap_true.
      ELSE.
        t71 = xsdbool( t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t71 = abap_true.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        t70 = t74.
      ELSE.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t77) = t56.
        t76 = t77.
        DATA(t78) = |asx:values|.
        t75 = t76->get( p0 = t78 ).
        t70 = t75.
      ENDIF.
      t55 = t70.
      t54 = t55.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      t79 = t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t54.
      IF t82 IS INITIAL.
        t81 = abap_true.
      ENDIF.
      t53 = t81.
      t34 = t53.
    ENDIF.
    IF t34 = abap_true.
      DATA t83 TYPE REF TO zcl_lnt_iparse_result.
      DATA t84 TYPE abap_bool.
      DATA(t85) = abap_false.
      t84 = t85.
      DATA t86 TYPE f.
      DATA(t87) = CONV f( 0 ).
      t86 = t87.
      DATA t88 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t89 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t89.
      t88 = t89.
      t83 = NEW zcl_lnt_iparse_result( i_updated = t84 i_runtime = t86 i_runtime_extra = t88 ).
      CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
      t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t90 ).
      ENDIF.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t91 ).
      ENDIF.
      CREATE OBJECT t83->zlnt_json_ownkeys_70e5fd461788.
      t83->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t92) = |updated|.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
      ENDIF.
      DATA(t94) = |runtime|.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
      ENDIF.
      result = t83.
      RETURN.
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = t27.
    t106 = t107.
    DATA(t108) = |abapGit|.
    t105 = t106->get( p0 = t108 ).
    t104 = t105.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = VALUE abap_bool( ).
    DATA(t111) = t104.
    IF t111 IS NOT BOUND.
      t110 = abap_true.
    ELSE.
      t110 = xsdbool( t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t110 = abap_true.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      t109 = t112.
    ELSE.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t114) = t104.
      DATA(t115) = |asx:abap|.
      t113 = t114->get( p0 = t115 ).
      t109 = t113.
    ENDIF.
    t103 = t109.
    t102 = t103.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = VALUE abap_bool( ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = t102.
    CLEAR t118.
    IF t119 IS BOUND.
      t118 = t119.
    ENDIF.
    IF t118 IS NOT BOUND.
      t117 = abap_true.
    ELSE.
      t117 = xsdbool( t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t117 = abap_true.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      t116 = t120.
    ELSE.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t123) = t102.
      t122 = t123.
      DATA(t124) = |asx:values|.
      t121 = t122->get( p0 = t124 ).
      t116 = t121.
    ENDIF.
    t101 = t116.
    t100 = t101.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = VALUE abap_bool( ).
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA(t128) = t100.
    CLEAR t127.
    IF t128 IS BOUND.
      t127 = t128.
    ENDIF.
    IF t127 IS NOT BOUND.
      t126 = abap_true.
    ELSE.
      t126 = xsdbool( t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t126 = abap_true.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      t125 = t129.
    ELSE.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t132) = t100.
      t131 = t132.
      DATA(t133) = |AUTHX|.
      t130 = t131->get( p0 = t133 ).
      t125 = t130.
    ENDIF.
    t99 = t125.
    t98 = t99.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = VALUE abap_bool( ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = t98.
    CLEAR t136.
    IF t137 IS BOUND.
      t136 = t137.
    ENDIF.
    IF t136 IS NOT BOUND.
      t135 = abap_true.
    ELSE.
      t135 = xsdbool( t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t135 = abap_true.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      t134 = t138.
    ELSE.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t141) = t98.
      t140 = t141.
      DATA(t142) = |ROLLNAME|.
      t139 = t140->get( p0 = t142 ).
      t134 = t139.
    ENDIF.
    t97 = t134.
    t96 = t97.
    DATA t143 TYPE REF TO zcl_lnt_shape_90553f00.
    DATA(t144) = me->parsed_xml.
    t143 = t144.
    DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t145.
    DATA(t146) = VALUE abap_bool( ).
    DATA(t147) = t96.
    IF t147 IS INITIAL.
      t146 = abap_true.
    ENDIF.
    IF t146 = abap_true.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t148.
      t145 = t148.
    ELSE.
      DATA t149 TYPE string.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t151) = t96.
      t150 = t151.
      t149 = t150->as_string( ).
      DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t152->has = abap_true.
      t152->value = t149.
      t145 = t152.
    ENDIF.
    t143->rollname_3628 = t145.
    DELETE t143->zlnt_record_delet_0597644d88b4 WHERE table_line = `rollname`.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `rollname` p1 = t153 ).
    ENDIF.
    DATA(t154) = |rollname|.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
    ENDIF.
    DATA t156 TYPE f.
    DATA t157 TYPE f.
    DATA(t158) = 0.
    t157 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t156 = t157.
    DATA t159 TYPE REF TO zcl_lnt_iparse_result.
    DATA t160 TYPE abap_bool.
    DATA(t161) = abap_true.
    t160 = t161.
    DATA t162 TYPE f.
    DATA t163 TYPE f.
    DATA(t164) = t156.
    DATA(t165) = t16.
    t163 = t164 - t165.
    t162 = t163.
    DATA t166 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t167 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t167.
    t166 = t167.
    t159 = NEW zcl_lnt_iparse_result( i_updated = t160 i_runtime = t162 i_runtime_extra = t166 ).
    CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
    t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t168 ).
    ENDIF.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t169 ).
    ENDIF.
    CREATE OBJECT t159->zlnt_json_ownkeys_70e5fd461788.
    t159->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t170) = |updated|.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
    ENDIF.
    DATA(t172) = |runtime|.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
    ENDIF.
    result = t159.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->p_i_sr_ob_at_ch_fl_ts_at_ch_fl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD parse_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = t1.
    t4 = me->p_t_i_s_o_at_ch_fl_ts_at_ch_fl( i_reg_f149 = t5 ).
    result = t4.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1200_4e5faec67292.
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
