* TS: src/objects/table_type.ts:10:1 TableType
CLASS zcl_lnt_ob_table_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_e3559bc5.
    INTERFACES zif_lnt_union_42a36aec.
    INTERFACES zif_lnt_union_864794cc.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_01ff58f8.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_row_type RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS set_dirty REDEFINITION.
    METHODS build_primary_key RETURNING VALUE(result) TYPE REF TO zcl_lnt_itable_key.
    METHODS build_table_options RETURNING VALUE(result) TYPE REF TO zcl_lnt_itable_options.
    METHODS pr_ty_in_sr_ob_tb_ty_ts_tb_typ IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS parse_xml.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ob_table_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t3.
    me->parsed_xml = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |TTYP|.
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

  METHOD get_description.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_01ff58f8.
    DATA(t3) = me->parsed_xml.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_shape_01ff58f8.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->ddtext_d4ae.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD get_row_type.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_01ff58f8.
    DATA(t3) = me->parsed_xml.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_shape_01ff58f8.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->rowtype.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD build_primary_key.
    DATA t1 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t2.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_shape_01ff58f8.
    DATA(t7) = me->parsed_xml.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t6.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t13 TYPE REF TO zcl_lnt_shape_01ff58f8.
      DATA(t14) = t6.
      t13 = t14.
      t12 = t13->keykind.
      t8 = t12.
    ENDIF.
    t5 = t8.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |U|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE abap_bool( ).
    IF t5 IS BOUND.
      t20 = t5->has.
    ENDIF.
    IF t15 IS BOUND.
      t21 = t15->has.
    ENDIF.
    IF t20 = t21.
      IF t20 = abap_false.
        t4 = abap_true.
      ELSEIF t5->value = t15->value.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t22 TYPE string.
    DATA(t23) = |STANDARD|.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t25.
    t24 = t25.
    DATA t26 TYPE string.
    DATA(t27) = |primary_key|.
    t26 = t27.
    t2 = NEW zcl_lnt_itable_key( i_name = t26 i_type_9913 = t22 i_key_fields = t24 i_is_unique = t3 ).
    CREATE OBJECT t2->zlnt_view_ownkeys_b0e8086400eb.
    t2->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isUnique` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyFields` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t2->zlnt_json_ownkeys_70e5fd461788.
    t2->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |isUnique|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |type|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |keyFields|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |name|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    t1 = t2.
    DATA(t40) = VALUE abap_bool( ).
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_shape_01ff58f8.
    DATA(t43) = me->parsed_xml.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = t42.
    IF t46 IS INITIAL.
      t45 = abap_true.
    ENDIF.
    IF t45 = abap_true.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      t44 = t47.
    ELSE.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t49 TYPE REF TO zcl_lnt_shape_01ff58f8.
      DATA(t50) = t42.
      t49 = t50.
      t48 = t49->accessmode.
      t44 = t48.
    ENDIF.
    t41 = t44.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t51.
    DATA(t52) = abap_true.
    IF t52 = abap_true.
      DATA(t53) = |S|.
      DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t54->has = abap_true.
      t54->value = t53.
      t51 = t54.
    ELSE.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      t51 = t55.
    ENDIF.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    IF t41 IS BOUND.
      t56 = t41->has.
    ENDIF.
    IF t51 IS BOUND.
      t57 = t51->has.
    ENDIF.
    IF t56 = t57.
      IF t56 = abap_false.
        t40 = abap_true.
      ELSEIF t41->value = t51->value.
        t40 = abap_true.
      ENDIF.
    ENDIF.
    IF t40 = abap_true.
      DATA(t58) = t1.
      DATA(t59) = |SORTED|.
      t58->zlnt_view_write_s_5da6216157cf( p0 = t59 ).
    ELSE.
      DATA(t60) = VALUE abap_bool( ).
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_shape_01ff58f8.
      DATA(t63) = me->parsed_xml.
      t62 = t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = t62.
      IF t66 IS INITIAL.
        t65 = abap_true.
      ENDIF.
      IF t65 = abap_true.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        t64 = t67.
      ELSE.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t69 TYPE REF TO zcl_lnt_shape_01ff58f8.
        DATA(t70) = t62.
        t69 = t70.
        t68 = t69->accessmode.
        t64 = t68.
      ENDIF.
      t61 = t64.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t71.
      DATA(t72) = abap_true.
      IF t72 = abap_true.
        DATA(t73) = |H|.
        DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t74->has = abap_true.
        t74->value = t73.
        t71 = t74.
      ELSE.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        t71 = t75.
      ENDIF.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = VALUE abap_bool( ).
      IF t61 IS BOUND.
        t76 = t61->has.
      ENDIF.
      IF t71 IS BOUND.
        t77 = t71->has.
      ENDIF.
      IF t76 = t77.
        IF t76 = abap_false.
          t60 = abap_true.
        ELSEIF t61->value = t71->value.
          t60 = abap_true.
        ENDIF.
      ENDIF.
      IF t60 = abap_true.
        DATA(t78) = t1.
        DATA(t79) = |HASHED|.
        t78->zlnt_view_write_s_5da6216157cf( p0 = t79 ).
      ENDIF.
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    DATA t83 TYPE REF TO zcl_lnt_shape_01ff58f8.
    DATA(t84) = me->parsed_xml.
    t83 = t84.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t85.
    DATA(t86) = VALUE abap_bool( ).
    DATA(t87) = t83.
    IF t87 IS INITIAL.
      t86 = abap_true.
    ENDIF.
    IF t86 = abap_true.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t88.
      t85 = t88.
    ELSE.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t90 TYPE REF TO zcl_lnt_shape_01ff58f8.
      DATA(t91) = t83.
      t90 = t91.
      t89 = t90->dd42v.
      t85 = t89.
    ENDIF.
    t82 = t85.
    t81 = t82.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    DATA t93 TYPE abap_bool.
    DATA(t94) = t81.
    t93 = xsdbool( t94 IS BOUND ).
    IF t93 = abap_true.
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t96) = t81.
      t95 = t96.
      t92 = t95.
    ELSE.
      DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t97.
      t92 = t97.
    ENDIF.
    t80 = t92.
    DATA t98 TYPE REF TO zcl_lnt_shape_93ca86e8.
    CLEAR t98.
    DATA t99 TYPE REF TO object.
    CLEAR t99.
    DATA(t100) = VALUE i( ).
    DO.
      t80->load( ).
      IF t100 >= lines( t80->items ).
        EXIT.
      ENDIF.
      CLEAR t99.
      READ TABLE t80->items INDEX t100 + 1 INTO t99.
      t100 = t100 + 1.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      CLEAR t98.
      IF t99 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t101 ?= t99.
        DATA t102 TYPE REF TO object.
        t102 = t101->as_ref( ).
        t98 ?= t102.
      ELSE.
        t98 ?= t99.
      ENDIF.
      DATA(t103) = VALUE abap_bool( ).
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t105) = t98.
      t104 = t105->keyname.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      DATA(t107) = abap_true.
      IF t107 = abap_true.
        DATA(t108) = ||.
        DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t109->has = abap_true.
        t109->value = t108.
        t106 = t109.
      ELSE.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t110.
        t106 = t110.
      ENDIF.
      DATA(t111) = VALUE abap_bool( ).
      DATA(t112) = VALUE abap_bool( ).
      IF t104 IS BOUND.
        t111 = t104->has.
      ENDIF.
      IF t106 IS BOUND.
        t112 = t106->has.
      ENDIF.
      IF t111 = t112.
        IF t111 = abap_false.
          t103 = abap_true.
        ELSEIF t104->value = t106->value.
          t103 = abap_true.
        ENDIF.
      ENDIF.
      IF t103 = abap_true.
        DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t114) = t1.
        t113 = t114->zlnt_view_read_sr_e0192e283129( ).
        DATA t115 TYPE string.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t117) = t98.
        t116 = t117->keyfield.
        t115 = t116->value.
        t113->load( ).
        APPEND t115 TO t113->items.
        t113->save( ).
      ENDIF.
    ENDDO.
    DATA(t118) = VALUE abap_bool( ).
    DATA(t119) = VALUE abap_bool( ).
    DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t120.
    DATA t121 TYPE REF TO zcl_lnt_shape_01ff58f8.
    DATA(t122) = me->parsed_xml.
    t121 = t122.
    DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t123.
    DATA(t124) = VALUE abap_bool( ).
    DATA(t125) = t121.
    IF t125 IS INITIAL.
      t124 = abap_true.
    ENDIF.
    IF t124 = abap_true.
      DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t126.
      t123 = t126.
    ELSE.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t128 TYPE REF TO zcl_lnt_shape_01ff58f8.
      DATA(t129) = t121.
      t128 = t129.
      t127 = t128->keydef.
      t123 = t127.
    ENDIF.
    t120 = t123.
    DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t130.
    DATA(t131) = abap_true.
    IF t131 = abap_true.
      DATA(t132) = |T|.
      DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t133->has = abap_true.
      t133->value = t132.
      t130 = t133.
    ELSE.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      t130 = t134.
    ENDIF.
    DATA(t135) = VALUE abap_bool( ).
    DATA(t136) = VALUE abap_bool( ).
    IF t120 IS BOUND.
      t135 = t120->has.
    ENDIF.
    IF t130 IS BOUND.
      t136 = t130->has.
    ENDIF.
    IF t135 = t136.
      IF t135 = abap_false.
        t119 = abap_true.
      ELSEIF t120->value = t130->value.
        t119 = abap_true.
      ENDIF.
    ENDIF.
    t118 = t119.
    IF t119 = abap_true.
      DATA t137 TYPE abap_bool.
      DATA t138 TYPE i.
      DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t140) = t1.
      t139 = t140->zlnt_view_read_sr_e0192e283129( ).
      t139->load( ).
      t138 = lines( t139->items ).
      DATA(t141) = 0.
      t137 = xsdbool( t138 = t141 ).
      t118 = t137.
    ENDIF.
    IF t118 = abap_true.
      DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t143) = t1.
      t142 = t143->zlnt_view_read_sr_e0192e283129( ).
      DATA(t144) = |table_line|.
      t142->load( ).
      APPEND t144 TO t142->items.
      t142->save( ).
    ENDIF.
    DATA(t145) = t1.
    result = t145.

  ENDMETHOD.

  METHOD build_table_options.
    DATA t1 TYPE string.
    DATA(t2) = |USER|.
    t1 = t2.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_shape_01ff58f8.
    DATA(t6) = me->parsed_xml.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t5.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t12 TYPE REF TO zcl_lnt_shape_01ff58f8.
      DATA(t13) = t5.
      t12 = t13.
      t11 = t12->keydef.
      t7 = t11.
    ENDIF.
    t4 = t7.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA(t16) = |D|.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t16.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t14 = t18.
    ENDIF.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    IF t4 IS BOUND.
      t19 = t4->has.
    ENDIF.
    IF t14 IS BOUND.
      t20 = t14->has.
    ENDIF.
    IF t19 = t20.
      IF t19 = abap_false.
        t3 = abap_true.
      ELSEIF t4->value = t14->value.
        t3 = abap_true.
      ENDIF.
    ENDIF.
    IF t3 = abap_true.
      DATA(t21) = |DEFAULT|.
      t1 = t21.
    ENDIF.
    DATA t22 TYPE REF TO zcl_lnt_itable_options.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_itable_options.
    CLEAR t23.
    DATA t24 TYPE abap_bool.
    DATA(t25) = abap_false.
    t24 = t25.
    DATA t26 TYPE string.
    DATA(t27) = t1.
    t26 = t27.
    DATA t28 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t28.
    DATA t29 TYPE REF TO zcl_lnt_itable_key.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = CAST zcl_lnt_itable_key( me->build_primary_key( ) ).
      t29 = t31.
    ELSE.
      DATA t32 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t32.
      t29 = t32.
    ENDIF.
    t28 = t29.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t34.
    DATA(t35) = abap_true.
    IF t35 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t36.
      t34 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t37.
      t34 = t37.
    ENDIF.
    t33 = t34.
    t23 = NEW zcl_lnt_itable_options( i_with_header = t24 i_key_type = t26 i_primary_key = t28 i_secondary = t33 ).
    CREATE OBJECT t23->zlnt_view_ownkeys_b0e8086400eb.
    t23->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `primaryKey` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `secondary` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t23->zlnt_json_ownkeys_70e5fd461788.
    t23->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |withHeader|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = |keyType|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |primaryKey|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |secondary|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    t22 = t23.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    DATA t53 TYPE REF TO zcl_lnt_shape_01ff58f8.
    DATA(t54) = me->parsed_xml.
    t53 = t54.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t55.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = t53.
    IF t57 IS INITIAL.
      t56 = abap_true.
    ENDIF.
    IF t56 = abap_true.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t58.
      t55 = t58.
    ELSE.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t60 TYPE REF TO zcl_lnt_shape_01ff58f8.
      DATA(t61) = t53.
      t60 = t61.
      t59 = t60->dd43v.
      t55 = t59.
    ENDIF.
    t52 = t55.
    t51 = t52.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t62.
    DATA t63 TYPE abap_bool.
    DATA(t64) = t51.
    t63 = xsdbool( t64 IS BOUND ).
    IF t63 = abap_true.
      DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t66) = t51.
      t65 = t66.
      t62 = t65.
    ELSE.
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t67.
      t62 = t67.
    ENDIF.
    t50 = t62.
    DATA t68 TYPE REF TO zcl_lnt_shape_96faa29e.
    CLEAR t68.
    DATA t69 TYPE REF TO object.
    CLEAR t69.
    DATA(t70) = VALUE i( ).
    DO.
      t50->load( ).
      IF t70 >= lines( t50->items ).
        EXIT.
      ENDIF.
      CLEAR t69.
      READ TABLE t50->items INDEX t70 + 1 INTO t69.
      t70 = t70 + 1.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      CLEAR t68.
      IF t69 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t71 ?= t69.
        DATA t72 TYPE REF TO object.
        t72 = t71->as_ref( ).
        t68 ?= t72.
      ELSE.
        t68 ?= t69.
      ENDIF.
      DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t74.
      t73 = t74.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t75.
      DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t76.
      DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_shape_01ff58f8.
      DATA(t79) = me->parsed_xml.
      t78 = t79.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t78.
      IF t82 IS INITIAL.
        t81 = abap_true.
      ENDIF.
      IF t81 = abap_true.
        DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t83.
        t80 = t83.
      ELSE.
        DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t85 TYPE REF TO zcl_lnt_shape_01ff58f8.
        DATA(t86) = t78.
        t85 = t86.
        t84 = t85->dd42v.
        t80 = t84.
      ENDIF.
      t77 = t80.
      t76 = t77.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t87.
      DATA t88 TYPE abap_bool.
      DATA(t89) = t76.
      t88 = xsdbool( t89 IS BOUND ).
      IF t88 = abap_true.
        DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t91) = t76.
        t90 = t91.
        t87 = t90.
      ELSE.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t92.
        t87 = t92.
      ENDIF.
      t75 = t87.
      DATA t93 TYPE REF TO zcl_lnt_shape_93ca86e8.
      CLEAR t93.
      DATA t94 TYPE REF TO object.
      CLEAR t94.
      DATA(t95) = VALUE i( ).
      DO.
        t75->load( ).
        IF t95 >= lines( t75->items ).
          EXIT.
        ENDIF.
        CLEAR t94.
        READ TABLE t75->items INDEX t95 + 1 INTO t94.
        t95 = t95 + 1.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        CLEAR t93.
        IF t94 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t96 ?= t94.
          DATA t97 TYPE REF TO object.
          t97 = t96->as_ref( ).
          t93 ?= t97.
        ELSE.
          t93 ?= t94.
        ENDIF.
        DATA(t98) = VALUE abap_bool( ).
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t100) = t93.
        t99 = t100->keyname.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t102) = t68.
        t101 = t102->keyname.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE abap_bool( ).
        IF t99 IS BOUND.
          t103 = t99->has.
        ENDIF.
        IF t101 IS BOUND.
          t104 = t101->has.
        ENDIF.
        IF t103 = t104.
          IF t103 = abap_false.
            t98 = abap_true.
          ELSEIF t99->value = t101->value.
            t98 = abap_true.
          ENDIF.
        ENDIF.
        IF t98 = abap_true.
          DATA(t105) = t73.
          DATA t106 TYPE string.
          DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t108) = t93.
          t107 = t108->keyfield.
          t106 = t107->value.
          t105->load( ).
          APPEND t106 TO t105->items.
          t105->save( ).
        ENDIF.
      ENDDO.
      DATA t109 TYPE string.
      DATA(t110) = |STANDARD|.
      t109 = t110.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t113) = t68.
      t112 = t113->accessmode.
      t111 = t112.
      DATA(t114) = VALUE abap_bool( ).
      DATA(t115) = t111.
      DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t116.
      DATA(t117) = abap_true.
      IF t117 = abap_true.
        DATA(t118) = |S|.
        DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t119->has = abap_true.
        t119->value = t118.
        t116 = t119.
      ELSE.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        t116 = t120.
      ENDIF.
      DATA(t121) = VALUE abap_bool( ).
      DATA(t122) = VALUE abap_bool( ).
      IF t115 IS BOUND.
        t121 = t115->has.
      ENDIF.
      IF t116 IS BOUND.
        t122 = t116->has.
      ENDIF.
      IF t121 = t122.
        IF t121 = abap_false.
          t114 = abap_true.
        ELSEIF t115->value = t116->value.
          t114 = abap_true.
        ENDIF.
      ENDIF.
      IF t114 = abap_true.
        DATA(t123) = |SORTED|.
        t109 = t123.
      ELSE.
        DATA(t124) = VALUE abap_bool( ).
        DATA(t125) = t111.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        DATA(t127) = abap_true.
        IF t127 = abap_true.
          DATA(t128) = |H|.
          DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t129->has = abap_true.
          t129->value = t128.
          t126 = t129.
        ELSE.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          t126 = t130.
        ENDIF.
        DATA(t131) = VALUE abap_bool( ).
        DATA(t132) = VALUE abap_bool( ).
        IF t125 IS BOUND.
          t131 = t125->has.
        ENDIF.
        IF t126 IS BOUND.
          t132 = t126->has.
        ENDIF.
        IF t131 = t132.
          IF t131 = abap_false.
            t124 = abap_true.
          ELSEIF t125->value = t126->value.
            t124 = abap_true.
          ENDIF.
        ENDIF.
        IF t124 = abap_true.
          DATA(t133) = |HASHED|.
          t109 = t133.
        ELSE.
        ENDIF.
      ENDIF.
      DATA t134 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t137) = t22.
      t136 = t137->zlnt_view_read_sr_f853e12e05a7( ).
      t135 = t136.
      DATA t138 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t138.
      DATA(t139) = VALUE abap_bool( ).
      DATA(t140) = t135.
      IF t140 IS INITIAL.
        t139 = abap_true.
      ENDIF.
      IF t139 = abap_true.
        DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t141.
        t138 = t141.
      ELSE.
        DATA(t142) = VALUE f( ).
        DATA(t143) = VALUE i( ).
        DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t145) = t135.
        t144 = t145.
        DATA t146 TYPE REF TO zcl_lnt_itable_key.
        DATA t147 TYPE string.
        DATA t148 TYPE string.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t150) = t68.
        t149 = t150->keyname.
        t148 = t149->value.
        t147 = t148.
        DATA t151 TYPE string.
        DATA(t152) = t109.
        t151 = t152.
        DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t154) = t73.
        t153 = t154.
        DATA t155 TYPE abap_bool.
        DATA t156 TYPE abap_bool.
        DATA(t157) = t68.
        t156 = t157->unique.
        t155 = t156.
        t146 = NEW zcl_lnt_itable_key( i_name = t147 i_type_9913 = t151 i_key_fields = t153 i_is_unique = t155 ).
        CREATE OBJECT t146->zlnt_view_ownkeys_b0e8086400eb.
        t146->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t146->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t146->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t158 ).
        ENDIF.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t146->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t146->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t159 ).
        ENDIF.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t146->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t146->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyFields` p1 = t160 ).
        ENDIF.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t146->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t146->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isUnique` p1 = t161 ).
        ENDIF.
        CREATE OBJECT t146->zlnt_json_ownkeys_70e5fd461788.
        t146->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t162) = |name|.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t146->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t146->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
        ENDIF.
        DATA(t164) = |type|.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t146->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t146->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
        ENDIF.
        DATA(t166) = |keyFields|.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t146->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t146->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
        ENDIF.
        DATA(t168) = |isUnique|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t146->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t146->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        ENDIF.
        t144->load( ).
        APPEND t146 TO t144->items.
        t143 = lines( t144->items ).
        t144->save( ).
        t142 = t143.
        DATA(t170) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t170->has = abap_true.
        t170->value = t142.
        t138 = t170.
      ENDIF.
      t134 = t138.
    ENDDO.
    DATA(t171) = t22.
    result = t171.

  ENDMETHOD.

  METHOD pr_ty_in_sr_ob_tb_ty_ts_tb_typ.
    DATA(t1) = i_reg_f149.
    me->parse_xml( ).
    DATA t2 TYPE REF TO zcl_lnt_ddic.
    DATA t3 TYPE REF TO zcl_lnt_ddic.
    DATA(t4) = t1.
    t3 = NEW zcl_lnt_ddic( i_reg_f149 = t4 ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_itable_options.
    DATA(t9) = CAST zcl_lnt_itable_options( me->build_table_options( ) ).
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_shape_01ff58f8.
    DATA(t12) = me->parsed_xml.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t17.
      DATA(t18) = |Table Type, parser error|.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA t21 TYPE string.
        DATA t22 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t23) = me.
        t22 = t23.
        DATA t24 TYPE string.
        DATA(t25) = t22.
        t24 = t25->name.
        t21 = t24.
        DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t26->has = abap_true.
        t26->value = t21.
        t19 = t26.
      ELSE.
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t27.
        t19 = t27.
      ENDIF.
      t17 = NEW zcl_lnt_unknown_type( i_error = t18 i_qualified_name = t19 ).
      t7 = t17.
    ELSE.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t30 TYPE REF TO zcl_lnt_shape_01ff58f8.
      DATA(t31) = me->parsed_xml.
      t30 = t31.
      t29 = t30->rowkind.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA(t33) = abap_true.
      IF t33 = abap_true.
        DATA(t34) = |S|.
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t34.
        t32 = t35.
      ELSE.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        t32 = t36.
      ENDIF.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      IF t29 IS BOUND.
        t37 = t29->has.
      ENDIF.
      IF t32 IS BOUND.
        t38 = t32->has.
      ENDIF.
      IF t37 = t38.
        IF t37 = abap_false.
          t28 = abap_true.
        ELSEIF t29->value = t32->value.
          t28 = abap_true.
        ENDIF.
      ENDIF.
      IF t28 = abap_true.
        DATA t39 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t39.
        DATA t40 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_ddic.
        DATA(t42) = t2.
        t41 = t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t45 TYPE REF TO zcl_lnt_shape_01ff58f8.
        DATA(t46) = me->parsed_xml.
        t45 = t46.
        t44 = t45->rowtype.
        t43 = t44.
        DATA t47 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t47.
        DATA(t48) = VALUE abap_bool( ).
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t50) = t43.
        t49 = t50.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        t51 = t52.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = t49.
        IF t54 IS INITIAL.
          t53 = abap_true.
        ELSEIF t54->has = abap_false.
          t53 = abap_true.
        ENDIF.
        t48 = t53.
        IF t48 = abap_true.
          DATA t55 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t56 TYPE REF TO zcl_lnt_abstract_type.
          DATA t57 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t58) = |undefined, lookupTableOrView|.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          t57 = NEW zcl_lnt_unknown_type( i_error = t58 i_qualified_name = t59 ).
          t56 = t57.
          DATA t60 TYPE REF TO zif_lnt_object.
          DATA t61 TYPE REF TO zif_lnt_object.
          CLEAR t61.
          t60 = t61.
          t55 = NEW zcl_lnt_ilookup_result( i_type_9913 = t56 i_object_19cd = t60 ).
          CREATE OBJECT t55->zlnt_view_ownkeys_b0e8086400eb.
          t55->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t62.
          IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t62 ).
          ENDIF.
          CREATE OBJECT t55->zlnt_json_ownkeys_70e5fd461788.
          t55->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t63) = |type|.
          DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t64.
          IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
          ENDIF.
          t47 = t55.
        ELSE.
          DATA t65 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t65.
          DATA t66 TYPE REF TO zcl_lnt_table.
          CLEAR t66.
          DATA t67 TYPE REF TO zcl_lnt_table.
          CLEAR t67.
          DATA t68 TYPE REF TO zif_lnt_object.
          CLEAR t68.
          DATA t69 TYPE REF TO zif_lnt_registry.
          DATA(t70) = t41.
          t69 = t70->reg.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          DATA(t72) = abap_true.
          IF t72 = abap_true.
            DATA(t73) = |TABL|.
            DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t74->has = abap_true.
            t74->value = t73.
            t71 = t74.
          ELSE.
            DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t75.
            t71 = t75.
          ENDIF.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA(t77) = abap_true.
          IF t77 = abap_true.
            DATA t78 TYPE string.
            DATA(t79) = t43.
            t78 = t79->value.
            DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t80->has = abap_true.
            t80->value = t78.
            t76 = t80.
          ELSE.
            DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t81.
            t76 = t81.
          ENDIF.
          t68 = t69->get_object( i_type_9913 = t71 i_name = t76 ).
          DATA t82 TYPE REF TO object.
          t82 = t68.
          t67 ?= t82.
          t66 = t67.
          DATA t83 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t83.
          DATA t84 TYPE abap_bool.
          DATA(t85) = t66.
          t84 = xsdbool( t85 IS BOUND ).
          IF t84 = abap_true.
            DATA t86 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t87 TYPE REF TO zcl_lnt_abstract_type.
            DATA t88 TYPE REF TO zcl_lnt_abstract_type.
            DATA t89 TYPE REF TO zcl_lnt_table.
            DATA(t90) = t66.
            t89 = t90.
            DATA t91 TYPE REF TO zif_lnt_registry.
            DATA(t92) = t41.
            t91 = t92->reg.
            DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t93.
            DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t94.
            t88 = t89->parse_type( i_reg_f149 = t91 i_data_element = t93 i_description = t94 ).
            t87 = t88.
            DATA t95 TYPE REF TO zif_lnt_object.
            DATA t96 TYPE REF TO zcl_lnt_table.
            DATA(t97) = t66.
            t96 = t97.
            t95 = t96.
            t86 = NEW zcl_lnt_ilookup_result( i_type_9913 = t87 i_object_19cd = t95 ).
            CREATE OBJECT t86->zlnt_view_ownkeys_b0e8086400eb.
            t86->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t98.
            IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t98 ).
            ENDIF.
            DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t99.
            IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t99 ).
            ENDIF.
            CREATE OBJECT t86->zlnt_json_ownkeys_70e5fd461788.
            t86->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t100) = |type|.
            DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t101.
            IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
            ENDIF.
            DATA(t102) = |object|.
            DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t103.
            IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
            ENDIF.
            t83 = t86.
          ELSE.
            DATA t104 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t104.
            DATA t105 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t105.
            DATA t106 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t106.
            DATA(t107) = t41.
            DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t108.
            DATA(t109) = abap_true.
            IF t109 = abap_true.
              DATA t110 TYPE string.
              DATA(t111) = t43.
              t110 = t111->value.
              DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t112->has = abap_true.
              t112->value = t110.
              t108 = t112.
            ELSE.
              DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t113.
              t108 = t113.
            ENDIF.
            t106 = t107->lookup_ddls( i_name = t108 ).
            t105 = t106.
            DATA t114 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t114.
            DATA t115 TYPE abap_bool.
            DATA(t116) = t105.
            t115 = xsdbool( t116 IS BOUND ).
            IF t115 = abap_true.
              DATA t117 TYPE REF TO zcl_lnt_ilookup_result.
              DATA(t118) = t105.
              t117 = t118.
              t114 = t117.
            ELSE.
              DATA t119 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t119.
              DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t120.
              DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t121.
              DATA(t122) = abap_true.
              IF t122 = abap_true.
                DATA t123 TYPE string.
                DATA(t124) = t43.
                t123 = t124->value.
                DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t125->has = abap_true.
                t125->value = t123.
                t121 = t125.
              ELSE.
                DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t126.
                t121 = t126.
              ENDIF.
              t120 = t121.
              DATA t127 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t127.
              DATA(t128) = VALUE abap_bool( ).
              DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t130) = t120.
              t129 = t130.
              DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t132.
              t131 = t132.
              DATA(t133) = VALUE abap_bool( ).
              DATA(t134) = t129.
              IF t134 IS INITIAL.
                t133 = abap_true.
              ELSEIF t134->has = abap_false.
                t133 = abap_true.
              ENDIF.
              t128 = t133.
              IF t128 = abap_true.
                DATA t135 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t136 TYPE REF TO zcl_lnt_abstract_type.
                DATA t137 TYPE REF TO zcl_lnt_unknown_type.
                DATA(t138) = |undefined, lookupView|.
                DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t139.
                t137 = NEW zcl_lnt_unknown_type( i_error = t138 i_qualified_name = t139 ).
                t136 = t137.
                DATA t140 TYPE REF TO zif_lnt_object.
                DATA t141 TYPE REF TO zif_lnt_object.
                CLEAR t141.
                t140 = t141.
                t135 = NEW zcl_lnt_ilookup_result( i_type_9913 = t136 i_object_19cd = t140 ).
                CREATE OBJECT t135->zlnt_view_ownkeys_b0e8086400eb.
                t135->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t142.
                IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t142 ).
                ENDIF.
                CREATE OBJECT t135->zlnt_json_ownkeys_70e5fd461788.
                t135->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t143) = |type|.
                DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t144.
                IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
                ENDIF.
                t127 = t135.
              ELSE.
                DATA t145 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t145.
                DATA t146 TYPE REF TO zcl_lnt_table.
                CLEAR t146.
                DATA t147 TYPE REF TO zcl_lnt_table.
                CLEAR t147.
                DATA t148 TYPE REF TO zif_lnt_object.
                CLEAR t148.
                DATA t149 TYPE REF TO zif_lnt_registry.
                DATA(t150) = t41.
                t149 = t150->reg.
                DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t151.
                DATA(t152) = abap_true.
                IF t152 = abap_true.
                  DATA(t153) = |VIEW|.
                  DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t154->has = abap_true.
                  t154->value = t153.
                  t151 = t154.
                ELSE.
                  DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t155.
                  t151 = t155.
                ENDIF.
                DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t156.
                DATA(t157) = abap_true.
                IF t157 = abap_true.
                  DATA t158 TYPE string.
                  DATA(t159) = t120.
                  t158 = t159->value.
                  DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t160->has = abap_true.
                  t160->value = t158.
                  t156 = t160.
                ELSE.
                  DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t161.
                  t156 = t161.
                ENDIF.
                t148 = t149->get_object( i_type_9913 = t151 i_name = t156 ).
                DATA t162 TYPE REF TO object.
                t162 = t148.
                t147 ?= t162.
                t146 = t147.
                DATA t163 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t163.
                DATA t164 TYPE abap_bool.
                DATA(t165) = t146.
                t164 = xsdbool( t165 IS BOUND ).
                IF t164 = abap_true.
                  DATA t166 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t167 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t168 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t169 TYPE REF TO zcl_lnt_table.
                  DATA(t170) = t146.
                  t169 = t170.
                  DATA t171 TYPE REF TO zif_lnt_registry.
                  DATA(t172) = t41.
                  t171 = t172->reg.
                  DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t173.
                  DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t174.
                  t168 = t169->parse_type( i_reg_f149 = t171 i_data_element = t173 i_description = t174 ).
                  t167 = t168.
                  DATA t175 TYPE REF TO zif_lnt_object.
                  DATA t176 TYPE REF TO zcl_lnt_table.
                  DATA(t177) = t146.
                  t176 = t177.
                  t175 = t176.
                  t166 = NEW zcl_lnt_ilookup_result( i_type_9913 = t167 i_object_19cd = t175 ).
                  CREATE OBJECT t166->zlnt_view_ownkeys_b0e8086400eb.
                  t166->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t178.
                  IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t178 ).
                  ENDIF.
                  DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t179.
                  IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t179 ).
                  ENDIF.
                  CREATE OBJECT t166->zlnt_json_ownkeys_70e5fd461788.
                  t166->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t180) = |type|.
                  DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t181.
                  IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
                  ENDIF.
                  DATA(t182) = |object|.
                  DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t183.
                  IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
                  ENDIF.
                  t163 = t166.
                ELSE.
                  DATA t184 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t184.
                  DATA t185 TYPE abap_bool.
                  DATA t186 TYPE REF TO zif_lnt_registry.
                  DATA(t187) = t41.
                  t186 = t187->reg.
                  DATA t188 TYPE string.
                  DATA(t189) = t120.
                  t188 = t189->value.
                  t185 = t186->in_error_namespace( i_name = t188 ).
                  IF t185 = abap_true.
                    DATA t190 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t191 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t192 TYPE REF TO zcl_lnt_unknown_type.
                    DATA t193 TYPE string.
                    DATA t194 TYPE string.
                    DATA(t195) = t120.
                    t194 = t195->value.
                    DATA(t196) = | not found, lookupView|.
                    DATA(t197) = strlen( t194 ).
                    t193 = |{ t194 }{ t196 }|.
                    DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t198.
                    t192 = NEW zcl_lnt_unknown_type( i_error = t193 i_qualified_name = t198 ).
                    t191 = t192.
                    DATA t199 TYPE REF TO zif_lnt_object.
                    DATA t200 TYPE REF TO zif_lnt_object.
                    CLEAR t200.
                    t199 = t200.
                    t190 = NEW zcl_lnt_ilookup_result( i_type_9913 = t191 i_object_19cd = t199 ).
                    CREATE OBJECT t190->zlnt_view_ownkeys_b0e8086400eb.
                    t190->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t201.
                    IF t190->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t190->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t201 ).
                    ENDIF.
                    CREATE OBJECT t190->zlnt_json_ownkeys_70e5fd461788.
                    t190->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t202) = |type|.
                    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t203.
                    IF t190->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t190->zlnt_json_ownkeys_70e5fd461788->put( p0 = t202 p1 = t203 ).
                    ENDIF.
                    t184 = t190.
                  ELSE.
                    DATA t204 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t204.
                    DATA t205 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t205.
                    DATA t206 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t206.
                    DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t207.
                    DATA(t208) = abap_true.
                    IF t208 = abap_true.
                      DATA t209 TYPE string.
                      DATA(t210) = t120.
                      t209 = t210->value.
                      DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t211->has = abap_true.
                      t211->value = t209.
                      t207 = t211.
                    ELSE.
                      DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t212.
                      t207 = t212.
                    ENDIF.
                    DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t213.
                    t206 = zcl_lnt_void_type=>get_db65( i_voided = t207 i_qualified_name = t213 ).
                    t205 = t206.
                    DATA t214 TYPE REF TO zif_lnt_object.
                    DATA t215 TYPE REF TO zif_lnt_object.
                    CLEAR t215.
                    t214 = t215.
                    t204 = NEW zcl_lnt_ilookup_result( i_type_9913 = t205 i_object_19cd = t214 ).
                    CREATE OBJECT t204->zlnt_view_ownkeys_b0e8086400eb.
                    t204->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t216.
                    IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t216 ).
                    ENDIF.
                    CREATE OBJECT t204->zlnt_json_ownkeys_70e5fd461788.
                    t204->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t217) = |type|.
                    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t218.
                    IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = t217 p1 = t218 ).
                    ENDIF.
                    t184 = t204.
                  ENDIF.
                  t163 = t184.
                ENDIF.
                t145 = t163.
                t127 = t145.
              ENDIF.
              t119 = t127.
              t114 = t119.
            ENDIF.
            t104 = t114.
            t83 = t104.
          ENDIF.
          t65 = t83.
          t47 = t65.
        ENDIF.
        t40 = t47.
        t39 = t40.
        DATA t219 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t219.
        DATA t220 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t221) = t39.
        t220 = t221->zlnt_view_read_sr_9be58e2d4893( ).
        DATA(t222) = t8.
        DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t223.
        DATA(t224) = abap_true.
        IF t224 = abap_true.
          DATA t225 TYPE string.
          DATA t226 TYPE REF TO zcl_lnt_abstract_object.
          DATA(t227) = me.
          t226 = t227.
          DATA t228 TYPE string.
          DATA(t229) = t226.
          t228 = t229->name.
          t225 = t228.
          DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t230->has = abap_true.
          t230->value = t225.
          t223 = t230.
        ELSE.
          DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t231.
          t223 = t231.
        ENDIF.
        DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t232.
        me->parse_xml( ).
        DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t233.
        DATA t234 TYPE REF TO zcl_lnt_shape_01ff58f8.
        DATA(t235) = me->parsed_xml.
        t234 = t235.
        DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t236.
        DATA(t237) = VALUE abap_bool( ).
        DATA(t238) = t234.
        IF t238 IS INITIAL.
          t237 = abap_true.
        ENDIF.
        IF t237 = abap_true.
          DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t239.
          t236 = t239.
        ELSE.
          DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t241 TYPE REF TO zcl_lnt_shape_01ff58f8.
          DATA(t242) = t234.
          t241 = t242.
          t240 = t241->ddtext_d4ae.
          t236 = t240.
        ENDIF.
        t233 = t236.
        t232 = t233.
        t219 = NEW zcl_lnt_ty_table_type( i_row_type = t220 i_options = t222 i_qualified_name = t223 i_description = t232 ).
        t7 = t219.
        DATA t243 TYPE abap_bool.
        DATA t244 TYPE REF TO zif_lnt_object.
        DATA(t245) = t39.
        t244 = t245->zlnt_view_read_sr_2de0200e6505( ).
        t243 = xsdbool( t244 IS BOUND ).
        IF t243 = abap_true.
          DATA(t246) = t5.
          DATA t247 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t247.
          DATA t248 TYPE REF TO zif_lnt_object.
          CLEAR t248.
          DATA t249 TYPE REF TO zif_lnt_object.
          CLEAR t249.
          DATA(t250) = abap_true.
          IF t250 = abap_true.
            DATA t251 TYPE REF TO zif_lnt_object.
            DATA t252 TYPE REF TO zif_lnt_object.
            DATA(t253) = t39.
            t252 = t253->zlnt_view_read_sr_2de0200e6505( ).
            t251 = t252.
            t249 = t251.
          ELSE.
            DATA t254 TYPE REF TO zif_lnt_object.
            CLEAR t254.
            t249 = t254.
          ENDIF.
          t248 = t249.
          DATA t255 TYPE REF TO zcl_lnt_abstract_token.
          DATA t256 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t256.
          t255 = t256.
          DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t258.
          t257 = t258.
          t247 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t248 i_token = t255 i_filename = t257 ).
          CREATE OBJECT t247->zlnt_view_ownkeys_b0e8086400eb.
          t247->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t259.
          IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t259 ).
          ENDIF.
          CREATE OBJECT t247->zlnt_json_ownkeys_70e5fd461788.
          t247->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t260) = |object|.
          DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t261.
          IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = t260 p1 = t261 ).
          ENDIF.
          t246->load( ).
          APPEND t247 TO t246->items.
          t246->save( ).
        ENDIF.
      ELSE.
        DATA(t262) = VALUE abap_bool( ).
        DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t264 TYPE REF TO zcl_lnt_shape_01ff58f8.
        DATA(t265) = me->parsed_xml.
        t264 = t265.
        t263 = t264->rowkind.
        DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t266.
        DATA(t267) = abap_true.
        IF t267 = abap_true.
          DATA(t268) = |E|.
          DATA(t269) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t269->has = abap_true.
          t269->value = t268.
          t266 = t269.
        ELSE.
          DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t270.
          t266 = t270.
        ENDIF.
        DATA(t271) = VALUE abap_bool( ).
        DATA(t272) = VALUE abap_bool( ).
        IF t263 IS BOUND.
          t271 = t263->has.
        ENDIF.
        IF t266 IS BOUND.
          t272 = t266->has.
        ENDIF.
        IF t271 = t272.
          IF t271 = abap_false.
            t262 = abap_true.
          ELSEIF t263->value = t266->value.
            t262 = abap_true.
          ENDIF.
        ENDIF.
        IF t262 = abap_true.
          DATA t273 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t273.
          DATA t274 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t274.
          DATA t275 TYPE REF TO zcl_lnt_ddic.
          DATA(t276) = t2.
          t275 = t276.
          DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t279 TYPE REF TO zcl_lnt_shape_01ff58f8.
          DATA(t280) = me->parsed_xml.
          t279 = t280.
          t278 = t279->rowtype.
          t277 = t278.
          DATA t281 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t281.
          DATA(t282) = VALUE abap_bool( ).
          DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t284) = t277.
          t283 = t284.
          DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t286.
          t285 = t286.
          DATA(t287) = VALUE abap_bool( ).
          DATA(t288) = t283.
          IF t288 IS INITIAL.
            t287 = abap_true.
          ELSEIF t288->has = abap_false.
            t287 = abap_true.
          ENDIF.
          t282 = t287.
          IF t282 = abap_true.
            DATA t289 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t290 TYPE REF TO zcl_lnt_abstract_type.
            DATA t291 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t292) = |undefined, lookupDataElement|.
            DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t293.
            t291 = NEW zcl_lnt_unknown_type( i_error = t292 i_qualified_name = t293 ).
            t290 = t291.
            DATA t294 TYPE REF TO zif_lnt_object.
            DATA t295 TYPE REF TO zif_lnt_object.
            CLEAR t295.
            t294 = t295.
            t289 = NEW zcl_lnt_ilookup_result( i_type_9913 = t290 i_object_19cd = t294 ).
            CREATE OBJECT t289->zlnt_view_ownkeys_b0e8086400eb.
            t289->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t296.
            IF t289->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t296 ).
            ENDIF.
            CREATE OBJECT t289->zlnt_json_ownkeys_70e5fd461788.
            t289->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t297) = |type|.
            DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t298.
            IF t289->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t297 p1 = t298 ).
            ENDIF.
            t281 = t289.
          ELSE.
            DATA t299 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t299.
            DATA t300 TYPE REF TO zcl_lnt_data_element.
            CLEAR t300.
            DATA t301 TYPE REF TO zcl_lnt_data_element.
            CLEAR t301.
            DATA t302 TYPE REF TO zif_lnt_object.
            CLEAR t302.
            DATA t303 TYPE REF TO zif_lnt_registry.
            DATA(t304) = t275.
            t303 = t304->reg.
            DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t305.
            DATA(t306) = abap_true.
            IF t306 = abap_true.
              DATA(t307) = |DTEL|.
              DATA(t308) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t308->has = abap_true.
              t308->value = t307.
              t305 = t308.
            ELSE.
              DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t309.
              t305 = t309.
            ENDIF.
            DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t310.
            DATA(t311) = abap_true.
            IF t311 = abap_true.
              DATA t312 TYPE string.
              DATA(t313) = t277.
              t312 = t313->value.
              DATA(t314) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t314->has = abap_true.
              t314->value = t312.
              t310 = t314.
            ELSE.
              DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t315.
              t310 = t315.
            ENDIF.
            t302 = t303->get_object( i_type_9913 = t305 i_name = t310 ).
            DATA t316 TYPE REF TO object.
            t316 = t302.
            t301 ?= t316.
            t300 = t301.
            DATA t317 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t317.
            DATA t318 TYPE abap_bool.
            DATA(t319) = t300.
            t318 = xsdbool( t319 IS BOUND ).
            IF t318 = abap_true.
              DATA t320 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t321 TYPE REF TO zcl_lnt_abstract_type.
              DATA t322 TYPE REF TO zcl_lnt_abstract_type.
              DATA t323 TYPE REF TO zcl_lnt_data_element.
              DATA(t324) = t300.
              t323 = t324.
              DATA t325 TYPE REF TO zif_lnt_registry.
              DATA(t326) = t275.
              t325 = t326->reg.
              DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t327.
              DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t328.
              t322 = t323->parse_type( i_reg_f149 = t325 i_data_element = t327 i_description = t328 ).
              t321 = t322.
              DATA t329 TYPE REF TO zif_lnt_object.
              DATA t330 TYPE REF TO zcl_lnt_data_element.
              DATA(t331) = t300.
              t330 = t331.
              t329 = t330.
              t320 = NEW zcl_lnt_ilookup_result( i_type_9913 = t321 i_object_19cd = t329 ).
              CREATE OBJECT t320->zlnt_view_ownkeys_b0e8086400eb.
              t320->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t332.
              IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t332 ).
              ENDIF.
              DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t333.
              IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t333 ).
              ENDIF.
              CREATE OBJECT t320->zlnt_json_ownkeys_70e5fd461788.
              t320->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t334) = |type|.
              DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t335.
              IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t334 p1 = t335 ).
              ENDIF.
              DATA(t336) = |object|.
              DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t337.
              IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t336 p1 = t337 ).
              ENDIF.
              t317 = t320.
            ELSE.
              DATA t338 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t338.
              DATA t339 TYPE abap_bool.
              DATA t340 TYPE REF TO zif_lnt_registry.
              DATA(t341) = t275.
              t340 = t341->reg.
              DATA t342 TYPE string.
              DATA(t343) = t277.
              t342 = t343->value.
              t339 = t340->in_error_namespace( i_name = t342 ).
              IF t339 = abap_true.
                DATA t344 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t345 TYPE REF TO zcl_lnt_abstract_type.
                DATA t346 TYPE REF TO zcl_lnt_unknown_type.
                DATA t347 TYPE string.
                DATA t348 TYPE string.
                DATA(t349) = t277.
                t348 = t349->value.
                DATA(t350) = | not found, lookupDataElement|.
                DATA(t351) = strlen( t348 ).
                t347 = |{ t348 }{ t350 }|.
                DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t352.
                t346 = NEW zcl_lnt_unknown_type( i_error = t347 i_qualified_name = t352 ).
                t345 = t346.
                DATA t353 TYPE REF TO zif_lnt_object.
                DATA t354 TYPE REF TO zif_lnt_object.
                CLEAR t354.
                t353 = t354.
                t344 = NEW zcl_lnt_ilookup_result( i_type_9913 = t345 i_object_19cd = t353 ).
                CREATE OBJECT t344->zlnt_view_ownkeys_b0e8086400eb.
                t344->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t355.
                IF t344->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t344->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t355 ).
                ENDIF.
                CREATE OBJECT t344->zlnt_json_ownkeys_70e5fd461788.
                t344->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t356) = |type|.
                DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t357.
                IF t344->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t344->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
                ENDIF.
                t338 = t344.
              ELSE.
                DATA t358 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t358.
                DATA t359 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t359.
                DATA t360 TYPE REF TO zcl_lnt_void_type.
                CLEAR t360.
                DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t361.
                DATA(t362) = abap_true.
                IF t362 = abap_true.
                  DATA t363 TYPE string.
                  DATA(t364) = t277.
                  t363 = t364->value.
                  DATA(t365) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t365->has = abap_true.
                  t365->value = t363.
                  t361 = t365.
                ELSE.
                  DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t366.
                  t361 = t366.
                ENDIF.
                DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t367.
                t360 = zcl_lnt_void_type=>get_db65( i_voided = t361 i_qualified_name = t367 ).
                t359 = t360.
                DATA t368 TYPE REF TO zif_lnt_object.
                DATA t369 TYPE REF TO zif_lnt_object.
                CLEAR t369.
                t368 = t369.
                t358 = NEW zcl_lnt_ilookup_result( i_type_9913 = t359 i_object_19cd = t368 ).
                CREATE OBJECT t358->zlnt_view_ownkeys_b0e8086400eb.
                t358->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t370.
                IF t358->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t358->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t370 ).
                ENDIF.
                CREATE OBJECT t358->zlnt_json_ownkeys_70e5fd461788.
                t358->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t371) = |type|.
                DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t372.
                IF t358->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t358->zlnt_json_ownkeys_70e5fd461788->put( p0 = t371 p1 = t372 ).
                ENDIF.
                t338 = t358.
              ENDIF.
              t317 = t338.
            ENDIF.
            t299 = t317.
            t281 = t299.
          ENDIF.
          t274 = t281.
          t273 = t274.
          DATA t373 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t373.
          DATA t374 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t375) = t273.
          t374 = t375->zlnt_view_read_sr_9be58e2d4893( ).
          DATA(t376) = t8.
          DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t377.
          DATA(t378) = abap_true.
          IF t378 = abap_true.
            DATA t379 TYPE string.
            DATA t380 TYPE REF TO zcl_lnt_abstract_object.
            DATA(t381) = me.
            t380 = t381.
            DATA t382 TYPE string.
            DATA(t383) = t380.
            t382 = t383->name.
            t379 = t382.
            DATA(t384) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t384->has = abap_true.
            t384->value = t379.
            t377 = t384.
          ELSE.
            DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t385.
            t377 = t385.
          ENDIF.
          DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t386.
          me->parse_xml( ).
          DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t387.
          DATA t388 TYPE REF TO zcl_lnt_shape_01ff58f8.
          DATA(t389) = me->parsed_xml.
          t388 = t389.
          DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t390.
          DATA(t391) = VALUE abap_bool( ).
          DATA(t392) = t388.
          IF t392 IS INITIAL.
            t391 = abap_true.
          ENDIF.
          IF t391 = abap_true.
            DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t393.
            t390 = t393.
          ELSE.
            DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t395 TYPE REF TO zcl_lnt_shape_01ff58f8.
            DATA(t396) = t388.
            t395 = t396.
            t394 = t395->ddtext_d4ae.
            t390 = t394.
          ENDIF.
          t387 = t390.
          t386 = t387.
          t373 = NEW zcl_lnt_ty_table_type( i_row_type = t374 i_options = t376 i_qualified_name = t377 i_description = t386 ).
          t7 = t373.
          DATA t397 TYPE abap_bool.
          DATA t398 TYPE REF TO zif_lnt_object.
          DATA(t399) = t273.
          t398 = t399->zlnt_view_read_sr_2de0200e6505( ).
          t397 = xsdbool( t398 IS BOUND ).
          IF t397 = abap_true.
            DATA(t400) = t5.
            DATA t401 TYPE REF TO zcl_lnt_iobject_and_token.
            CLEAR t401.
            DATA t402 TYPE REF TO zif_lnt_object.
            CLEAR t402.
            DATA t403 TYPE REF TO zif_lnt_object.
            CLEAR t403.
            DATA(t404) = abap_true.
            IF t404 = abap_true.
              DATA t405 TYPE REF TO zif_lnt_object.
              DATA t406 TYPE REF TO zif_lnt_object.
              DATA(t407) = t273.
              t406 = t407->zlnt_view_read_sr_2de0200e6505( ).
              t405 = t406.
              t403 = t405.
            ELSE.
              DATA t408 TYPE REF TO zif_lnt_object.
              CLEAR t408.
              t403 = t408.
            ENDIF.
            t402 = t403.
            DATA t409 TYPE REF TO zcl_lnt_abstract_token.
            DATA t410 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t410.
            t409 = t410.
            DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t412.
            t411 = t412.
            t401 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t402 i_token = t409 i_filename = t411 ).
            CREATE OBJECT t401->zlnt_view_ownkeys_b0e8086400eb.
            t401->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t413.
            IF t401->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t413 ).
            ENDIF.
            CREATE OBJECT t401->zlnt_json_ownkeys_70e5fd461788.
            t401->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t414) = |object|.
            DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t415.
            IF t401->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = t414 p1 = t415 ).
            ENDIF.
            t400->load( ).
            APPEND t401 TO t400->items.
            t400->save( ).
          ENDIF.
        ELSE.
          DATA(t416) = VALUE abap_bool( ).
          DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t418 TYPE REF TO zcl_lnt_shape_01ff58f8.
          DATA(t419) = me->parsed_xml.
          t418 = t419.
          t417 = t418->rowkind.
          DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t420.
          DATA(t421) = abap_true.
          IF t421 = abap_true.
            DATA(t422) = |L|.
            DATA(t423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t423->has = abap_true.
            t423->value = t422.
            t420 = t423.
          ELSE.
            DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t424.
            t420 = t424.
          ENDIF.
          DATA(t425) = VALUE abap_bool( ).
          DATA(t426) = VALUE abap_bool( ).
          IF t417 IS BOUND.
            t425 = t417->has.
          ENDIF.
          IF t420 IS BOUND.
            t426 = t420->has.
          ENDIF.
          IF t425 = t426.
            IF t425 = abap_false.
              t416 = abap_true.
            ELSEIF t417->value = t420->value.
              t416 = abap_true.
            ENDIF.
          ENDIF.
          IF t416 = abap_true.
            DATA t427 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t427.
            DATA t428 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t428.
            DATA t429 TYPE REF TO zcl_lnt_ddic.
            DATA(t430) = t2.
            t429 = t430.
            DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t433 TYPE REF TO zcl_lnt_shape_01ff58f8.
            DATA(t434) = me->parsed_xml.
            t433 = t434.
            t432 = t433->rowtype.
            t431 = t432.
            DATA t435 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t435.
            DATA(t436) = VALUE abap_bool( ).
            DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t438) = t431.
            t437 = t438.
            DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t440.
            t439 = t440.
            DATA(t441) = VALUE abap_bool( ).
            DATA(t442) = t437.
            IF t442 IS INITIAL.
              t441 = abap_true.
            ELSEIF t442->has = abap_false.
              t441 = abap_true.
            ENDIF.
            t436 = t441.
            IF t436 = abap_true.
              DATA t443 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t444 TYPE REF TO zcl_lnt_abstract_type.
              DATA t445 TYPE REF TO zcl_lnt_unknown_type.
              DATA(t446) = |undefined, lookupTableType|.
              DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t447.
              t445 = NEW zcl_lnt_unknown_type( i_error = t446 i_qualified_name = t447 ).
              t444 = t445.
              DATA t448 TYPE REF TO zif_lnt_object.
              DATA t449 TYPE REF TO zif_lnt_object.
              CLEAR t449.
              t448 = t449.
              t443 = NEW zcl_lnt_ilookup_result( i_type_9913 = t444 i_object_19cd = t448 ).
              CREATE OBJECT t443->zlnt_view_ownkeys_b0e8086400eb.
              t443->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t450.
              IF t443->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t443->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t450 ).
              ENDIF.
              CREATE OBJECT t443->zlnt_json_ownkeys_70e5fd461788.
              t443->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t451) = |type|.
              DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t452.
              IF t443->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t443->zlnt_json_ownkeys_70e5fd461788->put( p0 = t451 p1 = t452 ).
              ENDIF.
              t435 = t443.
            ELSE.
              DATA t453 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t453.
              DATA t454 TYPE REF TO zcl_lnt_ob_table_type.
              CLEAR t454.
              DATA t455 TYPE REF TO zcl_lnt_ob_table_type.
              CLEAR t455.
              DATA t456 TYPE REF TO zif_lnt_object.
              CLEAR t456.
              DATA t457 TYPE REF TO zif_lnt_registry.
              DATA(t458) = t429.
              t457 = t458->reg.
              DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t459.
              DATA(t460) = abap_true.
              IF t460 = abap_true.
                DATA(t461) = |TTYP|.
                DATA(t462) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t462->has = abap_true.
                t462->value = t461.
                t459 = t462.
              ELSE.
                DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t463.
                t459 = t463.
              ENDIF.
              DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t464.
              DATA(t465) = abap_true.
              IF t465 = abap_true.
                DATA t466 TYPE string.
                DATA(t467) = t431.
                t466 = t467->value.
                DATA(t468) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t468->has = abap_true.
                t468->value = t466.
                t464 = t468.
              ELSE.
                DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t469.
                t464 = t469.
              ENDIF.
              t456 = t457->get_object( i_type_9913 = t459 i_name = t464 ).
              DATA t470 TYPE REF TO object.
              t470 = t456.
              t455 ?= t470.
              t454 = t455.
              DATA t471 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t471.
              DATA t472 TYPE abap_bool.
              DATA(t473) = t454.
              t472 = xsdbool( t473 IS BOUND ).
              IF t472 = abap_true.
                DATA t474 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t475 TYPE REF TO zcl_lnt_abstract_type.
                DATA t476 TYPE REF TO zcl_lnt_abstract_type.
                DATA t477 TYPE REF TO zcl_lnt_ob_table_type.
                DATA(t478) = t454.
                t477 = t478.
                DATA t479 TYPE REF TO zif_lnt_registry.
                DATA(t480) = t429.
                t479 = t480->reg.
                DATA t481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t481.
                DATA t482 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t482.
                t476 = t477->parse_type( i_reg_f149 = t479 i_data_element = t481 i_description = t482 ).
                t475 = t476.
                DATA t483 TYPE REF TO zif_lnt_object.
                DATA t484 TYPE REF TO zcl_lnt_ob_table_type.
                DATA(t485) = t454.
                t484 = t485.
                t483 = t484.
                t474 = NEW zcl_lnt_ilookup_result( i_type_9913 = t475 i_object_19cd = t483 ).
                CREATE OBJECT t474->zlnt_view_ownkeys_b0e8086400eb.
                t474->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t486.
                IF t474->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t474->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t486 ).
                ENDIF.
                DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t487.
                IF t474->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t474->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t487 ).
                ENDIF.
                CREATE OBJECT t474->zlnt_json_ownkeys_70e5fd461788.
                t474->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t488) = |type|.
                DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t489.
                IF t474->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t474->zlnt_json_ownkeys_70e5fd461788->put( p0 = t488 p1 = t489 ).
                ENDIF.
                DATA(t490) = |object|.
                DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t491.
                IF t474->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t474->zlnt_json_ownkeys_70e5fd461788->put( p0 = t490 p1 = t491 ).
                ENDIF.
                t471 = t474.
              ELSE.
                DATA t492 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t492.
                DATA t493 TYPE abap_bool.
                DATA t494 TYPE REF TO zif_lnt_registry.
                DATA(t495) = t429.
                t494 = t495->reg.
                DATA t496 TYPE string.
                DATA(t497) = t431.
                t496 = t497->value.
                t493 = t494->in_error_namespace( i_name = t496 ).
                IF t493 = abap_true.
                  DATA t498 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t499 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t500 TYPE REF TO zcl_lnt_unknown_type.
                  DATA t501 TYPE string.
                  DATA t502 TYPE string.
                  DATA(t503) = t431.
                  t502 = t503->value.
                  DATA(t504) = | not found, lookupTableType|.
                  DATA(t505) = strlen( t502 ).
                  t501 = |{ t502 }{ t504 }|.
                  DATA t506 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t506.
                  t500 = NEW zcl_lnt_unknown_type( i_error = t501 i_qualified_name = t506 ).
                  t499 = t500.
                  DATA t507 TYPE REF TO zif_lnt_object.
                  DATA t508 TYPE REF TO zif_lnt_object.
                  CLEAR t508.
                  t507 = t508.
                  t498 = NEW zcl_lnt_ilookup_result( i_type_9913 = t499 i_object_19cd = t507 ).
                  CREATE OBJECT t498->zlnt_view_ownkeys_b0e8086400eb.
                  t498->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t509.
                  IF t498->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t498->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t509 ).
                  ENDIF.
                  CREATE OBJECT t498->zlnt_json_ownkeys_70e5fd461788.
                  t498->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t510) = |type|.
                  DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t511.
                  IF t498->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t498->zlnt_json_ownkeys_70e5fd461788->put( p0 = t510 p1 = t511 ).
                  ENDIF.
                  t492 = t498.
                ELSE.
                  DATA t512 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t512.
                  DATA t513 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t513.
                  DATA t514 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t514.
                  DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t515.
                  DATA(t516) = abap_true.
                  IF t516 = abap_true.
                    DATA t517 TYPE string.
                    DATA(t518) = t431.
                    t517 = t518->value.
                    DATA(t519) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t519->has = abap_true.
                    t519->value = t517.
                    t515 = t519.
                  ELSE.
                    DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t520.
                    t515 = t520.
                  ENDIF.
                  DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t521.
                  t514 = zcl_lnt_void_type=>get_db65( i_voided = t515 i_qualified_name = t521 ).
                  t513 = t514.
                  DATA t522 TYPE REF TO zif_lnt_object.
                  DATA t523 TYPE REF TO zif_lnt_object.
                  CLEAR t523.
                  t522 = t523.
                  t512 = NEW zcl_lnt_ilookup_result( i_type_9913 = t513 i_object_19cd = t522 ).
                  CREATE OBJECT t512->zlnt_view_ownkeys_b0e8086400eb.
                  t512->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t524.
                  IF t512->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t512->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t524 ).
                  ENDIF.
                  CREATE OBJECT t512->zlnt_json_ownkeys_70e5fd461788.
                  t512->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t525) = |type|.
                  DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t526.
                  IF t512->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t512->zlnt_json_ownkeys_70e5fd461788->put( p0 = t525 p1 = t526 ).
                  ENDIF.
                  t492 = t512.
                ENDIF.
                t471 = t492.
              ENDIF.
              t453 = t471.
              t435 = t453.
            ENDIF.
            t428 = t435.
            t427 = t428.
            DATA t527 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t527.
            DATA t528 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t529) = t427.
            t528 = t529->zlnt_view_read_sr_9be58e2d4893( ).
            DATA(t530) = t8.
            DATA t531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t531.
            DATA(t532) = abap_true.
            IF t532 = abap_true.
              DATA t533 TYPE string.
              DATA t534 TYPE REF TO zcl_lnt_abstract_object.
              DATA(t535) = me.
              t534 = t535.
              DATA t536 TYPE string.
              DATA(t537) = t534.
              t536 = t537->name.
              t533 = t536.
              DATA(t538) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t538->has = abap_true.
              t538->value = t533.
              t531 = t538.
            ELSE.
              DATA t539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t539.
              t531 = t539.
            ENDIF.
            DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t540.
            me->parse_xml( ).
            DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t541.
            DATA t542 TYPE REF TO zcl_lnt_shape_01ff58f8.
            DATA(t543) = me->parsed_xml.
            t542 = t543.
            DATA t544 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t544.
            DATA(t545) = VALUE abap_bool( ).
            DATA(t546) = t542.
            IF t546 IS INITIAL.
              t545 = abap_true.
            ENDIF.
            IF t545 = abap_true.
              DATA t547 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t547.
              t544 = t547.
            ELSE.
              DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t549 TYPE REF TO zcl_lnt_shape_01ff58f8.
              DATA(t550) = t542.
              t549 = t550.
              t548 = t549->ddtext_d4ae.
              t544 = t548.
            ENDIF.
            t541 = t544.
            t540 = t541.
            t527 = NEW zcl_lnt_ty_table_type( i_row_type = t528 i_options = t530 i_qualified_name = t531 i_description = t540 ).
            t7 = t527.
            DATA t551 TYPE abap_bool.
            DATA t552 TYPE REF TO zif_lnt_object.
            DATA(t553) = t427.
            t552 = t553->zlnt_view_read_sr_2de0200e6505( ).
            t551 = xsdbool( t552 IS BOUND ).
            IF t551 = abap_true.
              DATA(t554) = t5.
              DATA t555 TYPE REF TO zcl_lnt_iobject_and_token.
              CLEAR t555.
              DATA t556 TYPE REF TO zif_lnt_object.
              CLEAR t556.
              DATA t557 TYPE REF TO zif_lnt_object.
              CLEAR t557.
              DATA(t558) = abap_true.
              IF t558 = abap_true.
                DATA t559 TYPE REF TO zif_lnt_object.
                DATA t560 TYPE REF TO zif_lnt_object.
                DATA(t561) = t427.
                t560 = t561->zlnt_view_read_sr_2de0200e6505( ).
                t559 = t560.
                t557 = t559.
              ELSE.
                DATA t562 TYPE REF TO zif_lnt_object.
                CLEAR t562.
                t557 = t562.
              ENDIF.
              t556 = t557.
              DATA t563 TYPE REF TO zcl_lnt_abstract_token.
              DATA t564 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t564.
              t563 = t564.
              DATA t565 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t566.
              t565 = t566.
              t555 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t556 i_token = t563 i_filename = t565 ).
              CREATE OBJECT t555->zlnt_view_ownkeys_b0e8086400eb.
              t555->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t567.
              IF t555->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t555->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t567 ).
              ENDIF.
              CREATE OBJECT t555->zlnt_json_ownkeys_70e5fd461788.
              t555->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t568) = |object|.
              DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t569.
              IF t555->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t555->zlnt_json_ownkeys_70e5fd461788->put( p0 = t568 p1 = t569 ).
              ENDIF.
              t554->load( ).
              APPEND t555 TO t554->items.
              t554->save( ).
            ENDIF.
          ELSE.
            DATA(t570) = VALUE abap_bool( ).
            DATA(t571) = VALUE abap_bool( ).
            DATA t572 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t573 TYPE REF TO zcl_lnt_shape_01ff58f8.
            DATA(t574) = me->parsed_xml.
            t573 = t574.
            t572 = t573->rowkind.
            DATA t575 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t575.
            DATA(t576) = abap_true.
            IF t576 = abap_true.
              DATA(t577) = |R|.
              DATA(t578) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t578->has = abap_true.
              t578->value = t577.
              t575 = t578.
            ELSE.
              DATA t579 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t579.
              t575 = t579.
            ENDIF.
            DATA(t580) = VALUE abap_bool( ).
            DATA(t581) = VALUE abap_bool( ).
            IF t572 IS BOUND.
              t580 = t572->has.
            ENDIF.
            IF t575 IS BOUND.
              t581 = t575->has.
            ENDIF.
            IF t580 = t581.
              IF t580 = abap_false.
                t571 = abap_true.
              ELSEIF t572->value = t575->value.
                t571 = abap_true.
              ENDIF.
            ENDIF.
            t570 = t571.
            IF t571 = abap_true.
              DATA(t582) = VALUE abap_bool( ).
              DATA t583 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t584 TYPE REF TO zcl_lnt_shape_01ff58f8.
              DATA(t585) = me->parsed_xml.
              t584 = t585.
              t583 = t584->rowtype.
              DATA t586 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t586.
              DATA(t587) = abap_true.
              IF t587 = abap_true.
                DATA(t588) = |OBJECT|.
                DATA(t589) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t589->has = abap_true.
                t589->value = t588.
                t586 = t589.
              ELSE.
                DATA t590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t590.
                t586 = t590.
              ENDIF.
              DATA(t591) = VALUE abap_bool( ).
              DATA(t592) = VALUE abap_bool( ).
              IF t583 IS BOUND.
                t591 = t583->has.
              ENDIF.
              IF t586 IS BOUND.
                t592 = t586->has.
              ENDIF.
              IF t591 = t592.
                IF t591 = abap_false.
                  t582 = abap_true.
                ELSEIF t583->value = t586->value.
                  t582 = abap_true.
                ENDIF.
              ENDIF.
              t570 = t582.
            ENDIF.
            IF t570 = abap_true.
              DATA t593 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t593.
              DATA t594 TYPE REF TO zcl_lnt_gnrc_objct_rfrnc_typ.
              DATA t595 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t595.
              t594 = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t595 ).
              DATA(t596) = t8.
              DATA t597 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t597.
              DATA(t598) = abap_true.
              IF t598 = abap_true.
                DATA t599 TYPE string.
                DATA t600 TYPE REF TO zcl_lnt_abstract_object.
                DATA(t601) = me.
                t600 = t601.
                DATA t602 TYPE string.
                DATA(t603) = t600.
                t602 = t603->name.
                t599 = t602.
                DATA(t604) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t604->has = abap_true.
                t604->value = t599.
                t597 = t604.
              ELSE.
                DATA t605 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t605.
                t597 = t605.
              ENDIF.
              DATA t606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t606.
              me->parse_xml( ).
              DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t607.
              DATA t608 TYPE REF TO zcl_lnt_shape_01ff58f8.
              DATA(t609) = me->parsed_xml.
              t608 = t609.
              DATA t610 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t610.
              DATA(t611) = VALUE abap_bool( ).
              DATA(t612) = t608.
              IF t612 IS INITIAL.
                t611 = abap_true.
              ENDIF.
              IF t611 = abap_true.
                DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t613.
                t610 = t613.
              ELSE.
                DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t615 TYPE REF TO zcl_lnt_shape_01ff58f8.
                DATA(t616) = t608.
                t615 = t616.
                t614 = t615->ddtext_d4ae.
                t610 = t614.
              ENDIF.
              t607 = t610.
              t606 = t607.
              t593 = NEW zcl_lnt_ty_table_type( i_row_type = t594 i_options = t596 i_qualified_name = t597 i_description = t606 ).
              t7 = t593.
            ELSE.
              DATA(t617) = VALUE abap_bool( ).
              DATA(t618) = VALUE abap_bool( ).
              DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t620 TYPE REF TO zcl_lnt_shape_01ff58f8.
              DATA(t621) = me->parsed_xml.
              t620 = t621.
              t619 = t620->rowkind.
              DATA t622 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t622.
              DATA(t623) = abap_true.
              IF t623 = abap_true.
                DATA(t624) = |R|.
                DATA(t625) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t625->has = abap_true.
                t625->value = t624.
                t622 = t625.
              ELSE.
                DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t626.
                t622 = t626.
              ENDIF.
              DATA(t627) = VALUE abap_bool( ).
              DATA(t628) = VALUE abap_bool( ).
              IF t619 IS BOUND.
                t627 = t619->has.
              ENDIF.
              IF t622 IS BOUND.
                t628 = t622->has.
              ENDIF.
              IF t627 = t628.
                IF t627 = abap_false.
                  t618 = abap_true.
                ELSEIF t619->value = t622->value.
                  t618 = abap_true.
                ENDIF.
              ENDIF.
              t617 = t618.
              IF t618 = abap_true.
                DATA(t629) = VALUE abap_bool( ).
                DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t631 TYPE REF TO zcl_lnt_shape_01ff58f8.
                DATA(t632) = me->parsed_xml.
                t631 = t632.
                t630 = t631->rowtype.
                DATA t633 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t633.
                DATA(t634) = abap_true.
                IF t634 = abap_true.
                  DATA(t635) = |DATA|.
                  DATA(t636) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t636->has = abap_true.
                  t636->value = t635.
                  t633 = t636.
                ELSE.
                  DATA t637 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t637.
                  t633 = t637.
                ENDIF.
                DATA(t638) = VALUE abap_bool( ).
                DATA(t639) = VALUE abap_bool( ).
                IF t630 IS BOUND.
                  t638 = t630->has.
                ENDIF.
                IF t633 IS BOUND.
                  t639 = t633->has.
                ENDIF.
                IF t638 = t639.
                  IF t638 = abap_false.
                    t629 = abap_true.
                  ELSEIF t630->value = t633->value.
                    t629 = abap_true.
                  ENDIF.
                ENDIF.
                t617 = t629.
              ENDIF.
              IF t617 = abap_true.
                DATA t640 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t640.
                DATA t641 TYPE REF TO zcl_lnt_data_reference.
                DATA t642 TYPE REF TO zcl_lnt_data_type.
                DATA t643 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t643.
                t642 = NEW zcl_lnt_data_type( i_input_967e = t643 ).
                DATA t644 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t644.
                t641 = NEW zcl_lnt_data_reference( i_type_9913 = t642 i_qualified_name = t644 ).
                DATA(t645) = t8.
                DATA t646 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t646.
                DATA(t647) = abap_true.
                IF t647 = abap_true.
                  DATA t648 TYPE string.
                  DATA t649 TYPE REF TO zcl_lnt_abstract_object.
                  DATA(t650) = me.
                  t649 = t650.
                  DATA t651 TYPE string.
                  DATA(t652) = t649.
                  t651 = t652->name.
                  t648 = t651.
                  DATA(t653) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t653->has = abap_true.
                  t653->value = t648.
                  t646 = t653.
                ELSE.
                  DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t654.
                  t646 = t654.
                ENDIF.
                DATA t655 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t655.
                me->parse_xml( ).
                DATA t656 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t656.
                DATA t657 TYPE REF TO zcl_lnt_shape_01ff58f8.
                DATA(t658) = me->parsed_xml.
                t657 = t658.
                DATA t659 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t659.
                DATA(t660) = VALUE abap_bool( ).
                DATA(t661) = t657.
                IF t661 IS INITIAL.
                  t660 = abap_true.
                ENDIF.
                IF t660 = abap_true.
                  DATA t662 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t662.
                  t659 = t662.
                ELSE.
                  DATA t663 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t664 TYPE REF TO zcl_lnt_shape_01ff58f8.
                  DATA(t665) = t657.
                  t664 = t665.
                  t663 = t664->ddtext_d4ae.
                  t659 = t663.
                ENDIF.
                t656 = t659.
                t655 = t656.
                t640 = NEW zcl_lnt_ty_table_type( i_row_type = t641 i_options = t645 i_qualified_name = t646 i_description = t655 ).
                t7 = t640.
              ELSE.
                DATA(t666) = VALUE abap_bool( ).
                DATA(t667) = VALUE abap_bool( ).
                DATA t668 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t669 TYPE REF TO zcl_lnt_shape_01ff58f8.
                DATA(t670) = me->parsed_xml.
                t669 = t670.
                t668 = t669->rowkind.
                DATA t671 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t671.
                DATA(t672) = abap_true.
                IF t672 = abap_true.
                  DATA(t673) = |R|.
                  DATA(t674) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t674->has = abap_true.
                  t674->value = t673.
                  t671 = t674.
                ELSE.
                  DATA t675 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t675.
                  t671 = t675.
                ENDIF.
                DATA(t676) = VALUE abap_bool( ).
                DATA(t677) = VALUE abap_bool( ).
                IF t668 IS BOUND.
                  t676 = t668->has.
                ENDIF.
                IF t671 IS BOUND.
                  t677 = t671->has.
                ENDIF.
                IF t676 = t677.
                  IF t676 = abap_false.
                    t667 = abap_true.
                  ELSEIF t668->value = t671->value.
                    t667 = abap_true.
                  ENDIF.
                ENDIF.
                t666 = t667.
                IF t667 = abap_true.
                  DATA(t678) = VALUE abap_bool( ).
                  DATA t679 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t680 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t681 TYPE REF TO zcl_lnt_shape_01ff58f8.
                  DATA(t682) = me->parsed_xml.
                  t681 = t682.
                  t680 = t681->rowtype.
                  t679 = t680.
                  DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t684.
                  t683 = t684.
                  DATA(t685) = VALUE abap_bool( ).
                  DATA(t686) = VALUE abap_bool( ).
                  DATA(t687) = t679.
                  IF t687 IS INITIAL.
                    t686 = abap_true.
                  ELSEIF t687->has = abap_false.
                    t686 = abap_true.
                  ENDIF.
                  t685 = xsdbool( t686 = abap_false ).
                  t678 = t685.
                  t666 = t678.
                ENDIF.
                IF t666 = abap_true.
                  DATA t688 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t689 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA(t690) = t2.
                  DATA t691 TYPE string.
                  DATA t692 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t693 TYPE REF TO zcl_lnt_shape_01ff58f8.
                  DATA(t694) = me->parsed_xml.
                  t693 = t694.
                  t692 = t693->rowtype.
                  t691 = t692->value.
                  t689 = t690->lookup_object( i_name = t691 ).
                  t688 = t689.
                  DATA t695 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t695.
                  DATA t696 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t697) = t688.
                  t696 = t697->zlnt_view_read_sr_9be58e2d4893( ).
                  DATA(t698) = t8.
                  DATA t699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t699.
                  DATA(t700) = abap_true.
                  IF t700 = abap_true.
                    DATA t701 TYPE string.
                    DATA t702 TYPE REF TO zcl_lnt_abstract_object.
                    DATA(t703) = me.
                    t702 = t703.
                    DATA t704 TYPE string.
                    DATA(t705) = t702.
                    t704 = t705->name.
                    t701 = t704.
                    DATA(t706) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t706->has = abap_true.
                    t706->value = t701.
                    t699 = t706.
                  ELSE.
                    DATA t707 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t707.
                    t699 = t707.
                  ENDIF.
                  DATA t708 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t708.
                  me->parse_xml( ).
                  DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t709.
                  DATA t710 TYPE REF TO zcl_lnt_shape_01ff58f8.
                  DATA(t711) = me->parsed_xml.
                  t710 = t711.
                  DATA t712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t712.
                  DATA(t713) = VALUE abap_bool( ).
                  DATA(t714) = t710.
                  IF t714 IS INITIAL.
                    t713 = abap_true.
                  ENDIF.
                  IF t713 = abap_true.
                    DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t715.
                    t712 = t715.
                  ELSE.
                    DATA t716 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t717 TYPE REF TO zcl_lnt_shape_01ff58f8.
                    DATA(t718) = t710.
                    t717 = t718.
                    t716 = t717->ddtext_d4ae.
                    t712 = t716.
                  ENDIF.
                  t709 = t712.
                  t708 = t709.
                  t695 = NEW zcl_lnt_ty_table_type( i_row_type = t696 i_options = t698 i_qualified_name = t699 i_description = t708 ).
                  t7 = t695.
                  DATA t719 TYPE abap_bool.
                  DATA t720 TYPE REF TO zif_lnt_object.
                  DATA(t721) = t688.
                  t720 = t721->zlnt_view_read_sr_2de0200e6505( ).
                  t719 = xsdbool( t720 IS BOUND ).
                  IF t719 = abap_true.
                    DATA(t722) = t5.
                    DATA t723 TYPE REF TO zcl_lnt_iobject_and_token.
                    CLEAR t723.
                    DATA t724 TYPE REF TO zif_lnt_object.
                    CLEAR t724.
                    DATA t725 TYPE REF TO zif_lnt_object.
                    CLEAR t725.
                    DATA(t726) = abap_true.
                    IF t726 = abap_true.
                      DATA t727 TYPE REF TO zif_lnt_object.
                      DATA t728 TYPE REF TO zif_lnt_object.
                      DATA(t729) = t688.
                      t728 = t729->zlnt_view_read_sr_2de0200e6505( ).
                      t727 = t728.
                      t725 = t727.
                    ELSE.
                      DATA t730 TYPE REF TO zif_lnt_object.
                      CLEAR t730.
                      t725 = t730.
                    ENDIF.
                    t724 = t725.
                    DATA t731 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t732 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t732.
                    t731 = t732.
                    DATA t733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t734 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t734.
                    t733 = t734.
                    t723 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t724 i_token = t731 i_filename = t733 ).
                    CREATE OBJECT t723->zlnt_view_ownkeys_b0e8086400eb.
                    t723->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t735.
                    IF t723->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t723->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t735 ).
                    ENDIF.
                    CREATE OBJECT t723->zlnt_json_ownkeys_70e5fd461788.
                    t723->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t736) = |object|.
                    DATA t737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t737.
                    IF t723->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t723->zlnt_json_ownkeys_70e5fd461788->put( p0 = t736 p1 = t737 ).
                    ENDIF.
                    t722->load( ).
                    APPEND t723 TO t722->items.
                    t722->save( ).
                  ENDIF.
                ELSE.
                  DATA(t738) = VALUE abap_bool( ).
                  DATA t739 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t740 TYPE REF TO zcl_lnt_shape_01ff58f8.
                  DATA(t741) = me->parsed_xml.
                  t740 = t741.
                  t739 = t740->rowkind.
                  DATA t742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t742.
                  DATA(t743) = abap_true.
                  IF t743 = abap_true.
                    DATA(t744) = ||.
                    DATA(t745) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t745->has = abap_true.
                    t745->value = t744.
                    t742 = t745.
                  ELSE.
                    DATA t746 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t746.
                    t742 = t746.
                  ENDIF.
                  DATA(t747) = VALUE abap_bool( ).
                  DATA(t748) = VALUE abap_bool( ).
                  IF t739 IS BOUND.
                    t747 = t739->has.
                  ENDIF.
                  IF t742 IS BOUND.
                    t748 = t742->has.
                  ENDIF.
                  IF t747 = t748.
                    IF t747 = abap_false.
                      t738 = abap_true.
                    ELSEIF t739->value = t742->value.
                      t738 = abap_true.
                    ENDIF.
                  ENDIF.
                  IF t738 = abap_true.
                    DATA(t749) = VALUE abap_bool( ).
                    DATA t750 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t752 TYPE REF TO zcl_lnt_shape_01ff58f8.
                    DATA(t753) = me->parsed_xml.
                    t752 = t753.
                    t751 = t752->datatype_2b0f.
                    t750 = t751.
                    DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t755 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t755.
                    t754 = t755.
                    DATA(t756) = VALUE abap_bool( ).
                    DATA(t757) = t750.
                    IF t757 IS INITIAL.
                      t756 = abap_true.
                    ELSEIF t757->has = abap_false.
                      t756 = abap_true.
                    ENDIF.
                    t749 = t756.
                    IF t749 = abap_true.
                      DATA t758 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t758.
                      DATA t759 TYPE string.
                      DATA(t760) = |Table Type, empty DATATYPE|.
                      DATA t761 TYPE string.
                      DATA t762 TYPE REF TO zcl_lnt_abstract_object.
                      DATA(t763) = me.
                      t762 = t763.
                      DATA t764 TYPE string.
                      DATA(t765) = t762.
                      t764 = t765->name.
                      t761 = t764.
                      DATA(t766) = strlen( t760 ).
                      t759 = |{ t760 }{ t761 }|.
                      DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t767.
                      DATA(t768) = abap_true.
                      IF t768 = abap_true.
                        DATA t769 TYPE string.
                        DATA t770 TYPE REF TO zcl_lnt_abstract_object.
                        DATA(t771) = me.
                        t770 = t771.
                        DATA t772 TYPE string.
                        DATA(t773) = t770.
                        t772 = t773->name.
                        t769 = t772.
                        DATA(t774) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t774->has = abap_true.
                        t774->value = t769.
                        t767 = t774.
                      ELSE.
                        DATA t775 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t775.
                        t767 = t775.
                      ENDIF.
                      t758 = NEW zcl_lnt_unknown_type( i_error = t759 i_qualified_name = t767 ).
                      t7 = t758.
                    ELSE.
                      DATA t776 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t776.
                      DATA t777 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t777.
                      DATA(t778) = t2.
                      DATA t779 TYPE REF TO zcl_lnt_shape_4a88086c.
                      CLEAR t779.
                      DATA t780 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t780.
                      DATA t781 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t781.
                      DATA(t782) = abap_true.
                      IF t782 = abap_true.
                        DATA t783 TYPE string.
                        DATA t784 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        DATA t785 TYPE REF TO zcl_lnt_shape_01ff58f8.
                        DATA(t786) = me->parsed_xml.
                        t785 = t786.
                        t784 = t785->datatype_2b0f.
                        t783 = t784->value.
                        DATA(t787) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t787->has = abap_true.
                        t787->value = t783.
                        t781 = t787.
                      ELSE.
                        DATA t788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t788.
                        t781 = t788.
                      ENDIF.
                      t780 = t781.
                      DATA t789 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t790 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t791 TYPE REF TO zcl_lnt_shape_01ff58f8.
                      DATA(t792) = me->parsed_xml.
                      t791 = t792.
                      t790 = t791->leng_e82a.
                      t789 = t790.
                      DATA t793 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t795 TYPE REF TO zcl_lnt_shape_01ff58f8.
                      DATA(t796) = me->parsed_xml.
                      t795 = t796.
                      t794 = t795->decimals_29bf.
                      t793 = t794.
                      DATA t797 TYPE string.
                      DATA t798 TYPE string.
                      DATA t799 TYPE REF TO zcl_lnt_abstract_object.
                      DATA(t800) = me.
                      t799 = t800.
                      DATA t801 TYPE string.
                      DATA(t802) = t799.
                      t801 = t802->name.
                      t798 = t801.
                      t797 = t798.
                      DATA t803 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t804 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t804.
                      t803 = t804.
                      DATA t805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t806 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t806.
                      t805 = t806.
                      DATA t807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t808 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t808.
                      t807 = t808.
                      DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t810 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t810.
                      t809 = t810.
                      t779 = NEW zcl_lnt_shape_4a88086c( i_text = t780 i_length = t789 i_decimals_2eed = t793 i_info_text = t797 i_qualified_name = t803 i_conversion_exit = t805 i_ddic_name = t807 i_description = t809 ).
                      CREATE OBJECT t779->zlnt_view_ownkeys_b0e8086400eb.
                      t779->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t811.
                      IF t779->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t779->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t811 ).
                      ENDIF.
                      DATA t812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t812.
                      IF t779->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t779->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t812 ).
                      ENDIF.
                      DATA t813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t813.
                      IF t779->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t779->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t813 ).
                      ENDIF.
                      DATA t814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t814.
                      IF t779->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t779->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `infoText` p1 = t814 ).
                      ENDIF.
                      CREATE OBJECT t779->zlnt_json_ownkeys_70e5fd461788.
                      t779->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t815) = |text|.
                      DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t816.
                      IF t779->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t779->zlnt_json_ownkeys_70e5fd461788->put( p0 = t815 p1 = t816 ).
                      ENDIF.
                      DATA(t817) = |length|.
                      DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t818.
                      IF t779->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t779->zlnt_json_ownkeys_70e5fd461788->put( p0 = t817 p1 = t818 ).
                      ENDIF.
                      DATA(t819) = |decimals|.
                      DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t820.
                      IF t779->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t779->zlnt_json_ownkeys_70e5fd461788->put( p0 = t819 p1 = t820 ).
                      ENDIF.
                      DATA(t821) = |infoText|.
                      DATA t822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t822.
                      IF t779->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t779->zlnt_json_ownkeys_70e5fd461788->put( p0 = t821 p1 = t822 ).
                      ENDIF.
                      t777 = t778->text_to_type( i_input_967e = t779 ).
                      t776 = t777.
                      DATA t823 TYPE REF TO zcl_lnt_ty_table_type.
                      CLEAR t823.
                      DATA(t824) = t776.
                      DATA(t825) = t8.
                      DATA t826 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t826.
                      DATA(t827) = abap_true.
                      IF t827 = abap_true.
                        DATA t828 TYPE string.
                        DATA t829 TYPE REF TO zcl_lnt_abstract_object.
                        DATA(t830) = me.
                        t829 = t830.
                        DATA t831 TYPE string.
                        DATA(t832) = t829.
                        t831 = t832->name.
                        t828 = t831.
                        DATA(t833) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t833->has = abap_true.
                        t833->value = t828.
                        t826 = t833.
                      ELSE.
                        DATA t834 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t834.
                        t826 = t834.
                      ENDIF.
                      DATA t835 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t835.
                      me->parse_xml( ).
                      DATA t836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t836.
                      DATA t837 TYPE REF TO zcl_lnt_shape_01ff58f8.
                      DATA(t838) = me->parsed_xml.
                      t837 = t838.
                      DATA t839 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t839.
                      DATA(t840) = VALUE abap_bool( ).
                      DATA(t841) = t837.
                      IF t841 IS INITIAL.
                        t840 = abap_true.
                      ENDIF.
                      IF t840 = abap_true.
                        DATA t842 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t842.
                        t839 = t842.
                      ELSE.
                        DATA t843 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        DATA t844 TYPE REF TO zcl_lnt_shape_01ff58f8.
                        DATA(t845) = t837.
                        t844 = t845.
                        t843 = t844->ddtext_d4ae.
                        t839 = t843.
                      ENDIF.
                      t836 = t839.
                      t835 = t836.
                      t823 = NEW zcl_lnt_ty_table_type( i_row_type = t824 i_options = t825 i_qualified_name = t826 i_description = t835 ).
                      t7 = t823.
                    ENDIF.
                  ELSE.
                    DATA t846 TYPE REF TO zcl_lnt_unknown_type.
                    CLEAR t846.
                    DATA(t847) = VALUE string( ).
                    DATA(t848) = VALUE string( ).
                    DATA(t849) = VALUE string( ).
                    DATA(t850) = |Table Type, unknown kind "|.
                    DATA(t851) = VALUE string( ).
                    DATA t852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t853 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t854 TYPE REF TO zcl_lnt_shape_01ff58f8.
                    DATA(t855) = me->parsed_xml.
                    t854 = t855.
                    t853 = t854->rowkind.
                    t852 = t853.
                    DATA(t856) = VALUE string( ).
                    DATA(t857) = VALUE abap_bool( ).
                    DATA(t858) = t852.
                    IF t858 IS INITIAL.
                      t857 = abap_true.
                    ELSEIF t858->has = abap_false.
                      t857 = abap_true.
                    ENDIF.
                    IF t857 = abap_true.
                      DATA(t859) = |undefined|.
                      t856 = t859.
                    ELSE.
                      DATA t860 TYPE string.
                      DATA(t861) = t852.
                      t860 = t861->value.
                      t856 = t860.
                    ENDIF.
                    t851 = t856.
                    DATA(t862) = strlen( t850 ).
                    t849 = |{ t850 }{ t851 }|.
                    DATA(t863) = |"|.
                    DATA(t864) = strlen( t849 ).
                    t848 = |{ t849 }{ t863 }|.
                    DATA t865 TYPE string.
                    DATA t866 TYPE REF TO zcl_lnt_abstract_object.
                    DATA(t867) = me.
                    t866 = t867.
                    DATA t868 TYPE string.
                    DATA(t869) = t866.
                    t868 = t869->name.
                    t865 = t868.
                    DATA(t870) = strlen( t848 ).
                    t847 = |{ t848 }{ t865 }|.
                    DATA t871 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t871.
                    DATA(t872) = abap_true.
                    IF t872 = abap_true.
                      DATA t873 TYPE string.
                      DATA t874 TYPE REF TO zcl_lnt_abstract_object.
                      DATA(t875) = me.
                      t874 = t875.
                      DATA t876 TYPE string.
                      DATA(t877) = t874.
                      t876 = t877->name.
                      t873 = t876.
                      DATA(t878) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t878->has = abap_true.
                      t878->value = t873.
                      t871 = t878.
                    ELSE.
                      DATA t879 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t879.
                      t871 = t879.
                    ENDIF.
                    t846 = NEW zcl_lnt_unknown_type( i_error = t847 i_qualified_name = t871 ).
                    t7 = t846.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t880 TYPE REF TO zif_lnt_ddic_references.
    DATA(t881) = t1.
    t880 = t881->get_ddic_references( ).
    DATA(t882) = me.
    DATA(t883) = t5.
    t880->set_using( i_obj_1ed0 = t882 i_using = t883 ).
    DATA(t884) = t7.
    result = t884.

  ENDMETHOD.

  METHOD parse_xml.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t2.
    DATA(t3) = me->parsed_xml.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t2.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t6 = xsdbool( t7 = abap_false ).
    t1 = t6.
    IF t1 = abap_true.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_shape_01ff58f8.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t15.
        CREATE OBJECT t15.
        t13 = t15.
      ELSE.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t16.
        t13 = t16.
      ENDIF.
      t12 = t13.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t20.
        CREATE OBJECT t20.
        t18 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t21.
        t18 = t21.
      ENDIF.
      t17 = t18.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t24 = t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t34 = t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t36 = t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t38 = t39.
      t11 = NEW zcl_lnt_shape_01ff58f8( i_rowtype = t22 i_rowkind = t24 i_datatype_9e1e = t26 i_leng_b7d5 = t28 i_decimals_2eed = t30 i_accessmode = t32 i_keykind = t34 i_ddtext_5aef = t36 i_keydef = t38 i_dd42v = t12 i_dd43v = t17 ).
      CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
      t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dd42v` p1 = t40 ).
      ENDIF.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dd43v` p1 = t41 ).
      ENDIF.
      CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
      t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t42) = |dd42v|.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
      ENDIF.
      DATA(t44) = |dd43v|.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
      ENDIF.
      t9 = t11.
    ELSE.
      DATA t46 TYPE REF TO zcl_lnt_shape_01ff58f8.
      CLEAR t46.
      t9 = t46.
    ENDIF.
    me->parsed_xml = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t47 = t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = t47.
    IF t52 IS INITIAL.
      t51 = abap_true.
    ENDIF.
    IF t51 = abap_true.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      t50 = t53.
    ELSE.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      DATA(t55) = t47.
      t54 = t55.
      t50 = t54.
    ENDIF.
    t49 = t50.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA(t59) = t49.
    t58 = t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    t60 = t61.
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = t58.
    IF t63 IS INITIAL.
      t62 = abap_true.
    ENDIF.
    t57 = t62.
    t56 = t57.
    IF t57 = abap_false.
      DATA(t64) = VALUE abap_bool( ).
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      DATA(t68) = t49.
      t67 = t68.
      DATA(t69) = |abapGit|.
      t66 = t67->get( p0 = t69 ).
      t65 = t66.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      t70 = t71.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = t65.
      IF t73 IS INITIAL.
        t72 = abap_true.
      ENDIF.
      t64 = t72.
      t56 = t64.
    ENDIF.
    IF t56 = abap_true.
      RETURN.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA(t81) = t49.
    t80 = t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = VALUE abap_bool( ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = t80.
    CLEAR t84.
    IF t85 IS BOUND.
      t84 = t85.
    ENDIF.
    IF t84 IS NOT BOUND.
      t83 = abap_true.
    ELSE.
      t83 = xsdbool( t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t83 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      t82 = t86.
    ELSE.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      DATA(t89) = t80.
      t88 = t89.
      DATA(t90) = |abapGit|.
      t87 = t88->get( p0 = t90 ).
      t82 = t87.
    ENDIF.
    t79 = t82.
    t78 = t79.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = VALUE abap_bool( ).
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = t78.
    CLEAR t93.
    IF t94 IS BOUND.
      t93 = t94.
    ENDIF.
    IF t93 IS NOT BOUND.
      t92 = abap_true.
    ELSE.
      t92 = xsdbool( t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t92 = abap_true.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      t91 = t95.
    ELSE.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      DATA(t98) = t78.
      t97 = t98.
      DATA(t99) = |asx:abap|.
      t96 = t97->get( p0 = t99 ).
      t91 = t96.
    ENDIF.
    t77 = t91.
    t76 = t77.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = VALUE abap_bool( ).
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = t76.
    CLEAR t102.
    IF t103 IS BOUND.
      t102 = t103.
    ENDIF.
    IF t102 IS NOT BOUND.
      t101 = abap_true.
    ELSE.
      t101 = xsdbool( t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t101 = abap_true.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      t100 = t104.
    ELSE.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      DATA(t107) = t76.
      t106 = t107.
      DATA(t108) = |asx:values|.
      t105 = t106->get( p0 = t108 ).
      t100 = t105.
    ENDIF.
    t75 = t100.
    t74 = t75.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = VALUE abap_bool( ).
    DATA(t112) = t74.
    IF t112 IS INITIAL.
      t111 = abap_true.
    ENDIF.
    IF t111 = abap_true.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      t110 = t113.
    ELSE.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      DATA(t115) = t74.
      t114 = t115.
      t110 = t114.
    ENDIF.
    t109 = t110.
    DATA(t116) = VALUE abap_bool( ).
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = t109.
    t117 = t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    t119 = t120.
    DATA(t121) = VALUE abap_bool( ).
    DATA(t122) = t117.
    IF t122 IS INITIAL.
      t121 = abap_true.
    ENDIF.
    t116 = t121.
    IF t116 = abap_true.
      RETURN.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = t109.
    t125 = t126.
    DATA(t127) = |DD40V|.
    t124 = t125->get( p0 = t127 ).
    t123 = t124.
    DATA(t128) = VALUE abap_bool( ).
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = t123.
    t129 = t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    t131 = t132.
    DATA(t133) = VALUE abap_bool( ).
    DATA(t134) = t129.
    IF t134 IS INITIAL.
      t133 = abap_true.
    ENDIF.
    t128 = t133.
    IF t128 = abap_true.
      RETURN.
    ENDIF.
    DATA t135 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t135.
    DATA(t136) = me->parsed_xml.
    t135 = t136.
    DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA(t140) = t123.
    DATA(t141) = |ROWTYPE|.
    t139 = t140->get( p0 = t141 ).
    t138 = t139.
    DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t142.
    DATA(t143) = VALUE abap_bool( ).
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA(t145) = t123.
    DATA(t146) = |ROWTYPE|.
    t144 = t145->get( p0 = t146 ).
    IF t144 IS BOUND.
      t143 = t144->truth( ).
    ENDIF.
    IF t143 = abap_true.
      DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t147.
      DATA(t148) = VALUE abap_bool( ).
      DATA(t149) = t138.
      IF t149 IS INITIAL.
        t148 = abap_true.
      ENDIF.
      IF t148 = abap_true.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        t147 = t150.
      ELSE.
        DATA(t151) = VALUE string( ).
        DATA(t152) = t138.
        t151 = t152->as_string( ).
        DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t153->has = abap_true.
        t153->value = t151.
        t147 = t153.
      ENDIF.
      t142 = t147.
    ELSE.
      DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t154.
      DATA(t155) = abap_true.
      IF t155 = abap_true.
        DATA(t156) = ||.
        DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t157->has = abap_true.
        t157->value = t156.
        t154 = t157.
      ELSE.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        t154 = t158.
      ENDIF.
      t142 = t154.
    ENDIF.
    t137 = t142.
    t135->rowtype = t137.
    DELETE t135->zlnt_record_delet_0597644d88b4 WHERE table_line = `rowtype`.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `rowtype` p1 = t159 ).
    ENDIF.
    DATA(t160) = |rowtype|.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
    ENDIF.
    DATA t162 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t162.
    DATA(t163) = me->parsed_xml.
    t162 = t163.
    DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t164.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = t123.
    DATA(t168) = |ROWKIND|.
    t166 = t167->get( p0 = t168 ).
    t165 = t166.
    DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t169.
    DATA(t170) = VALUE abap_bool( ).
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = t123.
    DATA(t173) = |ROWKIND|.
    t171 = t172->get( p0 = t173 ).
    IF t171 IS BOUND.
      t170 = t171->truth( ).
    ENDIF.
    IF t170 = abap_true.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t174.
      DATA(t175) = VALUE abap_bool( ).
      DATA(t176) = t165.
      IF t176 IS INITIAL.
        t175 = abap_true.
      ENDIF.
      IF t175 = abap_true.
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t177.
        t174 = t177.
      ELSE.
        DATA(t178) = VALUE string( ).
        DATA(t179) = t165.
        t178 = t179->as_string( ).
        DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t180->has = abap_true.
        t180->value = t178.
        t174 = t180.
      ENDIF.
      t169 = t174.
    ELSE.
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t181.
      DATA(t182) = abap_true.
      IF t182 = abap_true.
        DATA(t183) = ||.
        DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t184->has = abap_true.
        t184->value = t183.
        t181 = t184.
      ELSE.
        DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t185.
        t181 = t185.
      ENDIF.
      t169 = t181.
    ENDIF.
    t164 = t169.
    t162->rowkind = t164.
    DELETE t162->zlnt_record_delet_0597644d88b4 WHERE table_line = `rowkind`.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `rowkind` p1 = t186 ).
    ENDIF.
    DATA(t187) = |rowkind|.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
    ENDIF.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA(t191) = t123.
    DATA(t192) = |DATATYPE|.
    t190 = t191->get( p0 = t192 ).
    t189 = t190.
    DATA t193 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t193.
    DATA(t194) = me->parsed_xml.
    t193 = t194.
    DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t195.
    DATA(t196) = VALUE abap_bool( ).
    DATA(t197) = t189.
    IF t197 IS INITIAL.
      t196 = abap_true.
    ENDIF.
    IF t196 = abap_true.
      DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t198.
      t195 = t198.
    ELSE.
      DATA(t199) = VALUE string( ).
      DATA(t200) = t189.
      t199 = t200->as_string( ).
      DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t201->has = abap_true.
      t201->value = t199.
      t195 = t201.
    ENDIF.
    t193->datatype_2b0f = t195.
    DELETE t193->zlnt_record_delet_0597644d88b4 WHERE table_line = `datatype`.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    IF t193->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t193->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t202 ).
    ENDIF.
    DATA(t203) = |datatype|.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    IF t193->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t193->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
    ENDIF.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA(t207) = t123.
    DATA(t208) = |LENG|.
    t206 = t207->get( p0 = t208 ).
    t205 = t206.
    DATA t209 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t209.
    DATA(t210) = me->parsed_xml.
    t209 = t210.
    DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t211.
    DATA(t212) = VALUE abap_bool( ).
    DATA(t213) = t205.
    IF t213 IS INITIAL.
      t212 = abap_true.
    ENDIF.
    IF t212 = abap_true.
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t214.
      t211 = t214.
    ELSE.
      DATA(t215) = VALUE string( ).
      DATA(t216) = t205.
      t215 = t216->as_string( ).
      DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t217->has = abap_true.
      t217->value = t215.
      t211 = t217.
    ENDIF.
    t209->leng_e82a = t211.
    DELETE t209->zlnt_record_delet_0597644d88b4 WHERE table_line = `leng`.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    IF t209->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t209->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `leng` p1 = t218 ).
    ENDIF.
    DATA(t219) = |leng|.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    IF t209->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t209->zlnt_json_ownkeys_70e5fd461788->put( p0 = t219 p1 = t220 ).
    ENDIF.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA(t223) = t123.
    DATA(t224) = |DECIMALS|.
    t222 = t223->get( p0 = t224 ).
    t221 = t222.
    DATA t225 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t225.
    DATA(t226) = me->parsed_xml.
    t225 = t226.
    DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t227.
    DATA(t228) = VALUE abap_bool( ).
    DATA(t229) = t221.
    IF t229 IS INITIAL.
      t228 = abap_true.
    ENDIF.
    IF t228 = abap_true.
      DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t230.
      t227 = t230.
    ELSE.
      DATA(t231) = VALUE string( ).
      DATA(t232) = t221.
      t231 = t232->as_string( ).
      DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t233->has = abap_true.
      t233->value = t231.
      t227 = t233.
    ENDIF.
    t225->decimals_29bf = t227.
    DELETE t225->zlnt_record_delet_0597644d88b4 WHERE table_line = `decimals`.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    IF t225->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t225->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t234 ).
    ENDIF.
    DATA(t235) = |decimals|.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    IF t225->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t225->zlnt_json_ownkeys_70e5fd461788->put( p0 = t235 p1 = t236 ).
    ENDIF.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA(t239) = t123.
    DATA(t240) = |ACCESSMODE|.
    t238 = t239->get( p0 = t240 ).
    t237 = t238.
    DATA t241 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t241.
    DATA(t242) = me->parsed_xml.
    t241 = t242.
    DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t243.
    DATA(t244) = VALUE abap_bool( ).
    DATA(t245) = t237.
    IF t245 IS INITIAL.
      t244 = abap_true.
    ENDIF.
    IF t244 = abap_true.
      DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t246.
      t243 = t246.
    ELSE.
      DATA(t247) = VALUE string( ).
      DATA(t248) = t237.
      t247 = t248->as_string( ).
      DATA(t249) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t249->has = abap_true.
      t249->value = t247.
      t243 = t249.
    ENDIF.
    t241->accessmode = t243.
    DELETE t241->zlnt_record_delet_0597644d88b4 WHERE table_line = `accessmode`.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    IF t241->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `accessmode` p1 = t250 ).
    ENDIF.
    DATA(t251) = |accessmode|.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = t251 p1 = t252 ).
    ENDIF.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = t123.
    DATA(t256) = |KEYKIND|.
    t254 = t255->get( p0 = t256 ).
    t253 = t254.
    DATA t257 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t257.
    DATA(t258) = me->parsed_xml.
    t257 = t258.
    DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t259.
    DATA(t260) = VALUE abap_bool( ).
    DATA(t261) = t253.
    IF t261 IS INITIAL.
      t260 = abap_true.
    ENDIF.
    IF t260 = abap_true.
      DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t262.
      t259 = t262.
    ELSE.
      DATA(t263) = VALUE string( ).
      DATA(t264) = t253.
      t263 = t264->as_string( ).
      DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t265->has = abap_true.
      t265->value = t263.
      t259 = t265.
    ENDIF.
    t257->keykind = t259.
    DELETE t257->zlnt_record_delet_0597644d88b4 WHERE table_line = `keykind`.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    IF t257->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t257->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keykind` p1 = t266 ).
    ENDIF.
    DATA(t267) = |keykind|.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    IF t257->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t257->zlnt_json_ownkeys_70e5fd461788->put( p0 = t267 p1 = t268 ).
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = t123.
    DATA(t272) = |DDTEXT|.
    t270 = t271->get( p0 = t272 ).
    t269 = t270.
    DATA t273 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t273.
    DATA(t274) = me->parsed_xml.
    t273 = t274.
    DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t275.
    DATA(t276) = VALUE abap_bool( ).
    DATA(t277) = t269.
    IF t277 IS INITIAL.
      t276 = abap_true.
    ENDIF.
    IF t276 = abap_true.
      DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t278.
      t275 = t278.
    ELSE.
      DATA(t279) = VALUE string( ).
      DATA(t280) = t269.
      t279 = t280->as_string( ).
      DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t281->has = abap_true.
      t281->value = t279.
      t275 = t281.
    ENDIF.
    t273->ddtext_d4ae = t275.
    DELETE t273->zlnt_record_delet_0597644d88b4 WHERE table_line = `ddtext`.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    IF t273->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t273->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddtext` p1 = t282 ).
    ENDIF.
    DATA(t283) = |ddtext|.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    IF t273->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t273->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
    ENDIF.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA(t287) = t123.
    DATA(t288) = |KEYDEF|.
    t286 = t287->get( p0 = t288 ).
    t285 = t286.
    DATA t289 TYPE REF TO zcl_lnt_shape_01ff58f8.
    CLEAR t289.
    DATA(t290) = me->parsed_xml.
    t289 = t290.
    DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t291.
    DATA(t292) = VALUE abap_bool( ).
    DATA(t293) = t285.
    IF t293 IS INITIAL.
      t292 = abap_true.
    ENDIF.
    IF t292 = abap_true.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t294.
      t291 = t294.
    ELSE.
      DATA(t295) = VALUE string( ).
      DATA(t296) = t285.
      t295 = t296->as_string( ).
      DATA(t297) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t297->has = abap_true.
      t297->value = t295.
      t291 = t297.
    ENDIF.
    t289->keydef = t291.
    DELETE t289->zlnt_record_delet_0597644d88b4 WHERE table_line = `keydef`.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    IF t289->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keydef` p1 = t298 ).
    ENDIF.
    DATA(t299) = |keydef|.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    IF t289->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t299 p1 = t300 ).
    ENDIF.
    DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t301.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t302.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA(t307) = t109.
    t306 = t307.
    DATA(t308) = |DD42V|.
    t305 = t306->get( p0 = t308 ).
    t304 = t305.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA(t310) = VALUE abap_bool( ).
    DATA(t311) = t304.
    IF t311 IS NOT BOUND.
      t310 = abap_true.
    ELSE.
      t310 = xsdbool( t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t310 = abap_true.
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t312.
      t309 = t312.
    ELSE.
      DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t313.
      DATA(t314) = t304.
      DATA(t315) = |DD42V|.
      t313 = t314->get( p0 = t315 ).
      t309 = t313.
    ENDIF.
    t303 = t309.
    CLEAR t302.
    IF t303 IS BOUND.
      t302 = t303.
    ENDIF.
    t301 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t302 ).
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA t317 TYPE REF TO object.
    CLEAR t317.
    DATA(t318) = VALUE i( ).
    DO.
      t301->load( ).
      IF t318 >= lines( t301->items ).
        EXIT.
      ENDIF.
      CLEAR t317.
      READ TABLE t301->items INDEX t318 + 1 INTO t317.
      t318 = t318 + 1.
      DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t319.
      CLEAR t316.
      IF t317 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t319 ?= t317.
        t316 = t319.
      ELSE.
        IF t317 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t320 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t320.
          t320 ?= t317.
          CLEAR t316.
          IF t320 IS BOUND.
            CREATE OBJECT t316.
            t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t316->cval = t320.
          ENDIF.
        ELSE.
          CLEAR t316.
          IF t317 IS BOUND.
            DATA t321 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t321.
            DATA t322 TYPE REF TO object.
            CLEAR t322.
            CLEAR t321.
            t322 = t317.
            TRY.
                t316 ?= t322.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t316 IS NOT BOUND.
              TRY.
                  t321 ?= t317.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t321 IS BOUND.
                t316 = t321->source( ).
              ENDIF.
              IF t316 IS NOT BOUND.
                CREATE OBJECT t316.
                t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t316->oval = t317.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t323 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t323.
      DATA t324 TYPE REF TO zcl_lnt_shape_01ff58f8.
      CLEAR t324.
      DATA(t325) = me->parsed_xml.
      t324 = t325.
      t323 = t324->dd42v.
      DATA t326 TYPE REF TO zcl_lnt_shape_93ca86e8.
      CLEAR t326.
      DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t327.
      DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t328.
      DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t329.
      DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t330.
      DATA(t331) = t316.
      DATA(t332) = |SECKEYNAME|.
      t330 = t331->get( p0 = t332 ).
      t329 = t330.
      DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t333.
      DATA(t334) = t329.
      t333 = t334.
      DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t335.
      DATA(t336) = VALUE abap_bool( ).
      DATA(t337) = t329.
      IF t337 IS BOUND.
        t336 = t337->truth( ).
      ENDIF.
      IF t336 = abap_true.
        DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t338.
        DATA(t339) = VALUE abap_bool( ).
        DATA(t340) = t333.
        IF t340 IS INITIAL.
          t339 = abap_true.
        ENDIF.
        IF t339 = abap_true.
          DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t341.
          t338 = t341.
        ELSE.
          DATA(t342) = VALUE string( ).
          DATA(t343) = t333.
          t342 = t343->as_string( ).
          DATA(t344) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t344->has = abap_true.
          t344->value = t342.
          t338 = t344.
        ENDIF.
        t335 = t338.
      ELSE.
        DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t345.
        DATA(t346) = abap_true.
        IF t346 = abap_true.
          DATA(t347) = ||.
          DATA(t348) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t348->has = abap_true.
          t348->value = t347.
          t345 = t348.
        ELSE.
          DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t349.
          t345 = t349.
        ENDIF.
        t335 = t345.
      ENDIF.
      t328 = t335.
      t327 = t328.
      DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t350.
      DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t351.
      DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t352.
      DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t353.
      DATA(t354) = t316.
      DATA(t355) = |KEYFIELD|.
      t353 = t354->get( p0 = t355 ).
      t352 = t353.
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t356.
      DATA(t357) = t352.
      t356 = t357.
      DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t358.
      DATA(t359) = VALUE abap_bool( ).
      DATA(t360) = t352.
      IF t360 IS BOUND.
        t359 = t360->truth( ).
      ENDIF.
      IF t359 = abap_true.
        DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t361.
        DATA(t362) = VALUE abap_bool( ).
        DATA(t363) = t356.
        IF t363 IS INITIAL.
          t362 = abap_true.
        ENDIF.
        IF t362 = abap_true.
          DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t364.
          t361 = t364.
        ELSE.
          DATA(t365) = VALUE string( ).
          DATA(t366) = t356.
          t365 = t366->as_string( ).
          DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t367->has = abap_true.
          t367->value = t365.
          t361 = t367.
        ENDIF.
        t358 = t361.
      ELSE.
        DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t368.
        DATA(t369) = abap_true.
        IF t369 = abap_true.
          DATA(t370) = ||.
          DATA(t371) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t371->has = abap_true.
          t371->value = t370.
          t368 = t371.
        ELSE.
          DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t372.
          t368 = t372.
        ENDIF.
        t358 = t368.
      ENDIF.
      t351 = t358.
      t350 = t351.
      t326 = NEW zcl_lnt_shape_93ca86e8( i_keyname = t327 i_keyfield = t350 ).
      CREATE OBJECT t326->zlnt_view_ownkeys_b0e8086400eb.
      t326->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t373.
      IF t326->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t326->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyname` p1 = t373 ).
      ENDIF.
      DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t374.
      IF t326->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t326->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyfield` p1 = t374 ).
      ENDIF.
      CREATE OBJECT t326->zlnt_json_ownkeys_70e5fd461788.
      t326->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t375) = |keyname|.
      DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t376.
      IF t326->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t326->zlnt_json_ownkeys_70e5fd461788->put( p0 = t375 p1 = t376 ).
      ENDIF.
      DATA(t377) = |keyfield|.
      DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t378.
      IF t326->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t326->zlnt_json_ownkeys_70e5fd461788->put( p0 = t377 p1 = t378 ).
      ENDIF.
      t323->load( ).
      APPEND t326 TO t323->items.
      t323->save( ).
    ENDDO.
    DATA t379 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t379.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t380.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t383.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA(t385) = t109.
    t384 = t385.
    DATA(t386) = |DD43V|.
    t383 = t384->get( p0 = t386 ).
    t382 = t383.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t387.
    DATA(t388) = VALUE abap_bool( ).
    DATA(t389) = t382.
    IF t389 IS NOT BOUND.
      t388 = abap_true.
    ELSE.
      t388 = xsdbool( t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t388 = abap_true.
      DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t390.
      t387 = t390.
    ELSE.
      DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t391.
      DATA(t392) = t382.
      DATA(t393) = |DD43V|.
      t391 = t392->get( p0 = t393 ).
      t387 = t391.
    ENDIF.
    t381 = t387.
    CLEAR t380.
    IF t381 IS BOUND.
      t380 = t381.
    ENDIF.
    t379 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t380 ).
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA t395 TYPE REF TO object.
    CLEAR t395.
    DATA(t396) = VALUE i( ).
    DO.
      t379->load( ).
      IF t396 >= lines( t379->items ).
        EXIT.
      ENDIF.
      CLEAR t395.
      READ TABLE t379->items INDEX t396 + 1 INTO t395.
      t396 = t396 + 1.
      DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t397.
      CLEAR t394.
      IF t395 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t397 ?= t395.
        t394 = t397.
      ELSE.
        IF t395 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t398 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t398.
          t398 ?= t395.
          CLEAR t394.
          IF t398 IS BOUND.
            CREATE OBJECT t394.
            t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t394->cval = t398.
          ENDIF.
        ELSE.
          CLEAR t394.
          IF t395 IS BOUND.
            DATA t399 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t399.
            DATA t400 TYPE REF TO object.
            CLEAR t400.
            CLEAR t399.
            t400 = t395.
            TRY.
                t394 ?= t400.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t394 IS NOT BOUND.
              TRY.
                  t399 ?= t395.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t399 IS BOUND.
                t394 = t399->source( ).
              ENDIF.
              IF t394 IS NOT BOUND.
                CREATE OBJECT t394.
                t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t394->oval = t395.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t401 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t401.
      DATA t402 TYPE REF TO zcl_lnt_shape_01ff58f8.
      CLEAR t402.
      DATA(t403) = me->parsed_xml.
      t402 = t403.
      t401 = t402->dd43v.
      DATA t404 TYPE REF TO zcl_lnt_shape_96faa29e.
      CLEAR t404.
      DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t405.
      DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t406.
      DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t407.
      DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t408.
      DATA(t409) = t394.
      DATA(t410) = |SECKEYNAME|.
      t408 = t409->get( p0 = t410 ).
      t407 = t408.
      DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t411.
      DATA(t412) = t407.
      t411 = t412.
      DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t413.
      DATA(t414) = VALUE abap_bool( ).
      DATA(t415) = t407.
      IF t415 IS BOUND.
        t414 = t415->truth( ).
      ENDIF.
      IF t414 = abap_true.
        DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t416.
        DATA(t417) = VALUE abap_bool( ).
        DATA(t418) = t411.
        IF t418 IS INITIAL.
          t417 = abap_true.
        ENDIF.
        IF t417 = abap_true.
          DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t419.
          t416 = t419.
        ELSE.
          DATA(t420) = VALUE string( ).
          DATA(t421) = t411.
          t420 = t421->as_string( ).
          DATA(t422) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t422->has = abap_true.
          t422->value = t420.
          t416 = t422.
        ENDIF.
        t413 = t416.
      ELSE.
        DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t423.
        DATA(t424) = abap_true.
        IF t424 = abap_true.
          DATA(t425) = ||.
          DATA(t426) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t426->has = abap_true.
          t426->value = t425.
          t423 = t426.
        ELSE.
          DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t427.
          t423 = t427.
        ENDIF.
        t413 = t423.
      ENDIF.
      t406 = t413.
      t405 = t406.
      DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t428.
      DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t429.
      DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t430.
      DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t431.
      DATA(t432) = t394.
      DATA(t433) = |ACCESSMODE|.
      t431 = t432->get( p0 = t433 ).
      t430 = t431.
      DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t434.
      DATA(t435) = t430.
      t434 = t435.
      DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t436.
      DATA(t437) = VALUE abap_bool( ).
      DATA(t438) = t430.
      IF t438 IS BOUND.
        t437 = t438->truth( ).
      ENDIF.
      IF t437 = abap_true.
        DATA t439 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t439.
        DATA(t440) = VALUE abap_bool( ).
        DATA(t441) = t434.
        IF t441 IS INITIAL.
          t440 = abap_true.
        ENDIF.
        IF t440 = abap_true.
          DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t442.
          t439 = t442.
        ELSE.
          DATA(t443) = VALUE string( ).
          DATA(t444) = t434.
          t443 = t444->as_string( ).
          DATA(t445) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t445->has = abap_true.
          t445->value = t443.
          t439 = t445.
        ENDIF.
        t436 = t439.
      ELSE.
        DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t446.
        DATA(t447) = abap_true.
        IF t447 = abap_true.
          DATA(t448) = ||.
          DATA(t449) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t449->has = abap_true.
          t449->value = t448.
          t446 = t449.
        ELSE.
          DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t450.
          t446 = t450.
        ENDIF.
        t436 = t446.
      ENDIF.
      t429 = t436.
      t428 = t429.
      DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t451.
      DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t452.
      DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t453.
      DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t454.
      DATA(t455) = t394.
      DATA(t456) = |KIND|.
      t454 = t455->get( p0 = t456 ).
      t453 = t454.
      DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t457.
      DATA(t458) = t453.
      t457 = t458.
      DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t459.
      DATA(t460) = VALUE abap_bool( ).
      DATA(t461) = t453.
      IF t461 IS BOUND.
        t460 = t461->truth( ).
      ENDIF.
      IF t460 = abap_true.
        DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t462.
        DATA(t463) = VALUE abap_bool( ).
        DATA(t464) = t457.
        IF t464 IS INITIAL.
          t463 = abap_true.
        ENDIF.
        IF t463 = abap_true.
          DATA t465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t465.
          t462 = t465.
        ELSE.
          DATA(t466) = VALUE string( ).
          DATA(t467) = t457.
          t466 = t467->as_string( ).
          DATA(t468) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t468->has = abap_true.
          t468->value = t466.
          t462 = t468.
        ENDIF.
        t459 = t462.
      ELSE.
        DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t469.
        DATA(t470) = abap_true.
        IF t470 = abap_true.
          DATA(t471) = ||.
          DATA(t472) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t472->has = abap_true.
          t472->value = t471.
          t469 = t472.
        ELSE.
          DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t473.
          t469 = t473.
        ENDIF.
        t459 = t469.
      ENDIF.
      t452 = t459.
      t451 = t452.
      DATA(t474) = VALUE abap_bool( ).
      DATA(t475) = VALUE abap_bool( ).
      DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t476.
      DATA(t477) = t394.
      DATA(t478) = |SECKEYUNIQUE|.
      t476 = t477->get( p0 = t478 ).
      DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t479.
      DATA(t480) = |X|.
      CLEAR t479.
      CREATE OBJECT t479.
      t479->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t479->sval = t480.
      IF t476 IS NOT BOUND.
        t475 = xsdbool( t479 IS NOT BOUND ).
      ELSE.
        t475 = t476->strict_equals( t479 ).
      ENDIF.
      t474 = t475.
      t404 = NEW zcl_lnt_shape_96faa29e( i_keyname = t405 i_accessmode = t428 i_kind = t451 i_unique = t474 ).
      CREATE OBJECT t404->zlnt_view_ownkeys_b0e8086400eb.
      t404->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t481.
      IF t404->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t404->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyname` p1 = t481 ).
      ENDIF.
      DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t482.
      IF t404->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t404->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `accessmode` p1 = t482 ).
      ENDIF.
      DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t483.
      IF t404->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t404->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t483 ).
      ENDIF.
      DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t484.
      IF t404->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t404->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `unique` p1 = t484 ).
      ENDIF.
      CREATE OBJECT t404->zlnt_json_ownkeys_70e5fd461788.
      t404->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t485) = |keyname|.
      DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t486.
      IF t404->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t404->zlnt_json_ownkeys_70e5fd461788->put( p0 = t485 p1 = t486 ).
      ENDIF.
      DATA(t487) = |accessmode|.
      DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t488.
      IF t404->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t404->zlnt_json_ownkeys_70e5fd461788->put( p0 = t487 p1 = t488 ).
      ENDIF.
      DATA(t489) = |kind|.
      DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t490.
      IF t404->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t404->zlnt_json_ownkeys_70e5fd461788->put( p0 = t489 p1 = t490 ).
      ENDIF.
      DATA(t491) = |unique|.
      DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t492.
      IF t404->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t404->zlnt_json_ownkeys_70e5fd461788->put( p0 = t491 p1 = t492 ).
      ENDIF.
      t401->load( ).
      APPEND t404 TO t401->items.
      t401->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD parse_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = t1.
    t4 = me->pr_ty_in_sr_ob_tb_ty_ts_tb_typ( i_reg_f149 = t5 ).
    result = t4.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1356_094f96f262ee.
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

  METHOD zif_lnt_union_864794cc~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_864794cc~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
