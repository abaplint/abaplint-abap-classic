* TS: src/objects/view.ts:13:1 View
CLASS zcl_lnt_view DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_c74a232f.
    INTERFACES zif_lnt_union_e3559bc5.
    INTERFACES zif_lnt_union_42a36aec.
    INTERFACES zif_lnt_union_864794cc.
    DATA parsed_data TYPE REF TO zcl_lnt_shape_7e12c7b7.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_fields RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_join RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS set_dirty REDEFINITION.
    METHODS prs_typ_inst_src_objc_vw_ts_vw IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS list_keys RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_description REDEFINITION.
    METHODS parse_xml.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_view IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |VIEW|.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 16 ).
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

  METHOD get_fields.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    DATA(t3) = me->parsed_data.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    DATA(t10) = me->parsed_data.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t16 TYPE REF TO zcl_lnt_shape_7e12c7b7.
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->fields_464c.
      t11 = t15.
    ENDIF.
    t8 = t11.
    result = t8.

  ENDMETHOD.

  METHOD get_join.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    DATA(t3) = me->parsed_data.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    DATA(t10) = me->parsed_data.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t16 TYPE REF TO zcl_lnt_shape_7e12c7b7.
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->join.
      t11 = t15.
    ENDIF.
    t8 = t11.
    result = t8.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    CLEAR t1.
    me->parsed_data = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD prs_typ_inst_src_objc_vw_ts_vw.
    DATA(t1) = i_reg_f149.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    CLEAR t3.
    DATA(t4) = me->parsed_data.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    CLEAR t10.
    DATA(t11) = me->parsed_data.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t10.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t16.
      DATA(t17) = |View, parser error|.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = VALUE string( ).
        DATA t21 TYPE REF TO zcl_lnt_abstract_object.
        CLEAR t21.
        DATA(t22) = me.
        t21 = t22.
        DATA(t23) = VALUE string( ).
        DATA(t24) = t21.
        t23 = t24->name.
        t20 = t23.
        DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t25->has = abap_true.
        t25->value = t20.
        t18 = t25.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t26.
        t18 = t26.
      ENDIF.
      t16 = NEW zcl_lnt_unknown_type( i_error = t17 i_qualified_name = t18 ).
      result = t16.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    CREATE OBJECT t28.
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    CREATE OBJECT t30.
    t29 = t30.
    DATA t31 TYPE REF TO zcl_lnt_ddic.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_ddic.
    CLEAR t32.
    DATA(t33) = t1.
    t32 = NEW zcl_lnt_ddic( i_reg_f149 = t33 ).
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    CLEAR t35.
    DATA(t36) = me->parsed_data.
    t35 = t36.
    t34 = t35->fields_464c.
    DATA t37 TYPE REF TO zcl_lnt_shape_da8531c1.
    CLEAR t37.
    DATA t38 TYPE REF TO object.
    CLEAR t38.
    DATA(t39) = VALUE i( ).
    DO.
      t34->load( ).
      IF t39 >= lines( t34->items ).
        EXIT.
      ENDIF.
      CLEAR t38.
      READ TABLE t34->items INDEX t39 + 1 INTO t38.
      t39 = t39 + 1.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      CLEAR t37.
      IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t40 ?= t38.
        DATA t41 TYPE REF TO object.
        CLEAR t41.
        t41 = t40->as_ref( ).
        t37 ?= t41.
      ELSE.
        t37 ?= t38.
      ENDIF.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t45) = t37.
      t44 = t45->viewfield.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA(t48) = |*|.
        DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t49->has = abap_true.
        t49->value = t48.
        t46 = t49.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        t46 = t50.
      ENDIF.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE abap_bool( ).
      IF t44 IS BOUND.
        t51 = t44->has.
      ENDIF.
      IF t46 IS BOUND.
        t52 = t46->has.
      ENDIF.
      IF t51 = t52.
        IF t51 = abap_false.
          t43 = abap_true.
        ELSEIF t44->value = t46->value.
          t43 = abap_true.
        ENDIF.
      ENDIF.
      t42 = t43.
      IF t43 = abap_false.
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA(t55) = t37.
        t54 = t55->viewfield.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA(t58) = |-|.
          DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t59->has = abap_true.
          t59->value = t58.
          t56 = t59.
        ELSE.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          t56 = t60.
        ENDIF.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = VALUE abap_bool( ).
        IF t54 IS BOUND.
          t61 = t54->has.
        ENDIF.
        IF t56 IS BOUND.
          t62 = t56->has.
        ENDIF.
        IF t61 = t62.
          IF t61 = abap_false.
            t53 = abap_true.
          ELSEIF t54->value = t56->value.
            t53 = abap_true.
          ENDIF.
        ENDIF.
        t42 = t53.
      ENDIF.
      IF t42 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t63) = VALUE abap_bool( ).
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        DATA t65 TYPE REF TO zcl_lnt_shape_cd8a49be.
        CLEAR t65.
        DATA t66 TYPE REF TO zcl_lnt_shape_7e12c7b7.
        CLEAR t66.
        DATA(t67) = me->parsed_data.
        t66 = t67.
        t65 = t66->header.
        t64 = t65->viewclass.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA(t69) = abap_true.
        IF t69 = abap_true.
          DATA(t70) = |X|.
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
        IF t64 IS BOUND.
          t73 = t64->has.
        ENDIF.
        IF t68 IS BOUND.
          t74 = t68->has.
        ENDIF.
        IF t73 = t74.
          IF t73 = abap_false.
            t63 = abap_true.
          ELSEIF t64->value = t68->value.
            t63 = abap_true.
          ENDIF.
        ENDIF.
        IF t63 = abap_true.
          DATA(t75) = t27.
          DATA t76 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t76.
          DATA(t77) = VALUE string( ).
          DATA(t78) = VALUE string( ).
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          DATA(t80) = t37.
          t79 = t80->viewfield.
          t78 = t79->value.
          t77 = t78.
          DATA t81 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t81.
          DATA t82 TYPE REF TO zcl_lnt_void_type.
          CLEAR t82.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          DATA(t84) = abap_true.
          IF t84 = abap_true.
            DATA(t85) = |ExternalView|.
            DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t86->has = abap_true.
            t86->value = t85.
            t83 = t86.
          ELSE.
            DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t87.
            t83 = t87.
          ENDIF.
          DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t88.
          t82 = zcl_lnt_void_type=>get_db65( i_voided = t83 i_qualified_name = t88 ).
          t81 = t82.
          DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t89.
          DATA t90 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t90.
          t89 = t90.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          t91 = t92.
          t76 = NEW zcl_lnt_istructure_component( i_name = t77 i_type_9913 = t81 i_as_include = t89 i_suffix = t91 ).
          CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
          t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t93 ).
          ENDIF.
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t94.
          IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t94 ).
          ENDIF.
          CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
          t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t95) = |name|.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t96.
          IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
          ENDIF.
          DATA(t97) = |type|.
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t98.
          IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
          ENDIF.
          t75->load( ).
          APPEND t76 TO t75->items.
          t75->save( ).
          CONTINUE.
        ELSE.
          DATA(t99) = VALUE abap_bool( ).
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          DATA(t101) = t37.
          t100 = t101->tabname.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          DATA(t103) = abap_true.
          IF t103 = abap_true.
            DATA(t104) = VALUE string( ).
            DATA t105 TYPE REF TO zcl_lnt_abstract_object.
            CLEAR t105.
            DATA(t106) = me.
            t105 = t106.
            DATA(t107) = VALUE string( ).
            DATA(t108) = t105.
            t107 = t108->name.
            t104 = t107.
            DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t109->has = abap_true.
            t109->value = t104.
            t102 = t109.
          ELSE.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            t102 = t110.
          ENDIF.
          DATA(t111) = VALUE abap_bool( ).
          DATA(t112) = VALUE abap_bool( ).
          IF t100 IS BOUND.
            t111 = t100->has.
          ENDIF.
          IF t102 IS BOUND.
            t112 = t102->has.
          ENDIF.
          IF t111 = t112.
            IF t111 = abap_false.
              t99 = abap_true.
            ELSEIF t100->value = t102->value.
              t99 = abap_true.
            ENDIF.
          ENDIF.
          IF t99 = abap_true.
            DATA t113 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
            CLEAR t113.
            DATA t114 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
            CLEAR t114.
            DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t115.
            DATA(t116) = abap_true.
            IF t116 = abap_true.
              DATA(t117) = VALUE string( ).
              DATA(t118) = VALUE string( ).
              DATA(t119) = VALUE string( ).
              DATA(t120) = VALUE string( ).
              DATA(t121) = VALUE string( ).
              DATA(t122) = |Unexpected self reference in view |.
              DATA(t123) = VALUE string( ).
              DATA t124 TYPE REF TO zcl_lnt_abstract_object.
              CLEAR t124.
              DATA(t125) = me.
              t124 = t125.
              DATA(t126) = VALUE string( ).
              DATA(t127) = t124.
              t126 = t127->name.
              t123 = t126.
              DATA(t128) = strlen( t122 ).
              t121 = |{ t122 }{ t123 }|.
              DATA(t129) = |, |.
              DATA(t130) = strlen( t121 ).
              t120 = |{ t121 }{ t129 }|.
              DATA(t131) = VALUE string( ).
              DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t132.
              DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t133.
              DATA(t134) = t37.
              t133 = t134->fieldname.
              t132 = t133.
              DATA(t135) = VALUE string( ).
              DATA(t136) = VALUE abap_bool( ).
              DATA(t137) = t132.
              IF t137 IS INITIAL.
                t136 = abap_true.
              ELSEIF t137->has = abap_false.
                t136 = abap_true.
              ENDIF.
              IF t136 = abap_true.
                DATA(t138) = |undefined|.
                t135 = t138.
              ELSE.
                DATA(t139) = VALUE string( ).
                DATA(t140) = t132.
                t139 = t140->value.
                t135 = t139.
              ENDIF.
              t131 = t135.
              DATA(t141) = strlen( t120 ).
              t119 = |{ t120 }{ t131 }|.
              DATA(t142) = | |.
              DATA(t143) = strlen( t119 ).
              t118 = |{ t119 }{ t142 }|.
              DATA(t144) = VALUE string( ).
              DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t145.
              DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t146.
              DATA(t147) = t37.
              t146 = t147->fieldname.
              t145 = t146.
              DATA(t148) = VALUE string( ).
              DATA(t149) = VALUE abap_bool( ).
              DATA(t150) = t145.
              IF t150 IS INITIAL.
                t149 = abap_true.
              ELSEIF t150->has = abap_false.
                t149 = abap_true.
              ENDIF.
              IF t149 = abap_true.
                DATA(t151) = |undefined|.
                t148 = t151.
              ELSE.
                DATA(t152) = VALUE string( ).
                DATA(t153) = t145.
                t152 = t153->value.
                t148 = t152.
              ENDIF.
              t144 = t148.
              DATA(t154) = strlen( t118 ).
              t117 = |{ t118 }{ t144 }|.
              DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t155->has = abap_true.
              t155->value = t117.
              t115 = t155.
            ELSE.
              DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t156.
              t115 = t156.
            ENDIF.
            t114 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t115 ).
            t113 = NEW #( ).
            t113->payload = t114.
            CLEAR t113->source_value.
            IF t114 IS BOUND.
              DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t157.
              DATA t158 TYPE REF TO object.
              CLEAR t158.
              CLEAR t157.
              t158 = t114.
              TRY.
                  t113->source_value ?= t158.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t113->source_value IS NOT BOUND.
                TRY.
                    t157 ?= t114.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t157 IS BOUND.
                  t113->source_value = t157->source( ).
                ENDIF.
                IF t113->source_value IS NOT BOUND.
                  CREATE OBJECT t113->source_value.
                  t113->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t113->source_value->oval = t114.
                ENDIF.
              ENDIF.
            ENDIF.
            RAISE EXCEPTION t113.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t159 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t159.
      DATA t160 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t160.
      DATA t161 TYPE REF TO zcl_lnt_ddic.
      CLEAR t161.
      DATA(t162) = t31.
      t161 = t162.
      DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t163.
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t164.
      DATA(t165) = t37.
      t164 = t165->tabname.
      t163 = t164.
      DATA t166 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t166.
      DATA(t167) = VALUE abap_bool( ).
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t168.
      DATA(t169) = t163.
      t168 = t169.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t171.
      t170 = t171.
      DATA(t172) = VALUE abap_bool( ).
      DATA(t173) = t168.
      IF t173 IS INITIAL.
        t172 = abap_true.
      ELSEIF t173->has = abap_false.
        t172 = abap_true.
      ENDIF.
      t167 = t172.
      IF t167 = abap_true.
        DATA t174 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t174.
        DATA t175 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t175.
        DATA t176 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t176.
        DATA(t177) = |undefined, lookupTableOrView|.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t178.
        t176 = NEW zcl_lnt_unknown_type( i_error = t177 i_qualified_name = t178 ).
        t175 = t176.
        DATA t179 TYPE REF TO zif_lnt_object.
        CLEAR t179.
        DATA t180 TYPE REF TO zif_lnt_object.
        CLEAR t180.
        t179 = t180.
        t174 = NEW zcl_lnt_ilookup_result( i_type_9913 = t175 i_object_19cd = t179 ).
        CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
        t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t181 ).
        ENDIF.
        CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
        t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t182) = |type|.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t183.
        IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
        ENDIF.
        t166 = t174.
      ELSE.
        DATA t184 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t184.
        DATA t185 TYPE REF TO zcl_lnt_table.
        CLEAR t185.
        DATA t186 TYPE REF TO zcl_lnt_table.
        CLEAR t186.
        DATA t187 TYPE REF TO zif_lnt_object.
        CLEAR t187.
        DATA t188 TYPE REF TO zif_lnt_registry.
        CLEAR t188.
        DATA(t189) = t161.
        t188 = t189->reg.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        DATA(t191) = abap_true.
        IF t191 = abap_true.
          DATA(t192) = |TABL|.
          DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t193->has = abap_true.
          t193->value = t192.
          t190 = t193.
        ELSE.
          DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t194.
          t190 = t194.
        ENDIF.
        DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t195.
        DATA(t196) = abap_true.
        IF t196 = abap_true.
          DATA(t197) = VALUE string( ).
          DATA(t198) = t163.
          t197 = t198->value.
          DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t199->has = abap_true.
          t199->value = t197.
          t195 = t199.
        ELSE.
          DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t200.
          t195 = t200.
        ENDIF.
        t187 = t188->get_object( i_type_9913 = t190 i_name = t195 ).
        DATA t201 TYPE REF TO object.
        CLEAR t201.
        t201 = t187.
        t186 ?= t201.
        t185 = t186.
        DATA t202 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t202.
        DATA(t203) = VALUE abap_bool( ).
        DATA(t204) = t185.
        t203 = xsdbool( t204 IS BOUND ).
        IF t203 = abap_true.
          DATA t205 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t205.
          DATA t206 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t206.
          DATA t207 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t207.
          DATA t208 TYPE REF TO zcl_lnt_table.
          CLEAR t208.
          DATA(t209) = t185.
          t208 = t209.
          DATA t210 TYPE REF TO zif_lnt_registry.
          CLEAR t210.
          DATA(t211) = t161.
          t210 = t211->reg.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t213.
          t207 = t208->parse_type( i_reg_f149 = t210 i_data_element = t212 i_description = t213 ).
          t206 = t207.
          DATA t214 TYPE REF TO zif_lnt_object.
          CLEAR t214.
          DATA t215 TYPE REF TO zcl_lnt_table.
          CLEAR t215.
          DATA(t216) = t185.
          t215 = t216.
          t214 = t215.
          t205 = NEW zcl_lnt_ilookup_result( i_type_9913 = t206 i_object_19cd = t214 ).
          CREATE OBJECT t205->zlnt_view_ownkeys_b0e8086400eb.
          t205->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t217 ).
          ENDIF.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t218 ).
          ENDIF.
          CREATE OBJECT t205->zlnt_json_ownkeys_70e5fd461788.
          t205->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t219) = |type|.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = t219 p1 = t220 ).
          ENDIF.
          DATA(t221) = |object|.
          DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t222.
          IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
          ENDIF.
          t202 = t205.
        ELSE.
          DATA t223 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t223.
          DATA t224 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t224.
          DATA t225 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t225.
          DATA(t226) = t161.
          DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t227.
          DATA(t228) = abap_true.
          IF t228 = abap_true.
            DATA(t229) = VALUE string( ).
            DATA(t230) = t163.
            t229 = t230->value.
            DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t231->has = abap_true.
            t231->value = t229.
            t227 = t231.
          ELSE.
            DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t232.
            t227 = t232.
          ENDIF.
          t225 = t226->lookup_ddls( i_name = t227 ).
          t224 = t225.
          DATA t233 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t233.
          DATA(t234) = VALUE abap_bool( ).
          DATA(t235) = t224.
          t234 = xsdbool( t235 IS BOUND ).
          IF t234 = abap_true.
            DATA t236 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t236.
            DATA(t237) = t224.
            t236 = t237.
            t233 = t236.
          ELSE.
            DATA t238 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t238.
            DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t239.
            DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t240.
            DATA(t241) = abap_true.
            IF t241 = abap_true.
              DATA(t242) = VALUE string( ).
              DATA(t243) = t163.
              t242 = t243->value.
              DATA(t244) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t244->has = abap_true.
              t244->value = t242.
              t240 = t244.
            ELSE.
              DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t245.
              t240 = t245.
            ENDIF.
            t239 = t240.
            DATA t246 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t246.
            DATA(t247) = VALUE abap_bool( ).
            DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t248.
            DATA(t249) = t239.
            t248 = t249.
            DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t250.
            DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t251.
            t250 = t251.
            DATA(t252) = VALUE abap_bool( ).
            DATA(t253) = t248.
            IF t253 IS INITIAL.
              t252 = abap_true.
            ELSEIF t253->has = abap_false.
              t252 = abap_true.
            ENDIF.
            t247 = t252.
            IF t247 = abap_true.
              DATA t254 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t254.
              DATA t255 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t255.
              DATA t256 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t256.
              DATA(t257) = |undefined, lookupView|.
              DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t258.
              t256 = NEW zcl_lnt_unknown_type( i_error = t257 i_qualified_name = t258 ).
              t255 = t256.
              DATA t259 TYPE REF TO zif_lnt_object.
              CLEAR t259.
              DATA t260 TYPE REF TO zif_lnt_object.
              CLEAR t260.
              t259 = t260.
              t254 = NEW zcl_lnt_ilookup_result( i_type_9913 = t255 i_object_19cd = t259 ).
              CREATE OBJECT t254->zlnt_view_ownkeys_b0e8086400eb.
              t254->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t261.
              IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t261 ).
              ENDIF.
              CREATE OBJECT t254->zlnt_json_ownkeys_70e5fd461788.
              t254->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t262) = |type|.
              DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t263.
              IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t262 p1 = t263 ).
              ENDIF.
              t246 = t254.
            ELSE.
              DATA t264 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t264.
              DATA t265 TYPE REF TO zcl_lnt_table.
              CLEAR t265.
              DATA t266 TYPE REF TO zcl_lnt_table.
              CLEAR t266.
              DATA t267 TYPE REF TO zif_lnt_object.
              CLEAR t267.
              DATA t268 TYPE REF TO zif_lnt_registry.
              CLEAR t268.
              DATA(t269) = t161.
              t268 = t269->reg.
              DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t270.
              DATA(t271) = abap_true.
              IF t271 = abap_true.
                DATA(t272) = |VIEW|.
                DATA(t273) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t273->has = abap_true.
                t273->value = t272.
                t270 = t273.
              ELSE.
                DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t274.
                t270 = t274.
              ENDIF.
              DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t275.
              DATA(t276) = abap_true.
              IF t276 = abap_true.
                DATA(t277) = VALUE string( ).
                DATA(t278) = t239.
                t277 = t278->value.
                DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t279->has = abap_true.
                t279->value = t277.
                t275 = t279.
              ELSE.
                DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t280.
                t275 = t280.
              ENDIF.
              t267 = t268->get_object( i_type_9913 = t270 i_name = t275 ).
              DATA t281 TYPE REF TO object.
              CLEAR t281.
              t281 = t267.
              t266 ?= t281.
              t265 = t266.
              DATA t282 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t282.
              DATA(t283) = VALUE abap_bool( ).
              DATA(t284) = t265.
              t283 = xsdbool( t284 IS BOUND ).
              IF t283 = abap_true.
                DATA t285 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t285.
                DATA t286 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t286.
                DATA t287 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t287.
                DATA t288 TYPE REF TO zcl_lnt_table.
                CLEAR t288.
                DATA(t289) = t265.
                t288 = t289.
                DATA t290 TYPE REF TO zif_lnt_registry.
                CLEAR t290.
                DATA(t291) = t161.
                t290 = t291->reg.
                DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t292.
                DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t293.
                t287 = t288->parse_type( i_reg_f149 = t290 i_data_element = t292 i_description = t293 ).
                t286 = t287.
                DATA t294 TYPE REF TO zif_lnt_object.
                CLEAR t294.
                DATA t295 TYPE REF TO zcl_lnt_table.
                CLEAR t295.
                DATA(t296) = t265.
                t295 = t296.
                t294 = t295.
                t285 = NEW zcl_lnt_ilookup_result( i_type_9913 = t286 i_object_19cd = t294 ).
                CREATE OBJECT t285->zlnt_view_ownkeys_b0e8086400eb.
                t285->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t297.
                IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t297 ).
                ENDIF.
                DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t298.
                IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t298 ).
                ENDIF.
                CREATE OBJECT t285->zlnt_json_ownkeys_70e5fd461788.
                t285->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t299) = |type|.
                DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t300.
                IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t299 p1 = t300 ).
                ENDIF.
                DATA(t301) = |object|.
                DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t302.
                IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t301 p1 = t302 ).
                ENDIF.
                t282 = t285.
              ELSE.
                DATA t303 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t303.
                DATA(t304) = VALUE abap_bool( ).
                DATA t305 TYPE REF TO zif_lnt_registry.
                CLEAR t305.
                DATA(t306) = t161.
                t305 = t306->reg.
                DATA(t307) = VALUE string( ).
                DATA(t308) = t239.
                t307 = t308->value.
                t304 = t305->in_error_namespace( i_name = t307 ).
                IF t304 = abap_true.
                  DATA t309 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t309.
                  DATA t310 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t310.
                  DATA t311 TYPE REF TO zcl_lnt_unknown_type.
                  CLEAR t311.
                  DATA(t312) = VALUE string( ).
                  DATA(t313) = VALUE string( ).
                  DATA(t314) = t239.
                  t313 = t314->value.
                  DATA(t315) = | not found, lookupView|.
                  DATA(t316) = strlen( t313 ).
                  t312 = |{ t313 }{ t315 }|.
                  DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t317.
                  t311 = NEW zcl_lnt_unknown_type( i_error = t312 i_qualified_name = t317 ).
                  t310 = t311.
                  DATA t318 TYPE REF TO zif_lnt_object.
                  CLEAR t318.
                  DATA t319 TYPE REF TO zif_lnt_object.
                  CLEAR t319.
                  t318 = t319.
                  t309 = NEW zcl_lnt_ilookup_result( i_type_9913 = t310 i_object_19cd = t318 ).
                  CREATE OBJECT t309->zlnt_view_ownkeys_b0e8086400eb.
                  t309->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t320.
                  IF t309->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t320 ).
                  ENDIF.
                  CREATE OBJECT t309->zlnt_json_ownkeys_70e5fd461788.
                  t309->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t321) = |type|.
                  DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t322.
                  IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = t321 p1 = t322 ).
                  ENDIF.
                  t303 = t309.
                ELSE.
                  DATA t323 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t323.
                  DATA t324 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t324.
                  DATA t325 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t325.
                  DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t326.
                  DATA(t327) = abap_true.
                  IF t327 = abap_true.
                    DATA(t328) = VALUE string( ).
                    DATA(t329) = t239.
                    t328 = t329->value.
                    DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t330->has = abap_true.
                    t330->value = t328.
                    t326 = t330.
                  ELSE.
                    DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t331.
                    t326 = t331.
                  ENDIF.
                  DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t332.
                  t325 = zcl_lnt_void_type=>get_db65( i_voided = t326 i_qualified_name = t332 ).
                  t324 = t325.
                  DATA t333 TYPE REF TO zif_lnt_object.
                  CLEAR t333.
                  DATA t334 TYPE REF TO zif_lnt_object.
                  CLEAR t334.
                  t333 = t334.
                  t323 = NEW zcl_lnt_ilookup_result( i_type_9913 = t324 i_object_19cd = t333 ).
                  CREATE OBJECT t323->zlnt_view_ownkeys_b0e8086400eb.
                  t323->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t335.
                  IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t335 ).
                  ENDIF.
                  CREATE OBJECT t323->zlnt_json_ownkeys_70e5fd461788.
                  t323->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t336) = |type|.
                  DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t337.
                  IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = t336 p1 = t337 ).
                  ENDIF.
                  t303 = t323.
                ENDIF.
                t282 = t303.
              ENDIF.
              t264 = t282.
              t246 = t264.
            ENDIF.
            t238 = t246.
            t233 = t238.
          ENDIF.
          t223 = t233.
          t202 = t223.
        ENDIF.
        t184 = t202.
        t166 = t184.
      ENDIF.
      t160 = t166.
      t159 = t160.
      DATA t338 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t338.
      DATA t339 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t339.
      DATA(t340) = t159.
      t339 = t340->zlnt_view_read_sr_9be58e2d4893( ).
      t338 = t339.
      DATA(t341) = VALUE abap_bool( ).
      DATA t342 TYPE REF TO zif_lnt_object.
      CLEAR t342.
      DATA(t343) = t159.
      t342 = t343->zlnt_view_read_sr_2de0200e6505( ).
      t341 = xsdbool( t342 IS BOUND ).
      IF t341 = abap_true.
        DATA(t344) = t29.
        DATA t345 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t345.
        DATA t346 TYPE REF TO zif_lnt_object.
        CLEAR t346.
        DATA t347 TYPE REF TO zif_lnt_object.
        CLEAR t347.
        DATA(t348) = abap_true.
        IF t348 = abap_true.
          DATA t349 TYPE REF TO zif_lnt_object.
          CLEAR t349.
          DATA t350 TYPE REF TO zif_lnt_object.
          CLEAR t350.
          DATA(t351) = t159.
          t350 = t351->zlnt_view_read_sr_2de0200e6505( ).
          t349 = t350.
          t347 = t349.
        ELSE.
          DATA t352 TYPE REF TO zif_lnt_object.
          CLEAR t352.
          t347 = t352.
        ENDIF.
        t346 = t347.
        DATA t353 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t353.
        DATA t354 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t354.
        t353 = t354.
        DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t355.
        DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t356.
        t355 = t356.
        t345 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t346 i_token = t353 i_filename = t355 ).
        CREATE OBJECT t345->zlnt_view_ownkeys_b0e8086400eb.
        t345->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t357.
        IF t345->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t357 ).
        ENDIF.
        CREATE OBJECT t345->zlnt_json_ownkeys_70e5fd461788.
        t345->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t358) = |object|.
        DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t359.
        IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
        ENDIF.
        t344->load( ).
        APPEND t345 TO t344->items.
        t344->save( ).
      ENDIF.
      DATA(t360) = VALUE abap_bool( ).
      DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t361.
      DATA(t362) = t37.
      t361 = t362->viewfield.
      DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t363.
      DATA(t364) = abap_true.
      IF t364 = abap_true.
        DATA(t365) = |.APPEND|.
        DATA(t366) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t366->has = abap_true.
        t366->value = t365.
        t363 = t366.
      ELSE.
        DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t367.
        t363 = t367.
      ENDIF.
      DATA(t368) = VALUE abap_bool( ).
      DATA(t369) = VALUE abap_bool( ).
      IF t361 IS BOUND.
        t368 = t361->has.
      ENDIF.
      IF t363 IS BOUND.
        t369 = t363->has.
      ENDIF.
      IF t368 = t369.
        IF t368 = abap_false.
          t360 = abap_true.
        ELSEIF t361->value = t363->value.
          t360 = abap_true.
        ENDIF.
      ENDIF.
      IF t360 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t370) = VALUE abap_bool( ).
      DATA(t371) = t338.
      t370 = xsdbool( t371 IS BOUND AND t371 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t370 = abap_true.
        DATA t372 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t372.
        DATA t373 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t373.
        DATA t374 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t374.
        DATA t375 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t375.
        DATA(t376) = t338.
        t375 ?= t376.
        t374 = t375.
        DATA(t377) = VALUE string( ).
        DATA(t378) = VALUE string( ).
        DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t379.
        DATA(t380) = t37.
        t379 = t380->fieldname.
        t378 = t379->value.
        t377 = t378.
        DATA t381 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t381.
        DATA t382 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        CLEAR t382.
        DATA(t383) = t374.
        t382 = t383->indexed.
        DATA(t384) = VALUE string( ).
        DATA(t385) = t377.
        DATA(t386) = strlen( t385 ).
        t384 = t385.
        IF t384 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t384 TO UPPER CASE.
        ELSE.
          t384 = zlnt_runtime_uppe_91169605024d=>full( t384 ).
        ENDIF.
        t381 = t382->get( p0 = t384 ).
        t373 = t381.
        t372 = t373.
        DATA(t387) = VALUE abap_bool( ).
        DATA t388 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t388.
        DATA(t389) = t372.
        t388 = t389.
        DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t390.
        DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t391.
        t390 = t391.
        DATA(t392) = VALUE abap_bool( ).
        DATA(t393) = t388.
        IF t393 IS INITIAL.
          t392 = abap_true.
        ENDIF.
        t387 = t392.
        IF t387 = abap_true.
          DATA t394 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t394.
          DATA(t395) = VALUE string( ).
          DATA(t396) = VALUE string( ).
          DATA(t397) = VALUE string( ).
          DATA(t398) = VALUE string( ).
          DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t399.
          DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t400.
          DATA(t401) = t37.
          t400 = t401->fieldname.
          t399 = t400.
          DATA(t402) = VALUE string( ).
          DATA(t403) = VALUE abap_bool( ).
          DATA(t404) = t399.
          IF t404 IS INITIAL.
            t403 = abap_true.
          ELSEIF t404->has = abap_false.
            t403 = abap_true.
          ENDIF.
          IF t403 = abap_true.
            DATA(t405) = |undefined|.
            t402 = t405.
          ELSE.
            DATA(t406) = VALUE string( ).
            DATA(t407) = t399.
            t406 = t407->value.
            t402 = t406.
          ENDIF.
          t398 = t402.
          DATA(t408) = | not found in |.
          DATA(t409) = strlen( t398 ).
          t397 = |{ t398 }{ t408 }|.
          DATA(t410) = VALUE string( ).
          DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t411.
          DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t412.
          DATA(t413) = t37.
          t412 = t413->tabname.
          t411 = t412.
          DATA(t414) = VALUE string( ).
          DATA(t415) = VALUE abap_bool( ).
          DATA(t416) = t411.
          IF t416 IS INITIAL.
            t415 = abap_true.
          ELSEIF t416->has = abap_false.
            t415 = abap_true.
          ENDIF.
          IF t415 = abap_true.
            DATA(t417) = |undefined|.
            t414 = t417.
          ELSE.
            DATA(t418) = VALUE string( ).
            DATA(t419) = t411.
            t418 = t419->value.
            t414 = t418.
          ENDIF.
          t410 = t414.
          DATA(t420) = strlen( t397 ).
          t396 = |{ t397 }{ t410 }|.
          DATA(t421) = |, VIEW parse type|.
          DATA(t422) = strlen( t396 ).
          t395 = |{ t396 }{ t421 }|.
          DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t423.
          t394 = NEW zcl_lnt_unknown_type( i_error = t395 i_qualified_name = t423 ).
          t338 = t394.
        ELSE.
          DATA t424 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t424.
          DATA(t425) = t372.
          t424 = t425.
          t338 = t424.
        ENDIF.
      ENDIF.
      DATA(t426) = t27.
      DATA t427 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t427.
      DATA(t428) = VALUE string( ).
      DATA(t429) = VALUE string( ).
      DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t430.
      DATA(t431) = t37.
      t430 = t431->viewfield.
      t429 = t430->value.
      t428 = t429.
      DATA t432 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t432.
      DATA(t433) = t338.
      t432 = t433.
      DATA t434 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t434.
      DATA t435 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t435.
      t434 = t435.
      DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t436.
      DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t437.
      t436 = t437.
      t427 = NEW zcl_lnt_istructure_component( i_name = t428 i_type_9913 = t432 i_as_include = t434 i_suffix = t436 ).
      CREATE OBJECT t427->zlnt_view_ownkeys_b0e8086400eb.
      t427->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t438.
      IF t427->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t427->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t438 ).
      ENDIF.
      DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t439.
      IF t427->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t427->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t439 ).
      ENDIF.
      CREATE OBJECT t427->zlnt_json_ownkeys_70e5fd461788.
      t427->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t440) = |name|.
      DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t441.
      IF t427->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t427->zlnt_json_ownkeys_70e5fd461788->put( p0 = t440 p1 = t441 ).
      ENDIF.
      DATA(t442) = |type|.
      DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t443.
      IF t427->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t427->zlnt_json_ownkeys_70e5fd461788->put( p0 = t442 p1 = t443 ).
      ENDIF.
      t426->load( ).
      APPEND t427 TO t426->items.
      t426->save( ).
    ENDDO.
    DATA t444 TYPE REF TO zif_lnt_ddic_references.
    CLEAR t444.
    DATA(t445) = t1.
    t444 = t445->get_ddic_references( ).
    DATA(t446) = me.
    DATA(t447) = t29.
    t444->set_using( i_obj_1ed0 = t446 i_using = t447 ).
    DATA(t448) = VALUE abap_bool( ).
    DATA(t449) = VALUE i( ).
    DATA(t450) = t27.
    t450->load( ).
    t449 = lines( t450->items ).
    DATA(t451) = 0.
    t448 = xsdbool( t449 = t451 ).
    IF t448 = abap_true.
      DATA t452 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t452.
      DATA(t453) = VALUE string( ).
      DATA(t454) = VALUE string( ).
      DATA(t455) = |View |.
      DATA(t456) = VALUE string( ).
      DATA t457 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t457.
      DATA(t458) = me.
      t457 = t458.
      DATA(t459) = VALUE string( ).
      DATA(t460) = t457.
      t459 = t460->name.
      t456 = t459.
      DATA(t461) = strlen( t455 ).
      t454 = |{ t455 }{ t456 }|.
      DATA(t462) = | does not contain any components|.
      DATA(t463) = strlen( t454 ).
      t453 = |{ t454 }{ t462 }|.
      DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t464.
      t452 = NEW zcl_lnt_unknown_type( i_error = t453 i_qualified_name = t464 ).
      result = t452.
      RETURN.
    ENDIF.
    DATA t465 TYPE REF TO zcl_lnt_structure_type.
    CLEAR t465.
    DATA(t466) = t27.
    DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t467.
    DATA(t468) = abap_true.
    IF t468 = abap_true.
      DATA(t469) = VALUE string( ).
      DATA t470 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t470.
      DATA(t471) = me.
      t470 = t471.
      DATA(t472) = VALUE string( ).
      DATA(t473) = t470.
      t472 = t473->name.
      t469 = t472.
      DATA(t474) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t474->has = abap_true.
      t474->value = t469.
      t467 = t474.
    ELSE.
      DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t475.
      t467 = t475.
    ENDIF.
    DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t476.
    DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t477.
    t465 = NEW zcl_lnt_structure_type( i_components = t466 i_qualified_name = t467 i_ddic_name = t476 i_description = t477 ).
    result = t465.

  ENDMETHOD.

  METHOD list_keys.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    DATA(t3) = me->parsed_data.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t9.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    DATA(t14) = me->parsed_data.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t13.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zcl_lnt_shape_7e12c7b7.
      DATA(t21) = t13.
      t20 = t21.
      t19 = t20->fields_464c.
      t15 = t19.
    ENDIF.
    t12 = t15.
    t11 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t11.
    t23 = xsdbool( t24 IS BOUND ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t26) = t11.
      t25 = t26.
      t22 = t25.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t27.
      t22 = t27.
    ENDIF.
    t10 = t22.
    DATA t28 TYPE REF TO zcl_lnt_shape_da8531c1.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    DATA(t30) = VALUE i( ).
    DO.
      t10->load( ).
      IF t30 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t10->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t35) = t28.
      t34 = t35->keyflag.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA(t37) = abap_true.
      IF t37 = abap_true.
        DATA(t38) = |X|.
        DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t39->has = abap_true.
        t39->value = t38.
        t36 = t39.
      ELSE.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        t36 = t40.
      ENDIF.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = VALUE abap_bool( ).
      IF t34 IS BOUND.
        t41 = t34->has.
      ENDIF.
      IF t36 IS BOUND.
        t42 = t36->has.
      ENDIF.
      IF t41 = t42.
        IF t41 = abap_false.
          t33 = abap_true.
        ELSEIF t34->value = t36->value.
          t33 = abap_true.
        ENDIF.
      ENDIF.
      IF t33 = abap_true.
        DATA(t43) = t8.
        DATA t44 TYPE string.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t46) = t28.
        t45 = t46->fieldname.
        t44 = t45->value.
        t43->load( ).
        APPEND t44 TO t43->items.
        t43->save( ).
      ENDIF.
    ENDDO.
    DATA(t47) = t8.
    result = t47.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    DATA(t3) = me->parsed_data.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_shape_cd8a49be.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_shape_cd8a49be.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    DATA(t12) = me->parsed_data.
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_shape_cd8a49be.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t11.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_shape_cd8a49be.
      CLEAR t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_shape_cd8a49be.
      DATA t18 TYPE REF TO zcl_lnt_shape_7e12c7b7.
      DATA(t19) = t11.
      t18 = t19.
      t17 = t18->header.
      t13 = t17.
    ENDIF.
    t10 = t13.
    t9 = t10.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t9.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t20 = t23.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t25 TYPE REF TO zcl_lnt_shape_cd8a49be.
      DATA(t26) = t9.
      t25 = t26.
      t24 = t25->ddtext_87ee.
      t20 = t24.
    ENDIF.
    t8 = t20.
    result = t8.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t1 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    CLEAR t1.
    DATA(t2) = abap_true.
    IF t2 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_shape_7e12c7b7.
      CLEAR t3.
      DATA t4 TYPE REF TO zcl_lnt_shape_cd8a49be.
      CLEAR t4.
      DATA t5 TYPE REF TO zcl_lnt_shape_cd8a49be.
      CLEAR t5.
      DATA(t6) = abap_true.
      IF t6 = abap_true.
        DATA t7 TYPE REF TO zcl_lnt_shape_cd8a49be.
        CLEAR t7.
        DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t8.
        DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t9.
        DATA(t10) = abap_true.
        IF t10 = abap_true.
          DATA(t11) = ||.
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
        DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t14.
        DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t15.
        DATA(t16) = abap_true.
        IF t16 = abap_true.
          DATA(t17) = ||.
          DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t18->has = abap_true.
          t18->value = t17.
          t15 = t18.
        ELSE.
          DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t19.
          t15 = t19.
        ENDIF.
        t14 = t15.
        t7 = NEW zcl_lnt_shape_cd8a49be( i_viewclass = t8 i_ddtext_4f13 = t14 ).
        CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
        t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t20.
        IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `VIEWCLASS` p1 = t20 ).
        ENDIF.
        DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t21.
        IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `DDTEXT` p1 = t21 ).
        ENDIF.
        CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
        t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t22) = |VIEWCLASS|.
        DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t23.
        IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t22 p1 = t23 ).
        ENDIF.
        DATA(t24) = |DDTEXT|.
        DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t25.
        IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
        ENDIF.
        t5 = t7.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_shape_cd8a49be.
        CLEAR t26.
        t5 = t26.
      ENDIF.
      t4 = t5.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t30.
        CREATE OBJECT t30.
        t28 = t30.
      ELSE.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t31.
        t28 = t31.
      ENDIF.
      t27 = t28.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t35.
        CREATE OBJECT t35.
        t33 = t35.
      ELSE.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t36.
        t33 = t36.
      ENDIF.
      t32 = t33.
      t3 = NEW zcl_lnt_shape_7e12c7b7( i_header = t4 i_fields_62af = t27 i_join = t32 ).
      CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
      t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `header` p1 = t37 ).
      ENDIF.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t38 ).
      ENDIF.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `join` p1 = t39 ).
      ENDIF.
      CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
      t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t40) = |header|.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
      ENDIF.
      DATA(t42) = |fields|.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
      ENDIF.
      DATA(t44) = |join|.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
      ENDIF.
      t1 = t3.
    ELSE.
      DATA t46 TYPE REF TO zcl_lnt_shape_7e12c7b7.
      CLEAR t46.
      t1 = t46.
    ENDIF.
    me->parsed_data = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
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
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = t49.
    t82 = t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = VALUE abap_bool( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = t82.
    CLEAR t86.
    IF t87 IS BOUND.
      t86 = t87.
    ENDIF.
    IF t86 IS NOT BOUND.
      t85 = abap_true.
    ELSE.
      t85 = xsdbool( t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t85 = abap_true.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      t84 = t88.
    ELSE.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      DATA(t91) = t82.
      t90 = t91.
      DATA(t92) = |abapGit|.
      t89 = t90->get( p0 = t92 ).
      t84 = t89.
    ENDIF.
    t81 = t84.
    t80 = t81.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = VALUE abap_bool( ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = t80.
    CLEAR t95.
    IF t96 IS BOUND.
      t95 = t96.
    ENDIF.
    IF t95 IS NOT BOUND.
      t94 = abap_true.
    ELSE.
      t94 = xsdbool( t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t94 = abap_true.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      t93 = t97.
    ELSE.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      DATA(t100) = t80.
      t99 = t100.
      DATA(t101) = |asx:abap|.
      t98 = t99->get( p0 = t101 ).
      t93 = t98.
    ENDIF.
    t79 = t93.
    t78 = t79.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = VALUE abap_bool( ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = t78.
    CLEAR t104.
    IF t105 IS BOUND.
      t104 = t105.
    ENDIF.
    IF t104 IS NOT BOUND.
      t103 = abap_true.
    ELSE.
      t103 = xsdbool( t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t103 = abap_true.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      t102 = t106.
    ELSE.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      DATA(t109) = t78.
      t108 = t109.
      DATA(t110) = |asx:values|.
      t107 = t108->get( p0 = t110 ).
      t102 = t107.
    ENDIF.
    t77 = t102.
    t76 = t77.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA(t112) = VALUE abap_bool( ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = t76.
    CLEAR t113.
    IF t114 IS BOUND.
      t113 = t114.
    ENDIF.
    IF t113 IS NOT BOUND.
      t112 = abap_true.
    ELSE.
      t112 = xsdbool( t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t112 = abap_true.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      t111 = t115.
    ELSE.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      DATA(t118) = t76.
      t117 = t118.
      DATA(t119) = |DD25V|.
      t116 = t117->get( p0 = t119 ).
      t111 = t116.
    ENDIF.
    t75 = t111.
    t74 = t75.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = t74.
    IF t123 IS INITIAL.
      t122 = abap_true.
    ENDIF.
    IF t122 = abap_true.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      t121 = t124.
    ELSE.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      DATA(t126) = t74.
      t125 = t126.
      t121 = t125.
    ENDIF.
    t120 = t121.
    DATA t127 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    CLEAR t127.
    DATA(t128) = me->parsed_data.
    t127 = t128.
    DATA t129 TYPE REF TO zcl_lnt_shape_cd8a49be.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = t120.
    t134 = t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = VALUE abap_bool( ).
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = t134.
    CLEAR t138.
    IF t139 IS BOUND.
      t138 = t139.
    ENDIF.
    IF t138 IS NOT BOUND.
      t137 = abap_true.
    ELSE.
      t137 = xsdbool( t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t137 = abap_true.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      t136 = t140.
    ELSE.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      DATA(t143) = t134.
      t142 = t143.
      DATA(t144) = |VIEWCLASS|.
      t141 = t142->get( p0 = t144 ).
      t136 = t141.
    ENDIF.
    t133 = t136.
    t132 = t133.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = t132.
    t146 = t147.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t148.
    DATA(t149) = VALUE abap_bool( ).
    DATA(t150) = t132.
    t149 = xsdbool( t150 IS BOUND ).
    IF t149 = abap_true.
      DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t151.
      DATA(t152) = VALUE abap_bool( ).
      DATA(t153) = t132.
      IF t153 IS INITIAL.
        t152 = abap_true.
      ENDIF.
      IF t152 = abap_true.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t154.
        t151 = t154.
      ELSE.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        DATA(t156) = VALUE abap_bool( ).
        DATA(t157) = t145.
        IF t157 IS INITIAL.
          t156 = abap_true.
        ENDIF.
        IF t156 = abap_true.
          DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t158.
          t155 = t158.
        ELSE.
          DATA(t159) = VALUE string( ).
          DATA(t160) = t145.
          t159 = t160->as_string( ).
          DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t161->has = abap_true.
          t161->value = t159.
          t155 = t161.
        ENDIF.
        t151 = t155.
      ENDIF.
      t148 = t151.
    ELSE.
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t162.
      DATA(t163) = abap_true.
      IF t163 = abap_true.
        DATA(t164) = ||.
        DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t165->has = abap_true.
        t165->value = t164.
        t162 = t165.
      ELSE.
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t166.
        t162 = t166.
      ENDIF.
      t148 = t162.
    ENDIF.
    t131 = t148.
    t130 = t131.
    DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = t120.
    t171 = t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA(t174) = VALUE abap_bool( ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA(t176) = t171.
    CLEAR t175.
    IF t176 IS BOUND.
      t175 = t176.
    ENDIF.
    IF t175 IS NOT BOUND.
      t174 = abap_true.
    ELSE.
      t174 = xsdbool( t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t174 = abap_true.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      t173 = t177.
    ELSE.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t178.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t179.
      DATA(t180) = t171.
      t179 = t180.
      DATA(t181) = |DDTEXT|.
      t178 = t179->get( p0 = t181 ).
      t173 = t178.
    ENDIF.
    t170 = t173.
    t169 = t170.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA(t184) = t169.
    t183 = t184.
    t182 = t183.
    DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t185.
    DATA(t186) = VALUE abap_bool( ).
    DATA(t187) = t169.
    t186 = xsdbool( t187 IS BOUND ).
    IF t186 = abap_true.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t188.
      DATA(t189) = VALUE abap_bool( ).
      DATA(t190) = t169.
      IF t190 IS INITIAL.
        t189 = abap_true.
      ENDIF.
      IF t189 = abap_true.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        t188 = t191.
      ELSE.
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t192.
        DATA(t193) = VALUE abap_bool( ).
        DATA(t194) = t182.
        IF t194 IS INITIAL.
          t193 = abap_true.
        ENDIF.
        IF t193 = abap_true.
          DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t195.
          t192 = t195.
        ELSE.
          DATA(t196) = VALUE string( ).
          DATA(t197) = t182.
          t196 = t197->as_string( ).
          DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t198->has = abap_true.
          t198->value = t196.
          t192 = t198.
        ENDIF.
        t188 = t192.
      ENDIF.
      t185 = t188.
    ELSE.
      DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t199.
      DATA(t200) = abap_true.
      IF t200 = abap_true.
        DATA(t201) = ||.
        DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t202->has = abap_true.
        t202->value = t201.
        t199 = t202.
      ELSE.
        DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t203.
        t199 = t203.
      ENDIF.
      t185 = t199.
    ENDIF.
    t168 = t185.
    t167 = t168.
    t129 = NEW zcl_lnt_shape_cd8a49be( i_viewclass = t130 i_ddtext_4f13 = t167 ).
    CREATE OBJECT t129->zlnt_view_ownkeys_b0e8086400eb.
    t129->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    IF t129->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `VIEWCLASS` p1 = t204 ).
    ENDIF.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    IF t129->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `DDTEXT` p1 = t205 ).
    ENDIF.
    CREATE OBJECT t129->zlnt_json_ownkeys_70e5fd461788.
    t129->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t206) = |VIEWCLASS|.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    IF t129->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = t206 p1 = t207 ).
    ENDIF.
    DATA(t208) = |DDTEXT|.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    IF t129->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = t208 p1 = t209 ).
    ENDIF.
    t127->header = t129.
    DELETE t127->zlnt_record_delet_0597644d88b4 WHERE table_line = `header`.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `header` p1 = t210 ).
    ENDIF.
    DATA(t211) = |header|.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
    ENDIF.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA(t222) = t49.
    t221 = t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA(t224) = VALUE abap_bool( ).
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA(t226) = t221.
    CLEAR t225.
    IF t226 IS BOUND.
      t225 = t226.
    ENDIF.
    IF t225 IS NOT BOUND.
      t224 = abap_true.
    ELSE.
      t224 = xsdbool( t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t224 = abap_true.
      DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t227.
      t223 = t227.
    ELSE.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t228.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      DATA(t230) = t221.
      t229 = t230.
      DATA(t231) = |abapGit|.
      t228 = t229->get( p0 = t231 ).
      t223 = t228.
    ENDIF.
    t220 = t223.
    t219 = t220.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA(t233) = VALUE abap_bool( ).
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA(t235) = t219.
    CLEAR t234.
    IF t235 IS BOUND.
      t234 = t235.
    ENDIF.
    IF t234 IS NOT BOUND.
      t233 = abap_true.
    ELSE.
      t233 = xsdbool( t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t233 = abap_true.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      t232 = t236.
    ELSE.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t237.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      DATA(t239) = t219.
      t238 = t239.
      DATA(t240) = |asx:abap|.
      t237 = t238->get( p0 = t240 ).
      t232 = t237.
    ENDIF.
    t218 = t232.
    t217 = t218.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = VALUE abap_bool( ).
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA(t244) = t217.
    CLEAR t243.
    IF t244 IS BOUND.
      t243 = t244.
    ENDIF.
    IF t243 IS NOT BOUND.
      t242 = abap_true.
    ELSE.
      t242 = xsdbool( t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t242 = abap_true.
      DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t245.
      t241 = t245.
    ELSE.
      DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t246.
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t247.
      DATA(t248) = t217.
      t247 = t248.
      DATA(t249) = |asx:values|.
      t246 = t247->get( p0 = t249 ).
      t241 = t246.
    ENDIF.
    t216 = t241.
    t215 = t216.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = VALUE abap_bool( ).
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA(t253) = t215.
    CLEAR t252.
    IF t253 IS BOUND.
      t252 = t253.
    ENDIF.
    IF t252 IS NOT BOUND.
      t251 = abap_true.
    ELSE.
      t251 = xsdbool( t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t251 = abap_true.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t254.
      t250 = t254.
    ELSE.
      DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t255.
      DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t256.
      DATA(t257) = t215.
      t256 = t257.
      DATA(t258) = |DD27P_TABLE|.
      t255 = t256->get( p0 = t258 ).
      t250 = t255.
    ENDIF.
    t214 = t250.
    t213 = t214.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA(t261) = VALUE abap_bool( ).
    DATA(t262) = t213.
    IF t262 IS INITIAL.
      t261 = abap_true.
    ENDIF.
    IF t261 = abap_true.
      DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t263.
      t260 = t263.
    ELSE.
      DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t264.
      DATA(t265) = t213.
      t264 = t265.
      t260 = t264.
    ENDIF.
    t259 = t260.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA(t270) = t259.
    t269 = t270.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA(t272) = VALUE abap_bool( ).
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA(t274) = t269.
    CLEAR t273.
    IF t274 IS BOUND.
      t273 = t274.
    ENDIF.
    IF t273 IS NOT BOUND.
      t272 = abap_true.
    ELSE.
      t272 = xsdbool( t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t272 = abap_true.
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t275.
      t271 = t275.
    ELSE.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t276.
      DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t277.
      DATA(t278) = t269.
      t277 = t278.
      DATA(t279) = |DD27P|.
      t276 = t277->get( p0 = t279 ).
      t271 = t276.
    ENDIF.
    t268 = t271.
    CLEAR t267.
    IF t268 IS BOUND.
      t267 = t268.
    ENDIF.
    t266 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t267 ).
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA t281 TYPE REF TO object.
    CLEAR t281.
    DATA(t282) = VALUE i( ).
    DO.
      t266->load( ).
      IF t282 >= lines( t266->items ).
        EXIT.
      ENDIF.
      CLEAR t281.
      READ TABLE t266->items INDEX t282 + 1 INTO t281.
      t282 = t282 + 1.
      DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t283.
      CLEAR t280.
      IF t281 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t283 ?= t281.
        t280 = t283.
      ELSE.
        IF t281 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t284 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t284.
          t284 ?= t281.
          CLEAR t280.
          IF t284 IS BOUND.
            CREATE OBJECT t280.
            t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t280->cval = t284.
          ENDIF.
        ELSE.
          CLEAR t280.
          IF t281 IS BOUND.
            DATA t285 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t285.
            DATA t286 TYPE REF TO object.
            CLEAR t286.
            CLEAR t285.
            t286 = t281.
            TRY.
                t280 ?= t286.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t280 IS NOT BOUND.
              TRY.
                  t285 ?= t281.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t285 IS BOUND.
                t280 = t285->source( ).
              ENDIF.
              IF t280 IS NOT BOUND.
                CREATE OBJECT t280.
                t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t280->oval = t281.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t287) = VALUE abap_bool( ).
      DATA(t288) = VALUE abap_bool( ).
      DATA(t289) = VALUE abap_bool( ).
      DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t290.
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t291.
      DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t292.
      DATA(t293) = t280.
      t292 = t293.
      DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t294.
      DATA(t295) = VALUE abap_bool( ).
      DATA(t296) = t292.
      IF t296 IS NOT BOUND.
        t295 = abap_true.
      ELSE.
        t295 = xsdbool( t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t295 = abap_true.
        DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t297.
        t294 = t297.
      ELSE.
        DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t298.
        DATA(t299) = t292.
        DATA(t300) = |VIEWFIELD|.
        t298 = t299->get( p0 = t300 ).
        t294 = t298.
      ENDIF.
      t291 = t294.
      t290 = t291.
      DATA(t301) = VALUE abap_bool( ).
      DATA(t302) = VALUE string( ).
      DATA(t303) = VALUE abap_bool( ).
      DATA(t304) = t290.
      IF t304 IS INITIAL.
        t303 = abap_true.
      ENDIF.
      IF t303 = abap_true.
        DATA(t305) = |undefined|.
        t302 = t305.
      ELSE.
        DATA(t306) = VALUE string( ).
        DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t307.
        DATA(t308) = t290.
        t307 = t308.
        IF t307 IS BOUND.
          t306 = t307->type_of( ).
          IF t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t307->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t306 = `function`.
          ENDIF.
        ELSE.
          t306 = `undefined`.
        ENDIF.
        t302 = t306.
      ENDIF.
      DATA(t309) = |string|.
      t301 = xsdbool( t302 <> t309 ).
      t289 = t301.
      t288 = t289.
      IF t289 = abap_false.
        DATA(t310) = VALUE abap_bool( ).
        DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t311.
        DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t312.
        DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t313.
        DATA(t314) = t280.
        t313 = t314.
        DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t315.
        DATA(t316) = VALUE abap_bool( ).
        DATA(t317) = t313.
        IF t317 IS NOT BOUND.
          t316 = abap_true.
        ELSE.
          t316 = xsdbool( t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t316 = abap_true.
          DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t318.
          t315 = t318.
        ELSE.
          DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t319.
          DATA(t320) = t313.
          DATA(t321) = |TABNAME|.
          t319 = t320->get( p0 = t321 ).
          t315 = t319.
        ENDIF.
        t312 = t315.
        t311 = t312.
        DATA(t322) = VALUE abap_bool( ).
        DATA(t323) = VALUE string( ).
        DATA(t324) = VALUE abap_bool( ).
        DATA(t325) = t311.
        IF t325 IS INITIAL.
          t324 = abap_true.
        ENDIF.
        IF t324 = abap_true.
          DATA(t326) = |undefined|.
          t323 = t326.
        ELSE.
          DATA(t327) = VALUE string( ).
          DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t328.
          DATA(t329) = t311.
          t328 = t329.
          IF t328 IS BOUND.
            t327 = t328->type_of( ).
            IF t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t328->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t327 = `function`.
            ENDIF.
          ELSE.
            t327 = `undefined`.
          ENDIF.
          t323 = t327.
        ENDIF.
        DATA(t330) = |string|.
        t322 = xsdbool( t323 <> t330 ).
        t310 = t322.
        t288 = t310.
      ENDIF.
      t287 = t288.
      IF t288 = abap_false.
        DATA(t331) = VALUE abap_bool( ).
        DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t332.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t333.
        DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t334.
        DATA(t335) = t280.
        t334 = t335.
        DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t336.
        DATA(t337) = VALUE abap_bool( ).
        DATA(t338) = t334.
        IF t338 IS NOT BOUND.
          t337 = abap_true.
        ELSE.
          t337 = xsdbool( t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t337 = abap_true.
          DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t339.
          t336 = t339.
        ELSE.
          DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t340.
          DATA(t341) = t334.
          DATA(t342) = |FIELDNAME|.
          t340 = t341->get( p0 = t342 ).
          t336 = t340.
        ENDIF.
        t333 = t336.
        t332 = t333.
        DATA(t343) = VALUE abap_bool( ).
        DATA(t344) = VALUE string( ).
        DATA(t345) = VALUE abap_bool( ).
        DATA(t346) = t332.
        IF t346 IS INITIAL.
          t345 = abap_true.
        ENDIF.
        IF t345 = abap_true.
          DATA(t347) = |undefined|.
          t344 = t347.
        ELSE.
          DATA(t348) = VALUE string( ).
          DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t349.
          DATA(t350) = t332.
          t349 = t350.
          IF t349 IS BOUND.
            t348 = t349->type_of( ).
            IF t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t349->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t348 = `function`.
            ENDIF.
          ELSE.
            t348 = `undefined`.
          ENDIF.
          t344 = t348.
        ENDIF.
        DATA(t351) = |string|.
        t343 = xsdbool( t344 <> t351 ).
        t331 = t343.
        t287 = t331.
      ENDIF.
      IF t287 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t352.
      DATA t353 TYPE REF TO zcl_lnt_shape_7e12c7b7.
      CLEAR t353.
      DATA(t354) = me->parsed_data.
      t353 = t354.
      t352 = t353->fields_464c.
      DATA t355 TYPE REF TO zcl_lnt_shape_da8531c1.
      CLEAR t355.
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t356.
      DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t357.
      DATA(t358) = t280.
      DATA(t359) = |VIEWFIELD|.
      t357 = t358->get( p0 = t359 ).
      t356 = t357.
      DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t360.
      DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t361.
      DATA(t362) = t280.
      DATA(t363) = |TABNAME|.
      t361 = t362->get( p0 = t363 ).
      t360 = t361.
      DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t364.
      DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t365.
      DATA(t366) = t280.
      DATA(t367) = |FIELDNAME|.
      t365 = t366->get( p0 = t367 ).
      t364 = t365.
      DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t368.
      DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t369.
      DATA(t370) = t280.
      DATA(t371) = |KEYFLAG|.
      t369 = t370->get( p0 = t371 ).
      t368 = t369.
      DATA t372 TYPE REF TO zcl_lnt_shape_da8531c1.
      CLEAR t372.
      DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t373.
      DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t374.
      DATA(t375) = VALUE abap_bool( ).
      DATA(t376) = t356.
      IF t376 IS INITIAL.
        t375 = abap_true.
      ENDIF.
      IF t375 = abap_true.
        DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t377.
        t374 = t377.
      ELSE.
        DATA(t378) = VALUE string( ).
        DATA(t379) = t356.
        t378 = t379->as_string( ).
        DATA(t380) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t380->has = abap_true.
        t380->value = t378.
        t374 = t380.
      ENDIF.
      t373 = t374.
      DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t381.
      DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t382.
      DATA(t383) = VALUE abap_bool( ).
      DATA(t384) = t360.
      IF t384 IS INITIAL.
        t383 = abap_true.
      ENDIF.
      IF t383 = abap_true.
        DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t385.
        t382 = t385.
      ELSE.
        DATA(t386) = VALUE string( ).
        DATA(t387) = t360.
        t386 = t387->as_string( ).
        DATA(t388) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t388->has = abap_true.
        t388->value = t386.
        t382 = t388.
      ENDIF.
      t381 = t382.
      DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t389.
      DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t390.
      DATA(t391) = VALUE abap_bool( ).
      DATA(t392) = t364.
      IF t392 IS INITIAL.
        t391 = abap_true.
      ENDIF.
      IF t391 = abap_true.
        DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t393.
        t390 = t393.
      ELSE.
        DATA(t394) = VALUE string( ).
        DATA(t395) = t364.
        t394 = t395->as_string( ).
        DATA(t396) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t396->has = abap_true.
        t396->value = t394.
        t390 = t396.
      ENDIF.
      t389 = t390.
      DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t397.
      DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t398.
      DATA(t399) = VALUE abap_bool( ).
      DATA(t400) = t368.
      IF t400 IS INITIAL.
        t399 = abap_true.
      ENDIF.
      IF t399 = abap_true.
        DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t401.
        t398 = t401.
      ELSE.
        DATA(t402) = VALUE string( ).
        DATA(t403) = t368.
        t402 = t403->as_string( ).
        DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t404->has = abap_true.
        t404->value = t402.
        t398 = t404.
      ENDIF.
      t397 = t398.
      t372 = NEW zcl_lnt_shape_da8531c1( i_viewfield = t373 i_tabname = t381 i_fieldname = t389 i_keyflag = t397 ).
      CREATE OBJECT t372->zlnt_view_ownkeys_b0e8086400eb.
      t372->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t405.
      IF t372->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t372->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `VIEWFIELD` p1 = t405 ).
      ENDIF.
      DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t406.
      IF t372->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t372->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `TABNAME` p1 = t406 ).
      ENDIF.
      DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t407.
      IF t372->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t372->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `FIELDNAME` p1 = t407 ).
      ENDIF.
      DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t408.
      IF t372->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t372->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `KEYFLAG` p1 = t408 ).
      ENDIF.
      CREATE OBJECT t372->zlnt_json_ownkeys_70e5fd461788.
      t372->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t409) = |VIEWFIELD|.
      DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t410.
      IF t372->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t372->zlnt_json_ownkeys_70e5fd461788->put( p0 = t409 p1 = t410 ).
      ENDIF.
      DATA(t411) = |TABNAME|.
      DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t412.
      IF t372->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t372->zlnt_json_ownkeys_70e5fd461788->put( p0 = t411 p1 = t412 ).
      ENDIF.
      DATA(t413) = |FIELDNAME|.
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t414.
      IF t372->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t372->zlnt_json_ownkeys_70e5fd461788->put( p0 = t413 p1 = t414 ).
      ENDIF.
      DATA(t415) = |KEYFLAG|.
      DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t416.
      IF t372->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t372->zlnt_json_ownkeys_70e5fd461788->put( p0 = t415 p1 = t416 ).
      ENDIF.
      t355 = t372.
      t352->load( ).
      APPEND t355 TO t352->items.
      t352->save( ).
    ENDDO.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t419.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t420.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t421.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t422.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t425.
    DATA(t426) = t49.
    t425 = t426.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA(t428) = VALUE abap_bool( ).
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA(t430) = t425.
    CLEAR t429.
    IF t430 IS BOUND.
      t429 = t430.
    ENDIF.
    IF t429 IS NOT BOUND.
      t428 = abap_true.
    ELSE.
      t428 = xsdbool( t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t428 = abap_true.
      DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t431.
      t427 = t431.
    ELSE.
      DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t432.
      DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t433.
      DATA(t434) = t425.
      t433 = t434.
      DATA(t435) = |abapGit|.
      t432 = t433->get( p0 = t435 ).
      t427 = t432.
    ENDIF.
    t424 = t427.
    t423 = t424.
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t436.
    DATA(t437) = VALUE abap_bool( ).
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t438.
    DATA(t439) = t423.
    CLEAR t438.
    IF t439 IS BOUND.
      t438 = t439.
    ENDIF.
    IF t438 IS NOT BOUND.
      t437 = abap_true.
    ELSE.
      t437 = xsdbool( t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t437 = abap_true.
      DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t440.
      t436 = t440.
    ELSE.
      DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t441.
      DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t442.
      DATA(t443) = t423.
      t442 = t443.
      DATA(t444) = |asx:abap|.
      t441 = t442->get( p0 = t444 ).
      t436 = t441.
    ENDIF.
    t422 = t436.
    t421 = t422.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t445.
    DATA(t446) = VALUE abap_bool( ).
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    DATA(t448) = t421.
    CLEAR t447.
    IF t448 IS BOUND.
      t447 = t448.
    ENDIF.
    IF t447 IS NOT BOUND.
      t446 = abap_true.
    ELSE.
      t446 = xsdbool( t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t446 = abap_true.
      DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t449.
      t445 = t449.
    ELSE.
      DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t450.
      DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t451.
      DATA(t452) = t421.
      t451 = t452.
      DATA(t453) = |asx:values|.
      t450 = t451->get( p0 = t453 ).
      t445 = t450.
    ENDIF.
    t420 = t445.
    t419 = t420.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t454.
    DATA(t455) = VALUE abap_bool( ).
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t456.
    DATA(t457) = t419.
    CLEAR t456.
    IF t457 IS BOUND.
      t456 = t457.
    ENDIF.
    IF t456 IS NOT BOUND.
      t455 = abap_true.
    ELSE.
      t455 = xsdbool( t456->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t455 = abap_true.
      DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t458.
      t454 = t458.
    ELSE.
      DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t459.
      DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t460.
      DATA(t461) = t419.
      t460 = t461.
      DATA(t462) = |DD28J_TABLE|.
      t459 = t460->get( p0 = t462 ).
      t454 = t459.
    ENDIF.
    t418 = t454.
    t417 = t418.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t463.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t464.
    DATA(t465) = VALUE abap_bool( ).
    DATA(t466) = t417.
    IF t466 IS INITIAL.
      t465 = abap_true.
    ENDIF.
    IF t465 = abap_true.
      DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t467.
      t464 = t467.
    ELSE.
      DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t468.
      DATA(t469) = t417.
      t468 = t469.
      t464 = t468.
    ENDIF.
    t463 = t464.
    DATA t470 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t470.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t471.
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t472.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t473.
    DATA(t474) = t463.
    t473 = t474.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t475.
    DATA(t476) = VALUE abap_bool( ).
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA(t478) = t473.
    CLEAR t477.
    IF t478 IS BOUND.
      t477 = t478.
    ENDIF.
    IF t477 IS NOT BOUND.
      t476 = abap_true.
    ELSE.
      t476 = xsdbool( t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t476 = abap_true.
      DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t479.
      t475 = t479.
    ELSE.
      DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t480.
      DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t481.
      DATA(t482) = t473.
      t481 = t482.
      DATA(t483) = |DD28J|.
      t480 = t481->get( p0 = t483 ).
      t475 = t480.
    ENDIF.
    t472 = t475.
    CLEAR t471.
    IF t472 IS BOUND.
      t471 = t472.
    ENDIF.
    t470 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t471 ).
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t484.
    DATA t485 TYPE REF TO object.
    CLEAR t485.
    DATA(t486) = VALUE i( ).
    DO.
      t470->load( ).
      IF t486 >= lines( t470->items ).
        EXIT.
      ENDIF.
      CLEAR t485.
      READ TABLE t470->items INDEX t486 + 1 INTO t485.
      t486 = t486 + 1.
      DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t487.
      CLEAR t484.
      IF t485 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t487 ?= t485.
        t484 = t487.
      ELSE.
        IF t485 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t488 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t488.
          t488 ?= t485.
          CLEAR t484.
          IF t488 IS BOUND.
            CREATE OBJECT t484.
            t484->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t484->cval = t488.
          ENDIF.
        ELSE.
          CLEAR t484.
          IF t485 IS BOUND.
            DATA t489 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t489.
            DATA t490 TYPE REF TO object.
            CLEAR t490.
            CLEAR t489.
            t490 = t485.
            TRY.
                t484 ?= t490.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t484 IS NOT BOUND.
              TRY.
                  t489 ?= t485.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t489 IS BOUND.
                t484 = t489->source( ).
              ENDIF.
              IF t484 IS NOT BOUND.
                CREATE OBJECT t484.
                t484->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t484->oval = t485.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t491 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t491.
      DATA t492 TYPE REF TO zcl_lnt_shape_7e12c7b7.
      CLEAR t492.
      DATA(t493) = me->parsed_data.
      t492 = t493.
      t491 = t492->join.
      DATA t494 TYPE REF TO zcl_lnt_shape_401d2302.
      CLEAR t494.
      DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t495.
      DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t496.
      DATA(t497) = t484.
      DATA(t498) = |LTAB|.
      t496 = t497->get( p0 = t498 ).
      t495 = t496.
      DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t499.
      DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t500.
      DATA(t501) = t484.
      DATA(t502) = |LFIELD|.
      t500 = t501->get( p0 = t502 ).
      t499 = t500.
      DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t503.
      DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t504.
      DATA(t505) = t484.
      DATA(t506) = |OPERATOR|.
      t504 = t505->get( p0 = t506 ).
      t503 = t504.
      DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t507.
      DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t508.
      DATA(t509) = t484.
      DATA(t510) = |RTAB|.
      t508 = t509->get( p0 = t510 ).
      t507 = t508.
      DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t511.
      DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t512.
      DATA(t513) = t484.
      DATA(t514) = |RFIELD|.
      t512 = t513->get( p0 = t514 ).
      t511 = t512.
      DATA t515 TYPE REF TO zcl_lnt_shape_401d2302.
      CLEAR t515.
      DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t516.
      DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t517.
      DATA(t518) = VALUE abap_bool( ).
      DATA(t519) = t495.
      IF t519 IS INITIAL.
        t518 = abap_true.
      ENDIF.
      IF t518 = abap_true.
        DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t520.
        t517 = t520.
      ELSE.
        DATA(t521) = VALUE string( ).
        DATA(t522) = t495.
        t521 = t522->as_string( ).
        DATA(t523) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t523->has = abap_true.
        t523->value = t521.
        t517 = t523.
      ENDIF.
      t516 = t517.
      DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t524.
      DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t525.
      DATA(t526) = VALUE abap_bool( ).
      DATA(t527) = t499.
      IF t527 IS INITIAL.
        t526 = abap_true.
      ENDIF.
      IF t526 = abap_true.
        DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t528.
        t525 = t528.
      ELSE.
        DATA(t529) = VALUE string( ).
        DATA(t530) = t499.
        t529 = t530->as_string( ).
        DATA(t531) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t531->has = abap_true.
        t531->value = t529.
        t525 = t531.
      ENDIF.
      t524 = t525.
      DATA t532 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t532.
      DATA t533 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t533.
      DATA(t534) = VALUE abap_bool( ).
      DATA(t535) = t503.
      IF t535 IS INITIAL.
        t534 = abap_true.
      ENDIF.
      IF t534 = abap_true.
        DATA t536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t536.
        t533 = t536.
      ELSE.
        DATA(t537) = VALUE string( ).
        DATA(t538) = t503.
        t537 = t538->as_string( ).
        DATA(t539) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t539->has = abap_true.
        t539->value = t537.
        t533 = t539.
      ENDIF.
      t532 = t533.
      DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t540.
      DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t541.
      DATA(t542) = VALUE abap_bool( ).
      DATA(t543) = t507.
      IF t543 IS INITIAL.
        t542 = abap_true.
      ENDIF.
      IF t542 = abap_true.
        DATA t544 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t544.
        t541 = t544.
      ELSE.
        DATA(t545) = VALUE string( ).
        DATA(t546) = t507.
        t545 = t546->as_string( ).
        DATA(t547) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t547->has = abap_true.
        t547->value = t545.
        t541 = t547.
      ENDIF.
      t540 = t541.
      DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t548.
      DATA t549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t549.
      DATA(t550) = VALUE abap_bool( ).
      DATA(t551) = t511.
      IF t551 IS INITIAL.
        t550 = abap_true.
      ENDIF.
      IF t550 = abap_true.
        DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t552.
        t549 = t552.
      ELSE.
        DATA(t553) = VALUE string( ).
        DATA(t554) = t511.
        t553 = t554->as_string( ).
        DATA(t555) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t555->has = abap_true.
        t555->value = t553.
        t549 = t555.
      ENDIF.
      t548 = t549.
      t515 = NEW zcl_lnt_shape_401d2302( i_ltab = t516 i_lfield = t524 i_operator_049c = t532 i_rtab = t540 i_rfield = t548 ).
      CREATE OBJECT t515->zlnt_view_ownkeys_b0e8086400eb.
      t515->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t556.
      IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `LTAB` p1 = t556 ).
      ENDIF.
      DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t557.
      IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `LFIELD` p1 = t557 ).
      ENDIF.
      DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t558.
      IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `OPERATOR` p1 = t558 ).
      ENDIF.
      DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t559.
      IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTAB` p1 = t559 ).
      ENDIF.
      DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t560.
      IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RFIELD` p1 = t560 ).
      ENDIF.
      CREATE OBJECT t515->zlnt_json_ownkeys_70e5fd461788.
      t515->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t561) = |LTAB|.
      DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t562.
      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t561 p1 = t562 ).
      ENDIF.
      DATA(t563) = |LFIELD|.
      DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t564.
      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t563 p1 = t564 ).
      ENDIF.
      DATA(t565) = |OPERATOR|.
      DATA t566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t566.
      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t565 p1 = t566 ).
      ENDIF.
      DATA(t567) = |RTAB|.
      DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t568.
      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t567 p1 = t568 ).
      ENDIF.
      DATA(t569) = |RFIELD|.
      DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t570.
      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t569 p1 = t570 ).
      ENDIF.
      t494 = t515.
      t491->load( ).
      APPEND t494 TO t491->items.
      t491->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD parse_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = t1.
    t4 = me->prs_typ_inst_src_objc_vw_ts_vw( i_reg_f149 = t5 ).
    result = t4.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1362_bf065685ae45.
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_c74a232f~update_file.
    me->update_file( i_file = i_file ).
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
