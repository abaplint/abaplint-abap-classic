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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |VIEW|.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 16 ) i_allow_namespace = abap_true i_custom_regex = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t9 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |maxLength| p1 = t11 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |allowNamespace| p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_fields.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    t9 = me->parsed_data.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t11 = t9->fields_464c.
    ENDIF.
    result = t11.

  ENDMETHOD.

  METHOD get_join.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    t9 = me->parsed_data.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t11 = t9->join.
    ENDIF.
    result = t11.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_data.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD prs_typ_inst_src_objc_vw_ts_vw.
    DATA(t1) = i_reg_f149.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_abstract_object.
      t21 = me.
      DATA(t23) = VALUE string( ).
      t23 = t21->name.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t23.
      result = NEW zcl_lnt_unknown_type( i_error = |View, parser error| i_qualified_name = t25 ).
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    DATA t31 TYPE REF TO zcl_lnt_ddic.
    t31 = NEW zcl_lnt_ddic( i_reg_f149 = t1 ).
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t34 = me->parsed_data->fields_464c.
    DATA t37 TYPE REF TO zcl_lnt_shape_da8531c1.
    DATA t38 TYPE REF TO object.
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
      t44 = t37->viewfield.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t49->has = abap_true.
      t49->value = |*|.
      t46 = t49.
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
        t54 = t37->viewfield.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = |-|.
        t56 = t59.
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
        t64 = me->parsed_data->header->viewclass.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t71->has = abap_true.
        t71->value = |X|.
        t68 = t71.
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
          DATA t76 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t76.
          DATA(t77) = VALUE string( ).
          t77 = t37->viewfield->value.
          DATA t81 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t81.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t86->has = abap_true.
          t86->value = |ExternalView|.
          t83 = t86.
          DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t88.
          t81 = zcl_lnt_void_type=>get_db65( i_voided = t83 i_qualified_name = t88 ).
          DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t89.
          CLEAR t89.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          CLEAR t91.
          t76 = NEW zcl_lnt_istructure_component( i_name = t77 i_type_9913 = t81 i_as_include = t89 i_suffix = t91 ).
          CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
          t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t93 ).
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t94.
          IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t94 ).
          ENDIF.
          CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
          t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t96.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t96 ).
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t98.
          IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t98 ).
          ENDIF.
          t27->load( ).
          APPEND t76 TO t27->items.
          t27->save( ).
          CONTINUE.
        ELSE.
          DATA(t99) = VALUE abap_bool( ).
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          t100 = t37->tabname.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          DATA t105 TYPE REF TO zcl_lnt_abstract_object.
          CLEAR t105.
          t105 = me.
          DATA(t107) = VALUE string( ).
          t107 = t105->name.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t107.
          t102 = t109.
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
            DATA(t117) = VALUE string( ).
            DATA(t118) = VALUE string( ).
            DATA(t119) = VALUE string( ).
            DATA(t120) = VALUE string( ).
            DATA(t121) = VALUE string( ).
            DATA(t122) = |Unexpected self reference in view |.
            DATA(t123) = VALUE string( ).
            DATA t124 TYPE REF TO zcl_lnt_abstract_object.
            CLEAR t124.
            t124 = me.
            t123 = t124->name.
            DATA(t128) = strlen( t122 ).
            t121 = |{ t122 }{ t123 }|.
            DATA(t130) = strlen( t121 ).
            t120 = |{ t121 }{ |, | }|.
            DATA(t131) = VALUE string( ).
            DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t132.
            t132 = t37->fieldname.
            DATA(t135) = VALUE string( ).
            DATA(t136) = VALUE abap_bool( ).
            IF t132 IS INITIAL.
              t136 = abap_true.
            ELSEIF t132->has = abap_false.
              t136 = abap_true.
            ENDIF.
            IF t136 = abap_true.
              t135 = |undefined|.
            ELSE.
              t135 = t132->value.
            ENDIF.
            t131 = t135.
            DATA(t141) = strlen( t120 ).
            t119 = |{ t120 }{ t131 }|.
            DATA(t143) = strlen( t119 ).
            t118 = |{ t119 }{ | | }|.
            DATA(t144) = VALUE string( ).
            DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t145.
            t145 = t37->fieldname.
            DATA(t148) = VALUE string( ).
            DATA(t149) = VALUE abap_bool( ).
            IF t145 IS INITIAL.
              t149 = abap_true.
            ELSEIF t145->has = abap_false.
              t149 = abap_true.
            ENDIF.
            IF t149 = abap_true.
              t148 = |undefined|.
            ELSE.
              t148 = t145->value.
            ENDIF.
            t144 = t148.
            DATA(t154) = strlen( t118 ).
            t117 = |{ t118 }{ t144 }|.
            DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t155->has = abap_true.
            t155->value = t117.
            t114 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t155 ).
            t113 = NEW #( ).
            t113->payload = t114.
            CLEAR t113->source_value.
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
            RAISE EXCEPTION t113.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t159 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t159.
      DATA t161 TYPE REF TO zcl_lnt_ddic.
      CLEAR t161.
      t161 = t31.
      DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t163.
      t163 = t37->tabname.
      DATA t166 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t166.
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t168.
      t168 = t163.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      CLEAR t170.
      DATA(t172) = VALUE abap_bool( ).
      IF t168 IS INITIAL.
        t172 = abap_true.
      ELSEIF t168->has = abap_false.
        t172 = abap_true.
      ENDIF.
      IF t172 = abap_true.
        DATA t174 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t174.
        DATA t175 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t175.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t178.
        t175 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t178 ).
        DATA t179 TYPE REF TO zif_lnt_object.
        CLEAR t179.
        CLEAR t179.
        t174 = NEW zcl_lnt_ilookup_result( i_type_9913 = t175 i_object_19cd = t179 ).
        CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
        t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t181 ).
        CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
        t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t183.
        t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t183 ).
        t166 = t174.
      ELSE.
        DATA t185 TYPE REF TO zcl_lnt_table.
        CLEAR t185.
        DATA t186 TYPE REF TO zcl_lnt_table.
        CLEAR t186.
        DATA t187 TYPE REF TO zif_lnt_object.
        CLEAR t187.
        DATA t188 TYPE REF TO zif_lnt_registry.
        CLEAR t188.
        t188 = t161->reg.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t193->has = abap_true.
        t193->value = |TABL|.
        t190 = t193.
        DATA(t197) = VALUE string( ).
        t197 = t163->value.
        DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t199->has = abap_true.
        t199->value = t197.
        t187 = t188->get_object( i_type_9913 = t190 i_name = t199 ).
        DATA t201 TYPE REF TO object.
        CLEAR t201.
        t201 = t187.
        t186 ?= t201.
        t185 = t186.
        DATA t202 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t202.
        IF xsdbool( t185 IS BOUND ) = abap_true.
          DATA t205 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t205.
          DATA t206 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t206.
          DATA t208 TYPE REF TO zcl_lnt_table.
          CLEAR t208.
          t208 = t185.
          DATA t210 TYPE REF TO zif_lnt_registry.
          CLEAR t210.
          t210 = t161->reg.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t213.
          t206 = t208->parse_type( i_reg_f149 = t210 i_data_element = t212 i_description = t213 ).
          DATA t214 TYPE REF TO zif_lnt_object.
          CLEAR t214.
          t214 = t185.
          t205 = NEW zcl_lnt_ilookup_result( i_type_9913 = t206 i_object_19cd = t214 ).
          CREATE OBJECT t205->zlnt_view_ownkeys_b0e8086400eb.
          t205->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t217 ).
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t218 ).
          ENDIF.
          CREATE OBJECT t205->zlnt_json_ownkeys_70e5fd461788.
          t205->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t220 ).
          DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t222.
          IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t222 ).
          ENDIF.
          t202 = t205.
        ELSE.
          DATA t224 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t224.
          DATA(t229) = VALUE string( ).
          t229 = t163->value.
          DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t231->has = abap_true.
          t231->value = t229.
          t224 = t161->lookup_ddls( i_name = t231 ).
          DATA t233 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t233.
          IF xsdbool( t224 IS BOUND ) = abap_true.
            t233 = t224.
          ELSE.
            DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t239.
            DATA(t242) = VALUE string( ).
            t242 = t163->value.
            DATA(t244) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t244->has = abap_true.
            t244->value = t242.
            t239 = t244.
            DATA t246 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t246.
            DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t248.
            t248 = t239.
            DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t250.
            CLEAR t250.
            DATA(t252) = VALUE abap_bool( ).
            IF t248 IS INITIAL.
              t252 = abap_true.
            ELSEIF t248->has = abap_false.
              t252 = abap_true.
            ENDIF.
            IF t252 = abap_true.
              DATA t254 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t254.
              DATA t255 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t255.
              DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t258.
              t255 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t258 ).
              DATA t259 TYPE REF TO zif_lnt_object.
              CLEAR t259.
              CLEAR t259.
              t254 = NEW zcl_lnt_ilookup_result( i_type_9913 = t255 i_object_19cd = t259 ).
              CREATE OBJECT t254->zlnt_view_ownkeys_b0e8086400eb.
              t254->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t261.
              t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t261 ).
              CREATE OBJECT t254->zlnt_json_ownkeys_70e5fd461788.
              t254->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t263.
              t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t263 ).
              t246 = t254.
            ELSE.
              DATA t265 TYPE REF TO zcl_lnt_table.
              CLEAR t265.
              DATA t266 TYPE REF TO zcl_lnt_table.
              CLEAR t266.
              DATA t267 TYPE REF TO zif_lnt_object.
              CLEAR t267.
              DATA t268 TYPE REF TO zif_lnt_registry.
              CLEAR t268.
              t268 = t161->reg.
              DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t270.
              DATA(t273) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t273->has = abap_true.
              t273->value = |VIEW|.
              t270 = t273.
              DATA(t277) = VALUE string( ).
              t277 = t239->value.
              DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t279->has = abap_true.
              t279->value = t277.
              t267 = t268->get_object( i_type_9913 = t270 i_name = t279 ).
              DATA t281 TYPE REF TO object.
              CLEAR t281.
              t281 = t267.
              t266 ?= t281.
              t265 = t266.
              DATA t282 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t282.
              IF xsdbool( t265 IS BOUND ) = abap_true.
                DATA t285 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t285.
                DATA t286 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t286.
                DATA t288 TYPE REF TO zcl_lnt_table.
                CLEAR t288.
                t288 = t265.
                DATA t290 TYPE REF TO zif_lnt_registry.
                CLEAR t290.
                t290 = t161->reg.
                DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t292.
                DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t293.
                t286 = t288->parse_type( i_reg_f149 = t290 i_data_element = t292 i_description = t293 ).
                DATA t294 TYPE REF TO zif_lnt_object.
                CLEAR t294.
                t294 = t265.
                t285 = NEW zcl_lnt_ilookup_result( i_type_9913 = t286 i_object_19cd = t294 ).
                CREATE OBJECT t285->zlnt_view_ownkeys_b0e8086400eb.
                t285->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t297.
                t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t297 ).
                DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t298.
                IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t298 ).
                ENDIF.
                CREATE OBJECT t285->zlnt_json_ownkeys_70e5fd461788.
                t285->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t300.
                t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t300 ).
                DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t302.
                IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t302 ).
                ENDIF.
                t282 = t285.
              ELSE.
                DATA t303 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t303.
                DATA t305 TYPE REF TO zif_lnt_registry.
                CLEAR t305.
                t305 = t161->reg.
                DATA(t307) = VALUE string( ).
                t307 = t239->value.
                IF t305->in_error_namespace( i_name = t307 ) = abap_true.
                  DATA t309 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t309.
                  DATA t310 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t310.
                  DATA(t312) = VALUE string( ).
                  DATA(t313) = VALUE string( ).
                  t313 = t239->value.
                  DATA(t316) = strlen( t313 ).
                  t312 = |{ t313 }{ | not found, lookupView| }|.
                  DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t317.
                  t310 = NEW zcl_lnt_unknown_type( i_error = t312 i_qualified_name = t317 ).
                  DATA t318 TYPE REF TO zif_lnt_object.
                  CLEAR t318.
                  CLEAR t318.
                  t309 = NEW zcl_lnt_ilookup_result( i_type_9913 = t310 i_object_19cd = t318 ).
                  CREATE OBJECT t309->zlnt_view_ownkeys_b0e8086400eb.
                  t309->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t320.
                  t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t320 ).
                  CREATE OBJECT t309->zlnt_json_ownkeys_70e5fd461788.
                  t309->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t322.
                  t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t322 ).
                  t303 = t309.
                ELSE.
                  DATA t323 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t323.
                  DATA t324 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t324.
                  DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t326.
                  DATA(t328) = VALUE string( ).
                  t328 = t239->value.
                  DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t330->has = abap_true.
                  t330->value = t328.
                  t326 = t330.
                  DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t332.
                  t324 = zcl_lnt_void_type=>get_db65( i_voided = t326 i_qualified_name = t332 ).
                  DATA t333 TYPE REF TO zif_lnt_object.
                  CLEAR t333.
                  CLEAR t333.
                  t323 = NEW zcl_lnt_ilookup_result( i_type_9913 = t324 i_object_19cd = t333 ).
                  CREATE OBJECT t323->zlnt_view_ownkeys_b0e8086400eb.
                  t323->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t335.
                  t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t335 ).
                  CREATE OBJECT t323->zlnt_json_ownkeys_70e5fd461788.
                  t323->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t337.
                  t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t337 ).
                  t303 = t323.
                ENDIF.
                t282 = t303.
              ENDIF.
              t246 = t282.
            ENDIF.
            t233 = t246.
          ENDIF.
          t202 = t233.
        ENDIF.
        t166 = t202.
      ENDIF.
      t159 = t166.
      DATA t338 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t338.
      t338 = t159->zlnt_view_read_sr_9be58e2d4893( ).
      DATA t342 TYPE REF TO zif_lnt_object.
      CLEAR t342.
      t342 = t159->zlnt_view_read_sr_2de0200e6505( ).
      IF xsdbool( t342 IS BOUND ) = abap_true.
        DATA t345 TYPE REF TO zcl_lnt_iobject_and_token.
        CLEAR t345.
        DATA t346 TYPE REF TO zif_lnt_object.
        CLEAR t346.
        t346 = t159->zlnt_view_read_sr_2de0200e6505( ).
        DATA t353 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t353.
        CLEAR t353.
        DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t355.
        CLEAR t355.
        t345 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t346 i_token = t353 i_filename = t355 ).
        CREATE OBJECT t345->zlnt_view_ownkeys_b0e8086400eb.
        t345->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t357.
        t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t357 ).
        CREATE OBJECT t345->zlnt_json_ownkeys_70e5fd461788.
        t345->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t359.
        t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t359 ).
        t29->load( ).
        APPEND t345 TO t29->items.
        t29->save( ).
      ENDIF.
      DATA(t360) = VALUE abap_bool( ).
      DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t361.
      t361 = t37->viewfield.
      DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t363.
      DATA(t366) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t366->has = abap_true.
      t366->value = |.APPEND|.
      t363 = t366.
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
      DATA(t371) = t338.
      IF xsdbool( t371 IS BOUND AND t371 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
        DATA t372 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t372.
        DATA t375 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t375.
        t375 ?= t338.
        DATA(t377) = VALUE string( ).
        t377 = t37->fieldname->value.
        DATA t382 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        CLEAR t382.
        t382 = t375->indexed.
        DATA(t384) = VALUE string( ).
        DATA(t386) = strlen( t377 ).
        t384 = t377.
        IF t384 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t384 TO UPPER CASE.
        ELSE.
          t384 = zlnt_runtime_uppe_91169605024d=>full( t384 ).
        ENDIF.
        t372 = t382->get( p0 = t384 ).
        DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t390.
        CLEAR t390.
        IF xsdbool( t372 IS INITIAL ) = abap_true.
          DATA(t395) = VALUE string( ).
          DATA(t396) = VALUE string( ).
          DATA(t397) = VALUE string( ).
          DATA(t398) = VALUE string( ).
          DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t399.
          t399 = t37->fieldname.
          DATA(t402) = VALUE string( ).
          DATA(t403) = VALUE abap_bool( ).
          IF t399 IS INITIAL.
            t403 = abap_true.
          ELSEIF t399->has = abap_false.
            t403 = abap_true.
          ENDIF.
          IF t403 = abap_true.
            t402 = |undefined|.
          ELSE.
            t402 = t399->value.
          ENDIF.
          t398 = t402.
          DATA(t409) = strlen( t398 ).
          t397 = |{ t398 }{ | not found in | }|.
          DATA(t410) = VALUE string( ).
          DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t411.
          t411 = t37->tabname.
          DATA(t414) = VALUE string( ).
          DATA(t415) = VALUE abap_bool( ).
          IF t411 IS INITIAL.
            t415 = abap_true.
          ELSEIF t411->has = abap_false.
            t415 = abap_true.
          ENDIF.
          IF t415 = abap_true.
            t414 = |undefined|.
          ELSE.
            t414 = t411->value.
          ENDIF.
          t410 = t414.
          DATA(t420) = strlen( t397 ).
          t396 = |{ t397 }{ t410 }|.
          DATA(t422) = strlen( t396 ).
          t395 = |{ t396 }{ |, VIEW parse type| }|.
          DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t423.
          t338 = NEW zcl_lnt_unknown_type( i_error = t395 i_qualified_name = t423 ).
        ELSE.
          t338 = t372.
        ENDIF.
      ENDIF.
      DATA t427 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t427.
      DATA(t428) = VALUE string( ).
      t428 = t37->viewfield->value.
      DATA t432 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t432.
      t432 = t338.
      DATA t434 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t434.
      CLEAR t434.
      DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t436.
      CLEAR t436.
      t427 = NEW zcl_lnt_istructure_component( i_name = t428 i_type_9913 = t432 i_as_include = t434 i_suffix = t436 ).
      CREATE OBJECT t427->zlnt_view_ownkeys_b0e8086400eb.
      t427->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t438.
      t427->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t438 ).
      DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t439.
      IF t427->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t427->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t439 ).
      ENDIF.
      CREATE OBJECT t427->zlnt_json_ownkeys_70e5fd461788.
      t427->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t441.
      t427->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t441 ).
      DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t443.
      IF t427->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t427->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t443 ).
      ENDIF.
      t27->load( ).
      APPEND t427 TO t27->items.
      t27->save( ).
    ENDDO.
    t1->get_ddic_references( )->set_using( i_obj_1ed0 = me i_using = t29 ).
    t27->load( ).
    IF xsdbool( lines( t27->items ) = 0 ) = abap_true.
      DATA(t454) = VALUE string( ).
      DATA(t455) = |View |.
      DATA(t456) = VALUE string( ).
      DATA t457 TYPE REF TO zcl_lnt_abstract_object.
      t457 = me.
      t456 = t457->name.
      DATA(t461) = strlen( t455 ).
      t454 = |{ t455 }{ t456 }|.
      DATA(t463) = strlen( t454 ).
      DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_unknown_type( i_error = |{ t454 }{ | does not contain any components| }| i_qualified_name = t464 ).
      RETURN.
    ENDIF.
    DATA t470 TYPE REF TO zcl_lnt_abstract_object.
    t470 = me.
    DATA(t472) = VALUE string( ).
    t472 = t470->name.
    DATA(t474) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t474->has = abap_true.
    t474->value = t472.
    DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    result = NEW zcl_lnt_structure_type( i_components = t27 i_qualified_name = t474 i_ddic_name = t476 i_description = t477 ).

  ENDMETHOD.

  METHOD list_keys.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    t13 = me->parsed_data.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t13 IS INITIAL ) = abap_true.
    ELSE.
      t15 = t13->fields_464c.
    ENDIF.
    t11 = t15.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t11 IS BOUND ) = abap_true.
      t22 = t11.
    ELSE.
      CREATE OBJECT t22.
    ENDIF.
    t10 = t22.
    DATA t28 TYPE REF TO zcl_lnt_shape_da8531c1.
    DATA t29 TYPE REF TO object.
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
      t34 = t28->keyflag.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = |X|.
      t36 = t39.
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
        DATA t44 TYPE string.
        t44 = t28->fieldname->value.
        t8->load( ).
        APPEND t44 TO t8->items.
        t8->save( ).
      ENDIF.
    ENDDO.
    result = t8.

  ENDMETHOD.

  METHOD get_description.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_cd8a49be.
    DATA t11 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    t11 = me->parsed_data.
    DATA t13 TYPE REF TO zcl_lnt_shape_cd8a49be.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
    ELSE.
      t13 = t11->header.
    ENDIF.
    t9 = t13.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t20 = t9->ddtext_87ee.
    ENDIF.
    result = t20.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t3 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    DATA t4 TYPE REF TO zcl_lnt_shape_cd8a49be.
    DATA t7 TYPE REF TO zcl_lnt_shape_cd8a49be.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = ||.
    t8 = t12.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = ||.
    t7 = NEW zcl_lnt_shape_cd8a49be( i_viewclass = t8 i_ddtext_4f13 = t18 ).
    CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
    t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `VIEWCLASS` p1 = t20 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `DDTEXT` p1 = t21 ).
    ENDIF.
    CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
    t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |VIEWCLASS| p1 = t23 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |DDTEXT| p1 = t25 ).
    ENDIF.
    t4 = t7.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    t3 = NEW zcl_lnt_shape_7e12c7b7( i_header = t4 i_fields_62af = t27 i_join = t32 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `header` p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `join` p1 = t39 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |header| p1 = t41 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |fields| p1 = t43 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |join| p1 = t45 ).
    ENDIF.
    me->parsed_data = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t47 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t47 IS INITIAL ) = abap_true.
    ELSE.
      t50 = t47.
    ENDIF.
    t49 = t50.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t57 = xsdbool( t49 IS INITIAL ).
    t56 = t57.
    IF t57 = abap_false.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t66 = t49->get( p0 = |abapGit| ).
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t56 = xsdbool( t66 IS INITIAL ).
    ENDIF.
    IF t56 = abap_true.
      RETURN.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t82 = t49.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = VALUE abap_bool( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t82 IS BOUND.
      t86 = t82.
    ENDIF.
    IF t86 IS NOT BOUND.
      t85 = abap_true.
    ELSE.
      t85 = xsdbool( t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t85 = abap_true.
    ELSE.
      t84 = t82->get( p0 = |abapGit| ).
    ENDIF.
    t80 = t84.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = VALUE abap_bool( ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t80 IS BOUND.
      t95 = t80.
    ENDIF.
    IF t95 IS NOT BOUND.
      t94 = abap_true.
    ELSE.
      t94 = xsdbool( t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t94 = abap_true.
    ELSE.
      t93 = t80->get( p0 = |asx:abap| ).
    ENDIF.
    t78 = t93.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = VALUE abap_bool( ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78 IS BOUND.
      t104 = t78.
    ENDIF.
    IF t104 IS NOT BOUND.
      t103 = abap_true.
    ELSE.
      t103 = xsdbool( t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t103 = abap_true.
    ELSE.
      t102 = t78->get( p0 = |asx:values| ).
    ENDIF.
    t76 = t102.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t112) = VALUE abap_bool( ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76 IS BOUND.
      t113 = t76.
    ENDIF.
    IF t113 IS NOT BOUND.
      t112 = abap_true.
    ELSE.
      t112 = xsdbool( t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t112 = abap_true.
    ELSE.
      t111 = t76->get( p0 = |DD25V| ).
    ENDIF.
    t74 = t111.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t74 IS INITIAL ) = abap_true.
    ELSE.
      t121 = t74.
    ENDIF.
    t120 = t121.
    DATA t127 TYPE REF TO zcl_lnt_shape_7e12c7b7.
    t127 = me->parsed_data.
    DATA t129 TYPE REF TO zcl_lnt_shape_cd8a49be.
    DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t134 = t120.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t137) = VALUE abap_bool( ).
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t134 IS BOUND.
      t138 = t134.
    ENDIF.
    IF t138 IS NOT BOUND.
      t137 = abap_true.
    ELSE.
      t137 = xsdbool( t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t137 = abap_true.
    ELSE.
      t136 = t134->get( p0 = |VIEWCLASS| ).
    ENDIF.
    t132 = t136.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t145 = t132.
    DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t132 IS BOUND ) = abap_true.
      DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t132 IS INITIAL ) = abap_true.
      ELSE.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t145 IS INITIAL ) = abap_true.
        ELSE.
          DATA(t159) = VALUE string( ).
          t159 = t145->as_string( ).
          DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t161->has = abap_true.
          t161->value = t159.
          t155 = t161.
        ENDIF.
        t151 = t155.
      ENDIF.
      t148 = t151.
    ELSE.
      DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t165->has = abap_true.
      t165->value = ||.
      t148 = t165.
    ENDIF.
    t130 = t148.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t171 = t120.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t174) = VALUE abap_bool( ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t171 IS BOUND.
      t175 = t171.
    ENDIF.
    IF t175 IS NOT BOUND.
      t174 = abap_true.
    ELSE.
      t174 = xsdbool( t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t174 = abap_true.
    ELSE.
      t173 = t171->get( p0 = |DDTEXT| ).
    ENDIF.
    t169 = t173.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t182 = t169.
    DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t169 IS BOUND ) = abap_true.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t169 IS INITIAL ) = abap_true.
      ELSE.
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t182 IS INITIAL ) = abap_true.
        ELSE.
          DATA(t196) = VALUE string( ).
          t196 = t182->as_string( ).
          DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t198->has = abap_true.
          t198->value = t196.
          t192 = t198.
        ENDIF.
        t188 = t192.
      ENDIF.
      t185 = t188.
    ELSE.
      DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t202->has = abap_true.
      t202->value = ||.
      t185 = t202.
    ENDIF.
    t129 = NEW zcl_lnt_shape_cd8a49be( i_viewclass = t130 i_ddtext_4f13 = t185 ).
    CREATE OBJECT t129->zlnt_view_ownkeys_b0e8086400eb.
    t129->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `VIEWCLASS` p1 = t204 ).
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `DDTEXT` p1 = t205 ).
    ENDIF.
    CREATE OBJECT t129->zlnt_json_ownkeys_70e5fd461788.
    t129->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = |VIEWCLASS| p1 = t207 ).
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = |DDTEXT| p1 = t209 ).
    ENDIF.
    t127->header = t129.
    DELETE t127->zlnt_record_delet_0597644d88b4 WHERE table_line = `header`.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `header` p1 = t210 ).
    ENDIF.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |header| p1 = t212 ).
    ENDIF.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t221 = t49.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t224) = VALUE abap_bool( ).
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t221 IS BOUND.
      t225 = t221.
    ENDIF.
    IF t225 IS NOT BOUND.
      t224 = abap_true.
    ELSE.
      t224 = xsdbool( t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t224 = abap_true.
    ELSE.
      t223 = t221->get( p0 = |abapGit| ).
    ENDIF.
    t219 = t223.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t233) = VALUE abap_bool( ).
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t219 IS BOUND.
      t234 = t219.
    ENDIF.
    IF t234 IS NOT BOUND.
      t233 = abap_true.
    ELSE.
      t233 = xsdbool( t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t233 = abap_true.
    ELSE.
      t232 = t219->get( p0 = |asx:abap| ).
    ENDIF.
    t217 = t232.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t242) = VALUE abap_bool( ).
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t217 IS BOUND.
      t243 = t217.
    ENDIF.
    IF t243 IS NOT BOUND.
      t242 = abap_true.
    ELSE.
      t242 = xsdbool( t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t242 = abap_true.
    ELSE.
      t241 = t217->get( p0 = |asx:values| ).
    ENDIF.
    t215 = t241.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t251) = VALUE abap_bool( ).
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t215 IS BOUND.
      t252 = t215.
    ENDIF.
    IF t252 IS NOT BOUND.
      t251 = abap_true.
    ELSE.
      t251 = xsdbool( t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t251 = abap_true.
    ELSE.
      t250 = t215->get( p0 = |DD27P_TABLE| ).
    ENDIF.
    t213 = t250.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t213 IS INITIAL ) = abap_true.
    ELSE.
      t260 = t213.
    ENDIF.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t269 = t260.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t272) = VALUE abap_bool( ).
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t269 IS BOUND.
      t273 = t269.
    ENDIF.
    IF t273 IS NOT BOUND.
      t272 = abap_true.
    ELSE.
      t272 = xsdbool( t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t272 = abap_true.
    ELSE.
      t271 = t269->get( p0 = |DD27P| ).
    ENDIF.
    t268 = t271.
    IF t268 IS BOUND.
      t267 = t268.
    ENDIF.
    t266 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t267 ).
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t281 TYPE REF TO object.
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
      DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t292.
      t292 = t280.
      DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t294.
      DATA(t295) = VALUE abap_bool( ).
      IF t292 IS NOT BOUND.
        t295 = abap_true.
      ELSE.
        t295 = xsdbool( t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t295 = abap_true.
        CLEAR t294.
      ELSE.
        t294 = t292->get( p0 = |VIEWFIELD| ).
      ENDIF.
      t290 = t294.
      DATA(t302) = VALUE string( ).
      IF xsdbool( t290 IS INITIAL ) = abap_true.
        t302 = |undefined|.
      ELSE.
        DATA(t306) = VALUE string( ).
        DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t307.
        t307 = t290.
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
      t289 = xsdbool( t302 <> |string| ).
      t288 = t289.
      IF t289 = abap_false.
        DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t311.
        DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t313.
        t313 = t280.
        DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t315.
        DATA(t316) = VALUE abap_bool( ).
        IF t313 IS NOT BOUND.
          t316 = abap_true.
        ELSE.
          t316 = xsdbool( t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t316 = abap_true.
          CLEAR t315.
        ELSE.
          t315 = t313->get( p0 = |TABNAME| ).
        ENDIF.
        t311 = t315.
        DATA(t323) = VALUE string( ).
        IF xsdbool( t311 IS INITIAL ) = abap_true.
          t323 = |undefined|.
        ELSE.
          DATA(t327) = VALUE string( ).
          DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t328.
          t328 = t311.
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
        t288 = xsdbool( t323 <> |string| ).
      ENDIF.
      t287 = t288.
      IF t288 = abap_false.
        DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t332.
        DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t334.
        t334 = t280.
        DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t336.
        DATA(t337) = VALUE abap_bool( ).
        IF t334 IS NOT BOUND.
          t337 = abap_true.
        ELSE.
          t337 = xsdbool( t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t337 = abap_true.
          CLEAR t336.
        ELSE.
          t336 = t334->get( p0 = |FIELDNAME| ).
        ENDIF.
        t332 = t336.
        DATA(t344) = VALUE string( ).
        IF xsdbool( t332 IS INITIAL ) = abap_true.
          t344 = |undefined|.
        ELSE.
          DATA(t348) = VALUE string( ).
          DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t349.
          t349 = t332.
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
        t287 = xsdbool( t344 <> |string| ).
      ENDIF.
      IF t287 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t352.
      t352 = me->parsed_data->fields_464c.
      DATA t355 TYPE REF TO zcl_lnt_shape_da8531c1.
      CLEAR t355.
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t356.
      t356 = t280->get( p0 = |VIEWFIELD| ).
      DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t360.
      t360 = t280->get( p0 = |TABNAME| ).
      DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t364.
      t364 = t280->get( p0 = |FIELDNAME| ).
      DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t368.
      t368 = t280->get( p0 = |KEYFLAG| ).
      DATA t372 TYPE REF TO zcl_lnt_shape_da8531c1.
      CLEAR t372.
      DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t373.
      DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t374.
      IF xsdbool( t356 IS INITIAL ) = abap_true.
        CLEAR t374.
      ELSE.
        DATA(t378) = VALUE string( ).
        t378 = t356->as_string( ).
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
      IF xsdbool( t360 IS INITIAL ) = abap_true.
        CLEAR t382.
      ELSE.
        DATA(t386) = VALUE string( ).
        t386 = t360->as_string( ).
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
      IF xsdbool( t364 IS INITIAL ) = abap_true.
        CLEAR t390.
      ELSE.
        DATA(t394) = VALUE string( ).
        t394 = t364->as_string( ).
        DATA(t396) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t396->has = abap_true.
        t396->value = t394.
        t390 = t396.
      ENDIF.
      t389 = t390.
      DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t398.
      IF xsdbool( t368 IS INITIAL ) = abap_true.
        CLEAR t398.
      ELSE.
        DATA(t402) = VALUE string( ).
        t402 = t368->as_string( ).
        DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t404->has = abap_true.
        t404->value = t402.
        t398 = t404.
      ENDIF.
      t372 = NEW zcl_lnt_shape_da8531c1( i_viewfield = t373 i_tabname = t381 i_fieldname = t389 i_keyflag = t398 ).
      CREATE OBJECT t372->zlnt_view_ownkeys_b0e8086400eb.
      t372->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t405.
      t372->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `VIEWFIELD` p1 = t405 ).
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
      DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t410.
      t372->zlnt_json_ownkeys_70e5fd461788->put( p0 = |VIEWFIELD| p1 = t410 ).
      DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t412.
      IF t372->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t372->zlnt_json_ownkeys_70e5fd461788->put( p0 = |TABNAME| p1 = t412 ).
      ENDIF.
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t414.
      IF t372->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t372->zlnt_json_ownkeys_70e5fd461788->put( p0 = |FIELDNAME| p1 = t414 ).
      ENDIF.
      DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t416.
      IF t372->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t372->zlnt_json_ownkeys_70e5fd461788->put( p0 = |KEYFLAG| p1 = t416 ).
      ENDIF.
      t355 = t372.
      t352->load( ).
      APPEND t355 TO t352->items.
      t352->save( ).
    ENDDO.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t425 = t49.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t428) = VALUE abap_bool( ).
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t425 IS BOUND.
      t429 = t425.
    ENDIF.
    IF t429 IS NOT BOUND.
      t428 = abap_true.
    ELSE.
      t428 = xsdbool( t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t428 = abap_true.
    ELSE.
      t427 = t425->get( p0 = |abapGit| ).
    ENDIF.
    t423 = t427.
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t437) = VALUE abap_bool( ).
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t423 IS BOUND.
      t438 = t423.
    ENDIF.
    IF t438 IS NOT BOUND.
      t437 = abap_true.
    ELSE.
      t437 = xsdbool( t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t437 = abap_true.
    ELSE.
      t436 = t423->get( p0 = |asx:abap| ).
    ENDIF.
    t421 = t436.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t446) = VALUE abap_bool( ).
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t421 IS BOUND.
      t447 = t421.
    ENDIF.
    IF t447 IS NOT BOUND.
      t446 = abap_true.
    ELSE.
      t446 = xsdbool( t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t446 = abap_true.
    ELSE.
      t445 = t421->get( p0 = |asx:values| ).
    ENDIF.
    t419 = t445.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t455) = VALUE abap_bool( ).
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t419 IS BOUND.
      t456 = t419.
    ENDIF.
    IF t456 IS NOT BOUND.
      t455 = abap_true.
    ELSE.
      t455 = xsdbool( t456->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t455 = abap_true.
    ELSE.
      t454 = t419->get( p0 = |DD28J_TABLE| ).
    ENDIF.
    t417 = t454.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t417 IS INITIAL ) = abap_true.
    ELSE.
      t464 = t417.
    ENDIF.
    DATA t470 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t473 = t464.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t476) = VALUE abap_bool( ).
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t473 IS BOUND.
      t477 = t473.
    ENDIF.
    IF t477 IS NOT BOUND.
      t476 = abap_true.
    ELSE.
      t476 = xsdbool( t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t476 = abap_true.
    ELSE.
      t475 = t473->get( p0 = |DD28J| ).
    ENDIF.
    t472 = t475.
    IF t472 IS BOUND.
      t471 = t472.
    ENDIF.
    t470 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t471 ).
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t485 TYPE REF TO object.
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
      t491 = me->parsed_data->join.
      DATA t494 TYPE REF TO zcl_lnt_shape_401d2302.
      CLEAR t494.
      DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t495.
      t495 = t484->get( p0 = |LTAB| ).
      DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t499.
      t499 = t484->get( p0 = |LFIELD| ).
      DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t503.
      t503 = t484->get( p0 = |OPERATOR| ).
      DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t507.
      t507 = t484->get( p0 = |RTAB| ).
      DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t511.
      t511 = t484->get( p0 = |RFIELD| ).
      DATA t515 TYPE REF TO zcl_lnt_shape_401d2302.
      CLEAR t515.
      DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t516.
      DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t517.
      IF xsdbool( t495 IS INITIAL ) = abap_true.
        CLEAR t517.
      ELSE.
        DATA(t521) = VALUE string( ).
        t521 = t495->as_string( ).
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
      IF xsdbool( t499 IS INITIAL ) = abap_true.
        CLEAR t525.
      ELSE.
        DATA(t529) = VALUE string( ).
        t529 = t499->as_string( ).
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
      IF xsdbool( t503 IS INITIAL ) = abap_true.
        CLEAR t533.
      ELSE.
        DATA(t537) = VALUE string( ).
        t537 = t503->as_string( ).
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
      IF xsdbool( t507 IS INITIAL ) = abap_true.
        CLEAR t541.
      ELSE.
        DATA(t545) = VALUE string( ).
        t545 = t507->as_string( ).
        DATA(t547) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t547->has = abap_true.
        t547->value = t545.
        t541 = t547.
      ENDIF.
      t540 = t541.
      DATA t549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t549.
      IF xsdbool( t511 IS INITIAL ) = abap_true.
        CLEAR t549.
      ELSE.
        DATA(t553) = VALUE string( ).
        t553 = t511->as_string( ).
        DATA(t555) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t555->has = abap_true.
        t555->value = t553.
        t549 = t555.
      ENDIF.
      t515 = NEW zcl_lnt_shape_401d2302( i_ltab = t516 i_lfield = t524 i_operator_049c = t532 i_rtab = t540 i_rfield = t549 ).
      CREATE OBJECT t515->zlnt_view_ownkeys_b0e8086400eb.
      t515->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t556.
      t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `LTAB` p1 = t556 ).
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
      DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t562.
      t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = |LTAB| p1 = t562 ).
      DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t564.
      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = |LFIELD| p1 = t564 ).
      ENDIF.
      DATA t566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t566.
      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = |OPERATOR| p1 = t566 ).
      ENDIF.
      DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t568.
      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = |RTAB| p1 = t568 ).
      ENDIF.
      DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t570.
      IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = |RFIELD| p1 = t570 ).
      ENDIF.
      t494 = t515.
      t491->load( ).
      APPEND t494 TO t491->items.
      t491->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD parse_type.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA(t5) = i_reg_f149.
    result = me->prs_typ_inst_src_objc_vw_ts_vw( i_reg_f149 = t5 ).

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
