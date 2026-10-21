* TS: src/objects/table.ts:35:1 Table
CLASS zcl_lnt_table DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_c74a232f.
    INTERFACES zif_lnt_union_e3559bc5.
    INTERFACES zif_lnt_union_42a36aec.
    INTERFACES zif_lnt_union_17d1aaf2.
    INTERFACES zif_lnt_union_864794cc.
    DATA parsed_data TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA parsed_type TYPE REF TO zcl_lnt_abstract_type.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_secondary_indexes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_fields RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS list_keys IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS prs_typ_ins_src_obj_tbl_ts_tbl IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS get_table_category RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_delivery_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_size_category RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_enhancement_category RETURNING VALUE(result) TYPE string.
    METHODS key_fields_not_first RETURNING VALUE(result) TYPE abap_bool.
    METHODS parse_xml.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_table IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
    CLEAR me->parsed_type.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
  ENDMETHOD.

  METHOD get_type.
    result = |TABL|.

  ENDMETHOD.

  METHOD get_description.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t9 = me->parsed_data.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t11 = t9->description.
    ENDIF.
    result = t11.

  ENDMETHOD.

  METHOD get_secondary_indexes.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t9 = me->parsed_data.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t11 = t9->secondary_indexes.
    ENDIF.
    result = t11.

  ENDMETHOD.

  METHOD get_fields.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t9 = me->parsed_data.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t11 = t9->fields_464c.
    ENDIF.
    result = t11.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE i.
    t1 = 30.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t4 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^((\/[A-Z_0-9]{3,8}\/)|[a-zA-Z0-9]{3}|CI_)[A-Za-z0-9_]+$` flags = ||.
    t4->source = `^((\/[A-Z_\d]{3,8}\/)|[a-zA-Z0-9]{3}|CI_)\w+$`.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t18 = me->parsed_data.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
    ELSE.
      t20 = t18->table_category.
    ENDIF.
    t9 = t20.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |TRANSP|.
    t27 = t30.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    IF t9 IS BOUND.
      t32 = t9->has.
    ENDIF.
    IF t27 IS BOUND.
      t33 = t27->has.
    ENDIF.
    IF t32 = t33.
      IF t32 = abap_false.
        t8 = abap_true.
      ELSEIF t9->value = t27->value.
        t8 = abap_true.
      ENDIF.
    ENDIF.
    IF t8 = abap_true.
      t1 = 16.
    ENDIF.
    DATA t35 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t37 TYPE f.
    t37 = t1.
    t35 = NEW zcl_lnt_iallowed_naming( i_max_length = t37 i_allow_namespace = abap_true i_custom_regex = t4 ).
    CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
    t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `customRegex` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
    t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |maxLength| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |allowNamespace| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |customRegex| p1 = t54 ).
    ENDIF.
    result = t35.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_data.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    CLEAR me->parsed_type.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD list_keys.
    DATA(t1) = i_reg_f149.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t17.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t19 = me->parsed_data->fields_464c.
    DATA t22 TYPE REF TO zcl_lnt_shape_e534171c.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t19->load( ).
      IF t24 >= lines( t19->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t19->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = t22->keyflag.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = |X|.
      t31 = t34.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = VALUE abap_bool( ).
      IF t29 IS BOUND.
        t36 = t29->has.
      ENDIF.
      IF t31 IS BOUND.
        t37 = t31->has.
      ENDIF.
      IF t36 = t37.
        IF t36 = abap_false.
          t28 = abap_true.
        ELSEIF t29->value = t31->value.
          t28 = abap_true.
        ENDIF.
      ENDIF.
      t27 = t28.
      IF t28 = abap_true.
        DATA(t38) = VALUE abap_bool( ).
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t39 = t22->fieldname.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = |.INCLUDE|.
        t41 = t44.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = VALUE abap_bool( ).
        IF t39 IS BOUND.
          t46 = t39->has.
        ENDIF.
        IF t41 IS BOUND.
          t47 = t41->has.
        ENDIF.
        IF t46 = t47.
          IF t46 = abap_false.
            t38 = abap_true.
          ELSEIF t39->value = t41->value.
            t38 = abap_true.
          ENDIF.
        ENDIF.
        t27 = t38.
      ENDIF.
      IF t27 = abap_true.
        DATA t48 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t48.
        DATA t51 TYPE REF TO zcl_lnt_ddic.
        t51 = NEW zcl_lnt_ddic( i_reg_f149 = t1 ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t54 = t22->precfield.
        DATA t57 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t57.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t59 = t54.
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t61.
        CLEAR t61.
        DATA(t63) = VALUE abap_bool( ).
        IF t59 IS INITIAL.
          t63 = abap_true.
        ELSEIF t59->has = abap_false.
          t63 = abap_true.
        ENDIF.
        IF t63 = abap_true.
          DATA t65 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t66 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t66.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t69.
          t66 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t69 ).
          DATA t70 TYPE REF TO zif_lnt_object.
          CLEAR t70.
          CLEAR t70.
          t65 = NEW zcl_lnt_ilookup_result( i_type_9913 = t66 i_object_19cd = t70 ).
          CREATE OBJECT t65->zlnt_view_ownkeys_b0e8086400eb.
          t65->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t72.
          t65->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t72 ).
          CREATE OBJECT t65->zlnt_json_ownkeys_70e5fd461788.
          t65->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t74.
          t65->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t74 ).
          t57 = t65.
        ELSE.
          DATA t76 TYPE REF TO zcl_lnt_table.
          DATA t77 TYPE REF TO zcl_lnt_table.
          CLEAR t77.
          DATA t79 TYPE REF TO zif_lnt_registry.
          t79 = t51->reg.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t84->has = abap_true.
          t84->value = |TABL|.
          t81 = t84.
          DATA(t88) = VALUE string( ).
          t88 = t54->value.
          DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t90->has = abap_true.
          t90->value = t88.
          DATA t92 TYPE REF TO object.
          t92 = t79->get_object( i_type_9913 = t81 i_name = t90 ).
          t77 ?= t92.
          t76 = t77.
          DATA t93 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t93.
          IF xsdbool( t76 IS BOUND ) = abap_true.
            DATA t96 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t97 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t97.
            DATA t99 TYPE REF TO zcl_lnt_table.
            t99 = t76.
            DATA t101 TYPE REF TO zif_lnt_registry.
            CLEAR t101.
            t101 = t51->reg.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            t97 = t99->parse_type( i_reg_f149 = t101 i_data_element = t103 i_description = t104 ).
            DATA t105 TYPE REF TO zif_lnt_object.
            CLEAR t105.
            t105 = t76.
            t96 = NEW zcl_lnt_ilookup_result( i_type_9913 = t97 i_object_19cd = t105 ).
            CREATE OBJECT t96->zlnt_view_ownkeys_b0e8086400eb.
            t96->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t108 ).
            DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t109.
            IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t109 ).
            ENDIF.
            CREATE OBJECT t96->zlnt_json_ownkeys_70e5fd461788.
            t96->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t111.
            t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t111 ).
            DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t113.
            IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t113 ).
            ENDIF.
            t93 = t96.
          ELSE.
            DATA t115 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t120) = VALUE string( ).
            t120 = t54->value.
            DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t122->has = abap_true.
            t122->value = t120.
            t115 = t51->lookup_ddls( i_name = t122 ).
            DATA t124 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t124.
            IF xsdbool( t115 IS BOUND ) = abap_true.
              t124 = t115.
            ELSE.
              DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t133) = VALUE string( ).
              t133 = t54->value.
              DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t135->has = abap_true.
              t135->value = t133.
              t130 = t135.
              DATA t137 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t137.
              DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t139 = t130.
              DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t141.
              CLEAR t141.
              DATA(t143) = VALUE abap_bool( ).
              IF t139 IS INITIAL.
                t143 = abap_true.
              ELSEIF t139->has = abap_false.
                t143 = abap_true.
              ENDIF.
              IF t143 = abap_true.
                DATA t145 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t146 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t146.
                DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t149.
                t146 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t149 ).
                DATA t150 TYPE REF TO zif_lnt_object.
                CLEAR t150.
                CLEAR t150.
                t145 = NEW zcl_lnt_ilookup_result( i_type_9913 = t146 i_object_19cd = t150 ).
                CREATE OBJECT t145->zlnt_view_ownkeys_b0e8086400eb.
                t145->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t152.
                t145->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t152 ).
                CREATE OBJECT t145->zlnt_json_ownkeys_70e5fd461788.
                t145->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t154.
                t145->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t154 ).
                t137 = t145.
              ELSE.
                DATA t156 TYPE REF TO zcl_lnt_table.
                DATA t157 TYPE REF TO zcl_lnt_table.
                CLEAR t157.
                DATA t159 TYPE REF TO zif_lnt_registry.
                t159 = t51->reg.
                DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t161.
                DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t164->has = abap_true.
                t164->value = |VIEW|.
                t161 = t164.
                DATA(t168) = VALUE string( ).
                t168 = t130->value.
                DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t170->has = abap_true.
                t170->value = t168.
                DATA t172 TYPE REF TO object.
                t172 = t159->get_object( i_type_9913 = t161 i_name = t170 ).
                t157 ?= t172.
                t156 = t157.
                DATA t173 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t173.
                IF xsdbool( t156 IS BOUND ) = abap_true.
                  DATA t176 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t177 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t177.
                  DATA t179 TYPE REF TO zcl_lnt_table.
                  t179 = t156.
                  DATA t181 TYPE REF TO zif_lnt_registry.
                  CLEAR t181.
                  t181 = t51->reg.
                  DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t183.
                  DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t184.
                  t177 = t179->parse_type( i_reg_f149 = t181 i_data_element = t183 i_description = t184 ).
                  DATA t185 TYPE REF TO zif_lnt_object.
                  CLEAR t185.
                  t185 = t156.
                  t176 = NEW zcl_lnt_ilookup_result( i_type_9913 = t177 i_object_19cd = t185 ).
                  CREATE OBJECT t176->zlnt_view_ownkeys_b0e8086400eb.
                  t176->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t188.
                  t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t188 ).
                  DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t189.
                  IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t189 ).
                  ENDIF.
                  CREATE OBJECT t176->zlnt_json_ownkeys_70e5fd461788.
                  t176->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t191.
                  t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t191 ).
                  DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t193.
                  IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t193 ).
                  ENDIF.
                  t173 = t176.
                ELSE.
                  DATA t194 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t194.
                  DATA t196 TYPE REF TO zif_lnt_registry.
                  t196 = t51->reg.
                  DATA(t198) = VALUE string( ).
                  t198 = t130->value.
                  IF t196->in_error_namespace( i_name = t198 ) = abap_true.
                    DATA t200 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t201 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t201.
                    DATA(t203) = VALUE string( ).
                    DATA(t204) = VALUE string( ).
                    t204 = t130->value.
                    DATA(t207) = strlen( t204 ).
                    t203 = |{ t204 }{ | not found, lookupView| }|.
                    DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t208.
                    t201 = NEW zcl_lnt_unknown_type( i_error = t203 i_qualified_name = t208 ).
                    DATA t209 TYPE REF TO zif_lnt_object.
                    CLEAR t209.
                    CLEAR t209.
                    t200 = NEW zcl_lnt_ilookup_result( i_type_9913 = t201 i_object_19cd = t209 ).
                    CREATE OBJECT t200->zlnt_view_ownkeys_b0e8086400eb.
                    t200->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t211.
                    t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t211 ).
                    CREATE OBJECT t200->zlnt_json_ownkeys_70e5fd461788.
                    t200->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t213.
                    t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t213 ).
                    t194 = t200.
                  ELSE.
                    DATA t214 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t215 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t215.
                    DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t217.
                    DATA(t219) = VALUE string( ).
                    t219 = t130->value.
                    DATA(t221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t221->has = abap_true.
                    t221->value = t219.
                    t217 = t221.
                    DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t223.
                    t215 = zcl_lnt_void_type=>get_db65( i_voided = t217 i_qualified_name = t223 ).
                    DATA t224 TYPE REF TO zif_lnt_object.
                    CLEAR t224.
                    CLEAR t224.
                    t214 = NEW zcl_lnt_ilookup_result( i_type_9913 = t215 i_object_19cd = t224 ).
                    CREATE OBJECT t214->zlnt_view_ownkeys_b0e8086400eb.
                    t214->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t226.
                    t214->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t226 ).
                    CREATE OBJECT t214->zlnt_json_ownkeys_70e5fd461788.
                    t214->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t228.
                    t214->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t228 ).
                    t194 = t214.
                  ENDIF.
                  t173 = t194.
                ENDIF.
                t137 = t173.
              ENDIF.
              t124 = t137.
            ENDIF.
            t93 = t124.
          ENDIF.
          t57 = t93.
        ENDIF.
        t48 = t57->zlnt_view_read_sr_9be58e2d4893( ).
        IF xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
          DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t231.
          DATA t233 TYPE REF TO zcl_lnt_structure_type.
          CLEAR t233.
          t233 ?= t48.
          t231 = t233->components.
          DATA t237 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t237.
          DATA t238 TYPE REF TO object.
          CLEAR t238.
          DATA(t239) = VALUE i( ).
          DO.
            t231->load( ).
            IF t239 >= lines( t231->items ).
              EXIT.
            ENDIF.
            CLEAR t238.
            READ TABLE t231->items INDEX t239 + 1 INTO t238.
            t239 = t239 + 1.
            DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t240.
            CLEAR t237.
            IF t238 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t240 ?= t238.
              CLEAR t237.
              IF t240 IS BOUND.
                IF t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  TRY.
                      t237 ?= t240->oval.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                ENDIF.
                IF t237 IS NOT BOUND.
                  IF t240->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t240->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t240->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t240->tag <>
                  zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                    DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t241.
                    IF t240->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                    ENDIF.
                    TRY.
                        t241 ?= t240->oval.
                      CATCH cx_sy_move_cast_error.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                    ENDTRY.
                    IF t241->structural( ) <> abap_true.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                    ENDIF.
                  ENDIF.
                  DATA(t242) = VALUE string( ).
                  DATA t243 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t243.
                  DATA t244 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t244.
                  DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t245.
                  t237 = NEW zcl_lnt_istructure_component( view_source = t240 i_name = t242 i_type_9913 = t243 i_as_include = t244 i_suffix = t245 ).
                ENDIF.
              ENDIF.
            ELSE.
              t237 ?= t238.
            ENDIF.
            DATA(t247) = VALUE string( ).
            t247 = t237->zlnt_view_read_sr_dae473e680bd( ).
            t17->load( ).
            APPEND t247 TO t17->items.
            t17->save( ).
          ENDDO.
        ENDIF.
      ELSE.
        DATA(t249) = VALUE abap_bool( ).
        DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t250 = t22->keyflag.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t255->has = abap_true.
        t255->value = |X|.
        t252 = t255.
        DATA(t257) = VALUE abap_bool( ).
        DATA(t258) = VALUE abap_bool( ).
        IF t250 IS BOUND.
          t257 = t250->has.
        ENDIF.
        IF t252 IS BOUND.
          t258 = t252->has.
        ENDIF.
        IF t257 = t258.
          IF t257 = abap_false.
            t249 = abap_true.
          ELSEIF t250->value = t252->value.
            t249 = abap_true.
          ENDIF.
        ENDIF.
        IF t249 = abap_true.
          DATA(t260) = VALUE string( ).
          t260 = t22->fieldname->value.
          t17->load( ).
          APPEND t260 TO t17->items.
          t17->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    result = t17.

  ENDMETHOD.

  METHOD prs_typ_ins_src_obj_tbl_ts_tbl.
    DATA(t1) = i_reg_f149.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = NEW zcl_lnt_unknown_type( i_error = |Table, parser error| i_qualified_name = t18 ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    t20 = xsdbool( t1->get_config( )->get_language_version( ) = |Cloud| ).
    t19 = t20.
    IF t20 = abap_true.
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t26 = me->parsed_data->data_class.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = |USER3|.
      t29 = t32.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      IF t26 IS BOUND.
        t34 = t26->has.
      ENDIF.
      IF t29 IS BOUND.
        t35 = t29->has.
      ENDIF.
      IF t34 = t35.
        IF t34 = abap_false.
          t25 = abap_true.
        ELSEIF t26->value = t29->value.
          t25 = abap_true.
        ENDIF.
      ENDIF.
      t19 = t25.
    ENDIF.
    IF t19 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_unknown_type( i_error = |Data class = USER3 not allowed in cloud| i_qualified_name = t38 ).
      RETURN.
    ENDIF.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t49 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t49 = me->parsed_data.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t49 IS INITIAL ) = abap_true.
    ELSE.
      t51 = t49->table_category.
    ENDIF.
    t40 = t51.
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t61->has = abap_true.
    t61->value = |TRANSP|.
    t58 = t61.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = VALUE abap_bool( ).
    IF t40 IS BOUND.
      t63 = t40->has.
    ENDIF.
    IF t58 IS BOUND.
      t64 = t58->has.
    ENDIF.
    IF t63 = t64.
      IF t63 = abap_false.
        t39 = abap_true.
      ELSEIF t40->value = t58->value.
        t39 = abap_true.
      ENDIF.
    ENDIF.
    IF t39 = abap_true.
      DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t67 = me->list_keys( i_reg_f149 = t1 ).
      t67->load( ).
      IF xsdbool( lines( t67->items ) = 0 ) = abap_true.
        DATA(t72) = VALUE string( ).
        DATA(t73) = |Table |.
        DATA(t74) = VALUE string( ).
        DATA t75 TYPE REF TO zcl_lnt_abstract_object.
        t75 = me.
        t74 = t75->name.
        DATA(t79) = strlen( t73 ).
        t72 = |{ t73 }{ t74 }|.
        DATA(t81) = strlen( t72 ).
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = NEW zcl_lnt_unknown_type( i_error = |{ t72 }{ | has no key fields| }| i_qualified_name = t82 ).
        RETURN.
      ELSE.
        DATA(t83) = CONV abap_bool( me->key_fields_not_first( ) ).
        IF t83 = abap_true.
          DATA(t86) = VALUE string( ).
          DATA(t87) = |Table |.
          DATA(t88) = VALUE string( ).
          DATA t89 TYPE REF TO zcl_lnt_abstract_object.
          t89 = me.
          t88 = t89->name.
          DATA(t93) = strlen( t87 ).
          t86 = |{ t87 }{ t88 }|.
          DATA(t95) = strlen( t86 ).
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = NEW zcl_lnt_unknown_type( i_error = |{ t86 }{ | key fields must be first| }| i_qualified_name = t96 ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    IF xsdbool( me->parsed_type IS BOUND ) = abap_true.
      result = me->parsed_type.
      RETURN.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t101.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    DATA t105 TYPE REF TO zcl_lnt_ddic.
    t105 = NEW zcl_lnt_ddic( i_reg_f149 = t1 ).
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t108 = me->parsed_data->fields_464c.
    DATA t111 TYPE REF TO zcl_lnt_shape_e534171c.
    DATA t112 TYPE REF TO object.
    DATA(t113) = VALUE i( ).
    DO.
      t108->load( ).
      IF t113 >= lines( t108->items ).
        EXIT.
      ENDIF.
      CLEAR t112.
      READ TABLE t108->items INDEX t113 + 1 INTO t112.
      t113 = t113 + 1.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      CLEAR t111.
      IF t112 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t114 ?= t112.
        DATA t115 TYPE REF TO object.
        t115 = t114->as_ref( ).
        t111 ?= t115.
      ELSE.
        t111 ?= t112.
      ENDIF.
      DATA(t116) = VALUE string( ).
      DATA(t117) = VALUE string( ).
      DATA(t118) = VALUE abap_bool( ).
      DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t119.
      t119 = t111->comptype.
      IF t119 IS BOUND.
        IF t119->has = abap_true.
          t118 = xsdbool( strlen( t119->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t118 = abap_true.
        t117 = t111->comptype->value.
      ELSE.
        t117 = ||.
      ENDIF.
      t116 = t117.
      IF xsdbool( t116 = |E| ) = abap_true.
        DATA t128 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t128.
        DATA t130 TYPE REF TO zcl_lnt_ddic.
        t130 = t105.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t132 = t111->rollname_a788.
        DATA t135 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t135.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t137 = t132.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        CLEAR t139.
        DATA(t141) = VALUE abap_bool( ).
        IF t137 IS INITIAL.
          t141 = abap_true.
        ELSEIF t137->has = abap_false.
          t141 = abap_true.
        ENDIF.
        IF t141 = abap_true.
          DATA t143 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t144 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t144.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          t144 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupDataElement| i_qualified_name = t147 ).
          DATA t148 TYPE REF TO zif_lnt_object.
          CLEAR t148.
          CLEAR t148.
          t143 = NEW zcl_lnt_ilookup_result( i_type_9913 = t144 i_object_19cd = t148 ).
          CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
          t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t150 ).
          CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
          t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t152 ).
          t135 = t143.
        ELSE.
          DATA t154 TYPE REF TO zcl_lnt_data_element.
          DATA t155 TYPE REF TO zcl_lnt_data_element.
          CLEAR t155.
          DATA t157 TYPE REF TO zif_lnt_registry.
          t157 = t130->reg.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t162->has = abap_true.
          t162->value = |DTEL|.
          t159 = t162.
          DATA(t166) = VALUE string( ).
          t166 = t132->value.
          DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t168->has = abap_true.
          t168->value = t166.
          DATA t170 TYPE REF TO object.
          t170 = t157->get_object( i_type_9913 = t159 i_name = t168 ).
          t155 ?= t170.
          t154 = t155.
          DATA t171 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t171.
          IF xsdbool( t154 IS BOUND ) = abap_true.
            DATA t174 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t175 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t175.
            DATA t177 TYPE REF TO zcl_lnt_data_element.
            t177 = t154.
            DATA t179 TYPE REF TO zif_lnt_registry.
            CLEAR t179.
            t179 = t130->reg.
            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t181.
            DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t182.
            t175 = t177->parse_type( i_reg_f149 = t179 i_data_element = t181 i_description = t182 ).
            DATA t183 TYPE REF TO zif_lnt_object.
            CLEAR t183.
            t183 = t154.
            t174 = NEW zcl_lnt_ilookup_result( i_type_9913 = t175 i_object_19cd = t183 ).
            CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
            t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t186.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t186 ).
            DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t187.
            IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t187 ).
            ENDIF.
            CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
            t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t189.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t189 ).
            DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t191.
            IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t191 ).
            ENDIF.
            t171 = t174.
          ELSE.
            DATA t192 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t192.
            DATA t194 TYPE REF TO zif_lnt_registry.
            t194 = t130->reg.
            DATA(t196) = VALUE string( ).
            t196 = t132->value.
            IF t194->in_error_namespace( i_name = t196 ) = abap_true.
              DATA t198 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t199 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t199.
              DATA(t201) = VALUE string( ).
              DATA(t202) = VALUE string( ).
              t202 = t132->value.
              DATA(t205) = strlen( t202 ).
              t201 = |{ t202 }{ | not found, lookupDataElement| }|.
              DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t206.
              t199 = NEW zcl_lnt_unknown_type( i_error = t201 i_qualified_name = t206 ).
              DATA t207 TYPE REF TO zif_lnt_object.
              CLEAR t207.
              CLEAR t207.
              t198 = NEW zcl_lnt_ilookup_result( i_type_9913 = t199 i_object_19cd = t207 ).
              CREATE OBJECT t198->zlnt_view_ownkeys_b0e8086400eb.
              t198->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t209.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t209 ).
              CREATE OBJECT t198->zlnt_json_ownkeys_70e5fd461788.
              t198->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t211.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t211 ).
              t192 = t198.
            ELSE.
              DATA t212 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t213 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t213.
              DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t215.
              DATA(t217) = VALUE string( ).
              t217 = t132->value.
              DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t219->has = abap_true.
              t219->value = t217.
              t215 = t219.
              DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t221.
              t213 = zcl_lnt_void_type=>get_db65( i_voided = t215 i_qualified_name = t221 ).
              DATA t222 TYPE REF TO zif_lnt_object.
              CLEAR t222.
              CLEAR t222.
              t212 = NEW zcl_lnt_ilookup_result( i_type_9913 = t213 i_object_19cd = t222 ).
              CREATE OBJECT t212->zlnt_view_ownkeys_b0e8086400eb.
              t212->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t224.
              t212->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t224 ).
              CREATE OBJECT t212->zlnt_json_ownkeys_70e5fd461788.
              t212->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t226.
              t212->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t226 ).
              t192 = t212.
            ENDIF.
            t171 = t192.
          ENDIF.
          t135 = t171.
        ENDIF.
        t128 = t135.
        DATA t228 TYPE REF TO zcl_lnt_istructure_component.
        DATA(t229) = VALUE string( ).
        t229 = t111->fieldname->value.
        DATA t233 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t233.
        t233 = t128->zlnt_view_read_sr_9be58e2d4893( ).
        DATA t236 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t236.
        CLEAR t236.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t238.
        CLEAR t238.
        t228 = NEW zcl_lnt_istructure_component( i_name = t229 i_type_9913 = t233 i_as_include = t236 i_suffix = t238 ).
        CREATE OBJECT t228->zlnt_view_ownkeys_b0e8086400eb.
        t228->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t240 ).
        DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t241.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t241 ).
        ENDIF.
        CREATE OBJECT t228->zlnt_json_ownkeys_70e5fd461788.
        t228->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t243 ).
        DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t245.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t245 ).
        ENDIF.
        t103->load( ).
        APPEND t228 TO t103->items.
        t103->save( ).
        DATA t247 TYPE REF TO zif_lnt_object.
        t247 = t128->zlnt_view_read_sr_2de0200e6505( ).
        IF xsdbool( t247 IS BOUND ) = abap_true.
          DATA t250 TYPE REF TO zcl_lnt_iobject_and_token.
          DATA t251 TYPE REF TO zif_lnt_object.
          CLEAR t251.
          t251 = t128->zlnt_view_read_sr_2de0200e6505( ).
          DATA t258 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t258.
          CLEAR t258.
          DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t260.
          CLEAR t260.
          t250 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t251 i_token = t258 i_filename = t260 ).
          CREATE OBJECT t250->zlnt_view_ownkeys_b0e8086400eb.
          t250->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t262.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t262 ).
          CREATE OBJECT t250->zlnt_json_ownkeys_70e5fd461788.
          t250->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t264 ).
          t101->load( ).
          APPEND t250 TO t101->items.
          t101->save( ).
        ENDIF.
      ELSE.
        DATA(t265) = VALUE abap_bool( ).
        DATA(t266) = VALUE abap_bool( ).
        DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t267 = t111->fieldname.
        DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t272->has = abap_true.
        t272->value = |.INCLUDE|.
        t269 = t272.
        DATA(t274) = VALUE abap_bool( ).
        DATA(t275) = VALUE abap_bool( ).
        IF t267 IS BOUND.
          t274 = t267->has.
        ENDIF.
        IF t269 IS BOUND.
          t275 = t269->has.
        ENDIF.
        IF t274 = t275.
          IF t274 = abap_false.
            t266 = abap_true.
          ELSEIF t267->value = t269->value.
            t266 = abap_true.
          ENDIF.
        ENDIF.
        t265 = t266.
        IF t266 = abap_false.
          DATA(t276) = VALUE abap_bool( ).
          DATA(t277) = VALUE string( ).
          t277 = t111->fieldname->value.
          DATA(t280) = |.INCLU-|.
          DATA(t281) = strlen( t277 ).
          DATA(t282) = VALUE i( ).
          DATA(t283) = VALUE i( ).
          DATA(t284) = VALUE string( ).
          t282 = strlen( t280 ).
          IF t282 = 0.
            t276 = abap_true.
          ELSEIF t282 <= t281.
            t283 = 0.
            t284 = t277+t283(t282).
            IF t284 = t280.
              t276 = abap_true.
            ENDIF.
          ENDIF.
          t265 = t276.
        ENDIF.
        IF t265 = abap_true.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t286 = t111->precfield.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          CLEAR t289.
          DATA(t291) = VALUE abap_bool( ).
          IF t286 IS INITIAL.
            t291 = abap_true.
          ELSEIF t286->has = abap_false.
            t291 = abap_true.
          ENDIF.
          IF t291 = abap_true.
            DATA(t294) = VALUE string( ).
            DATA(t295) = |Table, parser error, PRECFIELD undefined, |.
            DATA(t296) = VALUE string( ).
            DATA t297 TYPE REF TO zcl_lnt_abstract_object.
            t297 = me.
            t296 = t297->name.
            DATA(t301) = strlen( t295 ).
            t294 = |{ t295 }{ t296 }|.
            DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t302.
            result = NEW zcl_lnt_unknown_type( i_error = t294 i_qualified_name = t302 ).
            RETURN.
          ENDIF.
          DATA t303 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t303.
          DATA t305 TYPE REF TO zcl_lnt_ddic.
          t305 = t105.
          DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t310) = VALUE string( ).
          t310 = t111->precfield->value.
          DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t313->has = abap_true.
          t313->value = t310.
          t307 = t313.
          DATA t315 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t315.
          DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t317 = t307.
          DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t319.
          CLEAR t319.
          DATA(t321) = VALUE abap_bool( ).
          IF t317 IS INITIAL.
            t321 = abap_true.
          ELSEIF t317->has = abap_false.
            t321 = abap_true.
          ENDIF.
          IF t321 = abap_true.
            DATA t323 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t324 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t324.
            DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t327.
            t324 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t327 ).
            DATA t328 TYPE REF TO zif_lnt_object.
            CLEAR t328.
            CLEAR t328.
            t323 = NEW zcl_lnt_ilookup_result( i_type_9913 = t324 i_object_19cd = t328 ).
            CREATE OBJECT t323->zlnt_view_ownkeys_b0e8086400eb.
            t323->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t330.
            t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t330 ).
            CREATE OBJECT t323->zlnt_json_ownkeys_70e5fd461788.
            t323->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t332.
            t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t332 ).
            t315 = t323.
          ELSE.
            DATA t334 TYPE REF TO zcl_lnt_table.
            DATA t335 TYPE REF TO zcl_lnt_table.
            CLEAR t335.
            DATA t337 TYPE REF TO zif_lnt_registry.
            t337 = t305->reg.
            DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t339.
            DATA(t342) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t342->has = abap_true.
            t342->value = |TABL|.
            t339 = t342.
            DATA(t346) = VALUE string( ).
            t346 = t307->value.
            DATA(t348) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t348->has = abap_true.
            t348->value = t346.
            DATA t350 TYPE REF TO object.
            t350 = t337->get_object( i_type_9913 = t339 i_name = t348 ).
            t335 ?= t350.
            t334 = t335.
            DATA t351 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t351.
            IF xsdbool( t334 IS BOUND ) = abap_true.
              DATA t354 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t355 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t355.
              DATA t357 TYPE REF TO zcl_lnt_table.
              t357 = t334.
              DATA t359 TYPE REF TO zif_lnt_registry.
              CLEAR t359.
              t359 = t305->reg.
              DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t361.
              DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t362.
              t355 = t357->parse_type( i_reg_f149 = t359 i_data_element = t361 i_description = t362 ).
              DATA t363 TYPE REF TO zif_lnt_object.
              CLEAR t363.
              t363 = t334.
              t354 = NEW zcl_lnt_ilookup_result( i_type_9913 = t355 i_object_19cd = t363 ).
              CREATE OBJECT t354->zlnt_view_ownkeys_b0e8086400eb.
              t354->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t366.
              t354->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t366 ).
              DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t367.
              IF t354->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t354->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t367 ).
              ENDIF.
              CREATE OBJECT t354->zlnt_json_ownkeys_70e5fd461788.
              t354->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t369.
              t354->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t369 ).
              DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t371.
              IF t354->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t354->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t371 ).
              ENDIF.
              t351 = t354.
            ELSE.
              DATA t373 TYPE REF TO zcl_lnt_ilookup_result.
              DATA(t378) = VALUE string( ).
              t378 = t307->value.
              DATA(t380) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t380->has = abap_true.
              t380->value = t378.
              t373 = t305->lookup_ddls( i_name = t380 ).
              DATA t382 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t382.
              IF xsdbool( t373 IS BOUND ) = abap_true.
                t382 = t373.
              ELSE.
                DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t391) = VALUE string( ).
                t391 = t307->value.
                DATA(t393) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t393->has = abap_true.
                t393->value = t391.
                t388 = t393.
                DATA t395 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t395.
                DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t397 = t388.
                DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t399.
                CLEAR t399.
                DATA(t401) = VALUE abap_bool( ).
                IF t397 IS INITIAL.
                  t401 = abap_true.
                ELSEIF t397->has = abap_false.
                  t401 = abap_true.
                ENDIF.
                IF t401 = abap_true.
                  DATA t403 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t404 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t404.
                  DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t407.
                  t404 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t407 ).
                  DATA t408 TYPE REF TO zif_lnt_object.
                  CLEAR t408.
                  CLEAR t408.
                  t403 = NEW zcl_lnt_ilookup_result( i_type_9913 = t404 i_object_19cd = t408 ).
                  CREATE OBJECT t403->zlnt_view_ownkeys_b0e8086400eb.
                  t403->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t410.
                  t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t410 ).
                  CREATE OBJECT t403->zlnt_json_ownkeys_70e5fd461788.
                  t403->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t412.
                  t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t412 ).
                  t395 = t403.
                ELSE.
                  DATA t414 TYPE REF TO zcl_lnt_table.
                  DATA t415 TYPE REF TO zcl_lnt_table.
                  CLEAR t415.
                  DATA t417 TYPE REF TO zif_lnt_registry.
                  t417 = t305->reg.
                  DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t419.
                  DATA(t422) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t422->has = abap_true.
                  t422->value = |VIEW|.
                  t419 = t422.
                  DATA(t426) = VALUE string( ).
                  t426 = t388->value.
                  DATA(t428) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t428->has = abap_true.
                  t428->value = t426.
                  DATA t430 TYPE REF TO object.
                  t430 = t417->get_object( i_type_9913 = t419 i_name = t428 ).
                  t415 ?= t430.
                  t414 = t415.
                  DATA t431 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t431.
                  IF xsdbool( t414 IS BOUND ) = abap_true.
                    DATA t434 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t435 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t435.
                    DATA t437 TYPE REF TO zcl_lnt_table.
                    t437 = t414.
                    DATA t439 TYPE REF TO zif_lnt_registry.
                    CLEAR t439.
                    t439 = t305->reg.
                    DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t441.
                    DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t442.
                    t435 = t437->parse_type( i_reg_f149 = t439 i_data_element = t441 i_description = t442 ).
                    DATA t443 TYPE REF TO zif_lnt_object.
                    CLEAR t443.
                    t443 = t414.
                    t434 = NEW zcl_lnt_ilookup_result( i_type_9913 = t435 i_object_19cd = t443 ).
                    CREATE OBJECT t434->zlnt_view_ownkeys_b0e8086400eb.
                    t434->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t446.
                    t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t446 ).
                    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t447.
                    IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t447 ).
                    ENDIF.
                    CREATE OBJECT t434->zlnt_json_ownkeys_70e5fd461788.
                    t434->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t449.
                    t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t449 ).
                    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t451.
                    IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t451 ).
                    ENDIF.
                    t431 = t434.
                  ELSE.
                    DATA t452 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t452.
                    DATA t454 TYPE REF TO zif_lnt_registry.
                    t454 = t305->reg.
                    DATA(t456) = VALUE string( ).
                    t456 = t388->value.
                    IF t454->in_error_namespace( i_name = t456 ) = abap_true.
                      DATA t458 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t459 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t459.
                      DATA(t461) = VALUE string( ).
                      DATA(t462) = VALUE string( ).
                      t462 = t388->value.
                      DATA(t465) = strlen( t462 ).
                      t461 = |{ t462 }{ | not found, lookupView| }|.
                      DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t466.
                      t459 = NEW zcl_lnt_unknown_type( i_error = t461 i_qualified_name = t466 ).
                      DATA t467 TYPE REF TO zif_lnt_object.
                      CLEAR t467.
                      CLEAR t467.
                      t458 = NEW zcl_lnt_ilookup_result( i_type_9913 = t459 i_object_19cd = t467 ).
                      CREATE OBJECT t458->zlnt_view_ownkeys_b0e8086400eb.
                      t458->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t469.
                      t458->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t469 ).
                      CREATE OBJECT t458->zlnt_json_ownkeys_70e5fd461788.
                      t458->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t471.
                      t458->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t471 ).
                      t452 = t458.
                    ELSE.
                      DATA t472 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t473 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t473.
                      DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t475.
                      DATA(t477) = VALUE string( ).
                      t477 = t388->value.
                      DATA(t479) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t479->has = abap_true.
                      t479->value = t477.
                      t475 = t479.
                      DATA t481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t481.
                      t473 = zcl_lnt_void_type=>get_db65( i_voided = t475 i_qualified_name = t481 ).
                      DATA t482 TYPE REF TO zif_lnt_object.
                      CLEAR t482.
                      CLEAR t482.
                      t472 = NEW zcl_lnt_ilookup_result( i_type_9913 = t473 i_object_19cd = t482 ).
                      CREATE OBJECT t472->zlnt_view_ownkeys_b0e8086400eb.
                      t472->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t484.
                      t472->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t484 ).
                      CREATE OBJECT t472->zlnt_json_ownkeys_70e5fd461788.
                      t472->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t486.
                      t472->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t486 ).
                      t452 = t472.
                    ENDIF.
                    t431 = t452.
                  ENDIF.
                  t395 = t431.
                ENDIF.
                t382 = t395.
              ENDIF.
              t351 = t382.
            ENDIF.
            t315 = t351.
          ENDIF.
          t303 = t315.
          DATA t487 TYPE REF TO zcl_lnt_abstract_type.
          t487 = t303->zlnt_view_read_sr_9be58e2d4893( ).
          DATA t491 TYPE REF TO zif_lnt_object.
          t491 = t303->zlnt_view_read_sr_2de0200e6505( ).
          IF xsdbool( t491 IS BOUND ) = abap_true.
            DATA t494 TYPE REF TO zcl_lnt_iobject_and_token.
            DATA t495 TYPE REF TO zif_lnt_object.
            CLEAR t495.
            t495 = t303->zlnt_view_read_sr_2de0200e6505( ).
            DATA t502 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t502.
            CLEAR t502.
            DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t504.
            CLEAR t504.
            t494 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t495 i_token = t502 i_filename = t504 ).
            CREATE OBJECT t494->zlnt_view_ownkeys_b0e8086400eb.
            t494->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t506.
            t494->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t506 ).
            CREATE OBJECT t494->zlnt_json_ownkeys_70e5fd461788.
            t494->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t508.
            t494->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t508 ).
            t101->load( ).
            APPEND t494 TO t101->items.
            t101->save( ).
          ENDIF.
          DATA(t509) = t487.
          IF xsdbool( t487 IS BOUND AND t487 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
            DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t513 = t111->groupname.
            DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t516.
            CLEAR t516.
            DATA(t519) = VALUE abap_bool( ).
            IF t513 IS INITIAL.
              t519 = abap_true.
            ELSEIF t513->has = abap_false.
              t519 = abap_true.
            ENDIF.
            IF xsdbool( t519 = abap_false ) = abap_true.
              DATA t522 TYPE REF TO zcl_lnt_istructure_component.
              DATA(t523) = VALUE string( ).
              t523 = t111->groupname->value.
              DATA t527 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t527.
              DATA t528 TYPE REF TO zcl_lnt_structure_type.
              CLEAR t528.
              t528 ?= t487.
              t527 = t528.
              DATA t530 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t530.
              DATA(t534) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t534->has = abap_true.
              t534->value = abap_true.
              t530 = t534.
              DATA t536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t536.
              CLEAR t536.
              t522 = NEW zcl_lnt_istructure_component( i_name = t523 i_type_9913 = t527 i_as_include = t530 i_suffix = t536 ).
              CREATE OBJECT t522->zlnt_view_ownkeys_b0e8086400eb.
              t522->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t538.
              t522->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t538 ).
              DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t539.
              IF t522->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t522->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t539 ).
              ENDIF.
              DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t540.
              IF t522->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t522->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `asInclude` p1 = t540 ).
              ENDIF.
              CREATE OBJECT t522->zlnt_json_ownkeys_70e5fd461788.
              t522->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t542.
              t522->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t542 ).
              DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t544.
              IF t522->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t522->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t544 ).
              ENDIF.
              DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t546.
              IF t522->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t522->zlnt_json_ownkeys_70e5fd461788->put( p0 = |asInclude| p1 = t546 ).
              ENDIF.
              t103->load( ).
              APPEND t522 TO t103->items.
              t103->save( ).
            ENDIF.
            DATA(t547) = VALUE abap_bool( ).
            DATA(t548) = VALUE abap_bool( ).
            DATA(t549) = VALUE abap_bool( ).
            DATA(t550) = VALUE string( ).
            t550 = t111->fieldname->value.
            DATA(t553) = |.INCLU-|.
            DATA(t554) = strlen( t550 ).
            DATA(t555) = VALUE i( ).
            DATA(t556) = VALUE i( ).
            DATA(t557) = VALUE string( ).
            t555 = strlen( t553 ).
            IF t555 = 0.
              t549 = abap_true.
            ELSEIF t555 <= t554.
              t556 = 0.
              t557 = t550+t556(t555).
              IF t557 = t553.
                t549 = abap_true.
              ENDIF.
            ENDIF.
            t548 = xsdbool( t549 = abap_false ).
            t547 = t548.
            IF t548 = abap_false.
              DATA(t559) = VALUE abap_bool( ).
              DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t560 = t111->fieldname.
              DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t565) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t565->has = abap_true.
              t565->value = |.INCLU--AP|.
              t562 = t565.
              DATA(t567) = VALUE abap_bool( ).
              DATA(t568) = VALUE abap_bool( ).
              IF t560 IS BOUND.
                t567 = t560->has.
              ENDIF.
              IF t562 IS BOUND.
                t568 = t562->has.
              ENDIF.
              IF t567 = t568.
                IF t567 = abap_false.
                  t559 = abap_true.
                ELSEIF t560->value = t562->value.
                  t559 = abap_true.
                ENDIF.
              ENDIF.
              t547 = t559.
            ENDIF.
            IF t547 = abap_true.
              DATA t569 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t569.
              DATA t571 TYPE REF TO zcl_lnt_structure_type.
              CLEAR t571.
              t571 ?= t487.
              t569 = t571->components.
              DATA t575 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t575.
              DATA t576 TYPE REF TO object.
              CLEAR t576.
              DATA(t577) = VALUE i( ).
              DO.
                t569->load( ).
                IF t577 >= lines( t569->items ).
                  EXIT.
                ENDIF.
                CLEAR t576.
                READ TABLE t569->items INDEX t577 + 1 INTO t576.
                t577 = t577 + 1.
                DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t578.
                CLEAR t575.
                IF t576 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t578 ?= t576.
                  CLEAR t575.
                  IF t578 IS BOUND.
                    IF t578->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t575 ?= t578->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t575 IS NOT BOUND.
                      IF t578->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t578->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t578->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t578->tag <>
                      zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                        DATA t579 TYPE REF TO zlnt_view_storage_74017ca272ac.
                        CLEAR t579.
                        IF t578->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                        ENDIF.
                        TRY.
                            t579 ?= t578->oval.
                          CATCH cx_sy_move_cast_error.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                        ENDTRY.
                        IF t579->structural( ) <> abap_true.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                        ENDIF.
                      ENDIF.
                      DATA(t580) = VALUE string( ).
                      DATA t581 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t581.
                      DATA t582 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t582.
                      DATA t583 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t583.
                      t575 = NEW zcl_lnt_istructure_component( view_source = t578 i_name = t580 i_type_9913 = t581 i_as_include = t582 i_suffix = t583 ).
                    ENDIF.
                  ENDIF.
                ELSE.
                  t575 ?= t576.
                ENDIF.
                DATA t585 TYPE REF TO zcl_lnt_istructure_component.
                DATA(t586) = VALUE string( ).
                t586 = t575->zlnt_view_read_sr_dae473e680bd( ).
                DATA t589 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t589.
                t589 = t575->zlnt_view_read_sr_455340cd1e80( ).
                DATA t592 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t592.
                CLEAR t592.
                DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t594.
                CLEAR t594.
                t585 = NEW zcl_lnt_istructure_component( i_name = t586 i_type_9913 = t589 i_as_include = t592 i_suffix = t594 ).
                CREATE OBJECT t585->zlnt_view_ownkeys_b0e8086400eb.
                t585->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t596.
                t585->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t596 ).
                DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t597.
                IF t585->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t585->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t597 ).
                ENDIF.
                CREATE OBJECT t585->zlnt_json_ownkeys_70e5fd461788.
                t585->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t599.
                t585->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t599 ).
                DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t601.
                IF t585->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t585->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t601 ).
                ENDIF.
                t103->load( ).
                APPEND t585 TO t103->items.
                t103->save( ).
              ENDDO.
            ELSE.
              DATA(t602) = VALUE abap_bool( ).
              DATA(t603) = VALUE string( ).
              t603 = t111->fieldname->value.
              DATA(t606) = |.INCLU-|.
              DATA(t607) = strlen( t603 ).
              DATA(t608) = VALUE i( ).
              DATA(t609) = VALUE i( ).
              DATA(t610) = VALUE string( ).
              t608 = strlen( t606 ).
              IF t608 = 0.
                t602 = abap_true.
              ELSEIF t608 <= t607.
                t609 = 0.
                t610 = t603+t609(t608).
                IF t610 = t606.
                  t602 = abap_true.
                ENDIF.
              ENDIF.
              IF t602 = abap_true.
                DATA(t611) = VALUE string( ).
                DATA(t613) = VALUE string( ).
                t613 = t111->fieldname->value.
                DATA(t617) = VALUE string( ).
                DATA(t619) = VALUE i( ).
                t619 = strlen( |.INCLU-| ).
                DATA(t622) = VALUE i( ).
                t622 = strlen( t613 ).
                DATA(t625) = strlen( t613 ).
                t619 = COND i( WHEN t619 < 0 THEN 0 WHEN t619 > t625 THEN t625 ELSE t619 ).
                t622 = COND i( WHEN t622 < 0 THEN 0 WHEN t622 > t625 THEN t625 ELSE t622 ).
                IF t619 > t622.
                  t625 = t619.
                  t619 = t622.
                  t622 = t625.
                ENDIF.
                t625 = t622 - t619.
                t617 = t613+t619(t625).
                t611 = t617.
                DATA t626 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t626.
                DATA t628 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t628.
                t628 ?= t487.
                t626 = t628->components.
                DATA t632 TYPE REF TO zcl_lnt_istructure_component.
                CLEAR t632.
                DATA t633 TYPE REF TO object.
                CLEAR t633.
                DATA(t634) = VALUE i( ).
                DO.
                  t626->load( ).
                  IF t634 >= lines( t626->items ).
                    EXIT.
                  ENDIF.
                  CLEAR t633.
                  READ TABLE t626->items INDEX t634 + 1 INTO t633.
                  t634 = t634 + 1.
                  DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t635.
                  CLEAR t632.
                  IF t633 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t635 ?= t633.
                    CLEAR t632.
                    IF t635 IS BOUND.
                      IF t635->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        TRY.
                            t632 ?= t635->oval.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                      ENDIF.
                      IF t632 IS NOT BOUND.
                        IF t635->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t635->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t635->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t635->tag <>
                        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                          DATA t636 TYPE REF TO zlnt_view_storage_74017ca272ac.
                          CLEAR t636.
                          IF t635->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                          ENDIF.
                          TRY.
                              t636 ?= t635->oval.
                            CATCH cx_sy_move_cast_error.
                              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                          ENDTRY.
                          IF t636->structural( ) <> abap_true.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                          ENDIF.
                        ENDIF.
                        DATA(t637) = VALUE string( ).
                        DATA t638 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t638.
                        DATA t639 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t639.
                        DATA t640 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t640.
                        t632 = NEW zcl_lnt_istructure_component( view_source = t635 i_name = t637 i_type_9913 = t638 i_as_include = t639 i_suffix = t640 ).
                      ENDIF.
                    ENDIF.
                  ELSE.
                    t632 ?= t633.
                  ENDIF.
                  DATA t642 TYPE REF TO zcl_lnt_istructure_component.
                  DATA(t643) = VALUE string( ).
                  DATA(t645) = VALUE string( ).
                  t645 = t632->zlnt_view_read_sr_dae473e680bd( ).
                  DATA(t648) = strlen( t645 ).
                  t643 = |{ t645 }{ t611 }|.
                  DATA t649 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t649.
                  t649 = t632->zlnt_view_read_sr_455340cd1e80( ).
                  DATA t652 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t652.
                  CLEAR t652.
                  DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t654.
                  CLEAR t654.
                  t642 = NEW zcl_lnt_istructure_component( i_name = t643 i_type_9913 = t649 i_as_include = t652 i_suffix = t654 ).
                  CREATE OBJECT t642->zlnt_view_ownkeys_b0e8086400eb.
                  t642->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t656.
                  t642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t656 ).
                  DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t657.
                  IF t642->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t657 ).
                  ENDIF.
                  CREATE OBJECT t642->zlnt_json_ownkeys_70e5fd461788.
                  t642->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t659.
                  t642->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t659 ).
                  DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t661.
                  IF t642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t642->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t661 ).
                  ENDIF.
                  t103->load( ).
                  APPEND t642 TO t103->items.
                  t103->save( ).
                ENDDO.
              ENDIF.
            ENDIF.
          ELSE.
            DATA(t662) = VALUE abap_bool( ).
            DATA(t663) = VALUE abap_bool( ).
            DATA(t664) = VALUE abap_bool( ).
            DATA(t665) = VALUE string( ).
            t665 = t111->precfield->value.
            DATA(t668) = |CI_|.
            DATA(t669) = strlen( t665 ).
            DATA(t670) = VALUE i( ).
            DATA(t671) = VALUE i( ).
            DATA(t672) = VALUE string( ).
            t670 = strlen( t668 ).
            IF t670 = 0.
              t664 = abap_true.
            ELSEIF t670 <= t669.
              t671 = 0.
              t672 = t665+t671(t670).
              IF t672 = t668.
                t664 = abap_true.
              ENDIF.
            ENDIF.
            t663 = t664.
            IF t664 = abap_false.
              DATA(t673) = VALUE abap_bool( ).
              DATA(t674) = VALUE string( ).
              t674 = t111->precfield->value.
              DATA(t677) = |SI_|.
              DATA(t678) = strlen( t674 ).
              DATA(t679) = VALUE i( ).
              DATA(t680) = VALUE i( ).
              DATA(t681) = VALUE string( ).
              t679 = strlen( t677 ).
              IF t679 = 0.
                t673 = abap_true.
              ELSEIF t679 <= t678.
                t680 = 0.
                t681 = t674+t680(t679).
                IF t681 = t677.
                  t673 = abap_true.
                ENDIF.
              ENDIF.
              t663 = t673.
            ENDIF.
            t662 = t663.
            IF t663 = abap_true.
              t662 = xsdbool( t487 IS BOUND AND t487 IS INSTANCE OF zcl_lnt_unknown_type ).
            ENDIF.
            IF t662 = abap_true.
              CONTINUE.
            ELSE.
              IF xsdbool( t487 IS BOUND AND t487 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
                DATA t686 TYPE REF TO zcl_lnt_unknown_type.
                CLEAR t686.
                t686 ?= t487.
                result = t686.
                RETURN.
              ELSE.
                IF xsdbool( t487 IS BOUND AND t487 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
                  DATA t690 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t690.
                  t690 ?= t487.
                  result = t690.
                  RETURN.
                ELSE.
                  DATA t693 TYPE REF TO zcl_lnt_istructure_component.
                  DATA(t694) = VALUE string( ).
                  t694 = t111->fieldname->value.
                  DATA t698 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t698.
                  t698 = t487.
                  DATA t700 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t700.
                  CLEAR t700.
                  DATA t702 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t702.
                  CLEAR t702.
                  t693 = NEW zcl_lnt_istructure_component( i_name = t694 i_type_9913 = t698 i_as_include = t700 i_suffix = t702 ).
                  CREATE OBJECT t693->zlnt_view_ownkeys_b0e8086400eb.
                  t693->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t704.
                  t693->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t704 ).
                  DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t705.
                  IF t693->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t693->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t705 ).
                  ENDIF.
                  CREATE OBJECT t693->zlnt_json_ownkeys_70e5fd461788.
                  t693->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t707.
                  t693->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t707 ).
                  DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t709.
                  IF t693->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t693->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t709 ).
                  ENDIF.
                  t103->load( ).
                  APPEND t693 TO t103->items.
                  t103->save( ).
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ELSE.
          IF xsdbool( t116 = |S| ) = abap_true.
            DATA t713 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t713.
            DATA t715 TYPE REF TO zcl_lnt_ddic.
            t715 = t105.
            DATA t717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t717 = t111->rollname_a788.
            DATA t720 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t720.
            DATA t722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t722 = t717.
            DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t724.
            CLEAR t724.
            DATA(t726) = VALUE abap_bool( ).
            IF t722 IS INITIAL.
              t726 = abap_true.
            ELSEIF t722->has = abap_false.
              t726 = abap_true.
            ENDIF.
            IF t726 = abap_true.
              DATA t728 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t729 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t729.
              DATA t732 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t732.
              t729 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t732 ).
              DATA t733 TYPE REF TO zif_lnt_object.
              CLEAR t733.
              CLEAR t733.
              t728 = NEW zcl_lnt_ilookup_result( i_type_9913 = t729 i_object_19cd = t733 ).
              CREATE OBJECT t728->zlnt_view_ownkeys_b0e8086400eb.
              t728->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t735.
              t728->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t735 ).
              CREATE OBJECT t728->zlnt_json_ownkeys_70e5fd461788.
              t728->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t737.
              t728->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t737 ).
              t720 = t728.
            ELSE.
              DATA t739 TYPE REF TO zcl_lnt_table.
              DATA t740 TYPE REF TO zcl_lnt_table.
              CLEAR t740.
              DATA t742 TYPE REF TO zif_lnt_registry.
              t742 = t715->reg.
              DATA t744 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t744.
              DATA(t747) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t747->has = abap_true.
              t747->value = |TABL|.
              t744 = t747.
              DATA(t751) = VALUE string( ).
              t751 = t717->value.
              DATA(t753) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t753->has = abap_true.
              t753->value = t751.
              DATA t755 TYPE REF TO object.
              t755 = t742->get_object( i_type_9913 = t744 i_name = t753 ).
              t740 ?= t755.
              t739 = t740.
              DATA t756 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t756.
              IF xsdbool( t739 IS BOUND ) = abap_true.
                DATA t759 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t760 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t760.
                DATA t762 TYPE REF TO zcl_lnt_table.
                t762 = t739.
                DATA t764 TYPE REF TO zif_lnt_registry.
                CLEAR t764.
                t764 = t715->reg.
                DATA t766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t766.
                DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t767.
                t760 = t762->parse_type( i_reg_f149 = t764 i_data_element = t766 i_description = t767 ).
                DATA t768 TYPE REF TO zif_lnt_object.
                CLEAR t768.
                t768 = t739.
                t759 = NEW zcl_lnt_ilookup_result( i_type_9913 = t760 i_object_19cd = t768 ).
                CREATE OBJECT t759->zlnt_view_ownkeys_b0e8086400eb.
                t759->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t771.
                t759->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t771 ).
                DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t772.
                IF t759->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t759->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t772 ).
                ENDIF.
                CREATE OBJECT t759->zlnt_json_ownkeys_70e5fd461788.
                t759->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t774.
                t759->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t774 ).
                DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t776.
                IF t759->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t759->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t776 ).
                ENDIF.
                t756 = t759.
              ELSE.
                DATA t778 TYPE REF TO zcl_lnt_ilookup_result.
                DATA(t783) = VALUE string( ).
                t783 = t717->value.
                DATA(t785) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t785->has = abap_true.
                t785->value = t783.
                t778 = t715->lookup_ddls( i_name = t785 ).
                DATA t787 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t787.
                IF xsdbool( t778 IS BOUND ) = abap_true.
                  t787 = t778.
                ELSE.
                  DATA t793 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t796) = VALUE string( ).
                  t796 = t717->value.
                  DATA(t798) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t798->has = abap_true.
                  t798->value = t796.
                  t793 = t798.
                  DATA t800 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t800.
                  DATA t802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t802 = t793.
                  DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t804.
                  CLEAR t804.
                  DATA(t806) = VALUE abap_bool( ).
                  IF t802 IS INITIAL.
                    t806 = abap_true.
                  ELSEIF t802->has = abap_false.
                    t806 = abap_true.
                  ENDIF.
                  IF t806 = abap_true.
                    DATA t808 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t809 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t809.
                    DATA t812 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t812.
                    t809 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t812 ).
                    DATA t813 TYPE REF TO zif_lnt_object.
                    CLEAR t813.
                    CLEAR t813.
                    t808 = NEW zcl_lnt_ilookup_result( i_type_9913 = t809 i_object_19cd = t813 ).
                    CREATE OBJECT t808->zlnt_view_ownkeys_b0e8086400eb.
                    t808->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t815.
                    t808->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t815 ).
                    CREATE OBJECT t808->zlnt_json_ownkeys_70e5fd461788.
                    t808->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t817.
                    t808->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t817 ).
                    t800 = t808.
                  ELSE.
                    DATA t819 TYPE REF TO zcl_lnt_table.
                    DATA t820 TYPE REF TO zcl_lnt_table.
                    CLEAR t820.
                    DATA t822 TYPE REF TO zif_lnt_registry.
                    t822 = t715->reg.
                    DATA t824 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t824.
                    DATA(t827) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t827->has = abap_true.
                    t827->value = |VIEW|.
                    t824 = t827.
                    DATA(t831) = VALUE string( ).
                    t831 = t793->value.
                    DATA(t833) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t833->has = abap_true.
                    t833->value = t831.
                    DATA t835 TYPE REF TO object.
                    t835 = t822->get_object( i_type_9913 = t824 i_name = t833 ).
                    t820 ?= t835.
                    t819 = t820.
                    DATA t836 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t836.
                    IF xsdbool( t819 IS BOUND ) = abap_true.
                      DATA t839 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t840 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t840.
                      DATA t842 TYPE REF TO zcl_lnt_table.
                      t842 = t819.
                      DATA t844 TYPE REF TO zif_lnt_registry.
                      CLEAR t844.
                      t844 = t715->reg.
                      DATA t846 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t846.
                      DATA t847 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t847.
                      t840 = t842->parse_type( i_reg_f149 = t844 i_data_element = t846 i_description = t847 ).
                      DATA t848 TYPE REF TO zif_lnt_object.
                      CLEAR t848.
                      t848 = t819.
                      t839 = NEW zcl_lnt_ilookup_result( i_type_9913 = t840 i_object_19cd = t848 ).
                      CREATE OBJECT t839->zlnt_view_ownkeys_b0e8086400eb.
                      t839->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t851.
                      t839->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t851 ).
                      DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t852.
                      IF t839->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t839->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t852 ).
                      ENDIF.
                      CREATE OBJECT t839->zlnt_json_ownkeys_70e5fd461788.
                      t839->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t854.
                      t839->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t854 ).
                      DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t856.
                      IF t839->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t839->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t856 ).
                      ENDIF.
                      t836 = t839.
                    ELSE.
                      DATA t857 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t857.
                      DATA t859 TYPE REF TO zif_lnt_registry.
                      t859 = t715->reg.
                      DATA(t861) = VALUE string( ).
                      t861 = t793->value.
                      IF t859->in_error_namespace( i_name = t861 ) = abap_true.
                        DATA t863 TYPE REF TO zcl_lnt_ilookup_result.
                        DATA t864 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t864.
                        DATA(t866) = VALUE string( ).
                        DATA(t867) = VALUE string( ).
                        t867 = t793->value.
                        DATA(t870) = strlen( t867 ).
                        t866 = |{ t867 }{ | not found, lookupView| }|.
                        DATA t871 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t871.
                        t864 = NEW zcl_lnt_unknown_type( i_error = t866 i_qualified_name = t871 ).
                        DATA t872 TYPE REF TO zif_lnt_object.
                        CLEAR t872.
                        CLEAR t872.
                        t863 = NEW zcl_lnt_ilookup_result( i_type_9913 = t864 i_object_19cd = t872 ).
                        CREATE OBJECT t863->zlnt_view_ownkeys_b0e8086400eb.
                        t863->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t874.
                        t863->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t874 ).
                        CREATE OBJECT t863->zlnt_json_ownkeys_70e5fd461788.
                        t863->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t876.
                        t863->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t876 ).
                        t857 = t863.
                      ELSE.
                        DATA t877 TYPE REF TO zcl_lnt_ilookup_result.
                        DATA t878 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t878.
                        DATA t880 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t880.
                        DATA(t882) = VALUE string( ).
                        t882 = t793->value.
                        DATA(t884) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t884->has = abap_true.
                        t884->value = t882.
                        t880 = t884.
                        DATA t886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t886.
                        t878 = zcl_lnt_void_type=>get_db65( i_voided = t880 i_qualified_name = t886 ).
                        DATA t887 TYPE REF TO zif_lnt_object.
                        CLEAR t887.
                        CLEAR t887.
                        t877 = NEW zcl_lnt_ilookup_result( i_type_9913 = t878 i_object_19cd = t887 ).
                        CREATE OBJECT t877->zlnt_view_ownkeys_b0e8086400eb.
                        t877->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t889.
                        t877->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t889 ).
                        CREATE OBJECT t877->zlnt_json_ownkeys_70e5fd461788.
                        t877->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t891.
                        t877->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t891 ).
                        t857 = t877.
                      ENDIF.
                      t836 = t857.
                    ENDIF.
                    t800 = t836.
                  ENDIF.
                  t787 = t800.
                ENDIF.
                t756 = t787.
              ENDIF.
              t720 = t756.
            ENDIF.
            t713 = t720.
            DATA t893 TYPE REF TO zcl_lnt_istructure_component.
            DATA(t894) = VALUE string( ).
            t894 = t111->fieldname->value.
            DATA t898 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t898.
            t898 = t713->zlnt_view_read_sr_9be58e2d4893( ).
            DATA t901 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t901.
            CLEAR t901.
            DATA t903 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t903.
            CLEAR t903.
            t893 = NEW zcl_lnt_istructure_component( i_name = t894 i_type_9913 = t898 i_as_include = t901 i_suffix = t903 ).
            CREATE OBJECT t893->zlnt_view_ownkeys_b0e8086400eb.
            t893->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t905.
            t893->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t905 ).
            DATA t906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t906.
            IF t893->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t893->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t906 ).
            ENDIF.
            CREATE OBJECT t893->zlnt_json_ownkeys_70e5fd461788.
            t893->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t908.
            t893->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t908 ).
            DATA t910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t910.
            IF t893->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t893->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t910 ).
            ENDIF.
            t103->load( ).
            APPEND t893 TO t103->items.
            t103->save( ).
            DATA t912 TYPE REF TO zif_lnt_object.
            t912 = t713->zlnt_view_read_sr_2de0200e6505( ).
            IF xsdbool( t912 IS BOUND ) = abap_true.
              DATA t915 TYPE REF TO zcl_lnt_iobject_and_token.
              DATA t916 TYPE REF TO zif_lnt_object.
              CLEAR t916.
              t916 = t713->zlnt_view_read_sr_2de0200e6505( ).
              DATA t923 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t923.
              CLEAR t923.
              DATA t925 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t925.
              CLEAR t925.
              t915 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t916 i_token = t923 i_filename = t925 ).
              CREATE OBJECT t915->zlnt_view_ownkeys_b0e8086400eb.
              t915->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t927.
              t915->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t927 ).
              CREATE OBJECT t915->zlnt_json_ownkeys_70e5fd461788.
              t915->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t929 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t929.
              t915->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t929 ).
              t101->load( ).
              APPEND t915 TO t101->items.
              t101->save( ).
            ENDIF.
          ELSE.
            IF xsdbool( t116 = |R| ) = abap_true.
              DATA t934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t934 = t111->rollname_a788.
              DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t937.
              CLEAR t937.
              DATA(t939) = VALUE abap_bool( ).
              IF t934 IS INITIAL.
                t939 = abap_true.
              ELSEIF t934->has = abap_false.
                t939 = abap_true.
              ENDIF.
              IF t939 = abap_true.
                DATA t941 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                DATA t942 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                DATA(t946) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t946->has = abap_true.
                t946->value = |Expected ROLLNAME|.
                t942 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t946 ).
                t941 = NEW #( ).
                t941->payload = t942.
                CLEAR t941->source_value.
                DATA t948 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t948.
                DATA t949 TYPE REF TO object.
                CLEAR t948.
                t949 = t942.
                TRY.
                    t941->source_value ?= t949.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t941->source_value IS NOT BOUND.
                  TRY.
                      t948 ?= t942.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t948 IS BOUND.
                    t941->source_value = t948->source( ).
                  ENDIF.
                  IF t941->source_value IS NOT BOUND.
                    CREATE OBJECT t941->source_value.
                    t941->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t941->source_value->oval = t942.
                  ENDIF.
                ENDIF.
                RAISE EXCEPTION t941.
              ENDIF.
              IF xsdbool( t111->rollname_a788->value = |DATA| ) = abap_true.
                DATA t956 TYPE REF TO zcl_lnt_istructure_component.
                DATA(t957) = VALUE string( ).
                t957 = t111->fieldname->value.
                DATA t961 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t961.
                DATA t963 TYPE REF TO zcl_lnt_any_type.
                CLEAR t963.
                DATA t964 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t964.
                t963 = zcl_lnt_any_type=>get_db65( i_input_967e = t964 ).
                DATA t965 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t965.
                t961 = NEW zcl_lnt_data_reference( i_type_9913 = t963 i_qualified_name = t965 ).
                DATA t966 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t966.
                CLEAR t966.
                DATA t968 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t968.
                CLEAR t968.
                t956 = NEW zcl_lnt_istructure_component( i_name = t957 i_type_9913 = t961 i_as_include = t966 i_suffix = t968 ).
                CREATE OBJECT t956->zlnt_view_ownkeys_b0e8086400eb.
                t956->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t970 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t970.
                t956->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t970 ).
                DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t971.
                IF t956->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t956->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t971 ).
                ENDIF.
                CREATE OBJECT t956->zlnt_json_ownkeys_70e5fd461788.
                t956->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t973.
                t956->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t973 ).
                DATA t975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t975.
                IF t956->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t956->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t975 ).
                ENDIF.
                t103->load( ).
                APPEND t956 TO t103->items.
                t103->save( ).
              ELSE.
                IF xsdbool( t111->rollname_a788->value = |OBJECT| ) = abap_true.
                  DATA t982 TYPE REF TO zcl_lnt_istructure_component.
                  DATA(t983) = VALUE string( ).
                  t983 = t111->fieldname->value.
                  DATA t987 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t987.
                  DATA t989 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t989.
                  t987 = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t989 ).
                  DATA t990 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t990.
                  CLEAR t990.
                  DATA t992 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t992.
                  CLEAR t992.
                  t982 = NEW zcl_lnt_istructure_component( i_name = t983 i_type_9913 = t987 i_as_include = t990 i_suffix = t992 ).
                  CREATE OBJECT t982->zlnt_view_ownkeys_b0e8086400eb.
                  t982->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t994.
                  t982->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t994 ).
                  DATA t995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t995.
                  IF t982->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t982->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t995 ).
                  ENDIF.
                  CREATE OBJECT t982->zlnt_json_ownkeys_70e5fd461788.
                  t982->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t997 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t997.
                  t982->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t997 ).
                  DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t999.
                  IF t982->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t982->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t999 ).
                  ENDIF.
                  t103->load( ).
                  APPEND t982 TO t103->items.
                  t103->save( ).
                ELSE.
                  DATA(t1000) = VALUE abap_bool( ).
                  DATA t1001 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t1001 = t111->reftype.
                  DATA t1003 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t1006) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t1006->has = abap_true.
                  t1006->value = |S|.
                  t1003 = t1006.
                  DATA(t1008) = VALUE abap_bool( ).
                  DATA(t1009) = VALUE abap_bool( ).
                  IF t1001 IS BOUND.
                    t1008 = t1001->has.
                  ENDIF.
                  IF t1003 IS BOUND.
                    t1009 = t1003->has.
                  ENDIF.
                  IF t1008 = t1009.
                    IF t1008 = abap_false.
                      t1000 = abap_true.
                    ELSEIF t1001->value = t1003->value.
                      t1000 = abap_true.
                    ENDIF.
                  ENDIF.
                  IF t1000 = abap_true.
                    DATA t1010 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t1010.
                    DATA t1012 TYPE REF TO zcl_lnt_ddic.
                    t1012 = t105.
                    DATA t1014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t1017) = VALUE string( ).
                    t1017 = t111->rollname_a788->value.
                    DATA(t1020) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1020->has = abap_true.
                    t1020->value = t1017.
                    t1014 = t1020.
                    DATA t1022 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t1022.
                    DATA t1024 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t1024 = t1014.
                    DATA t1026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1026.
                    CLEAR t1026.
                    DATA(t1028) = VALUE abap_bool( ).
                    IF t1024 IS INITIAL.
                      t1028 = abap_true.
                    ELSEIF t1024->has = abap_false.
                      t1028 = abap_true.
                    ENDIF.
                    IF t1028 = abap_true.
                      DATA t1030 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t1031 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t1031.
                      DATA t1034 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1034.
                      t1031 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t1034 ).
                      DATA t1035 TYPE REF TO zif_lnt_object.
                      CLEAR t1035.
                      CLEAR t1035.
                      t1030 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1031 i_object_19cd = t1035 ).
                      CREATE OBJECT t1030->zlnt_view_ownkeys_b0e8086400eb.
                      t1030->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1037.
                      t1030->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1037 ).
                      CREATE OBJECT t1030->zlnt_json_ownkeys_70e5fd461788.
                      t1030->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1039.
                      t1030->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1039 ).
                      t1022 = t1030.
                    ELSE.
                      DATA t1041 TYPE REF TO zcl_lnt_table.
                      DATA t1042 TYPE REF TO zcl_lnt_table.
                      CLEAR t1042.
                      DATA t1044 TYPE REF TO zif_lnt_registry.
                      t1044 = t1012->reg.
                      DATA t1046 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1046.
                      DATA(t1049) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1049->has = abap_true.
                      t1049->value = |TABL|.
                      t1046 = t1049.
                      DATA(t1053) = VALUE string( ).
                      t1053 = t1014->value.
                      DATA(t1055) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1055->has = abap_true.
                      t1055->value = t1053.
                      DATA t1057 TYPE REF TO object.
                      t1057 = t1044->get_object( i_type_9913 = t1046 i_name = t1055 ).
                      t1042 ?= t1057.
                      t1041 = t1042.
                      DATA t1058 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1058.
                      IF xsdbool( t1041 IS BOUND ) = abap_true.
                        DATA t1061 TYPE REF TO zcl_lnt_ilookup_result.
                        DATA t1062 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1062.
                        DATA t1064 TYPE REF TO zcl_lnt_table.
                        t1064 = t1041.
                        DATA t1066 TYPE REF TO zif_lnt_registry.
                        CLEAR t1066.
                        t1066 = t1012->reg.
                        DATA t1068 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1068.
                        DATA t1069 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1069.
                        t1062 = t1064->parse_type( i_reg_f149 = t1066 i_data_element = t1068 i_description = t1069 ).
                        DATA t1070 TYPE REF TO zif_lnt_object.
                        CLEAR t1070.
                        t1070 = t1041.
                        t1061 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1062 i_object_19cd = t1070 ).
                        CREATE OBJECT t1061->zlnt_view_ownkeys_b0e8086400eb.
                        t1061->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1073.
                        t1061->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1073 ).
                        DATA t1074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1074.
                        IF t1061->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1061->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1074 ).
                        ENDIF.
                        CREATE OBJECT t1061->zlnt_json_ownkeys_70e5fd461788.
                        t1061->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1076 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1076.
                        t1061->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1076 ).
                        DATA t1078 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1078.
                        IF t1061->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1061->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1078 ).
                        ENDIF.
                        t1058 = t1061.
                      ELSE.
                        DATA t1080 TYPE REF TO zcl_lnt_ilookup_result.
                        DATA(t1085) = VALUE string( ).
                        t1085 = t1014->value.
                        DATA(t1087) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1087->has = abap_true.
                        t1087->value = t1085.
                        t1080 = t1012->lookup_ddls( i_name = t1087 ).
                        DATA t1089 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1089.
                        IF xsdbool( t1080 IS BOUND ) = abap_true.
                          t1089 = t1080.
                        ELSE.
                          DATA t1095 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          DATA(t1098) = VALUE string( ).
                          t1098 = t1014->value.
                          DATA(t1100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1100->has = abap_true.
                          t1100->value = t1098.
                          t1095 = t1100.
                          DATA t1102 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t1102.
                          DATA t1104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          t1104 = t1095.
                          DATA t1106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1106.
                          CLEAR t1106.
                          DATA(t1108) = VALUE abap_bool( ).
                          IF t1104 IS INITIAL.
                            t1108 = abap_true.
                          ELSEIF t1104->has = abap_false.
                            t1108 = abap_true.
                          ENDIF.
                          IF t1108 = abap_true.
                            DATA t1110 TYPE REF TO zcl_lnt_ilookup_result.
                            DATA t1111 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t1111.
                            DATA t1114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1114.
                            t1111 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t1114 ).
                            DATA t1115 TYPE REF TO zif_lnt_object.
                            CLEAR t1115.
                            CLEAR t1115.
                            t1110 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1111 i_object_19cd = t1115 ).
                            CREATE OBJECT t1110->zlnt_view_ownkeys_b0e8086400eb.
                            t1110->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1117.
                            t1110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1117 ).
                            CREATE OBJECT t1110->zlnt_json_ownkeys_70e5fd461788.
                            t1110->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1119.
                            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1119 ).
                            t1102 = t1110.
                          ELSE.
                            DATA t1121 TYPE REF TO zcl_lnt_table.
                            DATA t1122 TYPE REF TO zcl_lnt_table.
                            CLEAR t1122.
                            DATA t1124 TYPE REF TO zif_lnt_registry.
                            t1124 = t1012->reg.
                            DATA t1126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1126.
                            DATA(t1129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t1129->has = abap_true.
                            t1129->value = |VIEW|.
                            t1126 = t1129.
                            DATA(t1133) = VALUE string( ).
                            t1133 = t1095->value.
                            DATA(t1135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t1135->has = abap_true.
                            t1135->value = t1133.
                            DATA t1137 TYPE REF TO object.
                            t1137 = t1124->get_object( i_type_9913 = t1126 i_name = t1135 ).
                            t1122 ?= t1137.
                            t1121 = t1122.
                            DATA t1138 TYPE REF TO zcl_lnt_ilookup_result.
                            CLEAR t1138.
                            IF xsdbool( t1121 IS BOUND ) = abap_true.
                              DATA t1141 TYPE REF TO zcl_lnt_ilookup_result.
                              DATA t1142 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t1142.
                              DATA t1144 TYPE REF TO zcl_lnt_table.
                              t1144 = t1121.
                              DATA t1146 TYPE REF TO zif_lnt_registry.
                              CLEAR t1146.
                              t1146 = t1012->reg.
                              DATA t1148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1148.
                              DATA t1149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1149.
                              t1142 = t1144->parse_type( i_reg_f149 = t1146 i_data_element = t1148 i_description = t1149 ).
                              DATA t1150 TYPE REF TO zif_lnt_object.
                              CLEAR t1150.
                              t1150 = t1121.
                              t1141 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1142 i_object_19cd = t1150 ).
                              CREATE OBJECT t1141->zlnt_view_ownkeys_b0e8086400eb.
                              t1141->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t1153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1153.
                              t1141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1153 ).
                              DATA t1154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1154.
                              IF t1141->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                t1141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1154 ).
                              ENDIF.
                              CREATE OBJECT t1141->zlnt_json_ownkeys_70e5fd461788.
                              t1141->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t1156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1156.
                              t1141->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1156 ).
                              DATA t1158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1158.
                              IF t1141->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                t1141->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1158 ).
                              ENDIF.
                              t1138 = t1141.
                            ELSE.
                              DATA t1159 TYPE REF TO zcl_lnt_ilookup_result.
                              CLEAR t1159.
                              DATA t1161 TYPE REF TO zif_lnt_registry.
                              t1161 = t1012->reg.
                              DATA(t1163) = VALUE string( ).
                              t1163 = t1095->value.
                              IF t1161->in_error_namespace( i_name = t1163 ) = abap_true.
                                DATA t1165 TYPE REF TO zcl_lnt_ilookup_result.
                                DATA t1166 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t1166.
                                DATA(t1168) = VALUE string( ).
                                DATA(t1169) = VALUE string( ).
                                t1169 = t1095->value.
                                DATA(t1172) = strlen( t1169 ).
                                t1168 = |{ t1169 }{ | not found, lookupView| }|.
                                DATA t1173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t1173.
                                t1166 = NEW zcl_lnt_unknown_type( i_error = t1168 i_qualified_name = t1173 ).
                                DATA t1174 TYPE REF TO zif_lnt_object.
                                CLEAR t1174.
                                CLEAR t1174.
                                t1165 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1166 i_object_19cd = t1174 ).
                                CREATE OBJECT t1165->zlnt_view_ownkeys_b0e8086400eb.
                                t1165->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA t1176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                CLEAR t1176.
                                t1165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1176 ).
                                CREATE OBJECT t1165->zlnt_json_ownkeys_70e5fd461788.
                                t1165->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA t1178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                CLEAR t1178.
                                t1165->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1178 ).
                                t1159 = t1165.
                              ELSE.
                                DATA t1179 TYPE REF TO zcl_lnt_ilookup_result.
                                DATA t1180 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t1180.
                                DATA t1182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t1182.
                                DATA(t1184) = VALUE string( ).
                                t1184 = t1095->value.
                                DATA(t1186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t1186->has = abap_true.
                                t1186->value = t1184.
                                t1182 = t1186.
                                DATA t1188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t1188.
                                t1180 = zcl_lnt_void_type=>get_db65( i_voided = t1182 i_qualified_name = t1188 ).
                                DATA t1189 TYPE REF TO zif_lnt_object.
                                CLEAR t1189.
                                CLEAR t1189.
                                t1179 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1180 i_object_19cd = t1189 ).
                                CREATE OBJECT t1179->zlnt_view_ownkeys_b0e8086400eb.
                                t1179->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA t1191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                CLEAR t1191.
                                t1179->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1191 ).
                                CREATE OBJECT t1179->zlnt_json_ownkeys_70e5fd461788.
                                t1179->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA t1193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                CLEAR t1193.
                                t1179->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1193 ).
                                t1159 = t1179.
                              ENDIF.
                              t1138 = t1159.
                            ENDIF.
                            t1102 = t1138.
                          ENDIF.
                          t1089 = t1102.
                        ENDIF.
                        t1058 = t1089.
                      ENDIF.
                      t1022 = t1058.
                    ENDIF.
                    t1010 = t1022.
                    DATA t1195 TYPE REF TO zcl_lnt_istructure_component.
                    DATA(t1196) = VALUE string( ).
                    t1196 = t111->fieldname->value.
                    DATA t1200 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t1200.
                    DATA t1202 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t1202.
                    t1202 = t1010->zlnt_view_read_sr_9be58e2d4893( ).
                    DATA t1204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1204.
                    t1200 = NEW zcl_lnt_data_reference( i_type_9913 = t1202 i_qualified_name = t1204 ).
                    DATA t1205 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t1205.
                    CLEAR t1205.
                    DATA t1207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1207.
                    CLEAR t1207.
                    t1195 = NEW zcl_lnt_istructure_component( i_name = t1196 i_type_9913 = t1200 i_as_include = t1205 i_suffix = t1207 ).
                    CREATE OBJECT t1195->zlnt_view_ownkeys_b0e8086400eb.
                    t1195->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t1209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1209.
                    t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1209 ).
                    DATA t1210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1210.
                    IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1210 ).
                    ENDIF.
                    CREATE OBJECT t1195->zlnt_json_ownkeys_70e5fd461788.
                    t1195->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t1212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1212.
                    t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1212 ).
                    DATA t1214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1214.
                    IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1214 ).
                    ENDIF.
                    t103->load( ).
                    APPEND t1195 TO t103->items.
                    t103->save( ).
                    DATA t1216 TYPE REF TO zif_lnt_object.
                    t1216 = t1010->zlnt_view_read_sr_2de0200e6505( ).
                    IF xsdbool( t1216 IS BOUND ) = abap_true.
                      DATA t1219 TYPE REF TO zcl_lnt_iobject_and_token.
                      DATA t1220 TYPE REF TO zif_lnt_object.
                      CLEAR t1220.
                      t1220 = t1010->zlnt_view_read_sr_2de0200e6505( ).
                      DATA t1227 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t1227.
                      CLEAR t1227.
                      DATA t1229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1229.
                      CLEAR t1229.
                      t1219 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1220 i_token = t1227 i_filename = t1229 ).
                      CREATE OBJECT t1219->zlnt_view_ownkeys_b0e8086400eb.
                      t1219->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1231.
                      t1219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1231 ).
                      CREATE OBJECT t1219->zlnt_json_ownkeys_70e5fd461788.
                      t1219->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1233.
                      t1219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1233 ).
                      t101->load( ).
                      APPEND t1219 TO t101->items.
                      t101->save( ).
                    ENDIF.
                  ELSE.
                    DATA(t1234) = VALUE abap_bool( ).
                    DATA t1235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t1235 = t111->reftype.
                    DATA t1237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t1240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1240->has = abap_true.
                    t1240->value = |L|.
                    t1237 = t1240.
                    DATA(t1242) = VALUE abap_bool( ).
                    DATA(t1243) = VALUE abap_bool( ).
                    IF t1235 IS BOUND.
                      t1242 = t1235->has.
                    ENDIF.
                    IF t1237 IS BOUND.
                      t1243 = t1237->has.
                    ENDIF.
                    IF t1242 = t1243.
                      IF t1242 = abap_false.
                        t1234 = abap_true.
                      ELSEIF t1235->value = t1237->value.
                        t1234 = abap_true.
                      ENDIF.
                    ENDIF.
                    IF t1234 = abap_true.
                      DATA t1244 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1244.
                      DATA t1246 TYPE REF TO zcl_lnt_ddic.
                      t1246 = t105.
                      DATA t1248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t1251) = VALUE string( ).
                      t1251 = t111->rollname_a788->value.
                      DATA(t1254) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1254->has = abap_true.
                      t1254->value = t1251.
                      t1248 = t1254.
                      DATA t1256 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1256.
                      DATA t1258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t1258 = t1248.
                      DATA t1260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1260.
                      CLEAR t1260.
                      DATA(t1262) = VALUE abap_bool( ).
                      IF t1258 IS INITIAL.
                        t1262 = abap_true.
                      ELSEIF t1258->has = abap_false.
                        t1262 = abap_true.
                      ENDIF.
                      IF t1262 = abap_true.
                        DATA t1264 TYPE REF TO zcl_lnt_ilookup_result.
                        DATA t1265 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1265.
                        DATA t1268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1268.
                        t1265 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableType| i_qualified_name = t1268 ).
                        DATA t1269 TYPE REF TO zif_lnt_object.
                        CLEAR t1269.
                        CLEAR t1269.
                        t1264 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1265 i_object_19cd = t1269 ).
                        CREATE OBJECT t1264->zlnt_view_ownkeys_b0e8086400eb.
                        t1264->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1271.
                        t1264->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1271 ).
                        CREATE OBJECT t1264->zlnt_json_ownkeys_70e5fd461788.
                        t1264->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1273.
                        t1264->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1273 ).
                        t1256 = t1264.
                      ELSE.
                        DATA t1275 TYPE REF TO zcl_lnt_ob_table_type.
                        DATA t1276 TYPE REF TO zcl_lnt_ob_table_type.
                        CLEAR t1276.
                        DATA t1278 TYPE REF TO zif_lnt_registry.
                        t1278 = t1246->reg.
                        DATA t1280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1280.
                        DATA(t1283) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1283->has = abap_true.
                        t1283->value = |TTYP|.
                        t1280 = t1283.
                        DATA(t1287) = VALUE string( ).
                        t1287 = t1248->value.
                        DATA(t1289) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1289->has = abap_true.
                        t1289->value = t1287.
                        DATA t1291 TYPE REF TO object.
                        t1291 = t1278->get_object( i_type_9913 = t1280 i_name = t1289 ).
                        t1276 ?= t1291.
                        t1275 = t1276.
                        DATA t1292 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1292.
                        IF xsdbool( t1275 IS BOUND ) = abap_true.
                          DATA t1295 TYPE REF TO zcl_lnt_ilookup_result.
                          DATA t1296 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t1296.
                          DATA t1298 TYPE REF TO zcl_lnt_ob_table_type.
                          t1298 = t1275.
                          DATA t1300 TYPE REF TO zif_lnt_registry.
                          CLEAR t1300.
                          t1300 = t1246->reg.
                          DATA t1302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1302.
                          DATA t1303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1303.
                          t1296 = t1298->parse_type( i_reg_f149 = t1300 i_data_element = t1302 i_description = t1303 ).
                          DATA t1304 TYPE REF TO zif_lnt_object.
                          CLEAR t1304.
                          t1304 = t1275.
                          t1295 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1296 i_object_19cd = t1304 ).
                          CREATE OBJECT t1295->zlnt_view_ownkeys_b0e8086400eb.
                          t1295->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1307.
                          t1295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1307 ).
                          DATA t1308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1308.
                          IF t1295->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1308 ).
                          ENDIF.
                          CREATE OBJECT t1295->zlnt_json_ownkeys_70e5fd461788.
                          t1295->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1310.
                          t1295->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1310 ).
                          DATA t1312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1312.
                          IF t1295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1295->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1312 ).
                          ENDIF.
                          t1292 = t1295.
                        ELSE.
                          DATA t1313 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t1313.
                          DATA t1315 TYPE REF TO zif_lnt_registry.
                          t1315 = t1246->reg.
                          DATA(t1317) = VALUE string( ).
                          t1317 = t1248->value.
                          IF t1315->in_error_namespace( i_name = t1317 ) = abap_true.
                            DATA t1319 TYPE REF TO zcl_lnt_ilookup_result.
                            DATA t1320 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t1320.
                            DATA(t1322) = VALUE string( ).
                            DATA(t1323) = VALUE string( ).
                            t1323 = t1248->value.
                            DATA(t1326) = strlen( t1323 ).
                            t1322 = |{ t1323 }{ | not found, lookupTableType| }|.
                            DATA t1327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1327.
                            t1320 = NEW zcl_lnt_unknown_type( i_error = t1322 i_qualified_name = t1327 ).
                            DATA t1328 TYPE REF TO zif_lnt_object.
                            CLEAR t1328.
                            CLEAR t1328.
                            t1319 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1320 i_object_19cd = t1328 ).
                            CREATE OBJECT t1319->zlnt_view_ownkeys_b0e8086400eb.
                            t1319->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1330.
                            t1319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1330 ).
                            CREATE OBJECT t1319->zlnt_json_ownkeys_70e5fd461788.
                            t1319->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1332.
                            t1319->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1332 ).
                            t1313 = t1319.
                          ELSE.
                            DATA t1333 TYPE REF TO zcl_lnt_ilookup_result.
                            DATA t1334 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t1334.
                            DATA t1336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1336.
                            DATA(t1338) = VALUE string( ).
                            t1338 = t1248->value.
                            DATA(t1340) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t1340->has = abap_true.
                            t1340->value = t1338.
                            t1336 = t1340.
                            DATA t1342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1342.
                            t1334 = zcl_lnt_void_type=>get_db65( i_voided = t1336 i_qualified_name = t1342 ).
                            DATA t1343 TYPE REF TO zif_lnt_object.
                            CLEAR t1343.
                            CLEAR t1343.
                            t1333 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1334 i_object_19cd = t1343 ).
                            CREATE OBJECT t1333->zlnt_view_ownkeys_b0e8086400eb.
                            t1333->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1345.
                            t1333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1345 ).
                            CREATE OBJECT t1333->zlnt_json_ownkeys_70e5fd461788.
                            t1333->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1347.
                            t1333->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1347 ).
                            t1313 = t1333.
                          ENDIF.
                          t1292 = t1313.
                        ENDIF.
                        t1256 = t1292.
                      ENDIF.
                      t1244 = t1256.
                      DATA t1349 TYPE REF TO zcl_lnt_istructure_component.
                      DATA(t1350) = VALUE string( ).
                      t1350 = t111->fieldname->value.
                      DATA t1354 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t1354.
                      DATA t1356 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t1356.
                      t1356 = t1244->zlnt_view_read_sr_9be58e2d4893( ).
                      DATA t1358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1358.
                      t1354 = NEW zcl_lnt_data_reference( i_type_9913 = t1356 i_qualified_name = t1358 ).
                      DATA t1359 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t1359.
                      CLEAR t1359.
                      DATA t1361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1361.
                      CLEAR t1361.
                      t1349 = NEW zcl_lnt_istructure_component( i_name = t1350 i_type_9913 = t1354 i_as_include = t1359 i_suffix = t1361 ).
                      CREATE OBJECT t1349->zlnt_view_ownkeys_b0e8086400eb.
                      t1349->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1363.
                      t1349->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1363 ).
                      DATA t1364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1364.
                      IF t1349->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1349->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1364 ).
                      ENDIF.
                      CREATE OBJECT t1349->zlnt_json_ownkeys_70e5fd461788.
                      t1349->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1366.
                      t1349->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1366 ).
                      DATA t1368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1368.
                      IF t1349->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1349->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1368 ).
                      ENDIF.
                      t103->load( ).
                      APPEND t1349 TO t103->items.
                      t103->save( ).
                      DATA t1370 TYPE REF TO zif_lnt_object.
                      t1370 = t1244->zlnt_view_read_sr_2de0200e6505( ).
                      IF xsdbool( t1370 IS BOUND ) = abap_true.
                        DATA t1373 TYPE REF TO zcl_lnt_iobject_and_token.
                        DATA t1374 TYPE REF TO zif_lnt_object.
                        CLEAR t1374.
                        t1374 = t1244->zlnt_view_read_sr_2de0200e6505( ).
                        DATA t1381 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t1381.
                        CLEAR t1381.
                        DATA t1383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1383.
                        CLEAR t1383.
                        t1373 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1374 i_token = t1381 i_filename = t1383 ).
                        CREATE OBJECT t1373->zlnt_view_ownkeys_b0e8086400eb.
                        t1373->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1385.
                        t1373->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1385 ).
                        CREATE OBJECT t1373->zlnt_json_ownkeys_70e5fd461788.
                        t1373->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1387.
                        t1373->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1387 ).
                        t101->load( ).
                        APPEND t1373 TO t101->items.
                        t101->save( ).
                      ENDIF.
                    ELSE.
                      DATA(t1388) = VALUE abap_bool( ).
                      DATA t1389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t1389 = t111->reftype.
                      DATA t1391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t1394) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1394->has = abap_true.
                      t1394->value = |E|.
                      t1391 = t1394.
                      DATA(t1396) = VALUE abap_bool( ).
                      DATA(t1397) = VALUE abap_bool( ).
                      IF t1389 IS BOUND.
                        t1396 = t1389->has.
                      ENDIF.
                      IF t1391 IS BOUND.
                        t1397 = t1391->has.
                      ENDIF.
                      IF t1396 = t1397.
                        IF t1396 = abap_false.
                          t1388 = abap_true.
                        ELSEIF t1389->value = t1391->value.
                          t1388 = abap_true.
                        ENDIF.
                      ENDIF.
                      IF t1388 = abap_true.
                        DATA t1398 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1398.
                        DATA t1400 TYPE REF TO zcl_lnt_ddic.
                        t1400 = t105.
                        DATA t1402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        DATA(t1405) = VALUE string( ).
                        t1405 = t111->rollname_a788->value.
                        DATA(t1408) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1408->has = abap_true.
                        t1408->value = t1405.
                        t1402 = t1408.
                        DATA t1410 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1410.
                        DATA t1412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        t1412 = t1402.
                        DATA t1414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1414.
                        CLEAR t1414.
                        DATA(t1416) = VALUE abap_bool( ).
                        IF t1412 IS INITIAL.
                          t1416 = abap_true.
                        ELSEIF t1412->has = abap_false.
                          t1416 = abap_true.
                        ENDIF.
                        IF t1416 = abap_true.
                          DATA t1418 TYPE REF TO zcl_lnt_ilookup_result.
                          DATA t1419 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t1419.
                          DATA t1422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1422.
                          t1419 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupDataElement| i_qualified_name = t1422 ).
                          DATA t1423 TYPE REF TO zif_lnt_object.
                          CLEAR t1423.
                          CLEAR t1423.
                          t1418 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1419 i_object_19cd = t1423 ).
                          CREATE OBJECT t1418->zlnt_view_ownkeys_b0e8086400eb.
                          t1418->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1425.
                          t1418->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1425 ).
                          CREATE OBJECT t1418->zlnt_json_ownkeys_70e5fd461788.
                          t1418->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1427.
                          t1418->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1427 ).
                          t1410 = t1418.
                        ELSE.
                          DATA t1429 TYPE REF TO zcl_lnt_data_element.
                          DATA t1430 TYPE REF TO zcl_lnt_data_element.
                          CLEAR t1430.
                          DATA t1432 TYPE REF TO zif_lnt_registry.
                          t1432 = t1400->reg.
                          DATA t1434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1434.
                          DATA(t1437) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1437->has = abap_true.
                          t1437->value = |DTEL|.
                          t1434 = t1437.
                          DATA(t1441) = VALUE string( ).
                          t1441 = t1402->value.
                          DATA(t1443) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1443->has = abap_true.
                          t1443->value = t1441.
                          DATA t1445 TYPE REF TO object.
                          t1445 = t1432->get_object( i_type_9913 = t1434 i_name = t1443 ).
                          t1430 ?= t1445.
                          t1429 = t1430.
                          DATA t1446 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t1446.
                          IF xsdbool( t1429 IS BOUND ) = abap_true.
                            DATA t1449 TYPE REF TO zcl_lnt_ilookup_result.
                            DATA t1450 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t1450.
                            DATA t1452 TYPE REF TO zcl_lnt_data_element.
                            t1452 = t1429.
                            DATA t1454 TYPE REF TO zif_lnt_registry.
                            CLEAR t1454.
                            t1454 = t1400->reg.
                            DATA t1456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1456.
                            DATA t1457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1457.
                            t1450 = t1452->parse_type( i_reg_f149 = t1454 i_data_element = t1456 i_description = t1457 ).
                            DATA t1458 TYPE REF TO zif_lnt_object.
                            CLEAR t1458.
                            t1458 = t1429.
                            t1449 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1450 i_object_19cd = t1458 ).
                            CREATE OBJECT t1449->zlnt_view_ownkeys_b0e8086400eb.
                            t1449->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1461.
                            t1449->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1461 ).
                            DATA t1462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1462.
                            IF t1449->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1449->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1462 ).
                            ENDIF.
                            CREATE OBJECT t1449->zlnt_json_ownkeys_70e5fd461788.
                            t1449->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1464.
                            t1449->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1464 ).
                            DATA t1466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1466.
                            IF t1449->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1449->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1466 ).
                            ENDIF.
                            t1446 = t1449.
                          ELSE.
                            DATA t1467 TYPE REF TO zcl_lnt_ilookup_result.
                            CLEAR t1467.
                            DATA t1469 TYPE REF TO zif_lnt_registry.
                            t1469 = t1400->reg.
                            DATA(t1471) = VALUE string( ).
                            t1471 = t1402->value.
                            IF t1469->in_error_namespace( i_name = t1471 ) = abap_true.
                              DATA t1473 TYPE REF TO zcl_lnt_ilookup_result.
                              DATA t1474 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t1474.
                              DATA(t1476) = VALUE string( ).
                              DATA(t1477) = VALUE string( ).
                              t1477 = t1402->value.
                              DATA(t1480) = strlen( t1477 ).
                              t1476 = |{ t1477 }{ | not found, lookupDataElement| }|.
                              DATA t1481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1481.
                              t1474 = NEW zcl_lnt_unknown_type( i_error = t1476 i_qualified_name = t1481 ).
                              DATA t1482 TYPE REF TO zif_lnt_object.
                              CLEAR t1482.
                              CLEAR t1482.
                              t1473 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1474 i_object_19cd = t1482 ).
                              CREATE OBJECT t1473->zlnt_view_ownkeys_b0e8086400eb.
                              t1473->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t1484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1484.
                              t1473->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1484 ).
                              CREATE OBJECT t1473->zlnt_json_ownkeys_70e5fd461788.
                              t1473->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t1486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1486.
                              t1473->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1486 ).
                              t1467 = t1473.
                            ELSE.
                              DATA t1487 TYPE REF TO zcl_lnt_ilookup_result.
                              DATA t1488 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t1488.
                              DATA t1490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1490.
                              DATA(t1492) = VALUE string( ).
                              t1492 = t1402->value.
                              DATA(t1494) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t1494->has = abap_true.
                              t1494->value = t1492.
                              t1490 = t1494.
                              DATA t1496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1496.
                              t1488 = zcl_lnt_void_type=>get_db65( i_voided = t1490 i_qualified_name = t1496 ).
                              DATA t1497 TYPE REF TO zif_lnt_object.
                              CLEAR t1497.
                              CLEAR t1497.
                              t1487 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1488 i_object_19cd = t1497 ).
                              CREATE OBJECT t1487->zlnt_view_ownkeys_b0e8086400eb.
                              t1487->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t1499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1499.
                              t1487->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1499 ).
                              CREATE OBJECT t1487->zlnt_json_ownkeys_70e5fd461788.
                              t1487->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t1501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1501.
                              t1487->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1501 ).
                              t1467 = t1487.
                            ENDIF.
                            t1446 = t1467.
                          ENDIF.
                          t1410 = t1446.
                        ENDIF.
                        t1398 = t1410.
                        DATA t1503 TYPE REF TO zcl_lnt_istructure_component.
                        DATA(t1504) = VALUE string( ).
                        t1504 = t111->fieldname->value.
                        DATA t1508 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1508.
                        DATA t1510 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1510.
                        t1510 = t1398->zlnt_view_read_sr_9be58e2d4893( ).
                        DATA t1512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1512.
                        t1508 = NEW zcl_lnt_data_reference( i_type_9913 = t1510 i_qualified_name = t1512 ).
                        DATA t1513 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t1513.
                        CLEAR t1513.
                        DATA t1515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1515.
                        CLEAR t1515.
                        t1503 = NEW zcl_lnt_istructure_component( i_name = t1504 i_type_9913 = t1508 i_as_include = t1513 i_suffix = t1515 ).
                        CREATE OBJECT t1503->zlnt_view_ownkeys_b0e8086400eb.
                        t1503->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1517.
                        t1503->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1517 ).
                        DATA t1518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1518.
                        IF t1503->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1503->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1518 ).
                        ENDIF.
                        CREATE OBJECT t1503->zlnt_json_ownkeys_70e5fd461788.
                        t1503->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1520.
                        t1503->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1520 ).
                        DATA t1522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1522.
                        IF t1503->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1503->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1522 ).
                        ENDIF.
                        t103->load( ).
                        APPEND t1503 TO t103->items.
                        t103->save( ).
                        DATA t1524 TYPE REF TO zif_lnt_object.
                        t1524 = t1398->zlnt_view_read_sr_2de0200e6505( ).
                        IF xsdbool( t1524 IS BOUND ) = abap_true.
                          DATA t1527 TYPE REF TO zcl_lnt_iobject_and_token.
                          DATA t1528 TYPE REF TO zif_lnt_object.
                          CLEAR t1528.
                          t1528 = t1398->zlnt_view_read_sr_2de0200e6505( ).
                          DATA t1535 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t1535.
                          CLEAR t1535.
                          DATA t1537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1537.
                          CLEAR t1537.
                          t1527 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1528 i_token = t1535 i_filename = t1537 ).
                          CREATE OBJECT t1527->zlnt_view_ownkeys_b0e8086400eb.
                          t1527->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1539.
                          t1527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1539 ).
                          CREATE OBJECT t1527->zlnt_json_ownkeys_70e5fd461788.
                          t1527->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1541.
                          t1527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1541 ).
                          t101->load( ).
                          APPEND t1527 TO t101->items.
                          t101->save( ).
                        ENDIF.
                      ELSE.
                        DATA t1542 TYPE REF TO zcl_lnt_ilookup_result.
                        DATA(t1545) = VALUE string( ).
                        t1545 = t111->rollname_a788->value.
                        t1542 = t105->lookup_object( i_name = t1545 ).
                        DATA t1549 TYPE REF TO zcl_lnt_istructure_component.
                        DATA(t1550) = VALUE string( ).
                        t1550 = t111->fieldname->value.
                        DATA t1554 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1554.
                        t1554 = t1542->zlnt_view_read_sr_9be58e2d4893( ).
                        DATA t1557 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t1557.
                        CLEAR t1557.
                        DATA t1559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1559.
                        CLEAR t1559.
                        t1549 = NEW zcl_lnt_istructure_component( i_name = t1550 i_type_9913 = t1554 i_as_include = t1557 i_suffix = t1559 ).
                        CREATE OBJECT t1549->zlnt_view_ownkeys_b0e8086400eb.
                        t1549->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1561.
                        t1549->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1561 ).
                        DATA t1562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1562.
                        IF t1549->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1549->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1562 ).
                        ENDIF.
                        CREATE OBJECT t1549->zlnt_json_ownkeys_70e5fd461788.
                        t1549->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1564.
                        t1549->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1564 ).
                        DATA t1566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1566.
                        IF t1549->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1549->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1566 ).
                        ENDIF.
                        t103->load( ).
                        APPEND t1549 TO t103->items.
                        t103->save( ).
                        DATA t1568 TYPE REF TO zif_lnt_object.
                        t1568 = t1542->zlnt_view_read_sr_2de0200e6505( ).
                        IF xsdbool( t1568 IS BOUND ) = abap_true.
                          DATA t1571 TYPE REF TO zcl_lnt_iobject_and_token.
                          DATA t1572 TYPE REF TO zif_lnt_object.
                          CLEAR t1572.
                          t1572 = t1542->zlnt_view_read_sr_2de0200e6505( ).
                          DATA t1579 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t1579.
                          CLEAR t1579.
                          DATA t1581 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1581.
                          CLEAR t1581.
                          t1571 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1572 i_token = t1579 i_filename = t1581 ).
                          CREATE OBJECT t1571->zlnt_view_ownkeys_b0e8086400eb.
                          t1571->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1583.
                          t1571->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1583 ).
                          CREATE OBJECT t1571->zlnt_json_ownkeys_70e5fd461788.
                          t1571->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1585.
                          t1571->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1585 ).
                          t101->load( ).
                          APPEND t1571 TO t101->items.
                          t101->save( ).
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ELSE.
              IF xsdbool( t116 = |L| ) = abap_true.
                DATA t1589 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1589.
                DATA t1591 TYPE REF TO zcl_lnt_ddic.
                t1591 = t105.
                DATA t1593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t1593 = t111->rollname_a788.
                DATA t1596 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1596.
                DATA t1598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t1598 = t1593.
                DATA t1600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1600.
                CLEAR t1600.
                DATA(t1602) = VALUE abap_bool( ).
                IF t1598 IS INITIAL.
                  t1602 = abap_true.
                ELSEIF t1598->has = abap_false.
                  t1602 = abap_true.
                ENDIF.
                IF t1602 = abap_true.
                  DATA t1604 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t1605 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t1605.
                  DATA t1608 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1608.
                  t1605 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableType| i_qualified_name = t1608 ).
                  DATA t1609 TYPE REF TO zif_lnt_object.
                  CLEAR t1609.
                  CLEAR t1609.
                  t1604 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1605 i_object_19cd = t1609 ).
                  CREATE OBJECT t1604->zlnt_view_ownkeys_b0e8086400eb.
                  t1604->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1611.
                  t1604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1611 ).
                  CREATE OBJECT t1604->zlnt_json_ownkeys_70e5fd461788.
                  t1604->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1613.
                  t1604->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1613 ).
                  t1596 = t1604.
                ELSE.
                  DATA t1615 TYPE REF TO zcl_lnt_ob_table_type.
                  DATA t1616 TYPE REF TO zcl_lnt_ob_table_type.
                  CLEAR t1616.
                  DATA t1618 TYPE REF TO zif_lnt_registry.
                  t1618 = t1591->reg.
                  DATA t1620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1620.
                  DATA(t1623) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t1623->has = abap_true.
                  t1623->value = |TTYP|.
                  t1620 = t1623.
                  DATA(t1627) = VALUE string( ).
                  t1627 = t1593->value.
                  DATA(t1629) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t1629->has = abap_true.
                  t1629->value = t1627.
                  DATA t1631 TYPE REF TO object.
                  t1631 = t1618->get_object( i_type_9913 = t1620 i_name = t1629 ).
                  t1616 ?= t1631.
                  t1615 = t1616.
                  DATA t1632 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t1632.
                  IF xsdbool( t1615 IS BOUND ) = abap_true.
                    DATA t1635 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t1636 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t1636.
                    DATA t1638 TYPE REF TO zcl_lnt_ob_table_type.
                    t1638 = t1615.
                    DATA t1640 TYPE REF TO zif_lnt_registry.
                    CLEAR t1640.
                    t1640 = t1591->reg.
                    DATA t1642 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1642.
                    DATA t1643 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1643.
                    t1636 = t1638->parse_type( i_reg_f149 = t1640 i_data_element = t1642 i_description = t1643 ).
                    DATA t1644 TYPE REF TO zif_lnt_object.
                    CLEAR t1644.
                    t1644 = t1615.
                    t1635 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1636 i_object_19cd = t1644 ).
                    CREATE OBJECT t1635->zlnt_view_ownkeys_b0e8086400eb.
                    t1635->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t1647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1647.
                    t1635->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1647 ).
                    DATA t1648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1648.
                    IF t1635->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t1635->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1648 ).
                    ENDIF.
                    CREATE OBJECT t1635->zlnt_json_ownkeys_70e5fd461788.
                    t1635->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t1650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1650.
                    t1635->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1650 ).
                    DATA t1652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1652.
                    IF t1635->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t1635->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1652 ).
                    ENDIF.
                    t1632 = t1635.
                  ELSE.
                    DATA t1653 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t1653.
                    DATA t1655 TYPE REF TO zif_lnt_registry.
                    t1655 = t1591->reg.
                    DATA(t1657) = VALUE string( ).
                    t1657 = t1593->value.
                    IF t1655->in_error_namespace( i_name = t1657 ) = abap_true.
                      DATA t1659 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t1660 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t1660.
                      DATA(t1662) = VALUE string( ).
                      DATA(t1663) = VALUE string( ).
                      t1663 = t1593->value.
                      DATA(t1666) = strlen( t1663 ).
                      t1662 = |{ t1663 }{ | not found, lookupTableType| }|.
                      DATA t1667 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1667.
                      t1660 = NEW zcl_lnt_unknown_type( i_error = t1662 i_qualified_name = t1667 ).
                      DATA t1668 TYPE REF TO zif_lnt_object.
                      CLEAR t1668.
                      CLEAR t1668.
                      t1659 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1660 i_object_19cd = t1668 ).
                      CREATE OBJECT t1659->zlnt_view_ownkeys_b0e8086400eb.
                      t1659->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1670.
                      t1659->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1670 ).
                      CREATE OBJECT t1659->zlnt_json_ownkeys_70e5fd461788.
                      t1659->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1672.
                      t1659->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1672 ).
                      t1653 = t1659.
                    ELSE.
                      DATA t1673 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t1674 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t1674.
                      DATA t1676 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1676.
                      DATA(t1678) = VALUE string( ).
                      t1678 = t1593->value.
                      DATA(t1680) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1680->has = abap_true.
                      t1680->value = t1678.
                      t1676 = t1680.
                      DATA t1682 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1682.
                      t1674 = zcl_lnt_void_type=>get_db65( i_voided = t1676 i_qualified_name = t1682 ).
                      DATA t1683 TYPE REF TO zif_lnt_object.
                      CLEAR t1683.
                      CLEAR t1683.
                      t1673 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1674 i_object_19cd = t1683 ).
                      CREATE OBJECT t1673->zlnt_view_ownkeys_b0e8086400eb.
                      t1673->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1685.
                      t1673->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1685 ).
                      CREATE OBJECT t1673->zlnt_json_ownkeys_70e5fd461788.
                      t1673->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1687.
                      t1673->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1687 ).
                      t1653 = t1673.
                    ENDIF.
                    t1632 = t1653.
                  ENDIF.
                  t1596 = t1632.
                ENDIF.
                t1589 = t1596.
                DATA t1689 TYPE REF TO zcl_lnt_istructure_component.
                DATA(t1690) = VALUE string( ).
                t1690 = t111->fieldname->value.
                DATA t1694 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t1694.
                t1694 = t1589->zlnt_view_read_sr_9be58e2d4893( ).
                DATA t1697 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t1697.
                CLEAR t1697.
                DATA t1699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1699.
                CLEAR t1699.
                t1689 = NEW zcl_lnt_istructure_component( i_name = t1690 i_type_9913 = t1694 i_as_include = t1697 i_suffix = t1699 ).
                CREATE OBJECT t1689->zlnt_view_ownkeys_b0e8086400eb.
                t1689->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t1701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1701.
                t1689->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1701 ).
                DATA t1702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1702.
                IF t1689->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t1689->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1702 ).
                ENDIF.
                CREATE OBJECT t1689->zlnt_json_ownkeys_70e5fd461788.
                t1689->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t1704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1704.
                t1689->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1704 ).
                DATA t1706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1706.
                IF t1689->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t1689->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1706 ).
                ENDIF.
                t103->load( ).
                APPEND t1689 TO t103->items.
                t103->save( ).
                DATA t1708 TYPE REF TO zif_lnt_object.
                t1708 = t1589->zlnt_view_read_sr_2de0200e6505( ).
                IF xsdbool( t1708 IS BOUND ) = abap_true.
                  DATA t1711 TYPE REF TO zcl_lnt_iobject_and_token.
                  DATA t1712 TYPE REF TO zif_lnt_object.
                  CLEAR t1712.
                  t1712 = t1589->zlnt_view_read_sr_2de0200e6505( ).
                  DATA t1719 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t1719.
                  CLEAR t1719.
                  DATA t1721 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1721.
                  CLEAR t1721.
                  t1711 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1712 i_token = t1719 i_filename = t1721 ).
                  CREATE OBJECT t1711->zlnt_view_ownkeys_b0e8086400eb.
                  t1711->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1723.
                  t1711->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1723 ).
                  CREATE OBJECT t1711->zlnt_json_ownkeys_70e5fd461788.
                  t1711->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1725.
                  t1711->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1725 ).
                  t101->load( ).
                  APPEND t1711 TO t101->items.
                  t101->save( ).
                ENDIF.
              ELSE.
                IF xsdbool( t116 = || ) = abap_true.
                  DATA t1729 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t1729 = t111->datatype_2bc5.
                  DATA t1733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t1733 = t1729.
                  DATA t1735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1735.
                  CLEAR t1735.
                  DATA(t1737) = VALUE abap_bool( ).
                  IF t1733 IS INITIAL.
                    t1737 = abap_true.
                  ELSEIF t1733->has = abap_false.
                    t1737 = abap_true.
                  ENDIF.
                  IF t1737 = abap_true.
                    DATA t1739 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                    DATA t1740 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                    DATA(t1743) = VALUE string( ).
                    DATA(t1744) = |Expected DATATYPE, while parsing TABL |.
                    DATA(t1745) = VALUE string( ).
                    DATA t1746 TYPE REF TO zcl_lnt_abstract_object.
                    t1746 = me.
                    t1745 = t1746->name.
                    DATA(t1750) = strlen( t1744 ).
                    t1743 = |{ t1744 }{ t1745 }|.
                    DATA(t1751) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1751->has = abap_true.
                    t1751->value = t1743.
                    t1740 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t1751 ).
                    t1739 = NEW #( ).
                    t1739->payload = t1740.
                    CLEAR t1739->source_value.
                    DATA t1753 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t1753.
                    DATA t1754 TYPE REF TO object.
                    CLEAR t1753.
                    t1754 = t1740.
                    TRY.
                        t1739->source_value ?= t1754.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t1739->source_value IS NOT BOUND.
                      TRY.
                          t1753 ?= t1740.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t1753 IS BOUND.
                        t1739->source_value = t1753->source( ).
                      ENDIF.
                      IF t1739->source_value IS NOT BOUND.
                        CREATE OBJECT t1739->source_value.
                        t1739->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        t1739->source_value->oval = t1740.
                      ENDIF.
                    ENDIF.
                    RAISE EXCEPTION t1739.
                  ENDIF.
                  DATA t1756 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1756.
                  DATA(t1757) = VALUE abap_bool( ).
                  DATA t1758 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1758.
                  t1758 = t111->leng_0540.
                  IF t1758 IS BOUND.
                    IF t1758->has = abap_true.
                      t1757 = xsdbool( strlen( t1758->value ) > 0 ).
                    ENDIF.
                  ENDIF.
                  IF t1757 = abap_true.
                    DATA(t1762) = VALUE string( ).
                    t1762 = t111->leng_0540->value.
                    DATA(t1765) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1765->has = abap_true.
                    t1765->value = t1762.
                    t1756 = t1765.
                  ELSE.
                    t1756 = t111->intlen.
                  ENDIF.
                  DATA t1770 TYPE REF TO zcl_lnt_istructure_component.
                  CLEAR t1770.
                  DATA(t1771) = VALUE string( ).
                  t1771 = t111->fieldname->value.
                  DATA t1775 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t1775.
                  DATA t1778 TYPE REF TO zcl_lnt_shape_4a88086c.
                  CLEAR t1778.
                  DATA t1779 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1779.
                  DATA(t1782) = VALUE string( ).
                  t1782 = t1729->value.
                  DATA(t1784) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t1784->has = abap_true.
                  t1784->value = t1782.
                  t1779 = t1784.
                  DATA t1786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1786.
                  t1786 = t1756.
                  DATA t1788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1788.
                  t1788 = t111->decimals_0f26.
                  DATA(t1791) = VALUE string( ).
                  DATA(t1793) = VALUE string( ).
                  DATA(t1794) = VALUE string( ).
                  DATA t1795 TYPE REF TO zcl_lnt_abstract_object.
                  t1795 = me.
                  t1794 = t1795->name.
                  DATA(t1800) = strlen( t1794 ).
                  t1793 = |{ t1794 }{ |-| }|.
                  DATA(t1801) = VALUE string( ).
                  DATA t1802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t1802 = t111->fieldname.
                  DATA(t1805) = VALUE string( ).
                  DATA(t1806) = VALUE abap_bool( ).
                  IF t1802 IS INITIAL.
                    t1806 = abap_true.
                  ELSEIF t1802->has = abap_false.
                    t1806 = abap_true.
                  ENDIF.
                  IF t1806 = abap_true.
                    t1805 = |undefined|.
                  ELSE.
                    t1805 = t1802->value.
                  ENDIF.
                  t1801 = t1805.
                  DATA(t1811) = strlen( t1793 ).
                  t1791 = |{ t1793 }{ t1801 }|.
                  DATA t1812 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1812.
                  t1812 = t111->ddtext_87ee.
                  DATA t1815 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1815.
                  CLEAR t1815.
                  DATA t1817 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1817.
                  CLEAR t1817.
                  DATA t1819 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1819.
                  CLEAR t1819.
                  t1778 = NEW zcl_lnt_shape_4a88086c( i_text = t1779 i_length = t1786 i_decimals_2eed = t1788 i_info_text = t1791 i_qualified_name = t1815 i_conversion_exit = t1817 i_ddic_name = t1819 i_description = t1812 ).
                  CREATE OBJECT t1778->zlnt_view_ownkeys_b0e8086400eb.
                  t1778->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1821.
                  t1778->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t1821 ).
                  DATA t1822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1822.
                  IF t1778->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1778->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t1822 ).
                  ENDIF.
                  DATA t1823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1823.
                  IF t1778->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1778->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t1823 ).
                  ENDIF.
                  DATA t1824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1824.
                  IF t1778->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1778->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `infoText` p1 = t1824 ).
                  ENDIF.
                  DATA t1825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1825.
                  IF t1778->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1778->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t1825 ).
                  ENDIF.
                  CREATE OBJECT t1778->zlnt_json_ownkeys_70e5fd461788.
                  t1778->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1827.
                  t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = |text| p1 = t1827 ).
                  DATA t1829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1829.
                  IF t1778->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = |length| p1 = t1829 ).
                  ENDIF.
                  DATA t1831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1831.
                  IF t1778->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = |decimals| p1 = t1831 ).
                  ENDIF.
                  DATA t1833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1833.
                  IF t1778->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = |infoText| p1 = t1833 ).
                  ENDIF.
                  DATA t1835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1835.
                  IF t1778->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t1835 ).
                  ENDIF.
                  t1775 = t105->text_to_type( i_input_967e = t1778 ).
                  DATA t1836 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t1836.
                  CLEAR t1836.
                  DATA t1838 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1838.
                  CLEAR t1838.
                  t1770 = NEW zcl_lnt_istructure_component( i_name = t1771 i_type_9913 = t1775 i_as_include = t1836 i_suffix = t1838 ).
                  CREATE OBJECT t1770->zlnt_view_ownkeys_b0e8086400eb.
                  t1770->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1840.
                  t1770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1840 ).
                  DATA t1841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1841.
                  IF t1770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1841 ).
                  ENDIF.
                  CREATE OBJECT t1770->zlnt_json_ownkeys_70e5fd461788.
                  t1770->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1843.
                  t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1843 ).
                  DATA t1845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1845.
                  IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1845 ).
                  ENDIF.
                  t103->load( ).
                  APPEND t1770 TO t103->items.
                  t103->save( ).
                ELSE.
                  DATA t1847 TYPE REF TO zcl_lnt_istructure_component.
                  DATA(t1848) = VALUE string( ).
                  t1848 = t111->fieldname->value.
                  DATA t1852 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t1852.
                  DATA(t1854) = VALUE string( ).
                  DATA(t1855) = VALUE string( ).
                  DATA(t1856) = VALUE string( ).
                  DATA(t1857) = VALUE string( ).
                  DATA(t1858) = |Table |.
                  DATA(t1859) = VALUE string( ).
                  DATA t1860 TYPE REF TO zcl_lnt_abstract_object.
                  t1860 = me.
                  t1859 = t1860->name.
                  DATA(t1864) = strlen( t1858 ).
                  t1857 = |{ t1858 }{ t1859 }|.
                  DATA(t1866) = strlen( t1857 ).
                  t1856 = |{ t1857 }{ |, unknown component type "| }|.
                  DATA(t1868) = strlen( t1856 ).
                  t1855 = |{ t1856 }{ t116 }|.
                  DATA(t1870) = strlen( t1855 ).
                  t1854 = |{ t1855 }{ |"| }|.
                  DATA t1871 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1871.
                  t1852 = NEW zcl_lnt_unknown_type( i_error = t1854 i_qualified_name = t1871 ).
                  DATA t1872 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t1872.
                  CLEAR t1872.
                  DATA t1874 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1874.
                  CLEAR t1874.
                  t1847 = NEW zcl_lnt_istructure_component( i_name = t1848 i_type_9913 = t1852 i_as_include = t1872 i_suffix = t1874 ).
                  CREATE OBJECT t1847->zlnt_view_ownkeys_b0e8086400eb.
                  t1847->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1876.
                  t1847->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1876 ).
                  DATA t1877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1877.
                  IF t1847->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1847->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1877 ).
                  ENDIF.
                  CREATE OBJECT t1847->zlnt_json_ownkeys_70e5fd461788.
                  t1847->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1879 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1879.
                  t1847->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1879 ).
                  DATA t1881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1881.
                  IF t1847->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1847->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1881 ).
                  ENDIF.
                  t103->load( ).
                  APPEND t1847 TO t103->items.
                  t103->save( ).
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t1882) = VALUE abap_bool( ).
      DATA t1883 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1883.
      t1883 = t111->checktable.
      IF t1883 IS BOUND.
        IF t1883->has = abap_true.
          t1882 = xsdbool( strlen( t1883->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t1882 = abap_true.
        DATA t1885 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t1890) = VALUE string( ).
        t1890 = t111->checktable->value.
        DATA(t1893) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1893->has = abap_true.
        t1893->value = t1890.
        t1885 = t105->lookup_table_or_view2( i_name = t1893 ).
        IF xsdbool( t1885 IS BOUND ) = abap_true.
          DATA t1898 TYPE REF TO zcl_lnt_iobject_and_token.
          DATA t1899 TYPE REF TO zif_lnt_object.
          CLEAR t1899.
          DATA t1900 TYPE REF TO zif_lnt_object.
          CLEAR t1900.
          t1900 ?= t1885.
          t1899 = t1900.
          DATA t1903 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1903.
          CLEAR t1903.
          DATA t1905 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1905.
          CLEAR t1905.
          t1898 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1899 i_token = t1903 i_filename = t1905 ).
          CREATE OBJECT t1898->zlnt_view_ownkeys_b0e8086400eb.
          t1898->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1907.
          t1898->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1907 ).
          CREATE OBJECT t1898->zlnt_json_ownkeys_70e5fd461788.
          t1898->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1909.
          t1898->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1909 ).
          t101->load( ).
          APPEND t1898 TO t101->items.
          t101->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    t103->load( ).
    IF xsdbool( lines( t103->items ) = 0 ) = abap_true.
      DATA(t1916) = VALUE string( ).
      DATA(t1917) = |Table/Structure |.
      DATA(t1918) = VALUE string( ).
      DATA t1919 TYPE REF TO zcl_lnt_abstract_object.
      t1919 = me.
      t1918 = t1919->name.
      DATA(t1923) = strlen( t1917 ).
      t1916 = |{ t1917 }{ t1918 }|.
      DATA(t1925) = strlen( t1916 ).
      DATA t1926 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_unknown_type( i_error = |{ t1916 }{ | does not contain any components| }| i_qualified_name = t1926 ).
      RETURN.
    ENDIF.
    t1->get_ddic_references( )->set_using( i_obj_1ed0 = me i_using = t101 ).
    DATA t1933 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1936 TYPE REF TO zcl_lnt_abstract_object.
    t1936 = me.
    DATA(t1938) = VALUE string( ).
    t1938 = t1936->name.
    DATA(t1940) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1940->has = abap_true.
    t1940->value = t1938.
    t1933 = t1940.
    DATA t1942 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1945 TYPE REF TO zcl_lnt_abstract_object.
    t1945 = me.
    DATA(t1947) = VALUE string( ).
    t1947 = t1945->name.
    DATA(t1949) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1949->has = abap_true.
    t1949->value = t1947.
    t1942 = t1949.
    DATA t1955 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t1960 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t1960 = me->parsed_data.
    DATA t1962 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t1960 IS INITIAL ) = abap_true.
    ELSE.
      t1962 = t1960->description.
    ENDIF.
    me->parsed_type = NEW zcl_lnt_structure_type( i_components = t103 i_qualified_name = t1933 i_ddic_name = t1942 i_description = t1962 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
    result = me->parsed_type.

  ENDMETHOD.

  METHOD get_table_category.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t9 = me->parsed_data.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t11 = t9->table_category.
    ENDIF.
    result = t11.

  ENDMETHOD.

  METHOD get_delivery_class.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t9 = me->parsed_data.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t11 = t9->delivery_class.
    ENDIF.
    result = t11.

  ENDMETHOD.

  METHOD get_size_category.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t9 = me->parsed_data.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t11 = t9->size_category.
    ENDIF.
    result = t11.

  ENDMETHOD.

  METHOD get_enhancement_category.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->parsed_data IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t11 = me->parsed_data.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
    ELSE.
      t13 = t11->enhancement_category.
    ENDIF.
    t9 = t13.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = VALUE abap_bool( ).
    IF t9 IS INITIAL.
      t22 = abap_true.
    ELSEIF t9->has = abap_false.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
      result = |0|.
      RETURN.
    ENDIF.
    result = me->parsed_data->enhancement_category->value.

  ENDMETHOD.

  METHOD key_fields_not_first.
    DATA t1 TYPE abap_bool.
    t1 = abap_false.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t6 = me->parsed_data.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t8 = t6->fields_464c.
    ENDIF.
    t4 = t8.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      t15 = t4.
    ELSE.
      CREATE OBJECT t15.
    ENDIF.
    t3 = t15.
    DATA t21 TYPE REF TO zcl_lnt_shape_e534171c.
    DATA t22 TYPE REF TO object.
    DATA(t23) = VALUE i( ).
    DO.
      t3->load( ).
      IF t23 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t3->items INDEX t23 + 1 INTO t22.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t21.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t22.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t21 ?= t25.
      ELSE.
        t21 ?= t22.
      ENDIF.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t27 = t21->keyflag.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = |X|.
      t29 = t32.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      IF t27 IS BOUND.
        t34 = t27->has.
      ENDIF.
      IF t29 IS BOUND.
        t35 = t29->has.
      ENDIF.
      IF t34 = t35.
        IF t34 = abap_false.
          t26 = abap_true.
        ELSEIF t27->value = t29->value.
          t26 = abap_true.
        ENDIF.
      ENDIF.
      IF t26 = abap_true.
        IF xsdbool( t1 = abap_true ) = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ELSE.
        t1 = abap_true.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
    ELSE.
      t4 = t1.
    ENDIF.
    t3 = t4.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t19 = NEW zcl_lnt_shape_b90fc0d5( i_table_category = t25 i_data_class = t27 i_delivery_class = t29 i_size_category = t31 i_enhancement_category = t33 i_description = t35 i_secondary_indexes = t37 i_fields_62af = t20 ).
    CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
    t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t39 ).
    CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
    t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = |fields| p1 = t41 ).
    me->parsed_data = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t45 = t3->get( p0 = |abapGit| ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t45 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t64 = t3.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = VALUE abap_bool( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t64 IS BOUND.
      t68 = t64.
    ENDIF.
    IF t68 IS NOT BOUND.
      t67 = abap_true.
    ELSE.
      t67 = xsdbool( t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t67 = abap_true.
    ELSE.
      t66 = t64->get( p0 = |abapGit| ).
    ENDIF.
    t62 = t66.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t62 IS BOUND.
      t77 = t62.
    ENDIF.
    IF t77 IS NOT BOUND.
      t76 = abap_true.
    ELSE.
      t76 = xsdbool( t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t76 = abap_true.
    ELSE.
      t75 = t62->get( p0 = |asx:abap| ).
    ENDIF.
    t60 = t75.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = VALUE abap_bool( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t60 IS BOUND.
      t86 = t60.
    ENDIF.
    IF t86 IS NOT BOUND.
      t85 = abap_true.
    ELSE.
      t85 = xsdbool( t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t85 = abap_true.
    ELSE.
      t84 = t60->get( p0 = |asx:values| ).
    ENDIF.
    t58 = t84.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = VALUE abap_bool( ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t58 IS BOUND.
      t95 = t58.
    ENDIF.
    IF t95 IS NOT BOUND.
      t94 = abap_true.
    ELSE.
      t94 = xsdbool( t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t94 = abap_true.
    ELSE.
      t93 = t58->get( p0 = |DD02V| ).
    ENDIF.
    t56 = t93.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = VALUE abap_bool( ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t56 IS BOUND.
      t104 = t56.
    ENDIF.
    IF t104 IS NOT BOUND.
      t103 = abap_true.
    ELSE.
      t103 = xsdbool( t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t103 = abap_true.
    ELSE.
      t102 = t56->get( p0 = |EXCLASS| ).
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t102 IS INITIAL ) = abap_true.
      DATA t115 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      t115 = me->parsed_data.
      DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t120->has = abap_true.
      t120->value = |0|.
      t115->enhancement_category = t120.
      DELETE t115->zlnt_record_delet_0597644d88b4 WHERE table_line = `enhancementCategory`.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `enhancementCategory` p1 = t122 ).
      ENDIF.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = |enhancementCategory| p1 = t124 ).
      ENDIF.
    ELSE.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t135 = t3.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t138) = VALUE abap_bool( ).
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t135 IS BOUND.
        t139 = t135.
      ENDIF.
      IF t139 IS NOT BOUND.
        t138 = abap_true.
      ELSE.
        t138 = xsdbool( t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t138 = abap_true.
      ELSE.
        t137 = t135->get( p0 = |abapGit| ).
      ENDIF.
      t133 = t137.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t147) = VALUE abap_bool( ).
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t133 IS BOUND.
        t148 = t133.
      ENDIF.
      IF t148 IS NOT BOUND.
        t147 = abap_true.
      ELSE.
        t147 = xsdbool( t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t147 = abap_true.
      ELSE.
        t146 = t133->get( p0 = |asx:abap| ).
      ENDIF.
      t131 = t146.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t156) = VALUE abap_bool( ).
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t131 IS BOUND.
        t157 = t131.
      ENDIF.
      IF t157 IS NOT BOUND.
        t156 = abap_true.
      ELSE.
        t156 = xsdbool( t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t156 = abap_true.
      ELSE.
        t155 = t131->get( p0 = |asx:values| ).
      ENDIF.
      t129 = t155.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t165) = VALUE abap_bool( ).
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t129 IS BOUND.
        t166 = t129.
      ENDIF.
      IF t166 IS NOT BOUND.
        t165 = abap_true.
      ELSE.
        t165 = xsdbool( t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t165 = abap_true.
      ELSE.
        t164 = t129->get( p0 = |DD02V| ).
      ENDIF.
      t127 = t164.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t174) = VALUE abap_bool( ).
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t127 IS BOUND.
        t175 = t127.
      ENDIF.
      IF t175 IS NOT BOUND.
        t174 = abap_true.
      ELSE.
        t174 = xsdbool( t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t174 = abap_true.
      ELSE.
        t173 = t127->get( p0 = |EXCLASS| ).
      ENDIF.
      t125 = t173.
      DATA t182 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      t182 = me->parsed_data.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t125 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t188) = VALUE string( ).
        t188 = t125->as_string( ).
        DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t191->has = abap_true.
        t191->value = t188.
        t184 = t191.
      ENDIF.
      t182->enhancement_category = t184.
      DELETE t182->zlnt_record_delet_0597644d88b4 WHERE table_line = `enhancementCategory`.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `enhancementCategory` p1 = t192 ).
      ENDIF.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = |enhancementCategory| p1 = t194 ).
      ENDIF.
    ENDIF.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t205 = t3.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t208) = VALUE abap_bool( ).
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t205 IS BOUND.
      t209 = t205.
    ENDIF.
    IF t209 IS NOT BOUND.
      t208 = abap_true.
    ELSE.
      t208 = xsdbool( t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t208 = abap_true.
    ELSE.
      t207 = t205->get( p0 = |abapGit| ).
    ENDIF.
    t203 = t207.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t217) = VALUE abap_bool( ).
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t203 IS BOUND.
      t218 = t203.
    ENDIF.
    IF t218 IS NOT BOUND.
      t217 = abap_true.
    ELSE.
      t217 = xsdbool( t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t217 = abap_true.
    ELSE.
      t216 = t203->get( p0 = |asx:abap| ).
    ENDIF.
    t201 = t216.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t226) = VALUE abap_bool( ).
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t201 IS BOUND.
      t227 = t201.
    ENDIF.
    IF t227 IS NOT BOUND.
      t226 = abap_true.
    ELSE.
      t226 = xsdbool( t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t226 = abap_true.
    ELSE.
      t225 = t201->get( p0 = |asx:values| ).
    ENDIF.
    t199 = t225.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t235) = VALUE abap_bool( ).
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t199 IS BOUND.
      t236 = t199.
    ENDIF.
    IF t236 IS NOT BOUND.
      t235 = abap_true.
    ELSE.
      t235 = xsdbool( t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t235 = abap_true.
    ELSE.
      t234 = t199->get( p0 = |DD02V| ).
    ENDIF.
    t197 = t234.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t244) = VALUE abap_bool( ).
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t197 IS BOUND.
      t245 = t197.
    ENDIF.
    IF t245 IS NOT BOUND.
      t244 = abap_true.
    ELSE.
      t244 = xsdbool( t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t244 = abap_true.
    ELSE.
      t243 = t197->get( p0 = |TABCLASS| ).
    ENDIF.
    t195 = t243.
    DATA t252 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t252 = me->parsed_data.
    DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t195 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t258) = VALUE string( ).
      t258 = t195->as_string( ).
      DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t261->has = abap_true.
      t261->value = t258.
      t254 = t261.
    ENDIF.
    t252->table_category = t254.
    DELETE t252->zlnt_record_delet_0597644d88b4 WHERE table_line = `tableCategory`.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tableCategory` p1 = t262 ).
    ENDIF.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tableCategory| p1 = t264 ).
    ENDIF.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t275 = t3.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t278) = VALUE abap_bool( ).
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t275 IS BOUND.
      t279 = t275.
    ENDIF.
    IF t279 IS NOT BOUND.
      t278 = abap_true.
    ELSE.
      t278 = xsdbool( t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t278 = abap_true.
    ELSE.
      t277 = t275->get( p0 = |abapGit| ).
    ENDIF.
    t273 = t277.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t287) = VALUE abap_bool( ).
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t273 IS BOUND.
      t288 = t273.
    ENDIF.
    IF t288 IS NOT BOUND.
      t287 = abap_true.
    ELSE.
      t287 = xsdbool( t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t287 = abap_true.
    ELSE.
      t286 = t273->get( p0 = |asx:abap| ).
    ENDIF.
    t271 = t286.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t296) = VALUE abap_bool( ).
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t271 IS BOUND.
      t297 = t271.
    ENDIF.
    IF t297 IS NOT BOUND.
      t296 = abap_true.
    ELSE.
      t296 = xsdbool( t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t296 = abap_true.
    ELSE.
      t295 = t271->get( p0 = |asx:values| ).
    ENDIF.
    t269 = t295.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t305) = VALUE abap_bool( ).
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t269 IS BOUND.
      t306 = t269.
    ENDIF.
    IF t306 IS NOT BOUND.
      t305 = abap_true.
    ELSE.
      t305 = xsdbool( t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t305 = abap_true.
    ELSE.
      t304 = t269->get( p0 = |DD02V| ).
    ENDIF.
    t267 = t304.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t314) = VALUE abap_bool( ).
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t267 IS BOUND.
      t315 = t267.
    ENDIF.
    IF t315 IS NOT BOUND.
      t314 = abap_true.
    ELSE.
      t314 = xsdbool( t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t314 = abap_true.
    ELSE.
      t313 = t267->get( p0 = |DDTEXT| ).
    ENDIF.
    t265 = t313.
    DATA t322 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t322 = me->parsed_data.
    DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t265 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t328) = VALUE string( ).
      t328 = t265->as_string( ).
      DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t331->has = abap_true.
      t331->value = t328.
      t324 = t331.
    ENDIF.
    t322->description = t324.
    DELETE t322->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t332 ).
    ENDIF.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t334 ).
    ENDIF.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t345 = t3.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t348) = VALUE abap_bool( ).
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t345 IS BOUND.
      t349 = t345.
    ENDIF.
    IF t349 IS NOT BOUND.
      t348 = abap_true.
    ELSE.
      t348 = xsdbool( t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t348 = abap_true.
    ELSE.
      t347 = t345->get( p0 = |abapGit| ).
    ENDIF.
    t343 = t347.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t357) = VALUE abap_bool( ).
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t343 IS BOUND.
      t358 = t343.
    ENDIF.
    IF t358 IS NOT BOUND.
      t357 = abap_true.
    ELSE.
      t357 = xsdbool( t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t357 = abap_true.
    ELSE.
      t356 = t343->get( p0 = |asx:abap| ).
    ENDIF.
    t341 = t356.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t366) = VALUE abap_bool( ).
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t341 IS BOUND.
      t367 = t341.
    ENDIF.
    IF t367 IS NOT BOUND.
      t366 = abap_true.
    ELSE.
      t366 = xsdbool( t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t366 = abap_true.
    ELSE.
      t365 = t341->get( p0 = |asx:values| ).
    ENDIF.
    t339 = t365.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t375) = VALUE abap_bool( ).
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t339 IS BOUND.
      t376 = t339.
    ENDIF.
    IF t376 IS NOT BOUND.
      t375 = abap_true.
    ELSE.
      t375 = xsdbool( t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t375 = abap_true.
    ELSE.
      t374 = t339->get( p0 = |DD09L| ).
    ENDIF.
    t337 = t374.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t384) = VALUE abap_bool( ).
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t337 IS BOUND.
      t385 = t337.
    ENDIF.
    IF t385 IS NOT BOUND.
      t384 = abap_true.
    ELSE.
      t384 = xsdbool( t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t384 = abap_true.
    ELSE.
      t383 = t337->get( p0 = |TABART| ).
    ENDIF.
    t335 = t383.
    DATA t392 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t392 = me->parsed_data.
    DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t335 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t398) = VALUE string( ).
      t398 = t335->as_string( ).
      DATA(t401) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t401->has = abap_true.
      t401->value = t398.
      t394 = t401.
    ENDIF.
    t392->data_class = t394.
    DELETE t392->zlnt_record_delet_0597644d88b4 WHERE table_line = `dataClass`.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dataClass` p1 = t402 ).
    ENDIF.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = |dataClass| p1 = t404 ).
    ENDIF.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t415 = t3.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t418) = VALUE abap_bool( ).
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t415 IS BOUND.
      t419 = t415.
    ENDIF.
    IF t419 IS NOT BOUND.
      t418 = abap_true.
    ELSE.
      t418 = xsdbool( t419->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t418 = abap_true.
    ELSE.
      t417 = t415->get( p0 = |abapGit| ).
    ENDIF.
    t413 = t417.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t427) = VALUE abap_bool( ).
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t413 IS BOUND.
      t428 = t413.
    ENDIF.
    IF t428 IS NOT BOUND.
      t427 = abap_true.
    ELSE.
      t427 = xsdbool( t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t427 = abap_true.
    ELSE.
      t426 = t413->get( p0 = |asx:abap| ).
    ENDIF.
    t411 = t426.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t436) = VALUE abap_bool( ).
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411 IS BOUND.
      t437 = t411.
    ENDIF.
    IF t437 IS NOT BOUND.
      t436 = abap_true.
    ELSE.
      t436 = xsdbool( t437->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t436 = abap_true.
    ELSE.
      t435 = t411->get( p0 = |asx:values| ).
    ENDIF.
    t409 = t435.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t445) = VALUE abap_bool( ).
    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t409 IS BOUND.
      t446 = t409.
    ENDIF.
    IF t446 IS NOT BOUND.
      t445 = abap_true.
    ELSE.
      t445 = xsdbool( t446->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t445 = abap_true.
    ELSE.
      t444 = t409->get( p0 = |DD02V| ).
    ENDIF.
    t407 = t444.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t454) = VALUE abap_bool( ).
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t407 IS BOUND.
      t455 = t407.
    ENDIF.
    IF t455 IS NOT BOUND.
      t454 = abap_true.
    ELSE.
      t454 = xsdbool( t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t454 = abap_true.
    ELSE.
      t453 = t407->get( p0 = |CONTFLAG| ).
    ENDIF.
    t405 = t453.
    DATA t462 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t462 = me->parsed_data.
    DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t405 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t468) = VALUE string( ).
      t468 = t405->as_string( ).
      DATA(t471) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t471->has = abap_true.
      t471->value = t468.
      t464 = t471.
    ENDIF.
    t462->delivery_class = t464.
    DELETE t462->zlnt_record_delet_0597644d88b4 WHERE table_line = `deliveryClass`.
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t462->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t462->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deliveryClass` p1 = t472 ).
    ENDIF.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t462->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t462->zlnt_json_ownkeys_70e5fd461788->put( p0 = |deliveryClass| p1 = t474 ).
    ENDIF.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t485 = t3.
    DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t488) = VALUE abap_bool( ).
    DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t485 IS BOUND.
      t489 = t485.
    ENDIF.
    IF t489 IS NOT BOUND.
      t488 = abap_true.
    ELSE.
      t488 = xsdbool( t489->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t488 = abap_true.
    ELSE.
      t487 = t485->get( p0 = |abapGit| ).
    ENDIF.
    t483 = t487.
    DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t497) = VALUE abap_bool( ).
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t483 IS BOUND.
      t498 = t483.
    ENDIF.
    IF t498 IS NOT BOUND.
      t497 = abap_true.
    ELSE.
      t497 = xsdbool( t498->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t497 = abap_true.
    ELSE.
      t496 = t483->get( p0 = |asx:abap| ).
    ENDIF.
    t481 = t496.
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t506) = VALUE abap_bool( ).
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t481 IS BOUND.
      t507 = t481.
    ENDIF.
    IF t507 IS NOT BOUND.
      t506 = abap_true.
    ELSE.
      t506 = xsdbool( t507->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t506 = abap_true.
    ELSE.
      t505 = t481->get( p0 = |asx:values| ).
    ENDIF.
    t479 = t505.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t515) = VALUE abap_bool( ).
    DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t479 IS BOUND.
      t516 = t479.
    ENDIF.
    IF t516 IS NOT BOUND.
      t515 = abap_true.
    ELSE.
      t515 = xsdbool( t516->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t515 = abap_true.
    ELSE.
      t514 = t479->get( p0 = |DD09L| ).
    ENDIF.
    t477 = t514.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t524) = VALUE abap_bool( ).
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t477 IS BOUND.
      t525 = t477.
    ENDIF.
    IF t525 IS NOT BOUND.
      t524 = abap_true.
    ELSE.
      t524 = xsdbool( t525->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t524 = abap_true.
    ELSE.
      t523 = t477->get( p0 = |TABKAT| ).
    ENDIF.
    t475 = t523.
    DATA t532 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t532 = me->parsed_data.
    DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t475 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t538) = VALUE string( ).
      t538 = t475->as_string( ).
      DATA(t541) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t541->has = abap_true.
      t541->value = t538.
      t534 = t541.
    ENDIF.
    t532->size_category = t534.
    DELETE t532->zlnt_record_delet_0597644d88b4 WHERE table_line = `sizeCategory`.
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t532->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t532->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sizeCategory` p1 = t542 ).
    ENDIF.
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t532->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t532->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sizeCategory| p1 = t544 ).
    ENDIF.
    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t553 = t3.
    DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t556) = VALUE abap_bool( ).
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t553 IS BOUND.
      t557 = t553.
    ENDIF.
    IF t557 IS NOT BOUND.
      t556 = abap_true.
    ELSE.
      t556 = xsdbool( t557->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t556 = abap_true.
    ELSE.
      t555 = t553->get( p0 = |abapGit| ).
    ENDIF.
    t551 = t555.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t565) = VALUE abap_bool( ).
    DATA t566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t551 IS BOUND.
      t566 = t551.
    ENDIF.
    IF t566 IS NOT BOUND.
      t565 = abap_true.
    ELSE.
      t565 = xsdbool( t566->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t565 = abap_true.
    ELSE.
      t564 = t551->get( p0 = |asx:abap| ).
    ENDIF.
    t549 = t564.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t574) = VALUE abap_bool( ).
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t549 IS BOUND.
      t575 = t549.
    ENDIF.
    IF t575 IS NOT BOUND.
      t574 = abap_true.
    ELSE.
      t574 = xsdbool( t575->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t574 = abap_true.
    ELSE.
      t573 = t549->get( p0 = |asx:values| ).
    ENDIF.
    t547 = t573.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t583) = VALUE abap_bool( ).
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t547 IS BOUND.
      t584 = t547.
    ENDIF.
    IF t584 IS NOT BOUND.
      t583 = abap_true.
    ELSE.
      t583 = xsdbool( t584->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t583 = abap_true.
    ELSE.
      t582 = t547->get( p0 = |DD03P_TABLE| ).
    ENDIF.
    t545 = t582.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t545 IS INITIAL ) = abap_true.
    ELSE.
      t592 = t545.
    ENDIF.
    DATA t598 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t601 = t592.
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t604) = VALUE abap_bool( ).
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t601 IS BOUND.
      t605 = t601.
    ENDIF.
    IF t605 IS NOT BOUND.
      t604 = abap_true.
    ELSE.
      t604 = xsdbool( t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t604 = abap_true.
    ELSE.
      t603 = t601->get( p0 = |DD03P| ).
    ENDIF.
    t600 = t603.
    IF t600 IS BOUND.
      t599 = t600.
    ENDIF.
    t598 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t599 ).
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t613 TYPE REF TO object.
    DATA(t614) = VALUE i( ).
    DO.
      t598->load( ).
      IF t614 >= lines( t598->items ).
        EXIT.
      ENDIF.
      CLEAR t613.
      READ TABLE t598->items INDEX t614 + 1 INTO t613.
      t614 = t614 + 1.
      DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t615.
      CLEAR t612.
      IF t613 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t615 ?= t613.
        t612 = t615.
      ELSE.
        IF t613 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t616 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t616.
          t616 ?= t613.
          CLEAR t612.
          IF t616 IS BOUND.
            CREATE OBJECT t612.
            t612->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t612->cval = t616.
          ENDIF.
        ELSE.
          CLEAR t612.
          IF t613 IS BOUND.
            DATA t617 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t617.
            CLEAR t617.
            TRY.
                t612 ?= t613.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t612 IS NOT BOUND.
              TRY.
                  t617 ?= t613.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t617 IS BOUND.
                t612 = t617->source( ).
              ENDIF.
              IF t612 IS NOT BOUND.
                CREATE OBJECT t612.
                t612->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t612->oval = t613.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t620.
      DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t622 = t612.
      DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t624.
      DATA(t625) = VALUE abap_bool( ).
      IF t622 IS NOT BOUND.
        t625 = abap_true.
      ELSE.
        t625 = xsdbool( t622->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t625 = abap_true.
        CLEAR t624.
      ELSE.
        t624 = t622->get( p0 = |FIELDNAME| ).
      ENDIF.
      t620 = t624.
      DATA(t632) = VALUE string( ).
      IF xsdbool( t620 IS INITIAL ) = abap_true.
        t632 = |undefined|.
      ELSE.
        DATA(t636) = VALUE string( ).
        DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t637 = t620.
        IF t637 IS BOUND.
          t636 = t637->type_of( ).
          IF t637->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t637->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t636 = `function`.
          ENDIF.
        ELSE.
          t636 = `undefined`.
        ENDIF.
        t632 = t636.
      ENDIF.
      IF xsdbool( t632 <> |string| ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t640 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t640 = me->parsed_data->fields_464c.
      DATA t643 TYPE REF TO zcl_lnt_shape_e534171c.
      CLEAR t643.
      DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t644 = t612->get( p0 = |FIELDNAME| ).
      DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t648 = t612->get( p0 = |ROLLNAME| ).
      DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t652 = t612->get( p0 = |COMPTYPE| ).
      DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t656 = t612->get( p0 = |PRECFIELD| ).
      DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t660 = t612->get( p0 = |LENG| ).
      DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t664 = t612->get( p0 = |INTLEN| ).
      DATA t668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t668 = t612->get( p0 = |DATATYPE| ).
      DATA t672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t672 = t612->get( p0 = |DECIMALS| ).
      DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t676 = t612->get( p0 = |KEYFLAG| ).
      DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t680 = t612->get( p0 = |GROUPNAME| ).
      DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t684 = t612->get( p0 = |CHECKTABLE| ).
      DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t688 = t612->get( p0 = |REFTABLE| ).
      DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t692 = t612->get( p0 = |REFFIELD| ).
      DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t696 = t612->get( p0 = |REFTYPE| ).
      DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t700 = t612->get( p0 = |DDTEXT| ).
      DATA t704 TYPE REF TO zcl_lnt_shape_e534171c.
      CLEAR t704.
      DATA t705 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t705.
      DATA t706 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t706.
      IF xsdbool( t644 IS INITIAL ) = abap_true.
        CLEAR t706.
      ELSE.
        DATA(t710) = VALUE string( ).
        t710 = t644->as_string( ).
        DATA(t712) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t712->has = abap_true.
        t712->value = t710.
        t706 = t712.
      ENDIF.
      t705 = t706.
      DATA t713 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t713.
      DATA t714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t714.
      IF xsdbool( t648 IS INITIAL ) = abap_true.
        CLEAR t714.
      ELSE.
        DATA(t718) = VALUE string( ).
        t718 = t648->as_string( ).
        DATA(t720) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t720->has = abap_true.
        t720->value = t718.
        t714 = t720.
      ENDIF.
      t713 = t714.
      DATA t721 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t721.
      DATA t722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t722.
      IF xsdbool( t652 IS INITIAL ) = abap_true.
        CLEAR t722.
      ELSE.
        DATA(t726) = VALUE string( ).
        t726 = t652->as_string( ).
        DATA(t728) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t728->has = abap_true.
        t728->value = t726.
        t722 = t728.
      ENDIF.
      t721 = t722.
      DATA t729 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t729.
      DATA t730 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t730.
      IF xsdbool( t656 IS INITIAL ) = abap_true.
        CLEAR t730.
      ELSE.
        DATA(t734) = VALUE string( ).
        t734 = t656->as_string( ).
        DATA(t736) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t736->has = abap_true.
        t736->value = t734.
        t730 = t736.
      ENDIF.
      t729 = t730.
      DATA t737 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t737.
      DATA t738 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t738.
      IF xsdbool( t660 IS INITIAL ) = abap_true.
        CLEAR t738.
      ELSE.
        DATA(t742) = VALUE string( ).
        t742 = t660->as_string( ).
        DATA(t744) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t744->has = abap_true.
        t744->value = t742.
        t738 = t744.
      ENDIF.
      t737 = t738.
      DATA t745 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t745.
      DATA t746 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t746.
      IF xsdbool( t664 IS INITIAL ) = abap_true.
        CLEAR t746.
      ELSE.
        DATA(t750) = VALUE string( ).
        t750 = t664->as_string( ).
        DATA(t752) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t752->has = abap_true.
        t752->value = t750.
        t746 = t752.
      ENDIF.
      t745 = t746.
      DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t753.
      DATA t754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t754.
      IF xsdbool( t668 IS INITIAL ) = abap_true.
        CLEAR t754.
      ELSE.
        DATA(t758) = VALUE string( ).
        t758 = t668->as_string( ).
        DATA(t760) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t760->has = abap_true.
        t760->value = t758.
        t754 = t760.
      ENDIF.
      t753 = t754.
      DATA t761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t761.
      DATA t762 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t762.
      IF xsdbool( t672 IS INITIAL ) = abap_true.
        CLEAR t762.
      ELSE.
        DATA(t766) = VALUE string( ).
        t766 = t672->as_string( ).
        DATA(t768) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t768->has = abap_true.
        t768->value = t766.
        t762 = t768.
      ENDIF.
      t761 = t762.
      DATA t769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t769.
      DATA t770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t770.
      IF xsdbool( t676 IS INITIAL ) = abap_true.
        CLEAR t770.
      ELSE.
        DATA(t774) = VALUE string( ).
        t774 = t676->as_string( ).
        DATA(t776) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t776->has = abap_true.
        t776->value = t774.
        t770 = t776.
      ENDIF.
      t769 = t770.
      DATA t777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t777.
      DATA t778 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t778.
      IF xsdbool( t680 IS INITIAL ) = abap_true.
        CLEAR t778.
      ELSE.
        DATA(t782) = VALUE string( ).
        t782 = t680->as_string( ).
        DATA(t784) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t784->has = abap_true.
        t784->value = t782.
        t778 = t784.
      ENDIF.
      t777 = t778.
      DATA t785 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t785.
      DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t786.
      IF xsdbool( t684 IS INITIAL ) = abap_true.
        CLEAR t786.
      ELSE.
        DATA(t790) = VALUE string( ).
        t790 = t684->as_string( ).
        DATA(t792) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t792->has = abap_true.
        t792->value = t790.
        t786 = t792.
      ENDIF.
      t785 = t786.
      DATA t793 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t793.
      DATA t794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t794.
      IF xsdbool( t688 IS INITIAL ) = abap_true.
        CLEAR t794.
      ELSE.
        DATA(t798) = VALUE string( ).
        t798 = t688->as_string( ).
        DATA(t800) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t800->has = abap_true.
        t800->value = t798.
        t794 = t800.
      ENDIF.
      t793 = t794.
      DATA t801 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t801.
      DATA t802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t802.
      IF xsdbool( t692 IS INITIAL ) = abap_true.
        CLEAR t802.
      ELSE.
        DATA(t806) = VALUE string( ).
        t806 = t692->as_string( ).
        DATA(t808) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t808->has = abap_true.
        t808->value = t806.
        t802 = t808.
      ENDIF.
      t801 = t802.
      DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t809.
      DATA t810 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t810.
      IF xsdbool( t696 IS INITIAL ) = abap_true.
        CLEAR t810.
      ELSE.
        DATA(t814) = VALUE string( ).
        t814 = t696->as_string( ).
        DATA(t816) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t816->has = abap_true.
        t816->value = t814.
        t810 = t816.
      ENDIF.
      t809 = t810.
      DATA t818 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t818.
      IF xsdbool( t700 IS INITIAL ) = abap_true.
        CLEAR t818.
      ELSE.
        DATA(t822) = VALUE string( ).
        t822 = t700->as_string( ).
        DATA(t824) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t824->has = abap_true.
        t824->value = t822.
        t818 = t824.
      ENDIF.
      t704 = NEW zcl_lnt_shape_e534171c( i_fieldname = t705 i_rollname_e353 = t713 i_comptype = t721 i_precfield = t729 i_leng_f9b0 = t737 i_intlen = t745 i_datatype_73ff = t753 i_decimals_c159 = t761 i_keyflag = t769 i_groupname = t777
      i_checktable = t785 i_reftable = t793 i_reffield = t801 i_reftype = t809 i_ddtext_4f13 = t818 ).
      CREATE OBJECT t704->zlnt_view_ownkeys_b0e8086400eb.
      t704->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t825.
      t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `FIELDNAME` p1 = t825 ).
      DATA t826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t826.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ROLLNAME` p1 = t826 ).
      ENDIF.
      DATA t827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t827.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `COMPTYPE` p1 = t827 ).
      ENDIF.
      DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t828.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `PRECFIELD` p1 = t828 ).
      ENDIF.
      DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t829.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `LENG` p1 = t829 ).
      ENDIF.
      DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t830.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `INTLEN` p1 = t830 ).
      ENDIF.
      DATA t831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t831.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `DATATYPE` p1 = t831 ).
      ENDIF.
      DATA t832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t832.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `DECIMALS` p1 = t832 ).
      ENDIF.
      DATA t833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t833.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `KEYFLAG` p1 = t833 ).
      ENDIF.
      DATA t834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t834.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `GROUPNAME` p1 = t834 ).
      ENDIF.
      DATA t835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t835.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `CHECKTABLE` p1 = t835 ).
      ENDIF.
      DATA t836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t836.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `REFTABLE` p1 = t836 ).
      ENDIF.
      DATA t837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t837.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `REFFIELD` p1 = t837 ).
      ENDIF.
      DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t838.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `REFTYPE` p1 = t838 ).
      ENDIF.
      DATA t839 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t839.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `DDTEXT` p1 = t839 ).
      ENDIF.
      CREATE OBJECT t704->zlnt_json_ownkeys_70e5fd461788.
      t704->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t841.
      t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |FIELDNAME| p1 = t841 ).
      DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t843.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ROLLNAME| p1 = t843 ).
      ENDIF.
      DATA t845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t845.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |COMPTYPE| p1 = t845 ).
      ENDIF.
      DATA t847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t847.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |PRECFIELD| p1 = t847 ).
      ENDIF.
      DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t849.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |LENG| p1 = t849 ).
      ENDIF.
      DATA t851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t851.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |INTLEN| p1 = t851 ).
      ENDIF.
      DATA t853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t853.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |DATATYPE| p1 = t853 ).
      ENDIF.
      DATA t855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t855.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |DECIMALS| p1 = t855 ).
      ENDIF.
      DATA t857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t857.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |KEYFLAG| p1 = t857 ).
      ENDIF.
      DATA t859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t859.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |GROUPNAME| p1 = t859 ).
      ENDIF.
      DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t861.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |CHECKTABLE| p1 = t861 ).
      ENDIF.
      DATA t863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t863.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |REFTABLE| p1 = t863 ).
      ENDIF.
      DATA t865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t865.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |REFFIELD| p1 = t865 ).
      ENDIF.
      DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t867.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |REFTYPE| p1 = t867 ).
      ENDIF.
      DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t869.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |DDTEXT| p1 = t869 ).
      ENDIF.
      t643 = t704.
      t640->load( ).
      APPEND t643 TO t640->items.
      t640->save( ).
    ENDDO.
    DATA t870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t878 = t3.
    DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t881) = VALUE abap_bool( ).
    DATA t882 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t878 IS BOUND.
      t882 = t878.
    ENDIF.
    IF t882 IS NOT BOUND.
      t881 = abap_true.
    ELSE.
      t881 = xsdbool( t882->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t881 = abap_true.
    ELSE.
      t880 = t878->get( p0 = |abapGit| ).
    ENDIF.
    t876 = t880.
    DATA t889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t890) = VALUE abap_bool( ).
    DATA t891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t876 IS BOUND.
      t891 = t876.
    ENDIF.
    IF t891 IS NOT BOUND.
      t890 = abap_true.
    ELSE.
      t890 = xsdbool( t891->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t890 = abap_true.
    ELSE.
      t889 = t876->get( p0 = |asx:abap| ).
    ENDIF.
    t874 = t889.
    DATA t898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t899) = VALUE abap_bool( ).
    DATA t900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t874 IS BOUND.
      t900 = t874.
    ENDIF.
    IF t900 IS NOT BOUND.
      t899 = abap_true.
    ELSE.
      t899 = xsdbool( t900->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t899 = abap_true.
    ELSE.
      t898 = t874->get( p0 = |asx:values| ).
    ENDIF.
    t872 = t898.
    DATA t907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t908) = VALUE abap_bool( ).
    DATA t909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t872 IS BOUND.
      t909 = t872.
    ENDIF.
    IF t909 IS NOT BOUND.
      t908 = abap_true.
    ELSE.
      t908 = xsdbool( t909->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t908 = abap_true.
    ELSE.
      t907 = t872->get( p0 = |DD12V| ).
    ENDIF.
    t870 = t907.
    DATA t917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t870 IS INITIAL ) = abap_true.
    ELSE.
      t917 = t870.
    ENDIF.
    DATA t923 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t923 = me->parsed_data.
    DATA t927 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t927.
    t923->secondary_indexes = t927.
    DELETE t923->zlnt_record_delet_0597644d88b4 WHERE table_line = `secondaryIndexes`.
    DATA t929 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t923->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t923->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `secondaryIndexes` p1 = t929 ).
    ENDIF.
    DATA t931 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t923->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t923->zlnt_json_ownkeys_70e5fd461788->put( p0 = |secondaryIndexes| p1 = t931 ).
    ENDIF.
    DATA t932 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t934 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t935 = t917.
    DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t938) = VALUE abap_bool( ).
    DATA t939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t935 IS BOUND.
      t939 = t935.
    ENDIF.
    IF t939 IS NOT BOUND.
      t938 = abap_true.
    ELSE.
      t938 = xsdbool( t939->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t938 = abap_true.
    ELSE.
      t937 = t935->get( p0 = |DD12V| ).
    ENDIF.
    t934 = t937.
    IF t934 IS BOUND.
      t933 = t934.
    ENDIF.
    t932 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t933 ).
    DATA t946 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t947 TYPE REF TO object.
    DATA(t948) = VALUE i( ).
    DO.
      t932->load( ).
      IF t948 >= lines( t932->items ).
        EXIT.
      ENDIF.
      CLEAR t947.
      READ TABLE t932->items INDEX t948 + 1 INTO t947.
      t948 = t948 + 1.
      DATA t949 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t949.
      CLEAR t946.
      IF t947 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t949 ?= t947.
        t946 = t949.
      ELSE.
        IF t947 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t950 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t950.
          t950 ?= t947.
          CLEAR t946.
          IF t950 IS BOUND.
            CREATE OBJECT t946.
            t946->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t946->cval = t950.
          ENDIF.
        ELSE.
          CLEAR t946.
          IF t947 IS BOUND.
            DATA t951 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t951.
            CLEAR t951.
            TRY.
                t946 ?= t947.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t946 IS NOT BOUND.
              TRY.
                  t951 ?= t947.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t951 IS BOUND.
                t946 = t951->source( ).
              ENDIF.
              IF t946 IS NOT BOUND.
                CREATE OBJECT t946.
                t946->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t946->oval = t947.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t953 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t953.
      t953 = t946->get( p0 = |INDEXNAME| ).
      DATA t957 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t957.
      CREATE OBJECT t957.
      DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t959.
      DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t961.
      DATA t963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t963.
      DATA t965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t965.
      DATA t967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t967 = t3.
      DATA t969 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t969.
      DATA(t970) = VALUE abap_bool( ).
      DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t971.
      CLEAR t971.
      IF t967 IS BOUND.
        t971 = t967.
      ENDIF.
      IF t971 IS NOT BOUND.
        t970 = abap_true.
      ELSE.
        t970 = xsdbool( t971->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t970 = abap_true.
        CLEAR t969.
      ELSE.
        t969 = t967->get( p0 = |abapGit| ).
      ENDIF.
      t965 = t969.
      DATA t978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t978.
      DATA(t979) = VALUE abap_bool( ).
      DATA t980 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t980.
      CLEAR t980.
      IF t965 IS BOUND.
        t980 = t965.
      ENDIF.
      IF t980 IS NOT BOUND.
        t979 = abap_true.
      ELSE.
        t979 = xsdbool( t980->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t979 = abap_true.
        CLEAR t978.
      ELSE.
        t978 = t965->get( p0 = |asx:abap| ).
      ENDIF.
      t963 = t978.
      DATA t987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t987.
      DATA(t988) = VALUE abap_bool( ).
      DATA t989 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t989.
      CLEAR t989.
      IF t963 IS BOUND.
        t989 = t963.
      ENDIF.
      IF t989 IS NOT BOUND.
        t988 = abap_true.
      ELSE.
        t988 = xsdbool( t989->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t988 = abap_true.
        CLEAR t987.
      ELSE.
        t987 = t963->get( p0 = |asx:values| ).
      ENDIF.
      t961 = t987.
      DATA t996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t996.
      DATA(t997) = VALUE abap_bool( ).
      DATA t998 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t998.
      CLEAR t998.
      IF t961 IS BOUND.
        t998 = t961.
      ENDIF.
      IF t998 IS NOT BOUND.
        t997 = abap_true.
      ELSE.
        t997 = xsdbool( t998->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t997 = abap_true.
        CLEAR t996.
      ELSE.
        t996 = t961->get( p0 = |DD17V| ).
      ENDIF.
      t959 = t996.
      DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1006.
      IF xsdbool( t959 IS INITIAL ) = abap_true.
        CLEAR t1006.
      ELSE.
        t1006 = t959.
      ENDIF.
      DATA t1012 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t1012.
      DATA t1013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1013.
      DATA t1014 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1014.
      DATA t1015 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1015 = t1006.
      DATA t1017 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1017.
      DATA(t1018) = VALUE abap_bool( ).
      DATA t1019 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1019.
      CLEAR t1019.
      IF t1015 IS BOUND.
        t1019 = t1015.
      ENDIF.
      IF t1019 IS NOT BOUND.
        t1018 = abap_true.
      ELSE.
        t1018 = xsdbool( t1019->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t1018 = abap_true.
        CLEAR t1017.
      ELSE.
        t1017 = t1015->get( p0 = |DD17V| ).
      ENDIF.
      t1014 = t1017.
      CLEAR t1013.
      IF t1014 IS BOUND.
        t1013 = t1014.
      ENDIF.
      t1012 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t1013 ).
      DATA t1026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1026.
      DATA t1027 TYPE REF TO object.
      CLEAR t1027.
      DATA(t1028) = VALUE i( ).
      DO.
        t1012->load( ).
        IF t1028 >= lines( t1012->items ).
          EXIT.
        ENDIF.
        CLEAR t1027.
        READ TABLE t1012->items INDEX t1028 + 1 INTO t1027.
        t1028 = t1028 + 1.
        DATA t1029 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1029.
        CLEAR t1026.
        IF t1027 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t1029 ?= t1027.
          t1026 = t1029.
        ELSE.
          IF t1027 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
            DATA t1030 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t1030.
            t1030 ?= t1027.
            CLEAR t1026.
            IF t1030 IS BOUND.
              CREATE OBJECT t1026.
              t1026->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
              t1026->cval = t1030.
            ENDIF.
          ELSE.
            CLEAR t1026.
            IF t1027 IS BOUND.
              DATA t1031 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t1031.
              CLEAR t1031.
              TRY.
                  t1026 ?= t1027.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1026 IS NOT BOUND.
                TRY.
                    t1031 ?= t1027.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t1031 IS BOUND.
                  t1026 = t1031->source( ).
                ENDIF.
                IF t1026 IS NOT BOUND.
                  CREATE OBJECT t1026.
                  t1026->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t1026->oval = t1027.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA(t1033) = VALUE abap_bool( ).
        DATA t1034 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1034 = t1026->get( p0 = |INDEXNAME| ).
        IF t1034 IS NOT BOUND.
          t1033 = xsdbool( t953 IS NOT BOUND ).
        ELSE.
          t1033 = t1034->strict_equals( t953 ).
        ENDIF.
        IF t1033 = abap_true.
          DATA(t1039) = VALUE string( ).
          t1039 = t1026->get( p0 = |FIELDNAME| )->as_string( ).
          t957->load( ).
          APPEND t1039 TO t957->items.
          t957->save( ).
        ENDIF.
      ENDDO.
      DATA t1043 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t1043 = me->parsed_data->secondary_indexes.
      DATA t1047 TYPE REF TO zcl_lnt_secondary_index.
      CLEAR t1047.
      DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1048 = t953.
      DATA t1050 TYPE REF TO zcl_lnt_secondary_index.
      CLEAR t1050.
      DATA t1052 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1052.
      IF xsdbool( t1048 IS INITIAL ) = abap_true.
        CLEAR t1052.
      ELSE.
        DATA(t1056) = VALUE string( ).
        t1056 = t1048->as_string( ).
        DATA(t1058) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1058->has = abap_true.
        t1058->value = t1056.
        t1052 = t1058.
      ENDIF.
      t1050 = NEW zcl_lnt_secondary_index( i_name = t1052 i_fields_62af = t957 ).
      CREATE OBJECT t1050->zlnt_view_ownkeys_b0e8086400eb.
      t1050->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1061 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1061.
      t1050->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1061 ).
      DATA t1062 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1062.
      IF t1050->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1050->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t1062 ).
      ENDIF.
      CREATE OBJECT t1050->zlnt_json_ownkeys_70e5fd461788.
      t1050->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1064 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1064.
      t1050->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1064 ).
      DATA t1066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1066.
      IF t1050->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1050->zlnt_json_ownkeys_70e5fd461788->put( p0 = |fields| p1 = t1066 ).
      ENDIF.
      t1047 = t1050.
      t1043->load( ).
      APPEND t1047 TO t1043->items.
      t1043->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD parse_type.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA(t5) = i_reg_f149.
    result = me->prs_typ_ins_src_obj_tbl_ts_tbl( i_reg_f149 = t5 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1355_92f531eaac66.
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

  METHOD zif_lnt_union_17d1aaf2~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_17d1aaf2~update_file.
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
