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
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t3.
    me->parsed_type = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |TABL|.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t10) = me->parsed_data.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t16 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->description.
      t11 = t15.
    ENDIF.
    t8 = t11.
    result = t8.

  ENDMETHOD.

  METHOD get_secondary_indexes.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
      DATA t16 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->secondary_indexes.
      t11 = t15.
    ENDIF.
    t8 = t11.
    result = t8.

  ENDMETHOD.

  METHOD get_fields.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
      DATA t16 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->fields_464c.
      t11 = t15.
    ENDIF.
    t8 = t11.
    result = t8.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE i.
    DATA(t2) = 30.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t4.
    DATA(t5) = `^((\/[A-Z_\d]{3,8}\/)|[a-zA-Z0-9]{3}|CI_)\w+$`.
    DATA(t6) = `^((\/[A-Z_0-9]{3,8}\/)|[a-zA-Z0-9]{3}|CI_)[A-Za-z0-9_]+$`.
    DATA(t7) = ||.
    CREATE OBJECT t4 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t6 flags = t7.
    t4->source = t5.
    t3 = t4.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t12) = me->parsed_data.
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
      me->parse_xml( ).
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t19) = me->parsed_data.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t18.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t20 = t23.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t25 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t26) = t18.
      t25 = t26.
      t24 = t25->table_category.
      t20 = t24.
    ENDIF.
    t17 = t20.
    t9 = t17.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |TRANSP|.
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
      DATA(t34) = 16.
      t1 = t34.
    ENDIF.
    DATA t35 TYPE REF TO zcl_lnt_iallowed_naming.
    CLEAR t35.
    DATA t36 TYPE f.
    DATA t37 TYPE f.
    DATA(t38) = t1.
    t37 = t38.
    t36 = t37.
    DATA t39 TYPE abap_bool.
    DATA(t40) = abap_true.
    t39 = t40.
    DATA t41 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t42.
    DATA(t43) = abap_true.
    IF t43 = abap_true.
      DATA(t44) = t3.
      t42 = t44.
    ELSE.
      DATA t45 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t45.
      t42 = t45.
    ENDIF.
    t41 = t42.
    t35 = NEW zcl_lnt_iallowed_naming( i_max_length = t36 i_allow_namespace = t39 i_custom_regex = t41 ).
    CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
    t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `customRegex` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
    t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |maxLength|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |allowNamespace|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |customRegex|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    result = t35.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t1.
    me->parsed_data = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t2.
    me->parsed_type = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD list_keys.
    DATA(t1) = i_reg_f149.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
    DATA t10 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t16.
      CREATE OBJECT t16.
      result = t16.
      RETURN.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t18.
    CREATE OBJECT t18.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t20.
    DATA(t21) = me->parsed_data.
    t20 = t21.
    t19 = t20->fields_464c.
    DATA t22 TYPE REF TO zcl_lnt_shape_e534171c.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
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
        CLEAR t26.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA(t30) = t22.
      t29 = t30->keyflag.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA(t33) = |X|.
        DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t34->has = abap_true.
        t34->value = t33.
        t31 = t34.
      ELSE.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        t31 = t35.
      ENDIF.
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
        CLEAR t39.
        DATA(t40) = t22.
        t39 = t40->fieldname.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA(t42) = abap_true.
        IF t42 = abap_true.
          DATA(t43) = |.INCLUDE|.
          DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t44->has = abap_true.
          t44->value = t43.
          t41 = t44.
        ELSE.
          DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t45.
          t41 = t45.
        ENDIF.
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
        DATA t49 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t49.
        DATA t50 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t50.
        DATA t51 TYPE REF TO zcl_lnt_ddic.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_ddic.
        CLEAR t52.
        DATA(t53) = t1.
        t52 = NEW zcl_lnt_ddic( i_reg_f149 = t53 ).
        t51 = t52.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA(t56) = t22.
        t55 = t56->precfield.
        t54 = t55.
        DATA t57 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA(t60) = t54.
        t59 = t60.
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t61.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        t61 = t62.
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = t59.
        IF t64 IS INITIAL.
          t63 = abap_true.
        ELSEIF t64->has = abap_false.
          t63 = abap_true.
        ENDIF.
        t58 = t63.
        IF t58 = abap_true.
          DATA t65 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t65.
          DATA t66 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t66.
          DATA t67 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t67.
          DATA(t68) = |undefined, lookupTableOrView|.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t69.
          t67 = NEW zcl_lnt_unknown_type( i_error = t68 i_qualified_name = t69 ).
          t66 = t67.
          DATA t70 TYPE REF TO zif_lnt_object.
          CLEAR t70.
          DATA t71 TYPE REF TO zif_lnt_object.
          CLEAR t71.
          t70 = t71.
          t65 = NEW zcl_lnt_ilookup_result( i_type_9913 = t66 i_object_19cd = t70 ).
          CREATE OBJECT t65->zlnt_view_ownkeys_b0e8086400eb.
          t65->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t72.
          IF t65->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t65->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t72 ).
          ENDIF.
          CREATE OBJECT t65->zlnt_json_ownkeys_70e5fd461788.
          t65->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t73) = |type|.
          DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t74.
          IF t65->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t65->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
          ENDIF.
          t57 = t65.
        ELSE.
          DATA t75 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t75.
          DATA t76 TYPE REF TO zcl_lnt_table.
          CLEAR t76.
          DATA t77 TYPE REF TO zcl_lnt_table.
          CLEAR t77.
          DATA t78 TYPE REF TO zif_lnt_object.
          CLEAR t78.
          DATA t79 TYPE REF TO zif_lnt_registry.
          CLEAR t79.
          DATA(t80) = t51.
          t79 = t80->reg.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA(t82) = abap_true.
          IF t82 = abap_true.
            DATA(t83) = |TABL|.
            DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t84->has = abap_true.
            t84->value = t83.
            t81 = t84.
          ELSE.
            DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t85.
            t81 = t85.
          ENDIF.
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t86.
          DATA(t87) = abap_true.
          IF t87 = abap_true.
            DATA(t88) = VALUE string( ).
            DATA(t89) = t54.
            t88 = t89->value.
            DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t90->has = abap_true.
            t90->value = t88.
            t86 = t90.
          ELSE.
            DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t91.
            t86 = t91.
          ENDIF.
          t78 = t79->get_object( i_type_9913 = t81 i_name = t86 ).
          DATA t92 TYPE REF TO object.
          CLEAR t92.
          t92 = t78.
          t77 ?= t92.
          t76 = t77.
          DATA t93 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t93.
          DATA(t94) = VALUE abap_bool( ).
          DATA(t95) = t76.
          t94 = xsdbool( t95 IS BOUND ).
          IF t94 = abap_true.
            DATA t96 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t96.
            DATA t97 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t97.
            DATA t98 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t98.
            DATA t99 TYPE REF TO zcl_lnt_table.
            CLEAR t99.
            DATA(t100) = t76.
            t99 = t100.
            DATA t101 TYPE REF TO zif_lnt_registry.
            CLEAR t101.
            DATA(t102) = t51.
            t101 = t102->reg.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            t98 = t99->parse_type( i_reg_f149 = t101 i_data_element = t103 i_description = t104 ).
            t97 = t98.
            DATA t105 TYPE REF TO zif_lnt_object.
            CLEAR t105.
            DATA t106 TYPE REF TO zcl_lnt_table.
            CLEAR t106.
            DATA(t107) = t76.
            t106 = t107.
            t105 = t106.
            t96 = NEW zcl_lnt_ilookup_result( i_type_9913 = t97 i_object_19cd = t105 ).
            CREATE OBJECT t96->zlnt_view_ownkeys_b0e8086400eb.
            t96->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t108 ).
            ENDIF.
            DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t109.
            IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t109 ).
            ENDIF.
            CREATE OBJECT t96->zlnt_json_ownkeys_70e5fd461788.
            t96->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t110) = |type|.
            DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t111.
            IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
            ENDIF.
            DATA(t112) = |object|.
            DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t113.
            IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
            ENDIF.
            t93 = t96.
          ELSE.
            DATA t114 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t114.
            DATA t115 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t115.
            DATA t116 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t116.
            DATA(t117) = t51.
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t118.
            DATA(t119) = abap_true.
            IF t119 = abap_true.
              DATA(t120) = VALUE string( ).
              DATA(t121) = t54.
              t120 = t121->value.
              DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t122->has = abap_true.
              t122->value = t120.
              t118 = t122.
            ELSE.
              DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t123.
              t118 = t123.
            ENDIF.
            t116 = t117->lookup_ddls( i_name = t118 ).
            t115 = t116.
            DATA t124 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t124.
            DATA(t125) = VALUE abap_bool( ).
            DATA(t126) = t115.
            t125 = xsdbool( t126 IS BOUND ).
            IF t125 = abap_true.
              DATA t127 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t127.
              DATA(t128) = t115.
              t127 = t128.
              t124 = t127.
            ELSE.
              DATA t129 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t129.
              DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t130.
              DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t131.
              DATA(t132) = abap_true.
              IF t132 = abap_true.
                DATA(t133) = VALUE string( ).
                DATA(t134) = t54.
                t133 = t134->value.
                DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t135->has = abap_true.
                t135->value = t133.
                t131 = t135.
              ELSE.
                DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t136.
                t131 = t136.
              ENDIF.
              t130 = t131.
              DATA t137 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t137.
              DATA(t138) = VALUE abap_bool( ).
              DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t139.
              DATA(t140) = t130.
              t139 = t140.
              DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t141.
              DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t142.
              t141 = t142.
              DATA(t143) = VALUE abap_bool( ).
              DATA(t144) = t139.
              IF t144 IS INITIAL.
                t143 = abap_true.
              ELSEIF t144->has = abap_false.
                t143 = abap_true.
              ENDIF.
              t138 = t143.
              IF t138 = abap_true.
                DATA t145 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t145.
                DATA t146 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t146.
                DATA t147 TYPE REF TO zcl_lnt_unknown_type.
                CLEAR t147.
                DATA(t148) = |undefined, lookupView|.
                DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t149.
                t147 = NEW zcl_lnt_unknown_type( i_error = t148 i_qualified_name = t149 ).
                t146 = t147.
                DATA t150 TYPE REF TO zif_lnt_object.
                CLEAR t150.
                DATA t151 TYPE REF TO zif_lnt_object.
                CLEAR t151.
                t150 = t151.
                t145 = NEW zcl_lnt_ilookup_result( i_type_9913 = t146 i_object_19cd = t150 ).
                CREATE OBJECT t145->zlnt_view_ownkeys_b0e8086400eb.
                t145->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t152.
                IF t145->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t145->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t152 ).
                ENDIF.
                CREATE OBJECT t145->zlnt_json_ownkeys_70e5fd461788.
                t145->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t153) = |type|.
                DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t154.
                IF t145->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t145->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
                ENDIF.
                t137 = t145.
              ELSE.
                DATA t155 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t155.
                DATA t156 TYPE REF TO zcl_lnt_table.
                CLEAR t156.
                DATA t157 TYPE REF TO zcl_lnt_table.
                CLEAR t157.
                DATA t158 TYPE REF TO zif_lnt_object.
                CLEAR t158.
                DATA t159 TYPE REF TO zif_lnt_registry.
                CLEAR t159.
                DATA(t160) = t51.
                t159 = t160->reg.
                DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t161.
                DATA(t162) = abap_true.
                IF t162 = abap_true.
                  DATA(t163) = |VIEW|.
                  DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t164->has = abap_true.
                  t164->value = t163.
                  t161 = t164.
                ELSE.
                  DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t165.
                  t161 = t165.
                ENDIF.
                DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t166.
                DATA(t167) = abap_true.
                IF t167 = abap_true.
                  DATA(t168) = VALUE string( ).
                  DATA(t169) = t130.
                  t168 = t169->value.
                  DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t170->has = abap_true.
                  t170->value = t168.
                  t166 = t170.
                ELSE.
                  DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t171.
                  t166 = t171.
                ENDIF.
                t158 = t159->get_object( i_type_9913 = t161 i_name = t166 ).
                DATA t172 TYPE REF TO object.
                CLEAR t172.
                t172 = t158.
                t157 ?= t172.
                t156 = t157.
                DATA t173 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t173.
                DATA(t174) = VALUE abap_bool( ).
                DATA(t175) = t156.
                t174 = xsdbool( t175 IS BOUND ).
                IF t174 = abap_true.
                  DATA t176 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t176.
                  DATA t177 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t177.
                  DATA t178 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t178.
                  DATA t179 TYPE REF TO zcl_lnt_table.
                  CLEAR t179.
                  DATA(t180) = t156.
                  t179 = t180.
                  DATA t181 TYPE REF TO zif_lnt_registry.
                  CLEAR t181.
                  DATA(t182) = t51.
                  t181 = t182->reg.
                  DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t183.
                  DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t184.
                  t178 = t179->parse_type( i_reg_f149 = t181 i_data_element = t183 i_description = t184 ).
                  t177 = t178.
                  DATA t185 TYPE REF TO zif_lnt_object.
                  CLEAR t185.
                  DATA t186 TYPE REF TO zcl_lnt_table.
                  CLEAR t186.
                  DATA(t187) = t156.
                  t186 = t187.
                  t185 = t186.
                  t176 = NEW zcl_lnt_ilookup_result( i_type_9913 = t177 i_object_19cd = t185 ).
                  CREATE OBJECT t176->zlnt_view_ownkeys_b0e8086400eb.
                  t176->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t188.
                  IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t188 ).
                  ENDIF.
                  DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t189.
                  IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t189 ).
                  ENDIF.
                  CREATE OBJECT t176->zlnt_json_ownkeys_70e5fd461788.
                  t176->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t190) = |type|.
                  DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t191.
                  IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
                  ENDIF.
                  DATA(t192) = |object|.
                  DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t193.
                  IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t192 p1 = t193 ).
                  ENDIF.
                  t173 = t176.
                ELSE.
                  DATA t194 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t194.
                  DATA(t195) = VALUE abap_bool( ).
                  DATA t196 TYPE REF TO zif_lnt_registry.
                  CLEAR t196.
                  DATA(t197) = t51.
                  t196 = t197->reg.
                  DATA(t198) = VALUE string( ).
                  DATA(t199) = t130.
                  t198 = t199->value.
                  t195 = t196->in_error_namespace( i_name = t198 ).
                  IF t195 = abap_true.
                    DATA t200 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t200.
                    DATA t201 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t201.
                    DATA t202 TYPE REF TO zcl_lnt_unknown_type.
                    CLEAR t202.
                    DATA(t203) = VALUE string( ).
                    DATA(t204) = VALUE string( ).
                    DATA(t205) = t130.
                    t204 = t205->value.
                    DATA(t206) = | not found, lookupView|.
                    DATA(t207) = strlen( t204 ).
                    t203 = |{ t204 }{ t206 }|.
                    DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t208.
                    t202 = NEW zcl_lnt_unknown_type( i_error = t203 i_qualified_name = t208 ).
                    t201 = t202.
                    DATA t209 TYPE REF TO zif_lnt_object.
                    CLEAR t209.
                    DATA t210 TYPE REF TO zif_lnt_object.
                    CLEAR t210.
                    t209 = t210.
                    t200 = NEW zcl_lnt_ilookup_result( i_type_9913 = t201 i_object_19cd = t209 ).
                    CREATE OBJECT t200->zlnt_view_ownkeys_b0e8086400eb.
                    t200->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t211.
                    IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t211 ).
                    ENDIF.
                    CREATE OBJECT t200->zlnt_json_ownkeys_70e5fd461788.
                    t200->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t212) = |type|.
                    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t213.
                    IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
                    ENDIF.
                    t194 = t200.
                  ELSE.
                    DATA t214 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t214.
                    DATA t215 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t215.
                    DATA t216 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t216.
                    DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t217.
                    DATA(t218) = abap_true.
                    IF t218 = abap_true.
                      DATA(t219) = VALUE string( ).
                      DATA(t220) = t130.
                      t219 = t220->value.
                      DATA(t221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t221->has = abap_true.
                      t221->value = t219.
                      t217 = t221.
                    ELSE.
                      DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t222.
                      t217 = t222.
                    ENDIF.
                    DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t223.
                    t216 = zcl_lnt_void_type=>get_db65( i_voided = t217 i_qualified_name = t223 ).
                    t215 = t216.
                    DATA t224 TYPE REF TO zif_lnt_object.
                    CLEAR t224.
                    DATA t225 TYPE REF TO zif_lnt_object.
                    CLEAR t225.
                    t224 = t225.
                    t214 = NEW zcl_lnt_ilookup_result( i_type_9913 = t215 i_object_19cd = t224 ).
                    CREATE OBJECT t214->zlnt_view_ownkeys_b0e8086400eb.
                    t214->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t226.
                    IF t214->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t214->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t226 ).
                    ENDIF.
                    CREATE OBJECT t214->zlnt_json_ownkeys_70e5fd461788.
                    t214->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t227) = |type|.
                    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t228.
                    IF t214->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t214->zlnt_json_ownkeys_70e5fd461788->put( p0 = t227 p1 = t228 ).
                    ENDIF.
                    t194 = t214.
                  ENDIF.
                  t173 = t194.
                ENDIF.
                t155 = t173.
                t137 = t155.
              ENDIF.
              t129 = t137.
              t124 = t129.
            ENDIF.
            t114 = t124.
            t93 = t114.
          ENDIF.
          t75 = t93.
          t57 = t75.
        ENDIF.
        t50 = t57.
        t49 = t50->zlnt_view_read_sr_9be58e2d4893( ).
        t48 = t49.
        DATA(t229) = VALUE abap_bool( ).
        DATA(t230) = t48.
        t229 = xsdbool( t230 IS BOUND AND t230 IS INSTANCE OF zcl_lnt_structure_type ).
        IF t229 = abap_true.
          DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t231.
          DATA t232 TYPE REF TO zcl_lnt_structure_type.
          CLEAR t232.
          DATA t233 TYPE REF TO zcl_lnt_structure_type.
          CLEAR t233.
          DATA(t234) = t48.
          t233 ?= t234.
          t232 = t233.
          DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t235.
          DATA(t236) = t232.
          t235 = t236->components.
          t231 = t235.
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
            DATA(t246) = t17.
            DATA(t247) = VALUE string( ).
            DATA(t248) = t237.
            t247 = t248->zlnt_view_read_sr_dae473e680bd( ).
            t246->load( ).
            APPEND t247 TO t246->items.
            t246->save( ).
          ENDDO.
        ENDIF.
      ELSE.
        DATA(t249) = VALUE abap_bool( ).
        DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t250.
        DATA(t251) = t22.
        t250 = t251->keyflag.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        DATA(t253) = abap_true.
        IF t253 = abap_true.
          DATA(t254) = |X|.
          DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t255->has = abap_true.
          t255->value = t254.
          t252 = t255.
        ELSE.
          DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t256.
          t252 = t256.
        ENDIF.
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
          DATA(t259) = t17.
          DATA(t260) = VALUE string( ).
          DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t261.
          DATA(t262) = t22.
          t261 = t262->fieldname.
          t260 = t261->value.
          t259->load( ).
          APPEND t260 TO t259->items.
          t259->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t263) = t17.
    result = t263.

  ENDMETHOD.

  METHOD prs_typ_ins_src_obj_tbl_ts_tbl.
    DATA(t1) = i_reg_f149.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
      DATA(t9) = VALUE abap_bool( ).
      DATA t10 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
        DATA(t17) = |Table, parser error|.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        t16 = NEW zcl_lnt_unknown_type( i_error = t17 i_qualified_name = t18 ).
        result = t16.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE string( ).
    DATA t22 TYPE REF TO zif_lnt_configuration.
    CLEAR t22.
    DATA(t23) = t1.
    t22 = t23->get_config( ).
    t21 = t22->get_language_version( ).
    DATA(t24) = |Cloud|.
    t20 = xsdbool( t21 = t24 ).
    t19 = t20.
    IF t20 = abap_true.
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      CLEAR t27.
      DATA(t28) = me->parsed_data.
      t27 = t28.
      t26 = t27->data_class.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA(t30) = abap_true.
      IF t30 = abap_true.
        DATA(t31) = |USER3|.
        DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t32->has = abap_true.
        t32->value = t31.
        t29 = t32.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        t29 = t33.
      ENDIF.
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
      DATA t36 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t36.
      DATA(t37) = |Data class = USER3 not allowed in cloud|.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      t36 = NEW zcl_lnt_unknown_type( i_error = t37 i_qualified_name = t38 ).
      result = t36.
      RETURN.
    ENDIF.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t42.
    DATA(t43) = me->parsed_data.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    t44 = t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = t42.
    IF t47 IS INITIAL.
      t46 = abap_true.
    ENDIF.
    t41 = t46.
    IF t41 = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t49.
    DATA(t50) = me->parsed_data.
    t49 = t50.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t51.
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = t49.
    IF t53 IS INITIAL.
      t52 = abap_true.
    ENDIF.
    IF t52 = abap_true.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      t51 = t54.
    ELSE.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      CLEAR t56.
      DATA(t57) = t49.
      t56 = t57.
      t55 = t56->table_category.
      t51 = t55.
    ENDIF.
    t48 = t51.
    t40 = t48.
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t58.
    DATA(t59) = abap_true.
    IF t59 = abap_true.
      DATA(t60) = |TRANSP|.
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
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE i( ).
      DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t67.
      DATA(t68) = t1.
      t67 = me->list_keys( i_reg_f149 = t68 ).
      t67->load( ).
      t66 = lines( t67->items ).
      DATA(t69) = 0.
      t65 = xsdbool( t66 = t69 ).
      IF t65 = abap_true.
        DATA t70 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t70.
        DATA(t71) = VALUE string( ).
        DATA(t72) = VALUE string( ).
        DATA(t73) = |Table |.
        DATA(t74) = VALUE string( ).
        DATA t75 TYPE REF TO zcl_lnt_abstract_object.
        CLEAR t75.
        DATA(t76) = me.
        t75 = t76.
        DATA(t77) = VALUE string( ).
        DATA(t78) = t75.
        t77 = t78->name.
        t74 = t77.
        DATA(t79) = strlen( t73 ).
        t72 = |{ t73 }{ t74 }|.
        DATA(t80) = | has no key fields|.
        DATA(t81) = strlen( t72 ).
        t71 = |{ t72 }{ t80 }|.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        t70 = NEW zcl_lnt_unknown_type( i_error = t71 i_qualified_name = t82 ).
        result = t70.
        RETURN.
      ELSE.
        DATA(t83) = CONV abap_bool( me->key_fields_not_first( ) ).
        IF t83 = abap_true.
          DATA t84 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t84.
          DATA(t85) = VALUE string( ).
          DATA(t86) = VALUE string( ).
          DATA(t87) = |Table |.
          DATA(t88) = VALUE string( ).
          DATA t89 TYPE REF TO zcl_lnt_abstract_object.
          CLEAR t89.
          DATA(t90) = me.
          t89 = t90.
          DATA(t91) = VALUE string( ).
          DATA(t92) = t89.
          t91 = t92->name.
          t88 = t91.
          DATA(t93) = strlen( t87 ).
          t86 = |{ t87 }{ t88 }|.
          DATA(t94) = | key fields must be first|.
          DATA(t95) = strlen( t86 ).
          t85 = |{ t86 }{ t94 }|.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          t84 = NEW zcl_lnt_unknown_type( i_error = t85 i_qualified_name = t96 ).
          result = t84.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t97) = VALUE abap_bool( ).
    DATA(t98) = me->parsed_type.
    t97 = xsdbool( t98 IS BOUND ).
    IF t97 = abap_true.
      DATA t99 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t99.
      DATA(t100) = me->parsed_type.
      t99 = t100.
      result = t99.
      RETURN.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t102.
    CREATE OBJECT t102.
    t101 = t102.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t104.
    CREATE OBJECT t104.
    t103 = t104.
    DATA t105 TYPE REF TO zcl_lnt_ddic.
    CLEAR t105.
    DATA t106 TYPE REF TO zcl_lnt_ddic.
    CLEAR t106.
    DATA(t107) = t1.
    t106 = NEW zcl_lnt_ddic( i_reg_f149 = t107 ).
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t108.
    DATA t109 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t109.
    DATA(t110) = me->parsed_data.
    t109 = t110.
    t108 = t109->fields_464c.
    DATA t111 TYPE REF TO zcl_lnt_shape_e534171c.
    CLEAR t111.
    DATA t112 TYPE REF TO object.
    CLEAR t112.
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
        CLEAR t115.
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
      DATA(t120) = t111.
      t119 = t120->comptype.
      IF t119 IS BOUND.
        IF t119->has = abap_true.
          t118 = xsdbool( strlen( t119->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t118 = abap_true.
        DATA(t121) = VALUE string( ).
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        DATA(t123) = t111.
        t122 = t123->comptype.
        t121 = t122->value.
        t117 = t121.
      ELSE.
        DATA(t124) = ||.
        t117 = t124.
      ENDIF.
      t116 = t117.
      DATA(t125) = VALUE abap_bool( ).
      DATA(t126) = t116.
      DATA(t127) = |E|.
      t125 = xsdbool( t126 = t127 ).
      IF t125 = abap_true.
        DATA t128 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t128.
        DATA t129 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t129.
        DATA t130 TYPE REF TO zcl_lnt_ddic.
        CLEAR t130.
        DATA(t131) = t105.
        t130 = t131.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t132.
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t133.
        DATA(t134) = t111.
        t133 = t134->rollname_a788.
        t132 = t133.
        DATA t135 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t135.
        DATA(t136) = VALUE abap_bool( ).
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t137.
        DATA(t138) = t132.
        t137 = t138.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        t139 = t140.
        DATA(t141) = VALUE abap_bool( ).
        DATA(t142) = t137.
        IF t142 IS INITIAL.
          t141 = abap_true.
        ELSEIF t142->has = abap_false.
          t141 = abap_true.
        ENDIF.
        t136 = t141.
        IF t136 = abap_true.
          DATA t143 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t143.
          DATA t144 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t144.
          DATA t145 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t145.
          DATA(t146) = |undefined, lookupDataElement|.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          t145 = NEW zcl_lnt_unknown_type( i_error = t146 i_qualified_name = t147 ).
          t144 = t145.
          DATA t148 TYPE REF TO zif_lnt_object.
          CLEAR t148.
          DATA t149 TYPE REF TO zif_lnt_object.
          CLEAR t149.
          t148 = t149.
          t143 = NEW zcl_lnt_ilookup_result( i_type_9913 = t144 i_object_19cd = t148 ).
          CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
          t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t150 ).
          ENDIF.
          CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
          t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t151) = |type|.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
          ENDIF.
          t135 = t143.
        ELSE.
          DATA t153 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t153.
          DATA t154 TYPE REF TO zcl_lnt_data_element.
          CLEAR t154.
          DATA t155 TYPE REF TO zcl_lnt_data_element.
          CLEAR t155.
          DATA t156 TYPE REF TO zif_lnt_object.
          CLEAR t156.
          DATA t157 TYPE REF TO zif_lnt_registry.
          CLEAR t157.
          DATA(t158) = t130.
          t157 = t158->reg.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA(t160) = abap_true.
          IF t160 = abap_true.
            DATA(t161) = |DTEL|.
            DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t162->has = abap_true.
            t162->value = t161.
            t159 = t162.
          ELSE.
            DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t163.
            t159 = t163.
          ENDIF.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t164.
          DATA(t165) = abap_true.
          IF t165 = abap_true.
            DATA(t166) = VALUE string( ).
            DATA(t167) = t132.
            t166 = t167->value.
            DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t168->has = abap_true.
            t168->value = t166.
            t164 = t168.
          ELSE.
            DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t169.
            t164 = t169.
          ENDIF.
          t156 = t157->get_object( i_type_9913 = t159 i_name = t164 ).
          DATA t170 TYPE REF TO object.
          CLEAR t170.
          t170 = t156.
          t155 ?= t170.
          t154 = t155.
          DATA t171 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t171.
          DATA(t172) = VALUE abap_bool( ).
          DATA(t173) = t154.
          t172 = xsdbool( t173 IS BOUND ).
          IF t172 = abap_true.
            DATA t174 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t174.
            DATA t175 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t175.
            DATA t176 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t176.
            DATA t177 TYPE REF TO zcl_lnt_data_element.
            CLEAR t177.
            DATA(t178) = t154.
            t177 = t178.
            DATA t179 TYPE REF TO zif_lnt_registry.
            CLEAR t179.
            DATA(t180) = t130.
            t179 = t180->reg.
            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t181.
            DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t182.
            t176 = t177->parse_type( i_reg_f149 = t179 i_data_element = t181 i_description = t182 ).
            t175 = t176.
            DATA t183 TYPE REF TO zif_lnt_object.
            CLEAR t183.
            DATA t184 TYPE REF TO zcl_lnt_data_element.
            CLEAR t184.
            DATA(t185) = t154.
            t184 = t185.
            t183 = t184.
            t174 = NEW zcl_lnt_ilookup_result( i_type_9913 = t175 i_object_19cd = t183 ).
            CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
            t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t186.
            IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t186 ).
            ENDIF.
            DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t187.
            IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t187 ).
            ENDIF.
            CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
            t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t188) = |type|.
            DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t189.
            IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
            ENDIF.
            DATA(t190) = |object|.
            DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t191.
            IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
            ENDIF.
            t171 = t174.
          ELSE.
            DATA t192 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t192.
            DATA(t193) = VALUE abap_bool( ).
            DATA t194 TYPE REF TO zif_lnt_registry.
            CLEAR t194.
            DATA(t195) = t130.
            t194 = t195->reg.
            DATA(t196) = VALUE string( ).
            DATA(t197) = t132.
            t196 = t197->value.
            t193 = t194->in_error_namespace( i_name = t196 ).
            IF t193 = abap_true.
              DATA t198 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t198.
              DATA t199 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t199.
              DATA t200 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t200.
              DATA(t201) = VALUE string( ).
              DATA(t202) = VALUE string( ).
              DATA(t203) = t132.
              t202 = t203->value.
              DATA(t204) = | not found, lookupDataElement|.
              DATA(t205) = strlen( t202 ).
              t201 = |{ t202 }{ t204 }|.
              DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t206.
              t200 = NEW zcl_lnt_unknown_type( i_error = t201 i_qualified_name = t206 ).
              t199 = t200.
              DATA t207 TYPE REF TO zif_lnt_object.
              CLEAR t207.
              DATA t208 TYPE REF TO zif_lnt_object.
              CLEAR t208.
              t207 = t208.
              t198 = NEW zcl_lnt_ilookup_result( i_type_9913 = t199 i_object_19cd = t207 ).
              CREATE OBJECT t198->zlnt_view_ownkeys_b0e8086400eb.
              t198->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t209.
              IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t209 ).
              ENDIF.
              CREATE OBJECT t198->zlnt_json_ownkeys_70e5fd461788.
              t198->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t210) = |type|.
              DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t211.
              IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
              ENDIF.
              t192 = t198.
            ELSE.
              DATA t212 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t212.
              DATA t213 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t213.
              DATA t214 TYPE REF TO zcl_lnt_void_type.
              CLEAR t214.
              DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t215.
              DATA(t216) = abap_true.
              IF t216 = abap_true.
                DATA(t217) = VALUE string( ).
                DATA(t218) = t132.
                t217 = t218->value.
                DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t219->has = abap_true.
                t219->value = t217.
                t215 = t219.
              ELSE.
                DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t220.
                t215 = t220.
              ENDIF.
              DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t221.
              t214 = zcl_lnt_void_type=>get_db65( i_voided = t215 i_qualified_name = t221 ).
              t213 = t214.
              DATA t222 TYPE REF TO zif_lnt_object.
              CLEAR t222.
              DATA t223 TYPE REF TO zif_lnt_object.
              CLEAR t223.
              t222 = t223.
              t212 = NEW zcl_lnt_ilookup_result( i_type_9913 = t213 i_object_19cd = t222 ).
              CREATE OBJECT t212->zlnt_view_ownkeys_b0e8086400eb.
              t212->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t224.
              IF t212->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t212->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t224 ).
              ENDIF.
              CREATE OBJECT t212->zlnt_json_ownkeys_70e5fd461788.
              t212->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t225) = |type|.
              DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t226.
              IF t212->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t212->zlnt_json_ownkeys_70e5fd461788->put( p0 = t225 p1 = t226 ).
              ENDIF.
              t192 = t212.
            ENDIF.
            t171 = t192.
          ENDIF.
          t153 = t171.
          t135 = t153.
        ENDIF.
        t129 = t135.
        t128 = t129.
        DATA(t227) = t103.
        DATA t228 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t228.
        DATA(t229) = VALUE string( ).
        DATA(t230) = VALUE string( ).
        DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t231.
        DATA(t232) = t111.
        t231 = t232->fieldname.
        t230 = t231->value.
        t229 = t230.
        DATA t233 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t233.
        DATA t234 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t234.
        DATA(t235) = t128.
        t234 = t235->zlnt_view_read_sr_9be58e2d4893( ).
        t233 = t234.
        DATA t236 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t236.
        DATA t237 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t237.
        t236 = t237.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t238.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t239.
        t238 = t239.
        t228 = NEW zcl_lnt_istructure_component( i_name = t229 i_type_9913 = t233 i_as_include = t236 i_suffix = t238 ).
        CREATE OBJECT t228->zlnt_view_ownkeys_b0e8086400eb.
        t228->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t240 ).
        ENDIF.
        DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t241.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t241 ).
        ENDIF.
        CREATE OBJECT t228->zlnt_json_ownkeys_70e5fd461788.
        t228->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t242) = |name|.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t242 p1 = t243 ).
        ENDIF.
        DATA(t244) = |type|.
        DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t245.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t244 p1 = t245 ).
        ENDIF.
        t227->load( ).
        APPEND t228 TO t227->items.
        t227->save( ).
        DATA(t246) = VALUE abap_bool( ).
        DATA t247 TYPE REF TO zif_lnt_object.
        CLEAR t247.
        DATA(t248) = t128.
        t247 = t248->zlnt_view_read_sr_2de0200e6505( ).
        t246 = xsdbool( t247 IS BOUND ).
        IF t246 = abap_true.
          DATA(t249) = t101.
          DATA t250 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t250.
          DATA t251 TYPE REF TO zif_lnt_object.
          CLEAR t251.
          DATA t252 TYPE REF TO zif_lnt_object.
          CLEAR t252.
          DATA(t253) = abap_true.
          IF t253 = abap_true.
            DATA t254 TYPE REF TO zif_lnt_object.
            CLEAR t254.
            DATA t255 TYPE REF TO zif_lnt_object.
            CLEAR t255.
            DATA(t256) = t128.
            t255 = t256->zlnt_view_read_sr_2de0200e6505( ).
            t254 = t255.
            t252 = t254.
          ELSE.
            DATA t257 TYPE REF TO zif_lnt_object.
            CLEAR t257.
            t252 = t257.
          ENDIF.
          t251 = t252.
          DATA t258 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t258.
          DATA t259 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t259.
          t258 = t259.
          DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t260.
          DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t261.
          t260 = t261.
          t250 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t251 i_token = t258 i_filename = t260 ).
          CREATE OBJECT t250->zlnt_view_ownkeys_b0e8086400eb.
          t250->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t262.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t262 ).
          ENDIF.
          CREATE OBJECT t250->zlnt_json_ownkeys_70e5fd461788.
          t250->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t263) = |object|.
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
          ENDIF.
          t249->load( ).
          APPEND t250 TO t249->items.
          t249->save( ).
        ENDIF.
      ELSE.
        DATA(t265) = VALUE abap_bool( ).
        DATA(t266) = VALUE abap_bool( ).
        DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t267.
        DATA(t268) = t111.
        t267 = t268->fieldname.
        DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t269.
        DATA(t270) = abap_true.
        IF t270 = abap_true.
          DATA(t271) = |.INCLUDE|.
          DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t272->has = abap_true.
          t272->value = t271.
          t269 = t272.
        ELSE.
          DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t273.
          t269 = t273.
        ENDIF.
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
          DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t278.
          DATA(t279) = t111.
          t278 = t279->fieldname.
          t277 = t278->value.
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
          DATA(t285) = VALUE abap_bool( ).
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t286.
          DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t287.
          DATA(t288) = t111.
          t287 = t288->precfield.
          t286 = t287.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t290.
          t289 = t290.
          DATA(t291) = VALUE abap_bool( ).
          DATA(t292) = t286.
          IF t292 IS INITIAL.
            t291 = abap_true.
          ELSEIF t292->has = abap_false.
            t291 = abap_true.
          ENDIF.
          t285 = t291.
          IF t285 = abap_true.
            DATA t293 TYPE REF TO zcl_lnt_unknown_type.
            CLEAR t293.
            DATA(t294) = VALUE string( ).
            DATA(t295) = |Table, parser error, PRECFIELD undefined, |.
            DATA(t296) = VALUE string( ).
            DATA t297 TYPE REF TO zcl_lnt_abstract_object.
            CLEAR t297.
            DATA(t298) = me.
            t297 = t298.
            DATA(t299) = VALUE string( ).
            DATA(t300) = t297.
            t299 = t300->name.
            t296 = t299.
            DATA(t301) = strlen( t295 ).
            t294 = |{ t295 }{ t296 }|.
            DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t302.
            t293 = NEW zcl_lnt_unknown_type( i_error = t294 i_qualified_name = t302 ).
            result = t293.
            RETURN.
          ENDIF.
          DATA t303 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t303.
          DATA t304 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t304.
          DATA t305 TYPE REF TO zcl_lnt_ddic.
          CLEAR t305.
          DATA(t306) = t105.
          t305 = t306.
          DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t307.
          DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t308.
          DATA(t309) = abap_true.
          IF t309 = abap_true.
            DATA(t310) = VALUE string( ).
            DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t311.
            DATA(t312) = t111.
            t311 = t312->precfield.
            t310 = t311->value.
            DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t313->has = abap_true.
            t313->value = t310.
            t308 = t313.
          ELSE.
            DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t314.
            t308 = t314.
          ENDIF.
          t307 = t308.
          DATA t315 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t315.
          DATA(t316) = VALUE abap_bool( ).
          DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t317.
          DATA(t318) = t307.
          t317 = t318.
          DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t319.
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t320.
          t319 = t320.
          DATA(t321) = VALUE abap_bool( ).
          DATA(t322) = t317.
          IF t322 IS INITIAL.
            t321 = abap_true.
          ELSEIF t322->has = abap_false.
            t321 = abap_true.
          ENDIF.
          t316 = t321.
          IF t316 = abap_true.
            DATA t323 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t323.
            DATA t324 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t324.
            DATA t325 TYPE REF TO zcl_lnt_unknown_type.
            CLEAR t325.
            DATA(t326) = |undefined, lookupTableOrView|.
            DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t327.
            t325 = NEW zcl_lnt_unknown_type( i_error = t326 i_qualified_name = t327 ).
            t324 = t325.
            DATA t328 TYPE REF TO zif_lnt_object.
            CLEAR t328.
            DATA t329 TYPE REF TO zif_lnt_object.
            CLEAR t329.
            t328 = t329.
            t323 = NEW zcl_lnt_ilookup_result( i_type_9913 = t324 i_object_19cd = t328 ).
            CREATE OBJECT t323->zlnt_view_ownkeys_b0e8086400eb.
            t323->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t330.
            IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t330 ).
            ENDIF.
            CREATE OBJECT t323->zlnt_json_ownkeys_70e5fd461788.
            t323->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t331) = |type|.
            DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t332.
            IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = t331 p1 = t332 ).
            ENDIF.
            t315 = t323.
          ELSE.
            DATA t333 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t333.
            DATA t334 TYPE REF TO zcl_lnt_table.
            CLEAR t334.
            DATA t335 TYPE REF TO zcl_lnt_table.
            CLEAR t335.
            DATA t336 TYPE REF TO zif_lnt_object.
            CLEAR t336.
            DATA t337 TYPE REF TO zif_lnt_registry.
            CLEAR t337.
            DATA(t338) = t305.
            t337 = t338->reg.
            DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t339.
            DATA(t340) = abap_true.
            IF t340 = abap_true.
              DATA(t341) = |TABL|.
              DATA(t342) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t342->has = abap_true.
              t342->value = t341.
              t339 = t342.
            ELSE.
              DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t343.
              t339 = t343.
            ENDIF.
            DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t344.
            DATA(t345) = abap_true.
            IF t345 = abap_true.
              DATA(t346) = VALUE string( ).
              DATA(t347) = t307.
              t346 = t347->value.
              DATA(t348) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t348->has = abap_true.
              t348->value = t346.
              t344 = t348.
            ELSE.
              DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t349.
              t344 = t349.
            ENDIF.
            t336 = t337->get_object( i_type_9913 = t339 i_name = t344 ).
            DATA t350 TYPE REF TO object.
            CLEAR t350.
            t350 = t336.
            t335 ?= t350.
            t334 = t335.
            DATA t351 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t351.
            DATA(t352) = VALUE abap_bool( ).
            DATA(t353) = t334.
            t352 = xsdbool( t353 IS BOUND ).
            IF t352 = abap_true.
              DATA t354 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t354.
              DATA t355 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t355.
              DATA t356 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t356.
              DATA t357 TYPE REF TO zcl_lnt_table.
              CLEAR t357.
              DATA(t358) = t334.
              t357 = t358.
              DATA t359 TYPE REF TO zif_lnt_registry.
              CLEAR t359.
              DATA(t360) = t305.
              t359 = t360->reg.
              DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t361.
              DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t362.
              t356 = t357->parse_type( i_reg_f149 = t359 i_data_element = t361 i_description = t362 ).
              t355 = t356.
              DATA t363 TYPE REF TO zif_lnt_object.
              CLEAR t363.
              DATA t364 TYPE REF TO zcl_lnt_table.
              CLEAR t364.
              DATA(t365) = t334.
              t364 = t365.
              t363 = t364.
              t354 = NEW zcl_lnt_ilookup_result( i_type_9913 = t355 i_object_19cd = t363 ).
              CREATE OBJECT t354->zlnt_view_ownkeys_b0e8086400eb.
              t354->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t366.
              IF t354->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t354->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t366 ).
              ENDIF.
              DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t367.
              IF t354->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t354->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t367 ).
              ENDIF.
              CREATE OBJECT t354->zlnt_json_ownkeys_70e5fd461788.
              t354->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t368) = |type|.
              DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t369.
              IF t354->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t354->zlnt_json_ownkeys_70e5fd461788->put( p0 = t368 p1 = t369 ).
              ENDIF.
              DATA(t370) = |object|.
              DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t371.
              IF t354->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t354->zlnt_json_ownkeys_70e5fd461788->put( p0 = t370 p1 = t371 ).
              ENDIF.
              t351 = t354.
            ELSE.
              DATA t372 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t372.
              DATA t373 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t373.
              DATA t374 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t374.
              DATA(t375) = t305.
              DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t376.
              DATA(t377) = abap_true.
              IF t377 = abap_true.
                DATA(t378) = VALUE string( ).
                DATA(t379) = t307.
                t378 = t379->value.
                DATA(t380) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t380->has = abap_true.
                t380->value = t378.
                t376 = t380.
              ELSE.
                DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t381.
                t376 = t381.
              ENDIF.
              t374 = t375->lookup_ddls( i_name = t376 ).
              t373 = t374.
              DATA t382 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t382.
              DATA(t383) = VALUE abap_bool( ).
              DATA(t384) = t373.
              t383 = xsdbool( t384 IS BOUND ).
              IF t383 = abap_true.
                DATA t385 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t385.
                DATA(t386) = t373.
                t385 = t386.
                t382 = t385.
              ELSE.
                DATA t387 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t387.
                DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t388.
                DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t389.
                DATA(t390) = abap_true.
                IF t390 = abap_true.
                  DATA(t391) = VALUE string( ).
                  DATA(t392) = t307.
                  t391 = t392->value.
                  DATA(t393) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t393->has = abap_true.
                  t393->value = t391.
                  t389 = t393.
                ELSE.
                  DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t394.
                  t389 = t394.
                ENDIF.
                t388 = t389.
                DATA t395 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t395.
                DATA(t396) = VALUE abap_bool( ).
                DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t397.
                DATA(t398) = t388.
                t397 = t398.
                DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t399.
                DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t400.
                t399 = t400.
                DATA(t401) = VALUE abap_bool( ).
                DATA(t402) = t397.
                IF t402 IS INITIAL.
                  t401 = abap_true.
                ELSEIF t402->has = abap_false.
                  t401 = abap_true.
                ENDIF.
                t396 = t401.
                IF t396 = abap_true.
                  DATA t403 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t403.
                  DATA t404 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t404.
                  DATA t405 TYPE REF TO zcl_lnt_unknown_type.
                  CLEAR t405.
                  DATA(t406) = |undefined, lookupView|.
                  DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t407.
                  t405 = NEW zcl_lnt_unknown_type( i_error = t406 i_qualified_name = t407 ).
                  t404 = t405.
                  DATA t408 TYPE REF TO zif_lnt_object.
                  CLEAR t408.
                  DATA t409 TYPE REF TO zif_lnt_object.
                  CLEAR t409.
                  t408 = t409.
                  t403 = NEW zcl_lnt_ilookup_result( i_type_9913 = t404 i_object_19cd = t408 ).
                  CREATE OBJECT t403->zlnt_view_ownkeys_b0e8086400eb.
                  t403->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t410.
                  IF t403->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t410 ).
                  ENDIF.
                  CREATE OBJECT t403->zlnt_json_ownkeys_70e5fd461788.
                  t403->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t411) = |type|.
                  DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t412.
                  IF t403->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = t411 p1 = t412 ).
                  ENDIF.
                  t395 = t403.
                ELSE.
                  DATA t413 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t413.
                  DATA t414 TYPE REF TO zcl_lnt_table.
                  CLEAR t414.
                  DATA t415 TYPE REF TO zcl_lnt_table.
                  CLEAR t415.
                  DATA t416 TYPE REF TO zif_lnt_object.
                  CLEAR t416.
                  DATA t417 TYPE REF TO zif_lnt_registry.
                  CLEAR t417.
                  DATA(t418) = t305.
                  t417 = t418->reg.
                  DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t419.
                  DATA(t420) = abap_true.
                  IF t420 = abap_true.
                    DATA(t421) = |VIEW|.
                    DATA(t422) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t422->has = abap_true.
                    t422->value = t421.
                    t419 = t422.
                  ELSE.
                    DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t423.
                    t419 = t423.
                  ENDIF.
                  DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t424.
                  DATA(t425) = abap_true.
                  IF t425 = abap_true.
                    DATA(t426) = VALUE string( ).
                    DATA(t427) = t388.
                    t426 = t427->value.
                    DATA(t428) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t428->has = abap_true.
                    t428->value = t426.
                    t424 = t428.
                  ELSE.
                    DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t429.
                    t424 = t429.
                  ENDIF.
                  t416 = t417->get_object( i_type_9913 = t419 i_name = t424 ).
                  DATA t430 TYPE REF TO object.
                  CLEAR t430.
                  t430 = t416.
                  t415 ?= t430.
                  t414 = t415.
                  DATA t431 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t431.
                  DATA(t432) = VALUE abap_bool( ).
                  DATA(t433) = t414.
                  t432 = xsdbool( t433 IS BOUND ).
                  IF t432 = abap_true.
                    DATA t434 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t434.
                    DATA t435 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t435.
                    DATA t436 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t436.
                    DATA t437 TYPE REF TO zcl_lnt_table.
                    CLEAR t437.
                    DATA(t438) = t414.
                    t437 = t438.
                    DATA t439 TYPE REF TO zif_lnt_registry.
                    CLEAR t439.
                    DATA(t440) = t305.
                    t439 = t440->reg.
                    DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t441.
                    DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t442.
                    t436 = t437->parse_type( i_reg_f149 = t439 i_data_element = t441 i_description = t442 ).
                    t435 = t436.
                    DATA t443 TYPE REF TO zif_lnt_object.
                    CLEAR t443.
                    DATA t444 TYPE REF TO zcl_lnt_table.
                    CLEAR t444.
                    DATA(t445) = t414.
                    t444 = t445.
                    t443 = t444.
                    t434 = NEW zcl_lnt_ilookup_result( i_type_9913 = t435 i_object_19cd = t443 ).
                    CREATE OBJECT t434->zlnt_view_ownkeys_b0e8086400eb.
                    t434->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t446.
                    IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t446 ).
                    ENDIF.
                    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t447.
                    IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t447 ).
                    ENDIF.
                    CREATE OBJECT t434->zlnt_json_ownkeys_70e5fd461788.
                    t434->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t448) = |type|.
                    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t449.
                    IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t448 p1 = t449 ).
                    ENDIF.
                    DATA(t450) = |object|.
                    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t451.
                    IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t450 p1 = t451 ).
                    ENDIF.
                    t431 = t434.
                  ELSE.
                    DATA t452 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t452.
                    DATA(t453) = VALUE abap_bool( ).
                    DATA t454 TYPE REF TO zif_lnt_registry.
                    CLEAR t454.
                    DATA(t455) = t305.
                    t454 = t455->reg.
                    DATA(t456) = VALUE string( ).
                    DATA(t457) = t388.
                    t456 = t457->value.
                    t453 = t454->in_error_namespace( i_name = t456 ).
                    IF t453 = abap_true.
                      DATA t458 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t458.
                      DATA t459 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t459.
                      DATA t460 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t460.
                      DATA(t461) = VALUE string( ).
                      DATA(t462) = VALUE string( ).
                      DATA(t463) = t388.
                      t462 = t463->value.
                      DATA(t464) = | not found, lookupView|.
                      DATA(t465) = strlen( t462 ).
                      t461 = |{ t462 }{ t464 }|.
                      DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t466.
                      t460 = NEW zcl_lnt_unknown_type( i_error = t461 i_qualified_name = t466 ).
                      t459 = t460.
                      DATA t467 TYPE REF TO zif_lnt_object.
                      CLEAR t467.
                      DATA t468 TYPE REF TO zif_lnt_object.
                      CLEAR t468.
                      t467 = t468.
                      t458 = NEW zcl_lnt_ilookup_result( i_type_9913 = t459 i_object_19cd = t467 ).
                      CREATE OBJECT t458->zlnt_view_ownkeys_b0e8086400eb.
                      t458->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t469.
                      IF t458->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t458->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t469 ).
                      ENDIF.
                      CREATE OBJECT t458->zlnt_json_ownkeys_70e5fd461788.
                      t458->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t470) = |type|.
                      DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t471.
                      IF t458->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t458->zlnt_json_ownkeys_70e5fd461788->put( p0 = t470 p1 = t471 ).
                      ENDIF.
                      t452 = t458.
                    ELSE.
                      DATA t472 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t472.
                      DATA t473 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t473.
                      DATA t474 TYPE REF TO zcl_lnt_void_type.
                      CLEAR t474.
                      DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t475.
                      DATA(t476) = abap_true.
                      IF t476 = abap_true.
                        DATA(t477) = VALUE string( ).
                        DATA(t478) = t388.
                        t477 = t478->value.
                        DATA(t479) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t479->has = abap_true.
                        t479->value = t477.
                        t475 = t479.
                      ELSE.
                        DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t480.
                        t475 = t480.
                      ENDIF.
                      DATA t481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t481.
                      t474 = zcl_lnt_void_type=>get_db65( i_voided = t475 i_qualified_name = t481 ).
                      t473 = t474.
                      DATA t482 TYPE REF TO zif_lnt_object.
                      CLEAR t482.
                      DATA t483 TYPE REF TO zif_lnt_object.
                      CLEAR t483.
                      t482 = t483.
                      t472 = NEW zcl_lnt_ilookup_result( i_type_9913 = t473 i_object_19cd = t482 ).
                      CREATE OBJECT t472->zlnt_view_ownkeys_b0e8086400eb.
                      t472->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t484.
                      IF t472->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t472->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t484 ).
                      ENDIF.
                      CREATE OBJECT t472->zlnt_json_ownkeys_70e5fd461788.
                      t472->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t485) = |type|.
                      DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t486.
                      IF t472->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t472->zlnt_json_ownkeys_70e5fd461788->put( p0 = t485 p1 = t486 ).
                      ENDIF.
                      t452 = t472.
                    ENDIF.
                    t431 = t452.
                  ENDIF.
                  t413 = t431.
                  t395 = t413.
                ENDIF.
                t387 = t395.
                t382 = t387.
              ENDIF.
              t372 = t382.
              t351 = t372.
            ENDIF.
            t333 = t351.
            t315 = t333.
          ENDIF.
          t304 = t315.
          t303 = t304.
          DATA t487 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t487.
          DATA t488 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t488.
          DATA(t489) = t303.
          t488 = t489->zlnt_view_read_sr_9be58e2d4893( ).
          t487 = t488.
          DATA(t490) = VALUE abap_bool( ).
          DATA t491 TYPE REF TO zif_lnt_object.
          CLEAR t491.
          DATA(t492) = t303.
          t491 = t492->zlnt_view_read_sr_2de0200e6505( ).
          t490 = xsdbool( t491 IS BOUND ).
          IF t490 = abap_true.
            DATA(t493) = t101.
            DATA t494 TYPE REF TO zcl_lnt_iobject_and_token.
            CLEAR t494.
            DATA t495 TYPE REF TO zif_lnt_object.
            CLEAR t495.
            DATA t496 TYPE REF TO zif_lnt_object.
            CLEAR t496.
            DATA(t497) = abap_true.
            IF t497 = abap_true.
              DATA t498 TYPE REF TO zif_lnt_object.
              CLEAR t498.
              DATA t499 TYPE REF TO zif_lnt_object.
              CLEAR t499.
              DATA(t500) = t303.
              t499 = t500->zlnt_view_read_sr_2de0200e6505( ).
              t498 = t499.
              t496 = t498.
            ELSE.
              DATA t501 TYPE REF TO zif_lnt_object.
              CLEAR t501.
              t496 = t501.
            ENDIF.
            t495 = t496.
            DATA t502 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t502.
            DATA t503 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t503.
            t502 = t503.
            DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t504.
            DATA t505 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t505.
            t504 = t505.
            t494 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t495 i_token = t502 i_filename = t504 ).
            CREATE OBJECT t494->zlnt_view_ownkeys_b0e8086400eb.
            t494->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t506.
            IF t494->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t494->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t506 ).
            ENDIF.
            CREATE OBJECT t494->zlnt_json_ownkeys_70e5fd461788.
            t494->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t507) = |object|.
            DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t508.
            IF t494->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t494->zlnt_json_ownkeys_70e5fd461788->put( p0 = t507 p1 = t508 ).
            ENDIF.
            t493->load( ).
            APPEND t494 TO t493->items.
            t493->save( ).
          ENDIF.
          DATA(t509) = t487.
          DATA(t510) = VALUE abap_bool( ).
          DATA(t511) = t487.
          t510 = xsdbool( t511 IS BOUND AND t511 IS INSTANCE OF zcl_lnt_structure_type ).
          IF t510 = abap_true.
            DATA(t512) = VALUE abap_bool( ).
            DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t513.
            DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t514.
            DATA(t515) = t111.
            t514 = t515->groupname.
            t513 = t514.
            DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t516.
            DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t517.
            t516 = t517.
            DATA(t518) = VALUE abap_bool( ).
            DATA(t519) = VALUE abap_bool( ).
            DATA(t520) = t513.
            IF t520 IS INITIAL.
              t519 = abap_true.
            ELSEIF t520->has = abap_false.
              t519 = abap_true.
            ENDIF.
            t518 = xsdbool( t519 = abap_false ).
            t512 = t518.
            IF t512 = abap_true.
              DATA(t521) = t103.
              DATA t522 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t522.
              DATA(t523) = VALUE string( ).
              DATA(t524) = VALUE string( ).
              DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t525.
              DATA(t526) = t111.
              t525 = t526->groupname.
              t524 = t525->value.
              t523 = t524.
              DATA t527 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t527.
              DATA t528 TYPE REF TO zcl_lnt_structure_type.
              CLEAR t528.
              DATA(t529) = t487.
              t528 ?= t529.
              t527 = t528.
              DATA t530 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t530.
              DATA t531 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t531.
              DATA(t532) = abap_true.
              IF t532 = abap_true.
                DATA(t533) = abap_true.
                DATA(t534) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t534->has = abap_true.
                t534->value = t533.
                t531 = t534.
              ELSE.
                DATA t535 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t535.
                t531 = t535.
              ENDIF.
              t530 = t531.
              DATA t536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t536.
              DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t537.
              t536 = t537.
              t522 = NEW zcl_lnt_istructure_component( i_name = t523 i_type_9913 = t527 i_as_include = t530 i_suffix = t536 ).
              CREATE OBJECT t522->zlnt_view_ownkeys_b0e8086400eb.
              t522->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t538.
              IF t522->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t522->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t538 ).
              ENDIF.
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
              DATA(t541) = |name|.
              DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t542.
              IF t522->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t522->zlnt_json_ownkeys_70e5fd461788->put( p0 = t541 p1 = t542 ).
              ENDIF.
              DATA(t543) = |type|.
              DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t544.
              IF t522->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t522->zlnt_json_ownkeys_70e5fd461788->put( p0 = t543 p1 = t544 ).
              ENDIF.
              DATA(t545) = |asInclude|.
              DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t546.
              IF t522->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t522->zlnt_json_ownkeys_70e5fd461788->put( p0 = t545 p1 = t546 ).
              ENDIF.
              t521->load( ).
              APPEND t522 TO t521->items.
              t521->save( ).
            ENDIF.
            DATA(t547) = VALUE abap_bool( ).
            DATA(t548) = VALUE abap_bool( ).
            DATA(t549) = VALUE abap_bool( ).
            DATA(t550) = VALUE string( ).
            DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t551.
            DATA(t552) = t111.
            t551 = t552->fieldname.
            t550 = t551->value.
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
            DATA(t558) = abap_false.
            t548 = xsdbool( t549 = t558 ).
            t547 = t548.
            IF t548 = abap_false.
              DATA(t559) = VALUE abap_bool( ).
              DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t560.
              DATA(t561) = t111.
              t560 = t561->fieldname.
              DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t562.
              DATA(t563) = abap_true.
              IF t563 = abap_true.
                DATA(t564) = |.INCLU--AP|.
                DATA(t565) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t565->has = abap_true.
                t565->value = t564.
                t562 = t565.
              ELSE.
                DATA t566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t566.
                t562 = t566.
              ENDIF.
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
              DATA t570 TYPE REF TO zcl_lnt_structure_type.
              CLEAR t570.
              DATA t571 TYPE REF TO zcl_lnt_structure_type.
              CLEAR t571.
              DATA(t572) = t487.
              t571 ?= t572.
              t570 = t571.
              DATA t573 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t573.
              DATA(t574) = t570.
              t573 = t574->components.
              t569 = t573.
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
                DATA(t584) = t103.
                DATA t585 TYPE REF TO zcl_lnt_istructure_component.
                CLEAR t585.
                DATA(t586) = VALUE string( ).
                DATA(t587) = VALUE string( ).
                DATA(t588) = t575.
                t587 = t588->zlnt_view_read_sr_dae473e680bd( ).
                t586 = t587.
                DATA t589 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t589.
                DATA t590 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t590.
                DATA(t591) = t575.
                t590 = t591->zlnt_view_read_sr_455340cd1e80( ).
                t589 = t590.
                DATA t592 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t592.
                DATA t593 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t593.
                t592 = t593.
                DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t594.
                DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t595.
                t594 = t595.
                t585 = NEW zcl_lnt_istructure_component( i_name = t586 i_type_9913 = t589 i_as_include = t592 i_suffix = t594 ).
                CREATE OBJECT t585->zlnt_view_ownkeys_b0e8086400eb.
                t585->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t596.
                IF t585->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t585->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t596 ).
                ENDIF.
                DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t597.
                IF t585->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t585->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t597 ).
                ENDIF.
                CREATE OBJECT t585->zlnt_json_ownkeys_70e5fd461788.
                t585->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t598) = |name|.
                DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t599.
                IF t585->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t585->zlnt_json_ownkeys_70e5fd461788->put( p0 = t598 p1 = t599 ).
                ENDIF.
                DATA(t600) = |type|.
                DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t601.
                IF t585->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t585->zlnt_json_ownkeys_70e5fd461788->put( p0 = t600 p1 = t601 ).
                ENDIF.
                t584->load( ).
                APPEND t585 TO t584->items.
                t584->save( ).
              ENDDO.
            ELSE.
              DATA(t602) = VALUE abap_bool( ).
              DATA(t603) = VALUE string( ).
              DATA t604 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t604.
              DATA(t605) = t111.
              t604 = t605->fieldname.
              t603 = t604->value.
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
                DATA(t612) = VALUE string( ).
                DATA(t613) = VALUE string( ).
                DATA(t614) = VALUE string( ).
                DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t615.
                DATA(t616) = t111.
                t615 = t616->fieldname.
                t614 = t615->value.
                t613 = t614.
                DATA(t617) = VALUE string( ).
                DATA(t618) = t613.
                DATA(t619) = VALUE i( ).
                DATA(t620) = |.INCLU-|.
                DATA(t621) = strlen( t620 ).
                t619 = t621.
                DATA(t622) = VALUE i( ).
                DATA(t623) = t613.
                DATA(t624) = strlen( t623 ).
                t622 = t624.
                DATA(t625) = strlen( t618 ).
                t619 = COND i( WHEN t619 < 0 THEN 0 WHEN t619 > t625 THEN t625 ELSE t619 ).
                t622 = COND i( WHEN t622 < 0 THEN 0 WHEN t622 > t625 THEN t625 ELSE t622 ).
                IF t619 > t622.
                  t625 = t619.
                  t619 = t622.
                  t622 = t625.
                ENDIF.
                t625 = t622 - t619.
                t617 = t618+t619(t625).
                t612 = t617.
                t611 = t612.
                DATA t626 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t626.
                DATA t627 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t627.
                DATA t628 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t628.
                DATA(t629) = t487.
                t628 ?= t629.
                t627 = t628.
                DATA t630 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t630.
                DATA(t631) = t627.
                t630 = t631->components.
                t626 = t630.
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
                  DATA(t641) = t103.
                  DATA t642 TYPE REF TO zcl_lnt_istructure_component.
                  CLEAR t642.
                  DATA(t643) = VALUE string( ).
                  DATA(t644) = VALUE string( ).
                  DATA(t645) = VALUE string( ).
                  DATA(t646) = t632.
                  t645 = t646->zlnt_view_read_sr_dae473e680bd( ).
                  DATA(t647) = t611.
                  DATA(t648) = strlen( t645 ).
                  t644 = |{ t645 }{ t647 }|.
                  t643 = t644.
                  DATA t649 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t649.
                  DATA t650 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t650.
                  DATA(t651) = t632.
                  t650 = t651->zlnt_view_read_sr_455340cd1e80( ).
                  t649 = t650.
                  DATA t652 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t652.
                  DATA t653 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t653.
                  t652 = t653.
                  DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t654.
                  DATA t655 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t655.
                  t654 = t655.
                  t642 = NEW zcl_lnt_istructure_component( i_name = t643 i_type_9913 = t649 i_as_include = t652 i_suffix = t654 ).
                  CREATE OBJECT t642->zlnt_view_ownkeys_b0e8086400eb.
                  t642->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t656.
                  IF t642->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t656 ).
                  ENDIF.
                  DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t657.
                  IF t642->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t657 ).
                  ENDIF.
                  CREATE OBJECT t642->zlnt_json_ownkeys_70e5fd461788.
                  t642->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t658) = |name|.
                  DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t659.
                  IF t642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t642->zlnt_json_ownkeys_70e5fd461788->put( p0 = t658 p1 = t659 ).
                  ENDIF.
                  DATA(t660) = |type|.
                  DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t661.
                  IF t642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t642->zlnt_json_ownkeys_70e5fd461788->put( p0 = t660 p1 = t661 ).
                  ENDIF.
                  t641->load( ).
                  APPEND t642 TO t641->items.
                  t641->save( ).
                ENDDO.
              ENDIF.
            ENDIF.
          ELSE.
            DATA(t662) = VALUE abap_bool( ).
            DATA(t663) = VALUE abap_bool( ).
            DATA(t664) = VALUE abap_bool( ).
            DATA(t665) = VALUE string( ).
            DATA t666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t666.
            DATA(t667) = t111.
            t666 = t667->precfield.
            t665 = t666->value.
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
              DATA t675 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t675.
              DATA(t676) = t111.
              t675 = t676->precfield.
              t674 = t675->value.
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
              DATA(t682) = VALUE abap_bool( ).
              DATA(t683) = t487.
              t682 = xsdbool( t683 IS BOUND AND t683 IS INSTANCE OF zcl_lnt_unknown_type ).
              t662 = t682.
            ENDIF.
            IF t662 = abap_true.
              CONTINUE.
            ELSE.
              DATA(t684) = VALUE abap_bool( ).
              DATA(t685) = t487.
              t684 = xsdbool( t685 IS BOUND AND t685 IS INSTANCE OF zcl_lnt_unknown_type ).
              IF t684 = abap_true.
                DATA t686 TYPE REF TO zcl_lnt_unknown_type.
                CLEAR t686.
                DATA(t687) = t487.
                t686 ?= t687.
                result = t686.
                RETURN.
              ELSE.
                DATA(t688) = VALUE abap_bool( ).
                DATA(t689) = t487.
                t688 = xsdbool( t689 IS BOUND AND t689 IS INSTANCE OF zcl_lnt_void_type ).
                IF t688 = abap_true.
                  DATA t690 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t690.
                  DATA(t691) = t487.
                  t690 ?= t691.
                  result = t690.
                  RETURN.
                ELSE.
                  DATA(t692) = t103.
                  DATA t693 TYPE REF TO zcl_lnt_istructure_component.
                  CLEAR t693.
                  DATA(t694) = VALUE string( ).
                  DATA(t695) = VALUE string( ).
                  DATA t696 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t696.
                  DATA(t697) = t111.
                  t696 = t697->fieldname.
                  t695 = t696->value.
                  t694 = t695.
                  DATA t698 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t698.
                  DATA(t699) = t487.
                  t698 = t699.
                  DATA t700 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t700.
                  DATA t701 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t701.
                  t700 = t701.
                  DATA t702 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t702.
                  DATA t703 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t703.
                  t702 = t703.
                  t693 = NEW zcl_lnt_istructure_component( i_name = t694 i_type_9913 = t698 i_as_include = t700 i_suffix = t702 ).
                  CREATE OBJECT t693->zlnt_view_ownkeys_b0e8086400eb.
                  t693->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t704.
                  IF t693->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t693->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t704 ).
                  ENDIF.
                  DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t705.
                  IF t693->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t693->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t705 ).
                  ENDIF.
                  CREATE OBJECT t693->zlnt_json_ownkeys_70e5fd461788.
                  t693->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t706) = |name|.
                  DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t707.
                  IF t693->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t693->zlnt_json_ownkeys_70e5fd461788->put( p0 = t706 p1 = t707 ).
                  ENDIF.
                  DATA(t708) = |type|.
                  DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t709.
                  IF t693->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t693->zlnt_json_ownkeys_70e5fd461788->put( p0 = t708 p1 = t709 ).
                  ENDIF.
                  t692->load( ).
                  APPEND t693 TO t692->items.
                  t692->save( ).
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ELSE.
          DATA(t710) = VALUE abap_bool( ).
          DATA(t711) = t116.
          DATA(t712) = |S|.
          t710 = xsdbool( t711 = t712 ).
          IF t710 = abap_true.
            DATA t713 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t713.
            DATA t714 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t714.
            DATA t715 TYPE REF TO zcl_lnt_ddic.
            CLEAR t715.
            DATA(t716) = t105.
            t715 = t716.
            DATA t717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t717.
            DATA t718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t718.
            DATA(t719) = t111.
            t718 = t719->rollname_a788.
            t717 = t718.
            DATA t720 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t720.
            DATA(t721) = VALUE abap_bool( ).
            DATA t722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t722.
            DATA(t723) = t717.
            t722 = t723.
            DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t724.
            DATA t725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t725.
            t724 = t725.
            DATA(t726) = VALUE abap_bool( ).
            DATA(t727) = t722.
            IF t727 IS INITIAL.
              t726 = abap_true.
            ELSEIF t727->has = abap_false.
              t726 = abap_true.
            ENDIF.
            t721 = t726.
            IF t721 = abap_true.
              DATA t728 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t728.
              DATA t729 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t729.
              DATA t730 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t730.
              DATA(t731) = |undefined, lookupTableOrView|.
              DATA t732 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t732.
              t730 = NEW zcl_lnt_unknown_type( i_error = t731 i_qualified_name = t732 ).
              t729 = t730.
              DATA t733 TYPE REF TO zif_lnt_object.
              CLEAR t733.
              DATA t734 TYPE REF TO zif_lnt_object.
              CLEAR t734.
              t733 = t734.
              t728 = NEW zcl_lnt_ilookup_result( i_type_9913 = t729 i_object_19cd = t733 ).
              CREATE OBJECT t728->zlnt_view_ownkeys_b0e8086400eb.
              t728->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t735.
              IF t728->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t728->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t735 ).
              ENDIF.
              CREATE OBJECT t728->zlnt_json_ownkeys_70e5fd461788.
              t728->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t736) = |type|.
              DATA t737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t737.
              IF t728->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t728->zlnt_json_ownkeys_70e5fd461788->put( p0 = t736 p1 = t737 ).
              ENDIF.
              t720 = t728.
            ELSE.
              DATA t738 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t738.
              DATA t739 TYPE REF TO zcl_lnt_table.
              CLEAR t739.
              DATA t740 TYPE REF TO zcl_lnt_table.
              CLEAR t740.
              DATA t741 TYPE REF TO zif_lnt_object.
              CLEAR t741.
              DATA t742 TYPE REF TO zif_lnt_registry.
              CLEAR t742.
              DATA(t743) = t715.
              t742 = t743->reg.
              DATA t744 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t744.
              DATA(t745) = abap_true.
              IF t745 = abap_true.
                DATA(t746) = |TABL|.
                DATA(t747) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t747->has = abap_true.
                t747->value = t746.
                t744 = t747.
              ELSE.
                DATA t748 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t748.
                t744 = t748.
              ENDIF.
              DATA t749 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t749.
              DATA(t750) = abap_true.
              IF t750 = abap_true.
                DATA(t751) = VALUE string( ).
                DATA(t752) = t717.
                t751 = t752->value.
                DATA(t753) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t753->has = abap_true.
                t753->value = t751.
                t749 = t753.
              ELSE.
                DATA t754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t754.
                t749 = t754.
              ENDIF.
              t741 = t742->get_object( i_type_9913 = t744 i_name = t749 ).
              DATA t755 TYPE REF TO object.
              CLEAR t755.
              t755 = t741.
              t740 ?= t755.
              t739 = t740.
              DATA t756 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t756.
              DATA(t757) = VALUE abap_bool( ).
              DATA(t758) = t739.
              t757 = xsdbool( t758 IS BOUND ).
              IF t757 = abap_true.
                DATA t759 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t759.
                DATA t760 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t760.
                DATA t761 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t761.
                DATA t762 TYPE REF TO zcl_lnt_table.
                CLEAR t762.
                DATA(t763) = t739.
                t762 = t763.
                DATA t764 TYPE REF TO zif_lnt_registry.
                CLEAR t764.
                DATA(t765) = t715.
                t764 = t765->reg.
                DATA t766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t766.
                DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t767.
                t761 = t762->parse_type( i_reg_f149 = t764 i_data_element = t766 i_description = t767 ).
                t760 = t761.
                DATA t768 TYPE REF TO zif_lnt_object.
                CLEAR t768.
                DATA t769 TYPE REF TO zcl_lnt_table.
                CLEAR t769.
                DATA(t770) = t739.
                t769 = t770.
                t768 = t769.
                t759 = NEW zcl_lnt_ilookup_result( i_type_9913 = t760 i_object_19cd = t768 ).
                CREATE OBJECT t759->zlnt_view_ownkeys_b0e8086400eb.
                t759->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t771.
                IF t759->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t759->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t771 ).
                ENDIF.
                DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t772.
                IF t759->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t759->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t772 ).
                ENDIF.
                CREATE OBJECT t759->zlnt_json_ownkeys_70e5fd461788.
                t759->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t773) = |type|.
                DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t774.
                IF t759->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t759->zlnt_json_ownkeys_70e5fd461788->put( p0 = t773 p1 = t774 ).
                ENDIF.
                DATA(t775) = |object|.
                DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t776.
                IF t759->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t759->zlnt_json_ownkeys_70e5fd461788->put( p0 = t775 p1 = t776 ).
                ENDIF.
                t756 = t759.
              ELSE.
                DATA t777 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t777.
                DATA t778 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t778.
                DATA t779 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t779.
                DATA(t780) = t715.
                DATA t781 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t781.
                DATA(t782) = abap_true.
                IF t782 = abap_true.
                  DATA(t783) = VALUE string( ).
                  DATA(t784) = t717.
                  t783 = t784->value.
                  DATA(t785) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t785->has = abap_true.
                  t785->value = t783.
                  t781 = t785.
                ELSE.
                  DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t786.
                  t781 = t786.
                ENDIF.
                t779 = t780->lookup_ddls( i_name = t781 ).
                t778 = t779.
                DATA t787 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t787.
                DATA(t788) = VALUE abap_bool( ).
                DATA(t789) = t778.
                t788 = xsdbool( t789 IS BOUND ).
                IF t788 = abap_true.
                  DATA t790 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t790.
                  DATA(t791) = t778.
                  t790 = t791.
                  t787 = t790.
                ELSE.
                  DATA t792 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t792.
                  DATA t793 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t793.
                  DATA t794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t794.
                  DATA(t795) = abap_true.
                  IF t795 = abap_true.
                    DATA(t796) = VALUE string( ).
                    DATA(t797) = t717.
                    t796 = t797->value.
                    DATA(t798) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t798->has = abap_true.
                    t798->value = t796.
                    t794 = t798.
                  ELSE.
                    DATA t799 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t799.
                    t794 = t799.
                  ENDIF.
                  t793 = t794.
                  DATA t800 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t800.
                  DATA(t801) = VALUE abap_bool( ).
                  DATA t802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t802.
                  DATA(t803) = t793.
                  t802 = t803.
                  DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t804.
                  DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t805.
                  t804 = t805.
                  DATA(t806) = VALUE abap_bool( ).
                  DATA(t807) = t802.
                  IF t807 IS INITIAL.
                    t806 = abap_true.
                  ELSEIF t807->has = abap_false.
                    t806 = abap_true.
                  ENDIF.
                  t801 = t806.
                  IF t801 = abap_true.
                    DATA t808 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t808.
                    DATA t809 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t809.
                    DATA t810 TYPE REF TO zcl_lnt_unknown_type.
                    CLEAR t810.
                    DATA(t811) = |undefined, lookupView|.
                    DATA t812 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t812.
                    t810 = NEW zcl_lnt_unknown_type( i_error = t811 i_qualified_name = t812 ).
                    t809 = t810.
                    DATA t813 TYPE REF TO zif_lnt_object.
                    CLEAR t813.
                    DATA t814 TYPE REF TO zif_lnt_object.
                    CLEAR t814.
                    t813 = t814.
                    t808 = NEW zcl_lnt_ilookup_result( i_type_9913 = t809 i_object_19cd = t813 ).
                    CREATE OBJECT t808->zlnt_view_ownkeys_b0e8086400eb.
                    t808->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t815.
                    IF t808->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t808->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t815 ).
                    ENDIF.
                    CREATE OBJECT t808->zlnt_json_ownkeys_70e5fd461788.
                    t808->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t816) = |type|.
                    DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t817.
                    IF t808->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t808->zlnt_json_ownkeys_70e5fd461788->put( p0 = t816 p1 = t817 ).
                    ENDIF.
                    t800 = t808.
                  ELSE.
                    DATA t818 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t818.
                    DATA t819 TYPE REF TO zcl_lnt_table.
                    CLEAR t819.
                    DATA t820 TYPE REF TO zcl_lnt_table.
                    CLEAR t820.
                    DATA t821 TYPE REF TO zif_lnt_object.
                    CLEAR t821.
                    DATA t822 TYPE REF TO zif_lnt_registry.
                    CLEAR t822.
                    DATA(t823) = t715.
                    t822 = t823->reg.
                    DATA t824 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t824.
                    DATA(t825) = abap_true.
                    IF t825 = abap_true.
                      DATA(t826) = |VIEW|.
                      DATA(t827) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t827->has = abap_true.
                      t827->value = t826.
                      t824 = t827.
                    ELSE.
                      DATA t828 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t828.
                      t824 = t828.
                    ENDIF.
                    DATA t829 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t829.
                    DATA(t830) = abap_true.
                    IF t830 = abap_true.
                      DATA(t831) = VALUE string( ).
                      DATA(t832) = t793.
                      t831 = t832->value.
                      DATA(t833) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t833->has = abap_true.
                      t833->value = t831.
                      t829 = t833.
                    ELSE.
                      DATA t834 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t834.
                      t829 = t834.
                    ENDIF.
                    t821 = t822->get_object( i_type_9913 = t824 i_name = t829 ).
                    DATA t835 TYPE REF TO object.
                    CLEAR t835.
                    t835 = t821.
                    t820 ?= t835.
                    t819 = t820.
                    DATA t836 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t836.
                    DATA(t837) = VALUE abap_bool( ).
                    DATA(t838) = t819.
                    t837 = xsdbool( t838 IS BOUND ).
                    IF t837 = abap_true.
                      DATA t839 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t839.
                      DATA t840 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t840.
                      DATA t841 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t841.
                      DATA t842 TYPE REF TO zcl_lnt_table.
                      CLEAR t842.
                      DATA(t843) = t819.
                      t842 = t843.
                      DATA t844 TYPE REF TO zif_lnt_registry.
                      CLEAR t844.
                      DATA(t845) = t715.
                      t844 = t845->reg.
                      DATA t846 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t846.
                      DATA t847 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t847.
                      t841 = t842->parse_type( i_reg_f149 = t844 i_data_element = t846 i_description = t847 ).
                      t840 = t841.
                      DATA t848 TYPE REF TO zif_lnt_object.
                      CLEAR t848.
                      DATA t849 TYPE REF TO zcl_lnt_table.
                      CLEAR t849.
                      DATA(t850) = t819.
                      t849 = t850.
                      t848 = t849.
                      t839 = NEW zcl_lnt_ilookup_result( i_type_9913 = t840 i_object_19cd = t848 ).
                      CREATE OBJECT t839->zlnt_view_ownkeys_b0e8086400eb.
                      t839->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t851.
                      IF t839->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t839->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t851 ).
                      ENDIF.
                      DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t852.
                      IF t839->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t839->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t852 ).
                      ENDIF.
                      CREATE OBJECT t839->zlnt_json_ownkeys_70e5fd461788.
                      t839->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t853) = |type|.
                      DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t854.
                      IF t839->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t839->zlnt_json_ownkeys_70e5fd461788->put( p0 = t853 p1 = t854 ).
                      ENDIF.
                      DATA(t855) = |object|.
                      DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t856.
                      IF t839->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t839->zlnt_json_ownkeys_70e5fd461788->put( p0 = t855 p1 = t856 ).
                      ENDIF.
                      t836 = t839.
                    ELSE.
                      DATA t857 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t857.
                      DATA(t858) = VALUE abap_bool( ).
                      DATA t859 TYPE REF TO zif_lnt_registry.
                      CLEAR t859.
                      DATA(t860) = t715.
                      t859 = t860->reg.
                      DATA(t861) = VALUE string( ).
                      DATA(t862) = t793.
                      t861 = t862->value.
                      t858 = t859->in_error_namespace( i_name = t861 ).
                      IF t858 = abap_true.
                        DATA t863 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t863.
                        DATA t864 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t864.
                        DATA t865 TYPE REF TO zcl_lnt_unknown_type.
                        CLEAR t865.
                        DATA(t866) = VALUE string( ).
                        DATA(t867) = VALUE string( ).
                        DATA(t868) = t793.
                        t867 = t868->value.
                        DATA(t869) = | not found, lookupView|.
                        DATA(t870) = strlen( t867 ).
                        t866 = |{ t867 }{ t869 }|.
                        DATA t871 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t871.
                        t865 = NEW zcl_lnt_unknown_type( i_error = t866 i_qualified_name = t871 ).
                        t864 = t865.
                        DATA t872 TYPE REF TO zif_lnt_object.
                        CLEAR t872.
                        DATA t873 TYPE REF TO zif_lnt_object.
                        CLEAR t873.
                        t872 = t873.
                        t863 = NEW zcl_lnt_ilookup_result( i_type_9913 = t864 i_object_19cd = t872 ).
                        CREATE OBJECT t863->zlnt_view_ownkeys_b0e8086400eb.
                        t863->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t874.
                        IF t863->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t863->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t874 ).
                        ENDIF.
                        CREATE OBJECT t863->zlnt_json_ownkeys_70e5fd461788.
                        t863->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t875) = |type|.
                        DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t876.
                        IF t863->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t863->zlnt_json_ownkeys_70e5fd461788->put( p0 = t875 p1 = t876 ).
                        ENDIF.
                        t857 = t863.
                      ELSE.
                        DATA t877 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t877.
                        DATA t878 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t878.
                        DATA t879 TYPE REF TO zcl_lnt_void_type.
                        CLEAR t879.
                        DATA t880 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t880.
                        DATA(t881) = abap_true.
                        IF t881 = abap_true.
                          DATA(t882) = VALUE string( ).
                          DATA(t883) = t793.
                          t882 = t883->value.
                          DATA(t884) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t884->has = abap_true.
                          t884->value = t882.
                          t880 = t884.
                        ELSE.
                          DATA t885 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t885.
                          t880 = t885.
                        ENDIF.
                        DATA t886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t886.
                        t879 = zcl_lnt_void_type=>get_db65( i_voided = t880 i_qualified_name = t886 ).
                        t878 = t879.
                        DATA t887 TYPE REF TO zif_lnt_object.
                        CLEAR t887.
                        DATA t888 TYPE REF TO zif_lnt_object.
                        CLEAR t888.
                        t887 = t888.
                        t877 = NEW zcl_lnt_ilookup_result( i_type_9913 = t878 i_object_19cd = t887 ).
                        CREATE OBJECT t877->zlnt_view_ownkeys_b0e8086400eb.
                        t877->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t889.
                        IF t877->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t877->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t889 ).
                        ENDIF.
                        CREATE OBJECT t877->zlnt_json_ownkeys_70e5fd461788.
                        t877->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t890) = |type|.
                        DATA t891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t891.
                        IF t877->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t877->zlnt_json_ownkeys_70e5fd461788->put( p0 = t890 p1 = t891 ).
                        ENDIF.
                        t857 = t877.
                      ENDIF.
                      t836 = t857.
                    ENDIF.
                    t818 = t836.
                    t800 = t818.
                  ENDIF.
                  t792 = t800.
                  t787 = t792.
                ENDIF.
                t777 = t787.
                t756 = t777.
              ENDIF.
              t738 = t756.
              t720 = t738.
            ENDIF.
            t714 = t720.
            t713 = t714.
            DATA(t892) = t103.
            DATA t893 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t893.
            DATA(t894) = VALUE string( ).
            DATA(t895) = VALUE string( ).
            DATA t896 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t896.
            DATA(t897) = t111.
            t896 = t897->fieldname.
            t895 = t896->value.
            t894 = t895.
            DATA t898 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t898.
            DATA t899 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t899.
            DATA(t900) = t713.
            t899 = t900->zlnt_view_read_sr_9be58e2d4893( ).
            t898 = t899.
            DATA t901 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t901.
            DATA t902 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t902.
            t901 = t902.
            DATA t903 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t903.
            DATA t904 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t904.
            t903 = t904.
            t893 = NEW zcl_lnt_istructure_component( i_name = t894 i_type_9913 = t898 i_as_include = t901 i_suffix = t903 ).
            CREATE OBJECT t893->zlnt_view_ownkeys_b0e8086400eb.
            t893->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t905.
            IF t893->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t893->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t905 ).
            ENDIF.
            DATA t906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t906.
            IF t893->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t893->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t906 ).
            ENDIF.
            CREATE OBJECT t893->zlnt_json_ownkeys_70e5fd461788.
            t893->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t907) = |name|.
            DATA t908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t908.
            IF t893->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t893->zlnt_json_ownkeys_70e5fd461788->put( p0 = t907 p1 = t908 ).
            ENDIF.
            DATA(t909) = |type|.
            DATA t910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t910.
            IF t893->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t893->zlnt_json_ownkeys_70e5fd461788->put( p0 = t909 p1 = t910 ).
            ENDIF.
            t892->load( ).
            APPEND t893 TO t892->items.
            t892->save( ).
            DATA(t911) = VALUE abap_bool( ).
            DATA t912 TYPE REF TO zif_lnt_object.
            CLEAR t912.
            DATA(t913) = t713.
            t912 = t913->zlnt_view_read_sr_2de0200e6505( ).
            t911 = xsdbool( t912 IS BOUND ).
            IF t911 = abap_true.
              DATA(t914) = t101.
              DATA t915 TYPE REF TO zcl_lnt_iobject_and_token.
              CLEAR t915.
              DATA t916 TYPE REF TO zif_lnt_object.
              CLEAR t916.
              DATA t917 TYPE REF TO zif_lnt_object.
              CLEAR t917.
              DATA(t918) = abap_true.
              IF t918 = abap_true.
                DATA t919 TYPE REF TO zif_lnt_object.
                CLEAR t919.
                DATA t920 TYPE REF TO zif_lnt_object.
                CLEAR t920.
                DATA(t921) = t713.
                t920 = t921->zlnt_view_read_sr_2de0200e6505( ).
                t919 = t920.
                t917 = t919.
              ELSE.
                DATA t922 TYPE REF TO zif_lnt_object.
                CLEAR t922.
                t917 = t922.
              ENDIF.
              t916 = t917.
              DATA t923 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t923.
              DATA t924 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t924.
              t923 = t924.
              DATA t925 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t925.
              DATA t926 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t926.
              t925 = t926.
              t915 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t916 i_token = t923 i_filename = t925 ).
              CREATE OBJECT t915->zlnt_view_ownkeys_b0e8086400eb.
              t915->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t927.
              IF t915->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t915->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t927 ).
              ENDIF.
              CREATE OBJECT t915->zlnt_json_ownkeys_70e5fd461788.
              t915->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t928) = |object|.
              DATA t929 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t929.
              IF t915->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t915->zlnt_json_ownkeys_70e5fd461788->put( p0 = t928 p1 = t929 ).
              ENDIF.
              t914->load( ).
              APPEND t915 TO t914->items.
              t914->save( ).
            ENDIF.
          ELSE.
            DATA(t930) = VALUE abap_bool( ).
            DATA(t931) = t116.
            DATA(t932) = |R|.
            t930 = xsdbool( t931 = t932 ).
            IF t930 = abap_true.
              DATA(t933) = VALUE abap_bool( ).
              DATA t934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t934.
              DATA t935 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t935.
              DATA(t936) = t111.
              t935 = t936->rollname_a788.
              t934 = t935.
              DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t937.
              DATA t938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t938.
              t937 = t938.
              DATA(t939) = VALUE abap_bool( ).
              DATA(t940) = t934.
              IF t940 IS INITIAL.
                t939 = abap_true.
              ELSEIF t940->has = abap_false.
                t939 = abap_true.
              ENDIF.
              t933 = t939.
              IF t933 = abap_true.
                DATA t941 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                CLEAR t941.
                DATA t942 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                CLEAR t942.
                DATA t943 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t943.
                DATA(t944) = abap_true.
                IF t944 = abap_true.
                  DATA(t945) = |Expected ROLLNAME|.
                  DATA(t946) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t946->has = abap_true.
                  t946->value = t945.
                  t943 = t946.
                ELSE.
                  DATA t947 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t947.
                  t943 = t947.
                ENDIF.
                t942 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t943 ).
                t941 = NEW #( ).
                t941->payload = t942.
                CLEAR t941->source_value.
                IF t942 IS BOUND.
                  DATA t948 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t948.
                  DATA t949 TYPE REF TO object.
                  CLEAR t949.
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
                ENDIF.
                RAISE EXCEPTION t941.
              ENDIF.
              DATA(t950) = VALUE abap_bool( ).
              DATA(t951) = VALUE string( ).
              DATA t952 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t952.
              DATA(t953) = t111.
              t952 = t953->rollname_a788.
              t951 = t952->value.
              DATA(t954) = |DATA|.
              t950 = xsdbool( t951 = t954 ).
              IF t950 = abap_true.
                DATA(t955) = t103.
                DATA t956 TYPE REF TO zcl_lnt_istructure_component.
                CLEAR t956.
                DATA(t957) = VALUE string( ).
                DATA(t958) = VALUE string( ).
                DATA t959 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t959.
                DATA(t960) = t111.
                t959 = t960->fieldname.
                t958 = t959->value.
                t957 = t958.
                DATA t961 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t961.
                DATA t962 TYPE REF TO zcl_lnt_data_reference.
                CLEAR t962.
                DATA t963 TYPE REF TO zcl_lnt_any_type.
                CLEAR t963.
                DATA t964 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t964.
                t963 = zcl_lnt_any_type=>get_db65( i_input_967e = t964 ).
                DATA t965 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t965.
                t962 = NEW zcl_lnt_data_reference( i_type_9913 = t963 i_qualified_name = t965 ).
                t961 = t962.
                DATA t966 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t966.
                DATA t967 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t967.
                t966 = t967.
                DATA t968 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t968.
                DATA t969 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t969.
                t968 = t969.
                t956 = NEW zcl_lnt_istructure_component( i_name = t957 i_type_9913 = t961 i_as_include = t966 i_suffix = t968 ).
                CREATE OBJECT t956->zlnt_view_ownkeys_b0e8086400eb.
                t956->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t970 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t970.
                IF t956->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t956->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t970 ).
                ENDIF.
                DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t971.
                IF t956->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t956->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t971 ).
                ENDIF.
                CREATE OBJECT t956->zlnt_json_ownkeys_70e5fd461788.
                t956->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t972) = |name|.
                DATA t973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t973.
                IF t956->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t956->zlnt_json_ownkeys_70e5fd461788->put( p0 = t972 p1 = t973 ).
                ENDIF.
                DATA(t974) = |type|.
                DATA t975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t975.
                IF t956->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t956->zlnt_json_ownkeys_70e5fd461788->put( p0 = t974 p1 = t975 ).
                ENDIF.
                t955->load( ).
                APPEND t956 TO t955->items.
                t955->save( ).
              ELSE.
                DATA(t976) = VALUE abap_bool( ).
                DATA(t977) = VALUE string( ).
                DATA t978 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t978.
                DATA(t979) = t111.
                t978 = t979->rollname_a788.
                t977 = t978->value.
                DATA(t980) = |OBJECT|.
                t976 = xsdbool( t977 = t980 ).
                IF t976 = abap_true.
                  DATA(t981) = t103.
                  DATA t982 TYPE REF TO zcl_lnt_istructure_component.
                  CLEAR t982.
                  DATA(t983) = VALUE string( ).
                  DATA(t984) = VALUE string( ).
                  DATA t985 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t985.
                  DATA(t986) = t111.
                  t985 = t986->fieldname.
                  t984 = t985->value.
                  t983 = t984.
                  DATA t987 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t987.
                  DATA t988 TYPE REF TO zcl_lnt_gnrc_objct_rfrnc_typ.
                  CLEAR t988.
                  DATA t989 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t989.
                  t988 = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t989 ).
                  t987 = t988.
                  DATA t990 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t990.
                  DATA t991 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t991.
                  t990 = t991.
                  DATA t992 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t992.
                  DATA t993 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t993.
                  t992 = t993.
                  t982 = NEW zcl_lnt_istructure_component( i_name = t983 i_type_9913 = t987 i_as_include = t990 i_suffix = t992 ).
                  CREATE OBJECT t982->zlnt_view_ownkeys_b0e8086400eb.
                  t982->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t994.
                  IF t982->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t982->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t994 ).
                  ENDIF.
                  DATA t995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t995.
                  IF t982->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t982->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t995 ).
                  ENDIF.
                  CREATE OBJECT t982->zlnt_json_ownkeys_70e5fd461788.
                  t982->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t996) = |name|.
                  DATA t997 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t997.
                  IF t982->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t982->zlnt_json_ownkeys_70e5fd461788->put( p0 = t996 p1 = t997 ).
                  ENDIF.
                  DATA(t998) = |type|.
                  DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t999.
                  IF t982->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t982->zlnt_json_ownkeys_70e5fd461788->put( p0 = t998 p1 = t999 ).
                  ENDIF.
                  t981->load( ).
                  APPEND t982 TO t981->items.
                  t981->save( ).
                ELSE.
                  DATA(t1000) = VALUE abap_bool( ).
                  DATA t1001 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1001.
                  DATA(t1002) = t111.
                  t1001 = t1002->reftype.
                  DATA t1003 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1003.
                  DATA(t1004) = abap_true.
                  IF t1004 = abap_true.
                    DATA(t1005) = |S|.
                    DATA(t1006) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1006->has = abap_true.
                    t1006->value = t1005.
                    t1003 = t1006.
                  ELSE.
                    DATA t1007 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1007.
                    t1003 = t1007.
                  ENDIF.
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
                    DATA t1011 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t1011.
                    DATA t1012 TYPE REF TO zcl_lnt_ddic.
                    CLEAR t1012.
                    DATA(t1013) = t105.
                    t1012 = t1013.
                    DATA t1014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1014.
                    DATA t1015 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1015.
                    DATA(t1016) = abap_true.
                    IF t1016 = abap_true.
                      DATA(t1017) = VALUE string( ).
                      DATA t1018 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1018.
                      DATA(t1019) = t111.
                      t1018 = t1019->rollname_a788.
                      t1017 = t1018->value.
                      DATA(t1020) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1020->has = abap_true.
                      t1020->value = t1017.
                      t1015 = t1020.
                    ELSE.
                      DATA t1021 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1021.
                      t1015 = t1021.
                    ENDIF.
                    t1014 = t1015.
                    DATA t1022 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t1022.
                    DATA(t1023) = VALUE abap_bool( ).
                    DATA t1024 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1024.
                    DATA(t1025) = t1014.
                    t1024 = t1025.
                    DATA t1026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1026.
                    DATA t1027 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1027.
                    t1026 = t1027.
                    DATA(t1028) = VALUE abap_bool( ).
                    DATA(t1029) = t1024.
                    IF t1029 IS INITIAL.
                      t1028 = abap_true.
                    ELSEIF t1029->has = abap_false.
                      t1028 = abap_true.
                    ENDIF.
                    t1023 = t1028.
                    IF t1023 = abap_true.
                      DATA t1030 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1030.
                      DATA t1031 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t1031.
                      DATA t1032 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t1032.
                      DATA(t1033) = |undefined, lookupTableOrView|.
                      DATA t1034 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1034.
                      t1032 = NEW zcl_lnt_unknown_type( i_error = t1033 i_qualified_name = t1034 ).
                      t1031 = t1032.
                      DATA t1035 TYPE REF TO zif_lnt_object.
                      CLEAR t1035.
                      DATA t1036 TYPE REF TO zif_lnt_object.
                      CLEAR t1036.
                      t1035 = t1036.
                      t1030 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1031 i_object_19cd = t1035 ).
                      CREATE OBJECT t1030->zlnt_view_ownkeys_b0e8086400eb.
                      t1030->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1037.
                      IF t1030->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1030->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1037 ).
                      ENDIF.
                      CREATE OBJECT t1030->zlnt_json_ownkeys_70e5fd461788.
                      t1030->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t1038) = |type|.
                      DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1039.
                      IF t1030->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1030->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1038 p1 = t1039 ).
                      ENDIF.
                      t1022 = t1030.
                    ELSE.
                      DATA t1040 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1040.
                      DATA t1041 TYPE REF TO zcl_lnt_table.
                      CLEAR t1041.
                      DATA t1042 TYPE REF TO zcl_lnt_table.
                      CLEAR t1042.
                      DATA t1043 TYPE REF TO zif_lnt_object.
                      CLEAR t1043.
                      DATA t1044 TYPE REF TO zif_lnt_registry.
                      CLEAR t1044.
                      DATA(t1045) = t1012.
                      t1044 = t1045->reg.
                      DATA t1046 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1046.
                      DATA(t1047) = abap_true.
                      IF t1047 = abap_true.
                        DATA(t1048) = |TABL|.
                        DATA(t1049) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1049->has = abap_true.
                        t1049->value = t1048.
                        t1046 = t1049.
                      ELSE.
                        DATA t1050 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1050.
                        t1046 = t1050.
                      ENDIF.
                      DATA t1051 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1051.
                      DATA(t1052) = abap_true.
                      IF t1052 = abap_true.
                        DATA(t1053) = VALUE string( ).
                        DATA(t1054) = t1014.
                        t1053 = t1054->value.
                        DATA(t1055) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1055->has = abap_true.
                        t1055->value = t1053.
                        t1051 = t1055.
                      ELSE.
                        DATA t1056 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1056.
                        t1051 = t1056.
                      ENDIF.
                      t1043 = t1044->get_object( i_type_9913 = t1046 i_name = t1051 ).
                      DATA t1057 TYPE REF TO object.
                      CLEAR t1057.
                      t1057 = t1043.
                      t1042 ?= t1057.
                      t1041 = t1042.
                      DATA t1058 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1058.
                      DATA(t1059) = VALUE abap_bool( ).
                      DATA(t1060) = t1041.
                      t1059 = xsdbool( t1060 IS BOUND ).
                      IF t1059 = abap_true.
                        DATA t1061 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1061.
                        DATA t1062 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1062.
                        DATA t1063 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1063.
                        DATA t1064 TYPE REF TO zcl_lnt_table.
                        CLEAR t1064.
                        DATA(t1065) = t1041.
                        t1064 = t1065.
                        DATA t1066 TYPE REF TO zif_lnt_registry.
                        CLEAR t1066.
                        DATA(t1067) = t1012.
                        t1066 = t1067->reg.
                        DATA t1068 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1068.
                        DATA t1069 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1069.
                        t1063 = t1064->parse_type( i_reg_f149 = t1066 i_data_element = t1068 i_description = t1069 ).
                        t1062 = t1063.
                        DATA t1070 TYPE REF TO zif_lnt_object.
                        CLEAR t1070.
                        DATA t1071 TYPE REF TO zcl_lnt_table.
                        CLEAR t1071.
                        DATA(t1072) = t1041.
                        t1071 = t1072.
                        t1070 = t1071.
                        t1061 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1062 i_object_19cd = t1070 ).
                        CREATE OBJECT t1061->zlnt_view_ownkeys_b0e8086400eb.
                        t1061->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1073.
                        IF t1061->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1061->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1073 ).
                        ENDIF.
                        DATA t1074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1074.
                        IF t1061->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1061->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1074 ).
                        ENDIF.
                        CREATE OBJECT t1061->zlnt_json_ownkeys_70e5fd461788.
                        t1061->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t1075) = |type|.
                        DATA t1076 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1076.
                        IF t1061->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1061->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1075 p1 = t1076 ).
                        ENDIF.
                        DATA(t1077) = |object|.
                        DATA t1078 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1078.
                        IF t1061->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1061->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1077 p1 = t1078 ).
                        ENDIF.
                        t1058 = t1061.
                      ELSE.
                        DATA t1079 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1079.
                        DATA t1080 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1080.
                        DATA t1081 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1081.
                        DATA(t1082) = t1012.
                        DATA t1083 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1083.
                        DATA(t1084) = abap_true.
                        IF t1084 = abap_true.
                          DATA(t1085) = VALUE string( ).
                          DATA(t1086) = t1014.
                          t1085 = t1086->value.
                          DATA(t1087) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1087->has = abap_true.
                          t1087->value = t1085.
                          t1083 = t1087.
                        ELSE.
                          DATA t1088 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1088.
                          t1083 = t1088.
                        ENDIF.
                        t1081 = t1082->lookup_ddls( i_name = t1083 ).
                        t1080 = t1081.
                        DATA t1089 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1089.
                        DATA(t1090) = VALUE abap_bool( ).
                        DATA(t1091) = t1080.
                        t1090 = xsdbool( t1091 IS BOUND ).
                        IF t1090 = abap_true.
                          DATA t1092 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t1092.
                          DATA(t1093) = t1080.
                          t1092 = t1093.
                          t1089 = t1092.
                        ELSE.
                          DATA t1094 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t1094.
                          DATA t1095 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1095.
                          DATA t1096 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1096.
                          DATA(t1097) = abap_true.
                          IF t1097 = abap_true.
                            DATA(t1098) = VALUE string( ).
                            DATA(t1099) = t1014.
                            t1098 = t1099->value.
                            DATA(t1100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t1100->has = abap_true.
                            t1100->value = t1098.
                            t1096 = t1100.
                          ELSE.
                            DATA t1101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1101.
                            t1096 = t1101.
                          ENDIF.
                          t1095 = t1096.
                          DATA t1102 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t1102.
                          DATA(t1103) = VALUE abap_bool( ).
                          DATA t1104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1104.
                          DATA(t1105) = t1095.
                          t1104 = t1105.
                          DATA t1106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1106.
                          DATA t1107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1107.
                          t1106 = t1107.
                          DATA(t1108) = VALUE abap_bool( ).
                          DATA(t1109) = t1104.
                          IF t1109 IS INITIAL.
                            t1108 = abap_true.
                          ELSEIF t1109->has = abap_false.
                            t1108 = abap_true.
                          ENDIF.
                          t1103 = t1108.
                          IF t1103 = abap_true.
                            DATA t1110 TYPE REF TO zcl_lnt_ilookup_result.
                            CLEAR t1110.
                            DATA t1111 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t1111.
                            DATA t1112 TYPE REF TO zcl_lnt_unknown_type.
                            CLEAR t1112.
                            DATA(t1113) = |undefined, lookupView|.
                            DATA t1114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1114.
                            t1112 = NEW zcl_lnt_unknown_type( i_error = t1113 i_qualified_name = t1114 ).
                            t1111 = t1112.
                            DATA t1115 TYPE REF TO zif_lnt_object.
                            CLEAR t1115.
                            DATA t1116 TYPE REF TO zif_lnt_object.
                            CLEAR t1116.
                            t1115 = t1116.
                            t1110 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1111 i_object_19cd = t1115 ).
                            CREATE OBJECT t1110->zlnt_view_ownkeys_b0e8086400eb.
                            t1110->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1117.
                            IF t1110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1117 ).
                            ENDIF.
                            CREATE OBJECT t1110->zlnt_json_ownkeys_70e5fd461788.
                            t1110->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA(t1118) = |type|.
                            DATA t1119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1119.
                            IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1118 p1 = t1119 ).
                            ENDIF.
                            t1102 = t1110.
                          ELSE.
                            DATA t1120 TYPE REF TO zcl_lnt_ilookup_result.
                            CLEAR t1120.
                            DATA t1121 TYPE REF TO zcl_lnt_table.
                            CLEAR t1121.
                            DATA t1122 TYPE REF TO zcl_lnt_table.
                            CLEAR t1122.
                            DATA t1123 TYPE REF TO zif_lnt_object.
                            CLEAR t1123.
                            DATA t1124 TYPE REF TO zif_lnt_registry.
                            CLEAR t1124.
                            DATA(t1125) = t1012.
                            t1124 = t1125->reg.
                            DATA t1126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1126.
                            DATA(t1127) = abap_true.
                            IF t1127 = abap_true.
                              DATA(t1128) = |VIEW|.
                              DATA(t1129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t1129->has = abap_true.
                              t1129->value = t1128.
                              t1126 = t1129.
                            ELSE.
                              DATA t1130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1130.
                              t1126 = t1130.
                            ENDIF.
                            DATA t1131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1131.
                            DATA(t1132) = abap_true.
                            IF t1132 = abap_true.
                              DATA(t1133) = VALUE string( ).
                              DATA(t1134) = t1095.
                              t1133 = t1134->value.
                              DATA(t1135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t1135->has = abap_true.
                              t1135->value = t1133.
                              t1131 = t1135.
                            ELSE.
                              DATA t1136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1136.
                              t1131 = t1136.
                            ENDIF.
                            t1123 = t1124->get_object( i_type_9913 = t1126 i_name = t1131 ).
                            DATA t1137 TYPE REF TO object.
                            CLEAR t1137.
                            t1137 = t1123.
                            t1122 ?= t1137.
                            t1121 = t1122.
                            DATA t1138 TYPE REF TO zcl_lnt_ilookup_result.
                            CLEAR t1138.
                            DATA(t1139) = VALUE abap_bool( ).
                            DATA(t1140) = t1121.
                            t1139 = xsdbool( t1140 IS BOUND ).
                            IF t1139 = abap_true.
                              DATA t1141 TYPE REF TO zcl_lnt_ilookup_result.
                              CLEAR t1141.
                              DATA t1142 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t1142.
                              DATA t1143 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t1143.
                              DATA t1144 TYPE REF TO zcl_lnt_table.
                              CLEAR t1144.
                              DATA(t1145) = t1121.
                              t1144 = t1145.
                              DATA t1146 TYPE REF TO zif_lnt_registry.
                              CLEAR t1146.
                              DATA(t1147) = t1012.
                              t1146 = t1147->reg.
                              DATA t1148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1148.
                              DATA t1149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1149.
                              t1143 = t1144->parse_type( i_reg_f149 = t1146 i_data_element = t1148 i_description = t1149 ).
                              t1142 = t1143.
                              DATA t1150 TYPE REF TO zif_lnt_object.
                              CLEAR t1150.
                              DATA t1151 TYPE REF TO zcl_lnt_table.
                              CLEAR t1151.
                              DATA(t1152) = t1121.
                              t1151 = t1152.
                              t1150 = t1151.
                              t1141 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1142 i_object_19cd = t1150 ).
                              CREATE OBJECT t1141->zlnt_view_ownkeys_b0e8086400eb.
                              t1141->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t1153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1153.
                              IF t1141->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                t1141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1153 ).
                              ENDIF.
                              DATA t1154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1154.
                              IF t1141->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                t1141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1154 ).
                              ENDIF.
                              CREATE OBJECT t1141->zlnt_json_ownkeys_70e5fd461788.
                              t1141->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA(t1155) = |type|.
                              DATA t1156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1156.
                              IF t1141->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                t1141->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1155 p1 = t1156 ).
                              ENDIF.
                              DATA(t1157) = |object|.
                              DATA t1158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1158.
                              IF t1141->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                t1141->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1157 p1 = t1158 ).
                              ENDIF.
                              t1138 = t1141.
                            ELSE.
                              DATA t1159 TYPE REF TO zcl_lnt_ilookup_result.
                              CLEAR t1159.
                              DATA(t1160) = VALUE abap_bool( ).
                              DATA t1161 TYPE REF TO zif_lnt_registry.
                              CLEAR t1161.
                              DATA(t1162) = t1012.
                              t1161 = t1162->reg.
                              DATA(t1163) = VALUE string( ).
                              DATA(t1164) = t1095.
                              t1163 = t1164->value.
                              t1160 = t1161->in_error_namespace( i_name = t1163 ).
                              IF t1160 = abap_true.
                                DATA t1165 TYPE REF TO zcl_lnt_ilookup_result.
                                CLEAR t1165.
                                DATA t1166 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t1166.
                                DATA t1167 TYPE REF TO zcl_lnt_unknown_type.
                                CLEAR t1167.
                                DATA(t1168) = VALUE string( ).
                                DATA(t1169) = VALUE string( ).
                                DATA(t1170) = t1095.
                                t1169 = t1170->value.
                                DATA(t1171) = | not found, lookupView|.
                                DATA(t1172) = strlen( t1169 ).
                                t1168 = |{ t1169 }{ t1171 }|.
                                DATA t1173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t1173.
                                t1167 = NEW zcl_lnt_unknown_type( i_error = t1168 i_qualified_name = t1173 ).
                                t1166 = t1167.
                                DATA t1174 TYPE REF TO zif_lnt_object.
                                CLEAR t1174.
                                DATA t1175 TYPE REF TO zif_lnt_object.
                                CLEAR t1175.
                                t1174 = t1175.
                                t1165 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1166 i_object_19cd = t1174 ).
                                CREATE OBJECT t1165->zlnt_view_ownkeys_b0e8086400eb.
                                t1165->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA t1176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                CLEAR t1176.
                                IF t1165->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                  t1165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1176 ).
                                ENDIF.
                                CREATE OBJECT t1165->zlnt_json_ownkeys_70e5fd461788.
                                t1165->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA(t1177) = |type|.
                                DATA t1178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                CLEAR t1178.
                                IF t1165->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                  t1165->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1177 p1 = t1178 ).
                                ENDIF.
                                t1159 = t1165.
                              ELSE.
                                DATA t1179 TYPE REF TO zcl_lnt_ilookup_result.
                                CLEAR t1179.
                                DATA t1180 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t1180.
                                DATA t1181 TYPE REF TO zcl_lnt_void_type.
                                CLEAR t1181.
                                DATA t1182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t1182.
                                DATA(t1183) = abap_true.
                                IF t1183 = abap_true.
                                  DATA(t1184) = VALUE string( ).
                                  DATA(t1185) = t1095.
                                  t1184 = t1185->value.
                                  DATA(t1186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                  t1186->has = abap_true.
                                  t1186->value = t1184.
                                  t1182 = t1186.
                                ELSE.
                                  DATA t1187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t1187.
                                  t1182 = t1187.
                                ENDIF.
                                DATA t1188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t1188.
                                t1181 = zcl_lnt_void_type=>get_db65( i_voided = t1182 i_qualified_name = t1188 ).
                                t1180 = t1181.
                                DATA t1189 TYPE REF TO zif_lnt_object.
                                CLEAR t1189.
                                DATA t1190 TYPE REF TO zif_lnt_object.
                                CLEAR t1190.
                                t1189 = t1190.
                                t1179 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1180 i_object_19cd = t1189 ).
                                CREATE OBJECT t1179->zlnt_view_ownkeys_b0e8086400eb.
                                t1179->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA t1191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                CLEAR t1191.
                                IF t1179->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                  t1179->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1191 ).
                                ENDIF.
                                CREATE OBJECT t1179->zlnt_json_ownkeys_70e5fd461788.
                                t1179->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA(t1192) = |type|.
                                DATA t1193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                CLEAR t1193.
                                IF t1179->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                  t1179->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1192 p1 = t1193 ).
                                ENDIF.
                                t1159 = t1179.
                              ENDIF.
                              t1138 = t1159.
                            ENDIF.
                            t1120 = t1138.
                            t1102 = t1120.
                          ENDIF.
                          t1094 = t1102.
                          t1089 = t1094.
                        ENDIF.
                        t1079 = t1089.
                        t1058 = t1079.
                      ENDIF.
                      t1040 = t1058.
                      t1022 = t1040.
                    ENDIF.
                    t1011 = t1022.
                    t1010 = t1011.
                    DATA(t1194) = t103.
                    DATA t1195 TYPE REF TO zcl_lnt_istructure_component.
                    CLEAR t1195.
                    DATA(t1196) = VALUE string( ).
                    DATA(t1197) = VALUE string( ).
                    DATA t1198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1198.
                    DATA(t1199) = t111.
                    t1198 = t1199->fieldname.
                    t1197 = t1198->value.
                    t1196 = t1197.
                    DATA t1200 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t1200.
                    DATA t1201 TYPE REF TO zcl_lnt_data_reference.
                    CLEAR t1201.
                    DATA t1202 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t1202.
                    DATA(t1203) = t1010.
                    t1202 = t1203->zlnt_view_read_sr_9be58e2d4893( ).
                    DATA t1204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1204.
                    t1201 = NEW zcl_lnt_data_reference( i_type_9913 = t1202 i_qualified_name = t1204 ).
                    t1200 = t1201.
                    DATA t1205 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t1205.
                    DATA t1206 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t1206.
                    t1205 = t1206.
                    DATA t1207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1207.
                    DATA t1208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1208.
                    t1207 = t1208.
                    t1195 = NEW zcl_lnt_istructure_component( i_name = t1196 i_type_9913 = t1200 i_as_include = t1205 i_suffix = t1207 ).
                    CREATE OBJECT t1195->zlnt_view_ownkeys_b0e8086400eb.
                    t1195->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t1209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1209.
                    IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1209 ).
                    ENDIF.
                    DATA t1210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1210.
                    IF t1195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t1195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1210 ).
                    ENDIF.
                    CREATE OBJECT t1195->zlnt_json_ownkeys_70e5fd461788.
                    t1195->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t1211) = |name|.
                    DATA t1212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1212.
                    IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1211 p1 = t1212 ).
                    ENDIF.
                    DATA(t1213) = |type|.
                    DATA t1214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1214.
                    IF t1195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t1195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1213 p1 = t1214 ).
                    ENDIF.
                    t1194->load( ).
                    APPEND t1195 TO t1194->items.
                    t1194->save( ).
                    DATA(t1215) = VALUE abap_bool( ).
                    DATA t1216 TYPE REF TO zif_lnt_object.
                    CLEAR t1216.
                    DATA(t1217) = t1010.
                    t1216 = t1217->zlnt_view_read_sr_2de0200e6505( ).
                    t1215 = xsdbool( t1216 IS BOUND ).
                    IF t1215 = abap_true.
                      DATA(t1218) = t101.
                      DATA t1219 TYPE REF TO zcl_lnt_iobject_and_token.
                      CLEAR t1219.
                      DATA t1220 TYPE REF TO zif_lnt_object.
                      CLEAR t1220.
                      DATA t1221 TYPE REF TO zif_lnt_object.
                      CLEAR t1221.
                      DATA(t1222) = abap_true.
                      IF t1222 = abap_true.
                        DATA t1223 TYPE REF TO zif_lnt_object.
                        CLEAR t1223.
                        DATA t1224 TYPE REF TO zif_lnt_object.
                        CLEAR t1224.
                        DATA(t1225) = t1010.
                        t1224 = t1225->zlnt_view_read_sr_2de0200e6505( ).
                        t1223 = t1224.
                        t1221 = t1223.
                      ELSE.
                        DATA t1226 TYPE REF TO zif_lnt_object.
                        CLEAR t1226.
                        t1221 = t1226.
                      ENDIF.
                      t1220 = t1221.
                      DATA t1227 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t1227.
                      DATA t1228 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t1228.
                      t1227 = t1228.
                      DATA t1229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1229.
                      DATA t1230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1230.
                      t1229 = t1230.
                      t1219 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1220 i_token = t1227 i_filename = t1229 ).
                      CREATE OBJECT t1219->zlnt_view_ownkeys_b0e8086400eb.
                      t1219->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1231.
                      IF t1219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1231 ).
                      ENDIF.
                      CREATE OBJECT t1219->zlnt_json_ownkeys_70e5fd461788.
                      t1219->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t1232) = |object|.
                      DATA t1233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1233.
                      IF t1219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1232 p1 = t1233 ).
                      ENDIF.
                      t1218->load( ).
                      APPEND t1219 TO t1218->items.
                      t1218->save( ).
                    ENDIF.
                  ELSE.
                    DATA(t1234) = VALUE abap_bool( ).
                    DATA t1235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1235.
                    DATA(t1236) = t111.
                    t1235 = t1236->reftype.
                    DATA t1237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1237.
                    DATA(t1238) = abap_true.
                    IF t1238 = abap_true.
                      DATA(t1239) = |L|.
                      DATA(t1240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1240->has = abap_true.
                      t1240->value = t1239.
                      t1237 = t1240.
                    ELSE.
                      DATA t1241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1241.
                      t1237 = t1241.
                    ENDIF.
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
                      DATA t1245 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1245.
                      DATA t1246 TYPE REF TO zcl_lnt_ddic.
                      CLEAR t1246.
                      DATA(t1247) = t105.
                      t1246 = t1247.
                      DATA t1248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1248.
                      DATA t1249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1249.
                      DATA(t1250) = abap_true.
                      IF t1250 = abap_true.
                        DATA(t1251) = VALUE string( ).
                        DATA t1252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1252.
                        DATA(t1253) = t111.
                        t1252 = t1253->rollname_a788.
                        t1251 = t1252->value.
                        DATA(t1254) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1254->has = abap_true.
                        t1254->value = t1251.
                        t1249 = t1254.
                      ELSE.
                        DATA t1255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1255.
                        t1249 = t1255.
                      ENDIF.
                      t1248 = t1249.
                      DATA t1256 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1256.
                      DATA(t1257) = VALUE abap_bool( ).
                      DATA t1258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1258.
                      DATA(t1259) = t1248.
                      t1258 = t1259.
                      DATA t1260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1260.
                      DATA t1261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1261.
                      t1260 = t1261.
                      DATA(t1262) = VALUE abap_bool( ).
                      DATA(t1263) = t1258.
                      IF t1263 IS INITIAL.
                        t1262 = abap_true.
                      ELSEIF t1263->has = abap_false.
                        t1262 = abap_true.
                      ENDIF.
                      t1257 = t1262.
                      IF t1257 = abap_true.
                        DATA t1264 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1264.
                        DATA t1265 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1265.
                        DATA t1266 TYPE REF TO zcl_lnt_unknown_type.
                        CLEAR t1266.
                        DATA(t1267) = |undefined, lookupTableType|.
                        DATA t1268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1268.
                        t1266 = NEW zcl_lnt_unknown_type( i_error = t1267 i_qualified_name = t1268 ).
                        t1265 = t1266.
                        DATA t1269 TYPE REF TO zif_lnt_object.
                        CLEAR t1269.
                        DATA t1270 TYPE REF TO zif_lnt_object.
                        CLEAR t1270.
                        t1269 = t1270.
                        t1264 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1265 i_object_19cd = t1269 ).
                        CREATE OBJECT t1264->zlnt_view_ownkeys_b0e8086400eb.
                        t1264->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1271.
                        IF t1264->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1264->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1271 ).
                        ENDIF.
                        CREATE OBJECT t1264->zlnt_json_ownkeys_70e5fd461788.
                        t1264->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t1272) = |type|.
                        DATA t1273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1273.
                        IF t1264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1264->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1272 p1 = t1273 ).
                        ENDIF.
                        t1256 = t1264.
                      ELSE.
                        DATA t1274 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1274.
                        DATA t1275 TYPE REF TO zcl_lnt_ob_table_type.
                        CLEAR t1275.
                        DATA t1276 TYPE REF TO zcl_lnt_ob_table_type.
                        CLEAR t1276.
                        DATA t1277 TYPE REF TO zif_lnt_object.
                        CLEAR t1277.
                        DATA t1278 TYPE REF TO zif_lnt_registry.
                        CLEAR t1278.
                        DATA(t1279) = t1246.
                        t1278 = t1279->reg.
                        DATA t1280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1280.
                        DATA(t1281) = abap_true.
                        IF t1281 = abap_true.
                          DATA(t1282) = |TTYP|.
                          DATA(t1283) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1283->has = abap_true.
                          t1283->value = t1282.
                          t1280 = t1283.
                        ELSE.
                          DATA t1284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1284.
                          t1280 = t1284.
                        ENDIF.
                        DATA t1285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1285.
                        DATA(t1286) = abap_true.
                        IF t1286 = abap_true.
                          DATA(t1287) = VALUE string( ).
                          DATA(t1288) = t1248.
                          t1287 = t1288->value.
                          DATA(t1289) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1289->has = abap_true.
                          t1289->value = t1287.
                          t1285 = t1289.
                        ELSE.
                          DATA t1290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1290.
                          t1285 = t1290.
                        ENDIF.
                        t1277 = t1278->get_object( i_type_9913 = t1280 i_name = t1285 ).
                        DATA t1291 TYPE REF TO object.
                        CLEAR t1291.
                        t1291 = t1277.
                        t1276 ?= t1291.
                        t1275 = t1276.
                        DATA t1292 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1292.
                        DATA(t1293) = VALUE abap_bool( ).
                        DATA(t1294) = t1275.
                        t1293 = xsdbool( t1294 IS BOUND ).
                        IF t1293 = abap_true.
                          DATA t1295 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t1295.
                          DATA t1296 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t1296.
                          DATA t1297 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t1297.
                          DATA t1298 TYPE REF TO zcl_lnt_ob_table_type.
                          CLEAR t1298.
                          DATA(t1299) = t1275.
                          t1298 = t1299.
                          DATA t1300 TYPE REF TO zif_lnt_registry.
                          CLEAR t1300.
                          DATA(t1301) = t1246.
                          t1300 = t1301->reg.
                          DATA t1302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1302.
                          DATA t1303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1303.
                          t1297 = t1298->parse_type( i_reg_f149 = t1300 i_data_element = t1302 i_description = t1303 ).
                          t1296 = t1297.
                          DATA t1304 TYPE REF TO zif_lnt_object.
                          CLEAR t1304.
                          DATA t1305 TYPE REF TO zcl_lnt_ob_table_type.
                          CLEAR t1305.
                          DATA(t1306) = t1275.
                          t1305 = t1306.
                          t1304 = t1305.
                          t1295 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1296 i_object_19cd = t1304 ).
                          CREATE OBJECT t1295->zlnt_view_ownkeys_b0e8086400eb.
                          t1295->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1307.
                          IF t1295->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1307 ).
                          ENDIF.
                          DATA t1308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1308.
                          IF t1295->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1308 ).
                          ENDIF.
                          CREATE OBJECT t1295->zlnt_json_ownkeys_70e5fd461788.
                          t1295->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA(t1309) = |type|.
                          DATA t1310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1310.
                          IF t1295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1309 p1 = t1310 ).
                          ENDIF.
                          DATA(t1311) = |object|.
                          DATA t1312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1312.
                          IF t1295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1311 p1 = t1312 ).
                          ENDIF.
                          t1292 = t1295.
                        ELSE.
                          DATA t1313 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t1313.
                          DATA(t1314) = VALUE abap_bool( ).
                          DATA t1315 TYPE REF TO zif_lnt_registry.
                          CLEAR t1315.
                          DATA(t1316) = t1246.
                          t1315 = t1316->reg.
                          DATA(t1317) = VALUE string( ).
                          DATA(t1318) = t1248.
                          t1317 = t1318->value.
                          t1314 = t1315->in_error_namespace( i_name = t1317 ).
                          IF t1314 = abap_true.
                            DATA t1319 TYPE REF TO zcl_lnt_ilookup_result.
                            CLEAR t1319.
                            DATA t1320 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t1320.
                            DATA t1321 TYPE REF TO zcl_lnt_unknown_type.
                            CLEAR t1321.
                            DATA(t1322) = VALUE string( ).
                            DATA(t1323) = VALUE string( ).
                            DATA(t1324) = t1248.
                            t1323 = t1324->value.
                            DATA(t1325) = | not found, lookupTableType|.
                            DATA(t1326) = strlen( t1323 ).
                            t1322 = |{ t1323 }{ t1325 }|.
                            DATA t1327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1327.
                            t1321 = NEW zcl_lnt_unknown_type( i_error = t1322 i_qualified_name = t1327 ).
                            t1320 = t1321.
                            DATA t1328 TYPE REF TO zif_lnt_object.
                            CLEAR t1328.
                            DATA t1329 TYPE REF TO zif_lnt_object.
                            CLEAR t1329.
                            t1328 = t1329.
                            t1319 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1320 i_object_19cd = t1328 ).
                            CREATE OBJECT t1319->zlnt_view_ownkeys_b0e8086400eb.
                            t1319->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1330.
                            IF t1319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1330 ).
                            ENDIF.
                            CREATE OBJECT t1319->zlnt_json_ownkeys_70e5fd461788.
                            t1319->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA(t1331) = |type|.
                            DATA t1332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1332.
                            IF t1319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1319->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1331 p1 = t1332 ).
                            ENDIF.
                            t1313 = t1319.
                          ELSE.
                            DATA t1333 TYPE REF TO zcl_lnt_ilookup_result.
                            CLEAR t1333.
                            DATA t1334 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t1334.
                            DATA t1335 TYPE REF TO zcl_lnt_void_type.
                            CLEAR t1335.
                            DATA t1336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1336.
                            DATA(t1337) = abap_true.
                            IF t1337 = abap_true.
                              DATA(t1338) = VALUE string( ).
                              DATA(t1339) = t1248.
                              t1338 = t1339->value.
                              DATA(t1340) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t1340->has = abap_true.
                              t1340->value = t1338.
                              t1336 = t1340.
                            ELSE.
                              DATA t1341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1341.
                              t1336 = t1341.
                            ENDIF.
                            DATA t1342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1342.
                            t1335 = zcl_lnt_void_type=>get_db65( i_voided = t1336 i_qualified_name = t1342 ).
                            t1334 = t1335.
                            DATA t1343 TYPE REF TO zif_lnt_object.
                            CLEAR t1343.
                            DATA t1344 TYPE REF TO zif_lnt_object.
                            CLEAR t1344.
                            t1343 = t1344.
                            t1333 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1334 i_object_19cd = t1343 ).
                            CREATE OBJECT t1333->zlnt_view_ownkeys_b0e8086400eb.
                            t1333->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1345.
                            IF t1333->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1333->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1345 ).
                            ENDIF.
                            CREATE OBJECT t1333->zlnt_json_ownkeys_70e5fd461788.
                            t1333->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA(t1346) = |type|.
                            DATA t1347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1347.
                            IF t1333->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1333->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1346 p1 = t1347 ).
                            ENDIF.
                            t1313 = t1333.
                          ENDIF.
                          t1292 = t1313.
                        ENDIF.
                        t1274 = t1292.
                        t1256 = t1274.
                      ENDIF.
                      t1245 = t1256.
                      t1244 = t1245.
                      DATA(t1348) = t103.
                      DATA t1349 TYPE REF TO zcl_lnt_istructure_component.
                      CLEAR t1349.
                      DATA(t1350) = VALUE string( ).
                      DATA(t1351) = VALUE string( ).
                      DATA t1352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1352.
                      DATA(t1353) = t111.
                      t1352 = t1353->fieldname.
                      t1351 = t1352->value.
                      t1350 = t1351.
                      DATA t1354 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t1354.
                      DATA t1355 TYPE REF TO zcl_lnt_data_reference.
                      CLEAR t1355.
                      DATA t1356 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t1356.
                      DATA(t1357) = t1244.
                      t1356 = t1357->zlnt_view_read_sr_9be58e2d4893( ).
                      DATA t1358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1358.
                      t1355 = NEW zcl_lnt_data_reference( i_type_9913 = t1356 i_qualified_name = t1358 ).
                      t1354 = t1355.
                      DATA t1359 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t1359.
                      DATA t1360 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t1360.
                      t1359 = t1360.
                      DATA t1361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1361.
                      DATA t1362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1362.
                      t1361 = t1362.
                      t1349 = NEW zcl_lnt_istructure_component( i_name = t1350 i_type_9913 = t1354 i_as_include = t1359 i_suffix = t1361 ).
                      CREATE OBJECT t1349->zlnt_view_ownkeys_b0e8086400eb.
                      t1349->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1363.
                      IF t1349->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1349->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1363 ).
                      ENDIF.
                      DATA t1364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1364.
                      IF t1349->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1349->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1364 ).
                      ENDIF.
                      CREATE OBJECT t1349->zlnt_json_ownkeys_70e5fd461788.
                      t1349->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t1365) = |name|.
                      DATA t1366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1366.
                      IF t1349->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1349->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1365 p1 = t1366 ).
                      ENDIF.
                      DATA(t1367) = |type|.
                      DATA t1368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1368.
                      IF t1349->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1349->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1367 p1 = t1368 ).
                      ENDIF.
                      t1348->load( ).
                      APPEND t1349 TO t1348->items.
                      t1348->save( ).
                      DATA(t1369) = VALUE abap_bool( ).
                      DATA t1370 TYPE REF TO zif_lnt_object.
                      CLEAR t1370.
                      DATA(t1371) = t1244.
                      t1370 = t1371->zlnt_view_read_sr_2de0200e6505( ).
                      t1369 = xsdbool( t1370 IS BOUND ).
                      IF t1369 = abap_true.
                        DATA(t1372) = t101.
                        DATA t1373 TYPE REF TO zcl_lnt_iobject_and_token.
                        CLEAR t1373.
                        DATA t1374 TYPE REF TO zif_lnt_object.
                        CLEAR t1374.
                        DATA t1375 TYPE REF TO zif_lnt_object.
                        CLEAR t1375.
                        DATA(t1376) = abap_true.
                        IF t1376 = abap_true.
                          DATA t1377 TYPE REF TO zif_lnt_object.
                          CLEAR t1377.
                          DATA t1378 TYPE REF TO zif_lnt_object.
                          CLEAR t1378.
                          DATA(t1379) = t1244.
                          t1378 = t1379->zlnt_view_read_sr_2de0200e6505( ).
                          t1377 = t1378.
                          t1375 = t1377.
                        ELSE.
                          DATA t1380 TYPE REF TO zif_lnt_object.
                          CLEAR t1380.
                          t1375 = t1380.
                        ENDIF.
                        t1374 = t1375.
                        DATA t1381 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t1381.
                        DATA t1382 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t1382.
                        t1381 = t1382.
                        DATA t1383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1383.
                        DATA t1384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1384.
                        t1383 = t1384.
                        t1373 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1374 i_token = t1381 i_filename = t1383 ).
                        CREATE OBJECT t1373->zlnt_view_ownkeys_b0e8086400eb.
                        t1373->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1385.
                        IF t1373->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1373->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1385 ).
                        ENDIF.
                        CREATE OBJECT t1373->zlnt_json_ownkeys_70e5fd461788.
                        t1373->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t1386) = |object|.
                        DATA t1387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1387.
                        IF t1373->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1373->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1386 p1 = t1387 ).
                        ENDIF.
                        t1372->load( ).
                        APPEND t1373 TO t1372->items.
                        t1372->save( ).
                      ENDIF.
                    ELSE.
                      DATA(t1388) = VALUE abap_bool( ).
                      DATA t1389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1389.
                      DATA(t1390) = t111.
                      t1389 = t1390->reftype.
                      DATA t1391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1391.
                      DATA(t1392) = abap_true.
                      IF t1392 = abap_true.
                        DATA(t1393) = |E|.
                        DATA(t1394) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1394->has = abap_true.
                        t1394->value = t1393.
                        t1391 = t1394.
                      ELSE.
                        DATA t1395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1395.
                        t1391 = t1395.
                      ENDIF.
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
                        DATA t1399 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1399.
                        DATA t1400 TYPE REF TO zcl_lnt_ddic.
                        CLEAR t1400.
                        DATA(t1401) = t105.
                        t1400 = t1401.
                        DATA t1402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1402.
                        DATA t1403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1403.
                        DATA(t1404) = abap_true.
                        IF t1404 = abap_true.
                          DATA(t1405) = VALUE string( ).
                          DATA t1406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1406.
                          DATA(t1407) = t111.
                          t1406 = t1407->rollname_a788.
                          t1405 = t1406->value.
                          DATA(t1408) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1408->has = abap_true.
                          t1408->value = t1405.
                          t1403 = t1408.
                        ELSE.
                          DATA t1409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1409.
                          t1403 = t1409.
                        ENDIF.
                        t1402 = t1403.
                        DATA t1410 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1410.
                        DATA(t1411) = VALUE abap_bool( ).
                        DATA t1412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1412.
                        DATA(t1413) = t1402.
                        t1412 = t1413.
                        DATA t1414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1414.
                        DATA t1415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1415.
                        t1414 = t1415.
                        DATA(t1416) = VALUE abap_bool( ).
                        DATA(t1417) = t1412.
                        IF t1417 IS INITIAL.
                          t1416 = abap_true.
                        ELSEIF t1417->has = abap_false.
                          t1416 = abap_true.
                        ENDIF.
                        t1411 = t1416.
                        IF t1411 = abap_true.
                          DATA t1418 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t1418.
                          DATA t1419 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t1419.
                          DATA t1420 TYPE REF TO zcl_lnt_unknown_type.
                          CLEAR t1420.
                          DATA(t1421) = |undefined, lookupDataElement|.
                          DATA t1422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1422.
                          t1420 = NEW zcl_lnt_unknown_type( i_error = t1421 i_qualified_name = t1422 ).
                          t1419 = t1420.
                          DATA t1423 TYPE REF TO zif_lnt_object.
                          CLEAR t1423.
                          DATA t1424 TYPE REF TO zif_lnt_object.
                          CLEAR t1424.
                          t1423 = t1424.
                          t1418 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1419 i_object_19cd = t1423 ).
                          CREATE OBJECT t1418->zlnt_view_ownkeys_b0e8086400eb.
                          t1418->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1425.
                          IF t1418->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1418->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1425 ).
                          ENDIF.
                          CREATE OBJECT t1418->zlnt_json_ownkeys_70e5fd461788.
                          t1418->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA(t1426) = |type|.
                          DATA t1427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1427.
                          IF t1418->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1418->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1426 p1 = t1427 ).
                          ENDIF.
                          t1410 = t1418.
                        ELSE.
                          DATA t1428 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t1428.
                          DATA t1429 TYPE REF TO zcl_lnt_data_element.
                          CLEAR t1429.
                          DATA t1430 TYPE REF TO zcl_lnt_data_element.
                          CLEAR t1430.
                          DATA t1431 TYPE REF TO zif_lnt_object.
                          CLEAR t1431.
                          DATA t1432 TYPE REF TO zif_lnt_registry.
                          CLEAR t1432.
                          DATA(t1433) = t1400.
                          t1432 = t1433->reg.
                          DATA t1434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1434.
                          DATA(t1435) = abap_true.
                          IF t1435 = abap_true.
                            DATA(t1436) = |DTEL|.
                            DATA(t1437) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t1437->has = abap_true.
                            t1437->value = t1436.
                            t1434 = t1437.
                          ELSE.
                            DATA t1438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1438.
                            t1434 = t1438.
                          ENDIF.
                          DATA t1439 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1439.
                          DATA(t1440) = abap_true.
                          IF t1440 = abap_true.
                            DATA(t1441) = VALUE string( ).
                            DATA(t1442) = t1402.
                            t1441 = t1442->value.
                            DATA(t1443) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t1443->has = abap_true.
                            t1443->value = t1441.
                            t1439 = t1443.
                          ELSE.
                            DATA t1444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1444.
                            t1439 = t1444.
                          ENDIF.
                          t1431 = t1432->get_object( i_type_9913 = t1434 i_name = t1439 ).
                          DATA t1445 TYPE REF TO object.
                          CLEAR t1445.
                          t1445 = t1431.
                          t1430 ?= t1445.
                          t1429 = t1430.
                          DATA t1446 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t1446.
                          DATA(t1447) = VALUE abap_bool( ).
                          DATA(t1448) = t1429.
                          t1447 = xsdbool( t1448 IS BOUND ).
                          IF t1447 = abap_true.
                            DATA t1449 TYPE REF TO zcl_lnt_ilookup_result.
                            CLEAR t1449.
                            DATA t1450 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t1450.
                            DATA t1451 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t1451.
                            DATA t1452 TYPE REF TO zcl_lnt_data_element.
                            CLEAR t1452.
                            DATA(t1453) = t1429.
                            t1452 = t1453.
                            DATA t1454 TYPE REF TO zif_lnt_registry.
                            CLEAR t1454.
                            DATA(t1455) = t1400.
                            t1454 = t1455->reg.
                            DATA t1456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1456.
                            DATA t1457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1457.
                            t1451 = t1452->parse_type( i_reg_f149 = t1454 i_data_element = t1456 i_description = t1457 ).
                            t1450 = t1451.
                            DATA t1458 TYPE REF TO zif_lnt_object.
                            CLEAR t1458.
                            DATA t1459 TYPE REF TO zcl_lnt_data_element.
                            CLEAR t1459.
                            DATA(t1460) = t1429.
                            t1459 = t1460.
                            t1458 = t1459.
                            t1449 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1450 i_object_19cd = t1458 ).
                            CREATE OBJECT t1449->zlnt_view_ownkeys_b0e8086400eb.
                            t1449->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1461.
                            IF t1449->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1449->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1461 ).
                            ENDIF.
                            DATA t1462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1462.
                            IF t1449->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1449->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1462 ).
                            ENDIF.
                            CREATE OBJECT t1449->zlnt_json_ownkeys_70e5fd461788.
                            t1449->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA(t1463) = |type|.
                            DATA t1464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1464.
                            IF t1449->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1449->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1463 p1 = t1464 ).
                            ENDIF.
                            DATA(t1465) = |object|.
                            DATA t1466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1466.
                            IF t1449->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1449->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1465 p1 = t1466 ).
                            ENDIF.
                            t1446 = t1449.
                          ELSE.
                            DATA t1467 TYPE REF TO zcl_lnt_ilookup_result.
                            CLEAR t1467.
                            DATA(t1468) = VALUE abap_bool( ).
                            DATA t1469 TYPE REF TO zif_lnt_registry.
                            CLEAR t1469.
                            DATA(t1470) = t1400.
                            t1469 = t1470->reg.
                            DATA(t1471) = VALUE string( ).
                            DATA(t1472) = t1402.
                            t1471 = t1472->value.
                            t1468 = t1469->in_error_namespace( i_name = t1471 ).
                            IF t1468 = abap_true.
                              DATA t1473 TYPE REF TO zcl_lnt_ilookup_result.
                              CLEAR t1473.
                              DATA t1474 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t1474.
                              DATA t1475 TYPE REF TO zcl_lnt_unknown_type.
                              CLEAR t1475.
                              DATA(t1476) = VALUE string( ).
                              DATA(t1477) = VALUE string( ).
                              DATA(t1478) = t1402.
                              t1477 = t1478->value.
                              DATA(t1479) = | not found, lookupDataElement|.
                              DATA(t1480) = strlen( t1477 ).
                              t1476 = |{ t1477 }{ t1479 }|.
                              DATA t1481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1481.
                              t1475 = NEW zcl_lnt_unknown_type( i_error = t1476 i_qualified_name = t1481 ).
                              t1474 = t1475.
                              DATA t1482 TYPE REF TO zif_lnt_object.
                              CLEAR t1482.
                              DATA t1483 TYPE REF TO zif_lnt_object.
                              CLEAR t1483.
                              t1482 = t1483.
                              t1473 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1474 i_object_19cd = t1482 ).
                              CREATE OBJECT t1473->zlnt_view_ownkeys_b0e8086400eb.
                              t1473->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t1484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1484.
                              IF t1473->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                t1473->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1484 ).
                              ENDIF.
                              CREATE OBJECT t1473->zlnt_json_ownkeys_70e5fd461788.
                              t1473->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA(t1485) = |type|.
                              DATA t1486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1486.
                              IF t1473->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                t1473->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1485 p1 = t1486 ).
                              ENDIF.
                              t1467 = t1473.
                            ELSE.
                              DATA t1487 TYPE REF TO zcl_lnt_ilookup_result.
                              CLEAR t1487.
                              DATA t1488 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t1488.
                              DATA t1489 TYPE REF TO zcl_lnt_void_type.
                              CLEAR t1489.
                              DATA t1490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1490.
                              DATA(t1491) = abap_true.
                              IF t1491 = abap_true.
                                DATA(t1492) = VALUE string( ).
                                DATA(t1493) = t1402.
                                t1492 = t1493->value.
                                DATA(t1494) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t1494->has = abap_true.
                                t1494->value = t1492.
                                t1490 = t1494.
                              ELSE.
                                DATA t1495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t1495.
                                t1490 = t1495.
                              ENDIF.
                              DATA t1496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1496.
                              t1489 = zcl_lnt_void_type=>get_db65( i_voided = t1490 i_qualified_name = t1496 ).
                              t1488 = t1489.
                              DATA t1497 TYPE REF TO zif_lnt_object.
                              CLEAR t1497.
                              DATA t1498 TYPE REF TO zif_lnt_object.
                              CLEAR t1498.
                              t1497 = t1498.
                              t1487 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1488 i_object_19cd = t1497 ).
                              CREATE OBJECT t1487->zlnt_view_ownkeys_b0e8086400eb.
                              t1487->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t1499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1499.
                              IF t1487->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                t1487->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1499 ).
                              ENDIF.
                              CREATE OBJECT t1487->zlnt_json_ownkeys_70e5fd461788.
                              t1487->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA(t1500) = |type|.
                              DATA t1501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t1501.
                              IF t1487->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                t1487->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1500 p1 = t1501 ).
                              ENDIF.
                              t1467 = t1487.
                            ENDIF.
                            t1446 = t1467.
                          ENDIF.
                          t1428 = t1446.
                          t1410 = t1428.
                        ENDIF.
                        t1399 = t1410.
                        t1398 = t1399.
                        DATA(t1502) = t103.
                        DATA t1503 TYPE REF TO zcl_lnt_istructure_component.
                        CLEAR t1503.
                        DATA(t1504) = VALUE string( ).
                        DATA(t1505) = VALUE string( ).
                        DATA t1506 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1506.
                        DATA(t1507) = t111.
                        t1506 = t1507->fieldname.
                        t1505 = t1506->value.
                        t1504 = t1505.
                        DATA t1508 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1508.
                        DATA t1509 TYPE REF TO zcl_lnt_data_reference.
                        CLEAR t1509.
                        DATA t1510 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1510.
                        DATA(t1511) = t1398.
                        t1510 = t1511->zlnt_view_read_sr_9be58e2d4893( ).
                        DATA t1512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1512.
                        t1509 = NEW zcl_lnt_data_reference( i_type_9913 = t1510 i_qualified_name = t1512 ).
                        t1508 = t1509.
                        DATA t1513 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t1513.
                        DATA t1514 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t1514.
                        t1513 = t1514.
                        DATA t1515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1515.
                        DATA t1516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1516.
                        t1515 = t1516.
                        t1503 = NEW zcl_lnt_istructure_component( i_name = t1504 i_type_9913 = t1508 i_as_include = t1513 i_suffix = t1515 ).
                        CREATE OBJECT t1503->zlnt_view_ownkeys_b0e8086400eb.
                        t1503->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1517.
                        IF t1503->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1503->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1517 ).
                        ENDIF.
                        DATA t1518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1518.
                        IF t1503->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1503->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1518 ).
                        ENDIF.
                        CREATE OBJECT t1503->zlnt_json_ownkeys_70e5fd461788.
                        t1503->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t1519) = |name|.
                        DATA t1520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1520.
                        IF t1503->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1503->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1519 p1 = t1520 ).
                        ENDIF.
                        DATA(t1521) = |type|.
                        DATA t1522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1522.
                        IF t1503->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1503->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1521 p1 = t1522 ).
                        ENDIF.
                        t1502->load( ).
                        APPEND t1503 TO t1502->items.
                        t1502->save( ).
                        DATA(t1523) = VALUE abap_bool( ).
                        DATA t1524 TYPE REF TO zif_lnt_object.
                        CLEAR t1524.
                        DATA(t1525) = t1398.
                        t1524 = t1525->zlnt_view_read_sr_2de0200e6505( ).
                        t1523 = xsdbool( t1524 IS BOUND ).
                        IF t1523 = abap_true.
                          DATA(t1526) = t101.
                          DATA t1527 TYPE REF TO zcl_lnt_iobject_and_token.
                          CLEAR t1527.
                          DATA t1528 TYPE REF TO zif_lnt_object.
                          CLEAR t1528.
                          DATA t1529 TYPE REF TO zif_lnt_object.
                          CLEAR t1529.
                          DATA(t1530) = abap_true.
                          IF t1530 = abap_true.
                            DATA t1531 TYPE REF TO zif_lnt_object.
                            CLEAR t1531.
                            DATA t1532 TYPE REF TO zif_lnt_object.
                            CLEAR t1532.
                            DATA(t1533) = t1398.
                            t1532 = t1533->zlnt_view_read_sr_2de0200e6505( ).
                            t1531 = t1532.
                            t1529 = t1531.
                          ELSE.
                            DATA t1534 TYPE REF TO zif_lnt_object.
                            CLEAR t1534.
                            t1529 = t1534.
                          ENDIF.
                          t1528 = t1529.
                          DATA t1535 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t1535.
                          DATA t1536 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t1536.
                          t1535 = t1536.
                          DATA t1537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1537.
                          DATA t1538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1538.
                          t1537 = t1538.
                          t1527 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1528 i_token = t1535 i_filename = t1537 ).
                          CREATE OBJECT t1527->zlnt_view_ownkeys_b0e8086400eb.
                          t1527->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1539.
                          IF t1527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1539 ).
                          ENDIF.
                          CREATE OBJECT t1527->zlnt_json_ownkeys_70e5fd461788.
                          t1527->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA(t1540) = |object|.
                          DATA t1541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1541.
                          IF t1527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1540 p1 = t1541 ).
                          ENDIF.
                          t1526->load( ).
                          APPEND t1527 TO t1526->items.
                          t1526->save( ).
                        ENDIF.
                      ELSE.
                        DATA t1542 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1542.
                        DATA t1543 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t1543.
                        DATA(t1544) = t105.
                        DATA(t1545) = VALUE string( ).
                        DATA t1546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1546.
                        DATA(t1547) = t111.
                        t1546 = t1547->rollname_a788.
                        t1545 = t1546->value.
                        t1543 = t1544->lookup_object( i_name = t1545 ).
                        t1542 = t1543.
                        DATA(t1548) = t103.
                        DATA t1549 TYPE REF TO zcl_lnt_istructure_component.
                        CLEAR t1549.
                        DATA(t1550) = VALUE string( ).
                        DATA(t1551) = VALUE string( ).
                        DATA t1552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1552.
                        DATA(t1553) = t111.
                        t1552 = t1553->fieldname.
                        t1551 = t1552->value.
                        t1550 = t1551.
                        DATA t1554 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1554.
                        DATA t1555 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t1555.
                        DATA(t1556) = t1542.
                        t1555 = t1556->zlnt_view_read_sr_9be58e2d4893( ).
                        t1554 = t1555.
                        DATA t1557 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t1557.
                        DATA t1558 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t1558.
                        t1557 = t1558.
                        DATA t1559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1559.
                        DATA t1560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1560.
                        t1559 = t1560.
                        t1549 = NEW zcl_lnt_istructure_component( i_name = t1550 i_type_9913 = t1554 i_as_include = t1557 i_suffix = t1559 ).
                        CREATE OBJECT t1549->zlnt_view_ownkeys_b0e8086400eb.
                        t1549->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1561.
                        IF t1549->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1549->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1561 ).
                        ENDIF.
                        DATA t1562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1562.
                        IF t1549->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1549->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1562 ).
                        ENDIF.
                        CREATE OBJECT t1549->zlnt_json_ownkeys_70e5fd461788.
                        t1549->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t1563) = |name|.
                        DATA t1564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1564.
                        IF t1549->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1549->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1563 p1 = t1564 ).
                        ENDIF.
                        DATA(t1565) = |type|.
                        DATA t1566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1566.
                        IF t1549->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1549->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1565 p1 = t1566 ).
                        ENDIF.
                        t1548->load( ).
                        APPEND t1549 TO t1548->items.
                        t1548->save( ).
                        DATA(t1567) = VALUE abap_bool( ).
                        DATA t1568 TYPE REF TO zif_lnt_object.
                        CLEAR t1568.
                        DATA(t1569) = t1542.
                        t1568 = t1569->zlnt_view_read_sr_2de0200e6505( ).
                        t1567 = xsdbool( t1568 IS BOUND ).
                        IF t1567 = abap_true.
                          DATA(t1570) = t101.
                          DATA t1571 TYPE REF TO zcl_lnt_iobject_and_token.
                          CLEAR t1571.
                          DATA t1572 TYPE REF TO zif_lnt_object.
                          CLEAR t1572.
                          DATA t1573 TYPE REF TO zif_lnt_object.
                          CLEAR t1573.
                          DATA(t1574) = abap_true.
                          IF t1574 = abap_true.
                            DATA t1575 TYPE REF TO zif_lnt_object.
                            CLEAR t1575.
                            DATA t1576 TYPE REF TO zif_lnt_object.
                            CLEAR t1576.
                            DATA(t1577) = t1542.
                            t1576 = t1577->zlnt_view_read_sr_2de0200e6505( ).
                            t1575 = t1576.
                            t1573 = t1575.
                          ELSE.
                            DATA t1578 TYPE REF TO zif_lnt_object.
                            CLEAR t1578.
                            t1573 = t1578.
                          ENDIF.
                          t1572 = t1573.
                          DATA t1579 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t1579.
                          DATA t1580 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t1580.
                          t1579 = t1580.
                          DATA t1581 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1581.
                          DATA t1582 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1582.
                          t1581 = t1582.
                          t1571 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1572 i_token = t1579 i_filename = t1581 ).
                          CREATE OBJECT t1571->zlnt_view_ownkeys_b0e8086400eb.
                          t1571->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1583.
                          IF t1571->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1571->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1583 ).
                          ENDIF.
                          CREATE OBJECT t1571->zlnt_json_ownkeys_70e5fd461788.
                          t1571->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA(t1584) = |object|.
                          DATA t1585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1585.
                          IF t1571->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1571->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1584 p1 = t1585 ).
                          ENDIF.
                          t1570->load( ).
                          APPEND t1571 TO t1570->items.
                          t1570->save( ).
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ELSE.
              DATA(t1586) = VALUE abap_bool( ).
              DATA(t1587) = t116.
              DATA(t1588) = |L|.
              t1586 = xsdbool( t1587 = t1588 ).
              IF t1586 = abap_true.
                DATA t1589 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1589.
                DATA t1590 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1590.
                DATA t1591 TYPE REF TO zcl_lnt_ddic.
                CLEAR t1591.
                DATA(t1592) = t105.
                t1591 = t1592.
                DATA t1593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1593.
                DATA t1594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1594.
                DATA(t1595) = t111.
                t1594 = t1595->rollname_a788.
                t1593 = t1594.
                DATA t1596 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t1596.
                DATA(t1597) = VALUE abap_bool( ).
                DATA t1598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1598.
                DATA(t1599) = t1593.
                t1598 = t1599.
                DATA t1600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1600.
                DATA t1601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1601.
                t1600 = t1601.
                DATA(t1602) = VALUE abap_bool( ).
                DATA(t1603) = t1598.
                IF t1603 IS INITIAL.
                  t1602 = abap_true.
                ELSEIF t1603->has = abap_false.
                  t1602 = abap_true.
                ENDIF.
                t1597 = t1602.
                IF t1597 = abap_true.
                  DATA t1604 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t1604.
                  DATA t1605 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t1605.
                  DATA t1606 TYPE REF TO zcl_lnt_unknown_type.
                  CLEAR t1606.
                  DATA(t1607) = |undefined, lookupTableType|.
                  DATA t1608 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1608.
                  t1606 = NEW zcl_lnt_unknown_type( i_error = t1607 i_qualified_name = t1608 ).
                  t1605 = t1606.
                  DATA t1609 TYPE REF TO zif_lnt_object.
                  CLEAR t1609.
                  DATA t1610 TYPE REF TO zif_lnt_object.
                  CLEAR t1610.
                  t1609 = t1610.
                  t1604 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1605 i_object_19cd = t1609 ).
                  CREATE OBJECT t1604->zlnt_view_ownkeys_b0e8086400eb.
                  t1604->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1611.
                  IF t1604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1611 ).
                  ENDIF.
                  CREATE OBJECT t1604->zlnt_json_ownkeys_70e5fd461788.
                  t1604->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t1612) = |type|.
                  DATA t1613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1613.
                  IF t1604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1604->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1612 p1 = t1613 ).
                  ENDIF.
                  t1596 = t1604.
                ELSE.
                  DATA t1614 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t1614.
                  DATA t1615 TYPE REF TO zcl_lnt_ob_table_type.
                  CLEAR t1615.
                  DATA t1616 TYPE REF TO zcl_lnt_ob_table_type.
                  CLEAR t1616.
                  DATA t1617 TYPE REF TO zif_lnt_object.
                  CLEAR t1617.
                  DATA t1618 TYPE REF TO zif_lnt_registry.
                  CLEAR t1618.
                  DATA(t1619) = t1591.
                  t1618 = t1619->reg.
                  DATA t1620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1620.
                  DATA(t1621) = abap_true.
                  IF t1621 = abap_true.
                    DATA(t1622) = |TTYP|.
                    DATA(t1623) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1623->has = abap_true.
                    t1623->value = t1622.
                    t1620 = t1623.
                  ELSE.
                    DATA t1624 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1624.
                    t1620 = t1624.
                  ENDIF.
                  DATA t1625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1625.
                  DATA(t1626) = abap_true.
                  IF t1626 = abap_true.
                    DATA(t1627) = VALUE string( ).
                    DATA(t1628) = t1593.
                    t1627 = t1628->value.
                    DATA(t1629) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1629->has = abap_true.
                    t1629->value = t1627.
                    t1625 = t1629.
                  ELSE.
                    DATA t1630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1630.
                    t1625 = t1630.
                  ENDIF.
                  t1617 = t1618->get_object( i_type_9913 = t1620 i_name = t1625 ).
                  DATA t1631 TYPE REF TO object.
                  CLEAR t1631.
                  t1631 = t1617.
                  t1616 ?= t1631.
                  t1615 = t1616.
                  DATA t1632 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t1632.
                  DATA(t1633) = VALUE abap_bool( ).
                  DATA(t1634) = t1615.
                  t1633 = xsdbool( t1634 IS BOUND ).
                  IF t1633 = abap_true.
                    DATA t1635 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t1635.
                    DATA t1636 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t1636.
                    DATA t1637 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t1637.
                    DATA t1638 TYPE REF TO zcl_lnt_ob_table_type.
                    CLEAR t1638.
                    DATA(t1639) = t1615.
                    t1638 = t1639.
                    DATA t1640 TYPE REF TO zif_lnt_registry.
                    CLEAR t1640.
                    DATA(t1641) = t1591.
                    t1640 = t1641->reg.
                    DATA t1642 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1642.
                    DATA t1643 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1643.
                    t1637 = t1638->parse_type( i_reg_f149 = t1640 i_data_element = t1642 i_description = t1643 ).
                    t1636 = t1637.
                    DATA t1644 TYPE REF TO zif_lnt_object.
                    CLEAR t1644.
                    DATA t1645 TYPE REF TO zcl_lnt_ob_table_type.
                    CLEAR t1645.
                    DATA(t1646) = t1615.
                    t1645 = t1646.
                    t1644 = t1645.
                    t1635 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1636 i_object_19cd = t1644 ).
                    CREATE OBJECT t1635->zlnt_view_ownkeys_b0e8086400eb.
                    t1635->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t1647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1647.
                    IF t1635->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t1635->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1647 ).
                    ENDIF.
                    DATA t1648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1648.
                    IF t1635->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t1635->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1648 ).
                    ENDIF.
                    CREATE OBJECT t1635->zlnt_json_ownkeys_70e5fd461788.
                    t1635->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t1649) = |type|.
                    DATA t1650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1650.
                    IF t1635->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t1635->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1649 p1 = t1650 ).
                    ENDIF.
                    DATA(t1651) = |object|.
                    DATA t1652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t1652.
                    IF t1635->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t1635->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1651 p1 = t1652 ).
                    ENDIF.
                    t1632 = t1635.
                  ELSE.
                    DATA t1653 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t1653.
                    DATA(t1654) = VALUE abap_bool( ).
                    DATA t1655 TYPE REF TO zif_lnt_registry.
                    CLEAR t1655.
                    DATA(t1656) = t1591.
                    t1655 = t1656->reg.
                    DATA(t1657) = VALUE string( ).
                    DATA(t1658) = t1593.
                    t1657 = t1658->value.
                    t1654 = t1655->in_error_namespace( i_name = t1657 ).
                    IF t1654 = abap_true.
                      DATA t1659 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1659.
                      DATA t1660 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t1660.
                      DATA t1661 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t1661.
                      DATA(t1662) = VALUE string( ).
                      DATA(t1663) = VALUE string( ).
                      DATA(t1664) = t1593.
                      t1663 = t1664->value.
                      DATA(t1665) = | not found, lookupTableType|.
                      DATA(t1666) = strlen( t1663 ).
                      t1662 = |{ t1663 }{ t1665 }|.
                      DATA t1667 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1667.
                      t1661 = NEW zcl_lnt_unknown_type( i_error = t1662 i_qualified_name = t1667 ).
                      t1660 = t1661.
                      DATA t1668 TYPE REF TO zif_lnt_object.
                      CLEAR t1668.
                      DATA t1669 TYPE REF TO zif_lnt_object.
                      CLEAR t1669.
                      t1668 = t1669.
                      t1659 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1660 i_object_19cd = t1668 ).
                      CREATE OBJECT t1659->zlnt_view_ownkeys_b0e8086400eb.
                      t1659->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1670.
                      IF t1659->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1659->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1670 ).
                      ENDIF.
                      CREATE OBJECT t1659->zlnt_json_ownkeys_70e5fd461788.
                      t1659->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t1671) = |type|.
                      DATA t1672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1672.
                      IF t1659->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1659->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1671 p1 = t1672 ).
                      ENDIF.
                      t1653 = t1659.
                    ELSE.
                      DATA t1673 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t1673.
                      DATA t1674 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t1674.
                      DATA t1675 TYPE REF TO zcl_lnt_void_type.
                      CLEAR t1675.
                      DATA t1676 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1676.
                      DATA(t1677) = abap_true.
                      IF t1677 = abap_true.
                        DATA(t1678) = VALUE string( ).
                        DATA(t1679) = t1593.
                        t1678 = t1679->value.
                        DATA(t1680) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1680->has = abap_true.
                        t1680->value = t1678.
                        t1676 = t1680.
                      ELSE.
                        DATA t1681 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1681.
                        t1676 = t1681.
                      ENDIF.
                      DATA t1682 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1682.
                      t1675 = zcl_lnt_void_type=>get_db65( i_voided = t1676 i_qualified_name = t1682 ).
                      t1674 = t1675.
                      DATA t1683 TYPE REF TO zif_lnt_object.
                      CLEAR t1683.
                      DATA t1684 TYPE REF TO zif_lnt_object.
                      CLEAR t1684.
                      t1683 = t1684.
                      t1673 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1674 i_object_19cd = t1683 ).
                      CREATE OBJECT t1673->zlnt_view_ownkeys_b0e8086400eb.
                      t1673->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1685.
                      IF t1673->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1673->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1685 ).
                      ENDIF.
                      CREATE OBJECT t1673->zlnt_json_ownkeys_70e5fd461788.
                      t1673->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t1686) = |type|.
                      DATA t1687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1687.
                      IF t1673->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1673->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1686 p1 = t1687 ).
                      ENDIF.
                      t1653 = t1673.
                    ENDIF.
                    t1632 = t1653.
                  ENDIF.
                  t1614 = t1632.
                  t1596 = t1614.
                ENDIF.
                t1590 = t1596.
                t1589 = t1590.
                DATA(t1688) = t103.
                DATA t1689 TYPE REF TO zcl_lnt_istructure_component.
                CLEAR t1689.
                DATA(t1690) = VALUE string( ).
                DATA(t1691) = VALUE string( ).
                DATA t1692 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1692.
                DATA(t1693) = t111.
                t1692 = t1693->fieldname.
                t1691 = t1692->value.
                t1690 = t1691.
                DATA t1694 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t1694.
                DATA t1695 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t1695.
                DATA(t1696) = t1589.
                t1695 = t1696->zlnt_view_read_sr_9be58e2d4893( ).
                t1694 = t1695.
                DATA t1697 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t1697.
                DATA t1698 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t1698.
                t1697 = t1698.
                DATA t1699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1699.
                DATA t1700 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t1700.
                t1699 = t1700.
                t1689 = NEW zcl_lnt_istructure_component( i_name = t1690 i_type_9913 = t1694 i_as_include = t1697 i_suffix = t1699 ).
                CREATE OBJECT t1689->zlnt_view_ownkeys_b0e8086400eb.
                t1689->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t1701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1701.
                IF t1689->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t1689->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1701 ).
                ENDIF.
                DATA t1702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1702.
                IF t1689->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t1689->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1702 ).
                ENDIF.
                CREATE OBJECT t1689->zlnt_json_ownkeys_70e5fd461788.
                t1689->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t1703) = |name|.
                DATA t1704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1704.
                IF t1689->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t1689->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1703 p1 = t1704 ).
                ENDIF.
                DATA(t1705) = |type|.
                DATA t1706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t1706.
                IF t1689->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t1689->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1705 p1 = t1706 ).
                ENDIF.
                t1688->load( ).
                APPEND t1689 TO t1688->items.
                t1688->save( ).
                DATA(t1707) = VALUE abap_bool( ).
                DATA t1708 TYPE REF TO zif_lnt_object.
                CLEAR t1708.
                DATA(t1709) = t1589.
                t1708 = t1709->zlnt_view_read_sr_2de0200e6505( ).
                t1707 = xsdbool( t1708 IS BOUND ).
                IF t1707 = abap_true.
                  DATA(t1710) = t101.
                  DATA t1711 TYPE REF TO zcl_lnt_iobject_and_token.
                  CLEAR t1711.
                  DATA t1712 TYPE REF TO zif_lnt_object.
                  CLEAR t1712.
                  DATA t1713 TYPE REF TO zif_lnt_object.
                  CLEAR t1713.
                  DATA(t1714) = abap_true.
                  IF t1714 = abap_true.
                    DATA t1715 TYPE REF TO zif_lnt_object.
                    CLEAR t1715.
                    DATA t1716 TYPE REF TO zif_lnt_object.
                    CLEAR t1716.
                    DATA(t1717) = t1589.
                    t1716 = t1717->zlnt_view_read_sr_2de0200e6505( ).
                    t1715 = t1716.
                    t1713 = t1715.
                  ELSE.
                    DATA t1718 TYPE REF TO zif_lnt_object.
                    CLEAR t1718.
                    t1713 = t1718.
                  ENDIF.
                  t1712 = t1713.
                  DATA t1719 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t1719.
                  DATA t1720 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t1720.
                  t1719 = t1720.
                  DATA t1721 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1721.
                  DATA t1722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1722.
                  t1721 = t1722.
                  t1711 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1712 i_token = t1719 i_filename = t1721 ).
                  CREATE OBJECT t1711->zlnt_view_ownkeys_b0e8086400eb.
                  t1711->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1723.
                  IF t1711->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1711->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1723 ).
                  ENDIF.
                  CREATE OBJECT t1711->zlnt_json_ownkeys_70e5fd461788.
                  t1711->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t1724) = |object|.
                  DATA t1725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1725.
                  IF t1711->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1711->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1724 p1 = t1725 ).
                  ENDIF.
                  t1710->load( ).
                  APPEND t1711 TO t1710->items.
                  t1710->save( ).
                ENDIF.
              ELSE.
                DATA(t1726) = VALUE abap_bool( ).
                DATA(t1727) = t116.
                DATA(t1728) = ||.
                t1726 = xsdbool( t1727 = t1728 ).
                IF t1726 = abap_true.
                  DATA t1729 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1729.
                  DATA t1730 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1730.
                  DATA(t1731) = t111.
                  t1730 = t1731->datatype_2bc5.
                  t1729 = t1730.
                  DATA(t1732) = VALUE abap_bool( ).
                  DATA t1733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1733.
                  DATA(t1734) = t1729.
                  t1733 = t1734.
                  DATA t1735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1735.
                  DATA t1736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1736.
                  t1735 = t1736.
                  DATA(t1737) = VALUE abap_bool( ).
                  DATA(t1738) = t1733.
                  IF t1738 IS INITIAL.
                    t1737 = abap_true.
                  ELSEIF t1738->has = abap_false.
                    t1737 = abap_true.
                  ENDIF.
                  t1732 = t1737.
                  IF t1732 = abap_true.
                    DATA t1739 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                    CLEAR t1739.
                    DATA t1740 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                    CLEAR t1740.
                    DATA t1741 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1741.
                    DATA(t1742) = abap_true.
                    IF t1742 = abap_true.
                      DATA(t1743) = VALUE string( ).
                      DATA(t1744) = |Expected DATATYPE, while parsing TABL |.
                      DATA(t1745) = VALUE string( ).
                      DATA t1746 TYPE REF TO zcl_lnt_abstract_object.
                      CLEAR t1746.
                      DATA(t1747) = me.
                      t1746 = t1747.
                      DATA(t1748) = VALUE string( ).
                      DATA(t1749) = t1746.
                      t1748 = t1749->name.
                      t1745 = t1748.
                      DATA(t1750) = strlen( t1744 ).
                      t1743 = |{ t1744 }{ t1745 }|.
                      DATA(t1751) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1751->has = abap_true.
                      t1751->value = t1743.
                      t1741 = t1751.
                    ELSE.
                      DATA t1752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1752.
                      t1741 = t1752.
                    ENDIF.
                    t1740 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t1741 ).
                    t1739 = NEW #( ).
                    t1739->payload = t1740.
                    CLEAR t1739->source_value.
                    IF t1740 IS BOUND.
                      DATA t1753 TYPE REF TO zlnt_view_storage_74017ca272ac.
                      CLEAR t1753.
                      DATA t1754 TYPE REF TO object.
                      CLEAR t1754.
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
                    ENDIF.
                    RAISE EXCEPTION t1739.
                  ENDIF.
                  DATA t1755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1755.
                  DATA t1756 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1756.
                  DATA(t1757) = VALUE abap_bool( ).
                  DATA t1758 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1758.
                  DATA(t1759) = t111.
                  t1758 = t1759->leng_0540.
                  IF t1758 IS BOUND.
                    IF t1758->has = abap_true.
                      t1757 = xsdbool( strlen( t1758->value ) > 0 ).
                    ENDIF.
                  ENDIF.
                  IF t1757 = abap_true.
                    DATA t1760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1760.
                    DATA(t1761) = abap_true.
                    IF t1761 = abap_true.
                      DATA(t1762) = VALUE string( ).
                      DATA t1763 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1763.
                      DATA(t1764) = t111.
                      t1763 = t1764->leng_0540.
                      t1762 = t1763->value.
                      DATA(t1765) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1765->has = abap_true.
                      t1765->value = t1762.
                      t1760 = t1765.
                    ELSE.
                      DATA t1766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1766.
                      t1760 = t1766.
                    ENDIF.
                    t1756 = t1760.
                  ELSE.
                    DATA t1767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1767.
                    DATA(t1768) = t111.
                    t1767 = t1768->intlen.
                    t1756 = t1767.
                  ENDIF.
                  t1755 = t1756.
                  DATA(t1769) = t103.
                  DATA t1770 TYPE REF TO zcl_lnt_istructure_component.
                  CLEAR t1770.
                  DATA(t1771) = VALUE string( ).
                  DATA(t1772) = VALUE string( ).
                  DATA t1773 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1773.
                  DATA(t1774) = t111.
                  t1773 = t1774->fieldname.
                  t1772 = t1773->value.
                  t1771 = t1772.
                  DATA t1775 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t1775.
                  DATA t1776 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t1776.
                  DATA(t1777) = t105.
                  DATA t1778 TYPE REF TO zcl_lnt_shape_4a88086c.
                  CLEAR t1778.
                  DATA t1779 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1779.
                  DATA t1780 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1780.
                  DATA(t1781) = abap_true.
                  IF t1781 = abap_true.
                    DATA(t1782) = VALUE string( ).
                    DATA(t1783) = t1729.
                    t1782 = t1783->value.
                    DATA(t1784) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1784->has = abap_true.
                    t1784->value = t1782.
                    t1780 = t1784.
                  ELSE.
                    DATA t1785 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t1785.
                    t1780 = t1785.
                  ENDIF.
                  t1779 = t1780.
                  DATA t1786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1786.
                  DATA(t1787) = t1755.
                  t1786 = t1787.
                  DATA t1788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1788.
                  DATA t1789 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1789.
                  DATA(t1790) = t111.
                  t1789 = t1790->decimals_0f26.
                  t1788 = t1789.
                  DATA(t1791) = VALUE string( ).
                  DATA(t1792) = VALUE string( ).
                  DATA(t1793) = VALUE string( ).
                  DATA(t1794) = VALUE string( ).
                  DATA t1795 TYPE REF TO zcl_lnt_abstract_object.
                  CLEAR t1795.
                  DATA(t1796) = me.
                  t1795 = t1796.
                  DATA(t1797) = VALUE string( ).
                  DATA(t1798) = t1795.
                  t1797 = t1798->name.
                  t1794 = t1797.
                  DATA(t1799) = |-|.
                  DATA(t1800) = strlen( t1794 ).
                  t1793 = |{ t1794 }{ t1799 }|.
                  DATA(t1801) = VALUE string( ).
                  DATA t1802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1802.
                  DATA t1803 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1803.
                  DATA(t1804) = t111.
                  t1803 = t1804->fieldname.
                  t1802 = t1803.
                  DATA(t1805) = VALUE string( ).
                  DATA(t1806) = VALUE abap_bool( ).
                  DATA(t1807) = t1802.
                  IF t1807 IS INITIAL.
                    t1806 = abap_true.
                  ELSEIF t1807->has = abap_false.
                    t1806 = abap_true.
                  ENDIF.
                  IF t1806 = abap_true.
                    DATA(t1808) = |undefined|.
                    t1805 = t1808.
                  ELSE.
                    DATA(t1809) = VALUE string( ).
                    DATA(t1810) = t1802.
                    t1809 = t1810->value.
                    t1805 = t1809.
                  ENDIF.
                  t1801 = t1805.
                  DATA(t1811) = strlen( t1793 ).
                  t1792 = |{ t1793 }{ t1801 }|.
                  t1791 = t1792.
                  DATA t1812 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1812.
                  DATA t1813 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1813.
                  DATA(t1814) = t111.
                  t1813 = t1814->ddtext_87ee.
                  t1812 = t1813.
                  DATA t1815 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1815.
                  DATA t1816 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1816.
                  t1815 = t1816.
                  DATA t1817 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1817.
                  DATA t1818 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1818.
                  t1817 = t1818.
                  DATA t1819 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1819.
                  DATA t1820 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1820.
                  t1819 = t1820.
                  t1778 = NEW zcl_lnt_shape_4a88086c( i_text = t1779 i_length = t1786 i_decimals_2eed = t1788 i_info_text = t1791 i_qualified_name = t1815 i_conversion_exit = t1817 i_ddic_name = t1819 i_description = t1812 ).
                  CREATE OBJECT t1778->zlnt_view_ownkeys_b0e8086400eb.
                  t1778->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1821.
                  IF t1778->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1778->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t1821 ).
                  ENDIF.
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
                  DATA(t1826) = |text|.
                  DATA t1827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1827.
                  IF t1778->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1826 p1 = t1827 ).
                  ENDIF.
                  DATA(t1828) = |length|.
                  DATA t1829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1829.
                  IF t1778->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1828 p1 = t1829 ).
                  ENDIF.
                  DATA(t1830) = |decimals|.
                  DATA t1831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1831.
                  IF t1778->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1830 p1 = t1831 ).
                  ENDIF.
                  DATA(t1832) = |infoText|.
                  DATA t1833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1833.
                  IF t1778->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1832 p1 = t1833 ).
                  ENDIF.
                  DATA(t1834) = |description|.
                  DATA t1835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1835.
                  IF t1778->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1834 p1 = t1835 ).
                  ENDIF.
                  t1776 = t1777->text_to_type( i_input_967e = t1778 ).
                  t1775 = t1776.
                  DATA t1836 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t1836.
                  DATA t1837 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t1837.
                  t1836 = t1837.
                  DATA t1838 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1838.
                  DATA t1839 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1839.
                  t1838 = t1839.
                  t1770 = NEW zcl_lnt_istructure_component( i_name = t1771 i_type_9913 = t1775 i_as_include = t1836 i_suffix = t1838 ).
                  CREATE OBJECT t1770->zlnt_view_ownkeys_b0e8086400eb.
                  t1770->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1840.
                  IF t1770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1840 ).
                  ENDIF.
                  DATA t1841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1841.
                  IF t1770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1841 ).
                  ENDIF.
                  CREATE OBJECT t1770->zlnt_json_ownkeys_70e5fd461788.
                  t1770->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t1842) = |name|.
                  DATA t1843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1843.
                  IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1842 p1 = t1843 ).
                  ENDIF.
                  DATA(t1844) = |type|.
                  DATA t1845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1845.
                  IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1844 p1 = t1845 ).
                  ENDIF.
                  t1769->load( ).
                  APPEND t1770 TO t1769->items.
                  t1769->save( ).
                ELSE.
                  DATA(t1846) = t103.
                  DATA t1847 TYPE REF TO zcl_lnt_istructure_component.
                  CLEAR t1847.
                  DATA(t1848) = VALUE string( ).
                  DATA(t1849) = VALUE string( ).
                  DATA t1850 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1850.
                  DATA(t1851) = t111.
                  t1850 = t1851->fieldname.
                  t1849 = t1850->value.
                  t1848 = t1849.
                  DATA t1852 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t1852.
                  DATA t1853 TYPE REF TO zcl_lnt_unknown_type.
                  CLEAR t1853.
                  DATA(t1854) = VALUE string( ).
                  DATA(t1855) = VALUE string( ).
                  DATA(t1856) = VALUE string( ).
                  DATA(t1857) = VALUE string( ).
                  DATA(t1858) = |Table |.
                  DATA(t1859) = VALUE string( ).
                  DATA t1860 TYPE REF TO zcl_lnt_abstract_object.
                  CLEAR t1860.
                  DATA(t1861) = me.
                  t1860 = t1861.
                  DATA(t1862) = VALUE string( ).
                  DATA(t1863) = t1860.
                  t1862 = t1863->name.
                  t1859 = t1862.
                  DATA(t1864) = strlen( t1858 ).
                  t1857 = |{ t1858 }{ t1859 }|.
                  DATA(t1865) = |, unknown component type "|.
                  DATA(t1866) = strlen( t1857 ).
                  t1856 = |{ t1857 }{ t1865 }|.
                  DATA(t1867) = t116.
                  DATA(t1868) = strlen( t1856 ).
                  t1855 = |{ t1856 }{ t1867 }|.
                  DATA(t1869) = |"|.
                  DATA(t1870) = strlen( t1855 ).
                  t1854 = |{ t1855 }{ t1869 }|.
                  DATA t1871 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1871.
                  t1853 = NEW zcl_lnt_unknown_type( i_error = t1854 i_qualified_name = t1871 ).
                  t1852 = t1853.
                  DATA t1872 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t1872.
                  DATA t1873 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t1873.
                  t1872 = t1873.
                  DATA t1874 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1874.
                  DATA t1875 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t1875.
                  t1874 = t1875.
                  t1847 = NEW zcl_lnt_istructure_component( i_name = t1848 i_type_9913 = t1852 i_as_include = t1872 i_suffix = t1874 ).
                  CREATE OBJECT t1847->zlnt_view_ownkeys_b0e8086400eb.
                  t1847->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t1876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1876.
                  IF t1847->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1847->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1876 ).
                  ENDIF.
                  DATA t1877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1877.
                  IF t1847->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t1847->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1877 ).
                  ENDIF.
                  CREATE OBJECT t1847->zlnt_json_ownkeys_70e5fd461788.
                  t1847->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t1878) = |name|.
                  DATA t1879 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1879.
                  IF t1847->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1847->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1878 p1 = t1879 ).
                  ENDIF.
                  DATA(t1880) = |type|.
                  DATA t1881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t1881.
                  IF t1847->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t1847->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1880 p1 = t1881 ).
                  ENDIF.
                  t1846->load( ).
                  APPEND t1847 TO t1846->items.
                  t1846->save( ).
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t1882) = VALUE abap_bool( ).
      DATA t1883 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1883.
      DATA(t1884) = t111.
      t1883 = t1884->checktable.
      IF t1883 IS BOUND.
        IF t1883->has = abap_true.
          t1882 = xsdbool( strlen( t1883->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t1882 = abap_true.
        DATA t1885 TYPE REF TO zif_lnt_union_c74a232f.
        CLEAR t1885.
        DATA t1886 TYPE REF TO zif_lnt_union_c74a232f.
        CLEAR t1886.
        DATA(t1887) = t105.
        DATA t1888 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1888.
        DATA(t1889) = abap_true.
        IF t1889 = abap_true.
          DATA(t1890) = VALUE string( ).
          DATA t1891 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1891.
          DATA(t1892) = t111.
          t1891 = t1892->checktable.
          t1890 = t1891->value.
          DATA(t1893) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1893->has = abap_true.
          t1893->value = t1890.
          t1888 = t1893.
        ELSE.
          DATA t1894 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1894.
          t1888 = t1894.
        ENDIF.
        t1886 = t1887->lookup_table_or_view2( i_name = t1888 ).
        t1885 = t1886.
        DATA(t1895) = VALUE abap_bool( ).
        DATA(t1896) = t1885.
        t1895 = xsdbool( t1896 IS BOUND ).
        IF t1895 = abap_true.
          DATA(t1897) = t101.
          DATA t1898 TYPE REF TO zcl_lnt_iobject_and_token.
          CLEAR t1898.
          DATA t1899 TYPE REF TO zif_lnt_object.
          CLEAR t1899.
          DATA t1900 TYPE REF TO zif_lnt_object.
          CLEAR t1900.
          DATA t1901 TYPE REF TO zif_lnt_union_c74a232f.
          CLEAR t1901.
          DATA(t1902) = t1885.
          t1901 = t1902.
          t1900 ?= t1901.
          t1899 = t1900.
          DATA t1903 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1903.
          DATA t1904 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1904.
          t1903 = t1904.
          DATA t1905 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1905.
          DATA t1906 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1906.
          t1905 = t1906.
          t1898 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1899 i_token = t1903 i_filename = t1905 ).
          CREATE OBJECT t1898->zlnt_view_ownkeys_b0e8086400eb.
          t1898->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1907.
          IF t1898->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1898->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1907 ).
          ENDIF.
          CREATE OBJECT t1898->zlnt_json_ownkeys_70e5fd461788.
          t1898->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t1908) = |object|.
          DATA t1909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1909.
          IF t1898->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1898->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1908 p1 = t1909 ).
          ENDIF.
          t1897->load( ).
          APPEND t1898 TO t1897->items.
          t1897->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t1910) = VALUE abap_bool( ).
    DATA(t1911) = VALUE i( ).
    DATA(t1912) = t103.
    t1912->load( ).
    t1911 = lines( t1912->items ).
    DATA(t1913) = 0.
    t1910 = xsdbool( t1911 = t1913 ).
    IF t1910 = abap_true.
      DATA t1914 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t1914.
      DATA(t1915) = VALUE string( ).
      DATA(t1916) = VALUE string( ).
      DATA(t1917) = |Table/Structure |.
      DATA(t1918) = VALUE string( ).
      DATA t1919 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t1919.
      DATA(t1920) = me.
      t1919 = t1920.
      DATA(t1921) = VALUE string( ).
      DATA(t1922) = t1919.
      t1921 = t1922->name.
      t1918 = t1921.
      DATA(t1923) = strlen( t1917 ).
      t1916 = |{ t1917 }{ t1918 }|.
      DATA(t1924) = | does not contain any components|.
      DATA(t1925) = strlen( t1916 ).
      t1915 = |{ t1916 }{ t1924 }|.
      DATA t1926 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1926.
      t1914 = NEW zcl_lnt_unknown_type( i_error = t1915 i_qualified_name = t1926 ).
      result = t1914.
      RETURN.
    ENDIF.
    DATA t1927 TYPE REF TO zif_lnt_ddic_references.
    CLEAR t1927.
    DATA(t1928) = t1.
    t1927 = t1928->get_ddic_references( ).
    DATA(t1929) = me.
    DATA(t1930) = t101.
    t1927->set_using( i_obj_1ed0 = t1929 i_using = t1930 ).
    DATA t1931 TYPE REF TO zcl_lnt_structure_type.
    CLEAR t1931.
    DATA(t1932) = t103.
    DATA t1933 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1933.
    DATA(t1934) = abap_true.
    IF t1934 = abap_true.
      DATA(t1935) = VALUE string( ).
      DATA t1936 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t1936.
      DATA(t1937) = me.
      t1936 = t1937.
      DATA(t1938) = VALUE string( ).
      DATA(t1939) = t1936.
      t1938 = t1939->name.
      t1935 = t1938.
      DATA(t1940) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t1940->has = abap_true.
      t1940->value = t1935.
      t1933 = t1940.
    ELSE.
      DATA t1941 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1941.
      t1933 = t1941.
    ENDIF.
    DATA t1942 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1942.
    DATA(t1943) = abap_true.
    IF t1943 = abap_true.
      DATA(t1944) = VALUE string( ).
      DATA t1945 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t1945.
      DATA(t1946) = me.
      t1945 = t1946.
      DATA(t1947) = VALUE string( ).
      DATA(t1948) = t1945.
      t1947 = t1948->name.
      t1944 = t1947.
      DATA(t1949) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t1949->has = abap_true.
      t1949->value = t1944.
      t1942 = t1949.
    ELSE.
      DATA t1950 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1950.
      t1942 = t1950.
    ENDIF.
    DATA t1951 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1951.
    DATA(t1952) = VALUE abap_bool( ).
    DATA t1953 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t1953.
    DATA(t1954) = me->parsed_data.
    t1953 = t1954.
    DATA t1955 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1955.
    DATA t1956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1956.
    t1955 = t1956.
    DATA(t1957) = VALUE abap_bool( ).
    DATA(t1958) = t1953.
    IF t1958 IS INITIAL.
      t1957 = abap_true.
    ENDIF.
    t1952 = t1957.
    IF t1952 = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t1959 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1959.
    DATA t1960 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t1960.
    DATA(t1961) = me->parsed_data.
    t1960 = t1961.
    DATA t1962 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1962.
    DATA(t1963) = VALUE abap_bool( ).
    DATA(t1964) = t1960.
    IF t1964 IS INITIAL.
      t1963 = abap_true.
    ENDIF.
    IF t1963 = abap_true.
      DATA t1965 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1965.
      t1962 = t1965.
    ELSE.
      DATA t1966 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1966.
      DATA t1967 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      CLEAR t1967.
      DATA(t1968) = t1960.
      t1967 = t1968.
      t1966 = t1967->description.
      t1962 = t1966.
    ENDIF.
    t1959 = t1962.
    t1951 = t1959.
    t1931 = NEW zcl_lnt_structure_type( i_components = t1932 i_qualified_name = t1933 i_ddic_name = t1942 i_description = t1951 ).
    me->parsed_type = t1931.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedType`.
    DATA t1969 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t1969.
    DATA(t1970) = me->parsed_type.
    t1969 = t1970.
    result = t1969.

  ENDMETHOD.

  METHOD get_table_category.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t10) = me->parsed_data.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t16 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->table_category.
      t11 = t15.
    ENDIF.
    t8 = t11.
    result = t8.

  ENDMETHOD.

  METHOD get_delivery_class.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t10) = me->parsed_data.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t16 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->delivery_class.
      t11 = t15.
    ENDIF.
    t8 = t11.
    result = t8.

  ENDMETHOD.

  METHOD get_size_category.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
    DATA t9 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t10) = me->parsed_data.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t16 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t17) = t9.
      t16 = t17.
      t15 = t16->size_category.
      t11 = t15.
    ENDIF.
    t8 = t11.
    result = t8.

  ENDMETHOD.

  METHOD get_enhancement_category.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_b90fc0d5.
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
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t12) = me->parsed_data.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t11.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t18 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t19) = t11.
      t18 = t19.
      t17 = t18->enhancement_category.
      t13 = t17.
    ENDIF.
    t10 = t13.
    t9 = t10.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t9.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ELSEIF t23->has = abap_false.
      t22 = abap_true.
    ENDIF.
    t8 = t22.
    IF t8 = abap_true.
      DATA(t24) = |0|.
      result = t24.
      RETURN.
    ENDIF.
    DATA t25 TYPE string.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t28) = me->parsed_data.
    t27 = t28.
    t26 = t27->enhancement_category.
    t25 = t26->value.
    result = t25.

  ENDMETHOD.

  METHOD key_fields_not_first.
    DATA t1 TYPE abap_bool.
    DATA(t2) = abap_false.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA(t7) = me->parsed_data.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t6.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t13 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA(t14) = t6.
      t13 = t14.
      t12 = t13->fields_464c.
      t8 = t12.
    ENDIF.
    t5 = t8.
    t4 = t5.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE abap_bool.
    DATA(t17) = t4.
    t16 = xsdbool( t17 IS BOUND ).
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t19) = t4.
      t18 = t19.
      t15 = t18.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t20.
      t15 = t20.
    ENDIF.
    t3 = t15.
    DATA t21 TYPE REF TO zcl_lnt_shape_e534171c.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
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
      DATA(t28) = t21.
      t27 = t28->keyflag.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA(t30) = abap_true.
      IF t30 = abap_true.
        DATA(t31) = |X|.
        DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t32->has = abap_true.
        t32->value = t31.
        t29 = t32.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        t29 = t33.
      ENDIF.
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
        DATA t36 TYPE abap_bool.
        DATA(t37) = t1.
        DATA(t38) = abap_true.
        t36 = xsdbool( t37 = t38 ).
        IF t36 = abap_true.
          DATA(t39) = abap_true.
          result = t39.
          RETURN.
        ENDIF.
      ELSE.
        DATA(t40) = abap_true.
        t1 = t40.
      ENDIF.
    ENDDO.
    DATA(t41) = abap_false.
    result = t41.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      DATA(t9) = t1.
      t8 = t9.
      t4 = t8.
    ENDIF.
    t3 = t4.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA(t12) = t3.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
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
      RETURN.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA(t22) = abap_true.
      IF t22 = abap_true.
        DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t23.
        CREATE OBJECT t23.
        t21 = t23.
      ELSE.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t24.
        t21 = t24.
      ENDIF.
      t20 = t21.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t25 = t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      t33 = t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      t35 = t36.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t38.
      t37 = t38.
      t19 = NEW zcl_lnt_shape_b90fc0d5( i_table_category = t25 i_data_class = t27 i_delivery_class = t29 i_size_category = t31 i_enhancement_category = t33 i_description = t35 i_secondary_indexes = t37 i_fields_62af = t20 ).
      CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
      t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t39 ).
      ENDIF.
      CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
      t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t40) = |fields|.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
      ENDIF.
      t17 = t19.
    ELSE.
      DATA t42 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      CLEAR t42.
      t17 = t42.
    ENDIF.
    me->parsed_data = t17.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    DATA(t43) = VALUE abap_bool( ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = t3.
    t46 = t47.
    DATA(t48) = |abapGit|.
    t45 = t46->get( p0 = t48 ).
    t44 = t45.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    t49 = t50.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = t44.
    IF t52 IS INITIAL.
      t51 = abap_true.
    ENDIF.
    t43 = t51.
    IF t43 = abap_true.
      RETURN.
    ENDIF.
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
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = t3.
    t64 = t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = VALUE abap_bool( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = t64.
    CLEAR t68.
    IF t69 IS BOUND.
      t68 = t69.
    ENDIF.
    IF t68 IS NOT BOUND.
      t67 = abap_true.
    ELSE.
      t67 = xsdbool( t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t67 = abap_true.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      t66 = t70.
    ELSE.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      DATA(t73) = t64.
      t72 = t73.
      DATA(t74) = |abapGit|.
      t71 = t72->get( p0 = t74 ).
      t66 = t71.
    ENDIF.
    t63 = t66.
    t62 = t63.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA(t78) = t62.
    CLEAR t77.
    IF t78 IS BOUND.
      t77 = t78.
    ENDIF.
    IF t77 IS NOT BOUND.
      t76 = abap_true.
    ELSE.
      t76 = xsdbool( t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t76 = abap_true.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      t75 = t79.
    ELSE.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      DATA(t82) = t62.
      t81 = t82.
      DATA(t83) = |asx:abap|.
      t80 = t81->get( p0 = t83 ).
      t75 = t80.
    ENDIF.
    t61 = t75.
    t60 = t61.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = VALUE abap_bool( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = t60.
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
      DATA(t91) = t60.
      t90 = t91.
      DATA(t92) = |asx:values|.
      t89 = t90->get( p0 = t92 ).
      t84 = t89.
    ENDIF.
    t59 = t84.
    t58 = t59.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = VALUE abap_bool( ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = t58.
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
      DATA(t100) = t58.
      t99 = t100.
      DATA(t101) = |DD02V|.
      t98 = t99->get( p0 = t101 ).
      t93 = t98.
    ENDIF.
    t57 = t93.
    t56 = t57.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = VALUE abap_bool( ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = t56.
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
      DATA(t109) = t56.
      t108 = t109.
      DATA(t110) = |EXCLASS|.
      t107 = t108->get( p0 = t110 ).
      t102 = t107.
    ENDIF.
    t55 = t102.
    t54 = t55.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    t111 = t112.
    DATA(t113) = VALUE abap_bool( ).
    DATA(t114) = t54.
    IF t114 IS INITIAL.
      t113 = abap_true.
    ENDIF.
    t53 = t113.
    IF t53 = abap_true.
      DATA t115 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      CLEAR t115.
      DATA(t116) = me->parsed_data.
      t115 = t116.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t117.
      DATA(t118) = abap_true.
      IF t118 = abap_true.
        DATA(t119) = |0|.
        DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t120->has = abap_true.
        t120->value = t119.
        t117 = t120.
      ELSE.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        t117 = t121.
      ENDIF.
      t115->enhancement_category = t117.
      DELETE t115->zlnt_record_delet_0597644d88b4 WHERE table_line = `enhancementCategory`.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `enhancementCategory` p1 = t122 ).
      ENDIF.
      DATA(t123) = |enhancementCategory|.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
      ENDIF.
    ELSE.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      DATA(t136) = t3.
      t135 = t136.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      DATA(t138) = VALUE abap_bool( ).
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      DATA(t140) = t135.
      CLEAR t139.
      IF t140 IS BOUND.
        t139 = t140.
      ENDIF.
      IF t139 IS NOT BOUND.
        t138 = abap_true.
      ELSE.
        t138 = xsdbool( t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t138 = abap_true.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        t137 = t141.
      ELSE.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        DATA(t144) = t135.
        t143 = t144.
        DATA(t145) = |abapGit|.
        t142 = t143->get( p0 = t145 ).
        t137 = t142.
      ENDIF.
      t134 = t137.
      t133 = t134.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t146.
      DATA(t147) = VALUE abap_bool( ).
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      DATA(t149) = t133.
      CLEAR t148.
      IF t149 IS BOUND.
        t148 = t149.
      ENDIF.
      IF t148 IS NOT BOUND.
        t147 = abap_true.
      ELSE.
        t147 = xsdbool( t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t147 = abap_true.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        t146 = t150.
      ELSE.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        DATA(t153) = t133.
        t152 = t153.
        DATA(t154) = |asx:abap|.
        t151 = t152->get( p0 = t154 ).
        t146 = t151.
      ENDIF.
      t132 = t146.
      t131 = t132.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      DATA(t156) = VALUE abap_bool( ).
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      DATA(t158) = t131.
      CLEAR t157.
      IF t158 IS BOUND.
        t157 = t158.
      ENDIF.
      IF t157 IS NOT BOUND.
        t156 = abap_true.
      ELSE.
        t156 = xsdbool( t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t156 = abap_true.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        t155 = t159.
      ELSE.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        DATA(t162) = t131.
        t161 = t162.
        DATA(t163) = |asx:values|.
        t160 = t161->get( p0 = t163 ).
        t155 = t160.
      ENDIF.
      t130 = t155.
      t129 = t130.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t164.
      DATA(t165) = VALUE abap_bool( ).
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      DATA(t167) = t129.
      CLEAR t166.
      IF t167 IS BOUND.
        t166 = t167.
      ENDIF.
      IF t166 IS NOT BOUND.
        t165 = abap_true.
      ELSE.
        t165 = xsdbool( t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t165 = abap_true.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        t164 = t168.
      ELSE.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        DATA(t171) = t129.
        t170 = t171.
        DATA(t172) = |DD02V|.
        t169 = t170->get( p0 = t172 ).
        t164 = t169.
      ENDIF.
      t128 = t164.
      t127 = t128.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      DATA(t174) = VALUE abap_bool( ).
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      DATA(t176) = t127.
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
        DATA(t180) = t127.
        t179 = t180.
        DATA(t181) = |EXCLASS|.
        t178 = t179->get( p0 = t181 ).
        t173 = t178.
      ENDIF.
      t126 = t173.
      t125 = t126.
      DATA t182 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      CLEAR t182.
      DATA(t183) = me->parsed_data.
      t182 = t183.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t184.
      DATA(t185) = VALUE abap_bool( ).
      DATA(t186) = t125.
      IF t186 IS INITIAL.
        t185 = abap_true.
      ENDIF.
      IF t185 = abap_true.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t187.
        t184 = t187.
      ELSE.
        DATA(t188) = VALUE string( ).
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t189.
        DATA(t190) = t125.
        t189 = t190.
        t188 = t189->as_string( ).
        DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t191->has = abap_true.
        t191->value = t188.
        t184 = t191.
      ENDIF.
      t182->enhancement_category = t184.
      DELETE t182->zlnt_record_delet_0597644d88b4 WHERE table_line = `enhancementCategory`.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t192.
      IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `enhancementCategory` p1 = t192 ).
      ENDIF.
      DATA(t193) = |enhancementCategory|.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t194.
      IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t193 p1 = t194 ).
      ENDIF.
    ENDIF.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = t3.
    t205 = t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA(t208) = VALUE abap_bool( ).
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = t205.
    CLEAR t209.
    IF t210 IS BOUND.
      t209 = t210.
    ENDIF.
    IF t209 IS NOT BOUND.
      t208 = abap_true.
    ELSE.
      t208 = xsdbool( t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t208 = abap_true.
      DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t211.
      t207 = t211.
    ELSE.
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t213.
      DATA(t214) = t205.
      t213 = t214.
      DATA(t215) = |abapGit|.
      t212 = t213->get( p0 = t215 ).
      t207 = t212.
    ENDIF.
    t204 = t207.
    t203 = t204.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA(t217) = VALUE abap_bool( ).
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA(t219) = t203.
    CLEAR t218.
    IF t219 IS BOUND.
      t218 = t219.
    ENDIF.
    IF t218 IS NOT BOUND.
      t217 = abap_true.
    ELSE.
      t217 = xsdbool( t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t217 = abap_true.
      DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t220.
      t216 = t220.
    ELSE.
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t221.
      DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t222.
      DATA(t223) = t203.
      t222 = t223.
      DATA(t224) = |asx:abap|.
      t221 = t222->get( p0 = t224 ).
      t216 = t221.
    ENDIF.
    t202 = t216.
    t201 = t202.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA(t226) = VALUE abap_bool( ).
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA(t228) = t201.
    CLEAR t227.
    IF t228 IS BOUND.
      t227 = t228.
    ENDIF.
    IF t227 IS NOT BOUND.
      t226 = abap_true.
    ELSE.
      t226 = xsdbool( t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t226 = abap_true.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      t225 = t229.
    ELSE.
      DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t230.
      DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t231.
      DATA(t232) = t201.
      t231 = t232.
      DATA(t233) = |asx:values|.
      t230 = t231->get( p0 = t233 ).
      t225 = t230.
    ENDIF.
    t200 = t225.
    t199 = t200.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA(t235) = VALUE abap_bool( ).
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA(t237) = t199.
    CLEAR t236.
    IF t237 IS BOUND.
      t236 = t237.
    ENDIF.
    IF t236 IS NOT BOUND.
      t235 = abap_true.
    ELSE.
      t235 = xsdbool( t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t235 = abap_true.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      t234 = t238.
    ELSE.
      DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t239.
      DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t240.
      DATA(t241) = t199.
      t240 = t241.
      DATA(t242) = |DD02V|.
      t239 = t240->get( p0 = t242 ).
      t234 = t239.
    ENDIF.
    t198 = t234.
    t197 = t198.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA(t244) = VALUE abap_bool( ).
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA(t246) = t197.
    CLEAR t245.
    IF t246 IS BOUND.
      t245 = t246.
    ENDIF.
    IF t245 IS NOT BOUND.
      t244 = abap_true.
    ELSE.
      t244 = xsdbool( t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t244 = abap_true.
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t247.
      t243 = t247.
    ELSE.
      DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t248.
      DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t249.
      DATA(t250) = t197.
      t249 = t250.
      DATA(t251) = |TABCLASS|.
      t248 = t249->get( p0 = t251 ).
      t243 = t248.
    ENDIF.
    t196 = t243.
    t195 = t196.
    DATA t252 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t252.
    DATA(t253) = me->parsed_data.
    t252 = t253.
    DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t254.
    DATA(t255) = VALUE abap_bool( ).
    DATA(t256) = t195.
    IF t256 IS INITIAL.
      t255 = abap_true.
    ENDIF.
    IF t255 = abap_true.
      DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t257.
      t254 = t257.
    ELSE.
      DATA(t258) = VALUE string( ).
      DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t259.
      DATA(t260) = t195.
      t259 = t260.
      t258 = t259->as_string( ).
      DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t261->has = abap_true.
      t261->value = t258.
      t254 = t261.
    ENDIF.
    t252->table_category = t254.
    DELETE t252->zlnt_record_delet_0597644d88b4 WHERE table_line = `tableCategory`.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tableCategory` p1 = t262 ).
    ENDIF.
    DATA(t263) = |tableCategory|.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
    ENDIF.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA(t276) = t3.
    t275 = t276.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA(t278) = VALUE abap_bool( ).
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA(t280) = t275.
    CLEAR t279.
    IF t280 IS BOUND.
      t279 = t280.
    ENDIF.
    IF t279 IS NOT BOUND.
      t278 = abap_true.
    ELSE.
      t278 = xsdbool( t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t278 = abap_true.
      DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t281.
      t277 = t281.
    ELSE.
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t282.
      DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t283.
      DATA(t284) = t275.
      t283 = t284.
      DATA(t285) = |abapGit|.
      t282 = t283->get( p0 = t285 ).
      t277 = t282.
    ENDIF.
    t274 = t277.
    t273 = t274.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA(t287) = VALUE abap_bool( ).
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t288.
    DATA(t289) = t273.
    CLEAR t288.
    IF t289 IS BOUND.
      t288 = t289.
    ENDIF.
    IF t288 IS NOT BOUND.
      t287 = abap_true.
    ELSE.
      t287 = xsdbool( t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t287 = abap_true.
      DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t290.
      t286 = t290.
    ELSE.
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t291.
      DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t292.
      DATA(t293) = t273.
      t292 = t293.
      DATA(t294) = |asx:abap|.
      t291 = t292->get( p0 = t294 ).
      t286 = t291.
    ENDIF.
    t272 = t286.
    t271 = t272.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA(t296) = VALUE abap_bool( ).
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA(t298) = t271.
    CLEAR t297.
    IF t298 IS BOUND.
      t297 = t298.
    ENDIF.
    IF t297 IS NOT BOUND.
      t296 = abap_true.
    ELSE.
      t296 = xsdbool( t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t296 = abap_true.
      DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t299.
      t295 = t299.
    ELSE.
      DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t300.
      DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t301.
      DATA(t302) = t271.
      t301 = t302.
      DATA(t303) = |asx:values|.
      t300 = t301->get( p0 = t303 ).
      t295 = t300.
    ENDIF.
    t270 = t295.
    t269 = t270.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA(t305) = VALUE abap_bool( ).
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA(t307) = t269.
    CLEAR t306.
    IF t307 IS BOUND.
      t306 = t307.
    ENDIF.
    IF t306 IS NOT BOUND.
      t305 = abap_true.
    ELSE.
      t305 = xsdbool( t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t305 = abap_true.
      DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t308.
      t304 = t308.
    ELSE.
      DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t309.
      DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t310.
      DATA(t311) = t269.
      t310 = t311.
      DATA(t312) = |DD02V|.
      t309 = t310->get( p0 = t312 ).
      t304 = t309.
    ENDIF.
    t268 = t304.
    t267 = t268.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = VALUE abap_bool( ).
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA(t316) = t267.
    CLEAR t315.
    IF t316 IS BOUND.
      t315 = t316.
    ENDIF.
    IF t315 IS NOT BOUND.
      t314 = abap_true.
    ELSE.
      t314 = xsdbool( t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t314 = abap_true.
      DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t317.
      t313 = t317.
    ELSE.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t318.
      DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t319.
      DATA(t320) = t267.
      t319 = t320.
      DATA(t321) = |DDTEXT|.
      t318 = t319->get( p0 = t321 ).
      t313 = t318.
    ENDIF.
    t266 = t313.
    t265 = t266.
    DATA t322 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t322.
    DATA(t323) = me->parsed_data.
    t322 = t323.
    DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t324.
    DATA(t325) = VALUE abap_bool( ).
    DATA(t326) = t265.
    IF t326 IS INITIAL.
      t325 = abap_true.
    ENDIF.
    IF t325 = abap_true.
      DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t327.
      t324 = t327.
    ELSE.
      DATA(t328) = VALUE string( ).
      DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t329.
      DATA(t330) = t265.
      t329 = t330.
      t328 = t329->as_string( ).
      DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t331->has = abap_true.
      t331->value = t328.
      t324 = t331.
    ENDIF.
    t322->description = t324.
    DELETE t322->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t332 ).
    ENDIF.
    DATA(t333) = |description|.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t333 p1 = t334 ).
    ENDIF.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t336.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t342.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA(t346) = t3.
    t345 = t346.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    DATA(t348) = VALUE abap_bool( ).
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA(t350) = t345.
    CLEAR t349.
    IF t350 IS BOUND.
      t349 = t350.
    ENDIF.
    IF t349 IS NOT BOUND.
      t348 = abap_true.
    ELSE.
      t348 = xsdbool( t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t348 = abap_true.
      DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t351.
      t347 = t351.
    ELSE.
      DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t352.
      DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t353.
      DATA(t354) = t345.
      t353 = t354.
      DATA(t355) = |abapGit|.
      t352 = t353->get( p0 = t355 ).
      t347 = t352.
    ENDIF.
    t344 = t347.
    t343 = t344.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA(t357) = VALUE abap_bool( ).
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA(t359) = t343.
    CLEAR t358.
    IF t359 IS BOUND.
      t358 = t359.
    ENDIF.
    IF t358 IS NOT BOUND.
      t357 = abap_true.
    ELSE.
      t357 = xsdbool( t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t357 = abap_true.
      DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t360.
      t356 = t360.
    ELSE.
      DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t361.
      DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t362.
      DATA(t363) = t343.
      t362 = t363.
      DATA(t364) = |asx:abap|.
      t361 = t362->get( p0 = t364 ).
      t356 = t361.
    ENDIF.
    t342 = t356.
    t341 = t342.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA(t366) = VALUE abap_bool( ).
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA(t368) = t341.
    CLEAR t367.
    IF t368 IS BOUND.
      t367 = t368.
    ENDIF.
    IF t367 IS NOT BOUND.
      t366 = abap_true.
    ELSE.
      t366 = xsdbool( t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t366 = abap_true.
      DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t369.
      t365 = t369.
    ELSE.
      DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t370.
      DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t371.
      DATA(t372) = t341.
      t371 = t372.
      DATA(t373) = |asx:values|.
      t370 = t371->get( p0 = t373 ).
      t365 = t370.
    ENDIF.
    t340 = t365.
    t339 = t340.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t374.
    DATA(t375) = VALUE abap_bool( ).
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    DATA(t377) = t339.
    CLEAR t376.
    IF t377 IS BOUND.
      t376 = t377.
    ENDIF.
    IF t376 IS NOT BOUND.
      t375 = abap_true.
    ELSE.
      t375 = xsdbool( t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t375 = abap_true.
      DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t378.
      t374 = t378.
    ELSE.
      DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t379.
      DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t380.
      DATA(t381) = t339.
      t380 = t381.
      DATA(t382) = |DD09L|.
      t379 = t380->get( p0 = t382 ).
      t374 = t379.
    ENDIF.
    t338 = t374.
    t337 = t338.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t383.
    DATA(t384) = VALUE abap_bool( ).
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA(t386) = t337.
    CLEAR t385.
    IF t386 IS BOUND.
      t385 = t386.
    ENDIF.
    IF t385 IS NOT BOUND.
      t384 = abap_true.
    ELSE.
      t384 = xsdbool( t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t384 = abap_true.
      DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t387.
      t383 = t387.
    ELSE.
      DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t388.
      DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t389.
      DATA(t390) = t337.
      t389 = t390.
      DATA(t391) = |TABART|.
      t388 = t389->get( p0 = t391 ).
      t383 = t388.
    ENDIF.
    t336 = t383.
    t335 = t336.
    DATA t392 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t392.
    DATA(t393) = me->parsed_data.
    t392 = t393.
    DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t394.
    DATA(t395) = VALUE abap_bool( ).
    DATA(t396) = t335.
    IF t396 IS INITIAL.
      t395 = abap_true.
    ENDIF.
    IF t395 = abap_true.
      DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t397.
      t394 = t397.
    ELSE.
      DATA(t398) = VALUE string( ).
      DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t399.
      DATA(t400) = t335.
      t399 = t400.
      t398 = t399->as_string( ).
      DATA(t401) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t401->has = abap_true.
      t401->value = t398.
      t394 = t401.
    ENDIF.
    t392->data_class = t394.
    DELETE t392->zlnt_record_delet_0597644d88b4 WHERE table_line = `dataClass`.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dataClass` p1 = t402 ).
    ENDIF.
    DATA(t403) = |dataClass|.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t404.
    IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t403 p1 = t404 ).
    ENDIF.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t405.
    DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t406.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t407.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t408.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t409.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t410.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t411.
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t412.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t413.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t414.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t415.
    DATA(t416) = t3.
    t415 = t416.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA(t418) = VALUE abap_bool( ).
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t419.
    DATA(t420) = t415.
    CLEAR t419.
    IF t420 IS BOUND.
      t419 = t420.
    ENDIF.
    IF t419 IS NOT BOUND.
      t418 = abap_true.
    ELSE.
      t418 = xsdbool( t419->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t418 = abap_true.
      DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t421.
      t417 = t421.
    ELSE.
      DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t422.
      DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t423.
      DATA(t424) = t415.
      t423 = t424.
      DATA(t425) = |abapGit|.
      t422 = t423->get( p0 = t425 ).
      t417 = t422.
    ENDIF.
    t414 = t417.
    t413 = t414.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    DATA(t427) = VALUE abap_bool( ).
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    DATA(t429) = t413.
    CLEAR t428.
    IF t429 IS BOUND.
      t428 = t429.
    ENDIF.
    IF t428 IS NOT BOUND.
      t427 = abap_true.
    ELSE.
      t427 = xsdbool( t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t427 = abap_true.
      DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t430.
      t426 = t430.
    ELSE.
      DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t431.
      DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t432.
      DATA(t433) = t413.
      t432 = t433.
      DATA(t434) = |asx:abap|.
      t431 = t432->get( p0 = t434 ).
      t426 = t431.
    ENDIF.
    t412 = t426.
    t411 = t412.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t435.
    DATA(t436) = VALUE abap_bool( ).
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    DATA(t438) = t411.
    CLEAR t437.
    IF t438 IS BOUND.
      t437 = t438.
    ENDIF.
    IF t437 IS NOT BOUND.
      t436 = abap_true.
    ELSE.
      t436 = xsdbool( t437->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t436 = abap_true.
      DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t439.
      t435 = t439.
    ELSE.
      DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t440.
      DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t441.
      DATA(t442) = t411.
      t441 = t442.
      DATA(t443) = |asx:values|.
      t440 = t441->get( p0 = t443 ).
      t435 = t440.
    ENDIF.
    t410 = t435.
    t409 = t410.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t444.
    DATA(t445) = VALUE abap_bool( ).
    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t446.
    DATA(t447) = t409.
    CLEAR t446.
    IF t447 IS BOUND.
      t446 = t447.
    ENDIF.
    IF t446 IS NOT BOUND.
      t445 = abap_true.
    ELSE.
      t445 = xsdbool( t446->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t445 = abap_true.
      DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t448.
      t444 = t448.
    ELSE.
      DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t449.
      DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t450.
      DATA(t451) = t409.
      t450 = t451.
      DATA(t452) = |DD02V|.
      t449 = t450->get( p0 = t452 ).
      t444 = t449.
    ENDIF.
    t408 = t444.
    t407 = t408.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t453.
    DATA(t454) = VALUE abap_bool( ).
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t455.
    DATA(t456) = t407.
    CLEAR t455.
    IF t456 IS BOUND.
      t455 = t456.
    ENDIF.
    IF t455 IS NOT BOUND.
      t454 = abap_true.
    ELSE.
      t454 = xsdbool( t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t454 = abap_true.
      DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t457.
      t453 = t457.
    ELSE.
      DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t458.
      DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t459.
      DATA(t460) = t407.
      t459 = t460.
      DATA(t461) = |CONTFLAG|.
      t458 = t459->get( p0 = t461 ).
      t453 = t458.
    ENDIF.
    t406 = t453.
    t405 = t406.
    DATA t462 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t462.
    DATA(t463) = me->parsed_data.
    t462 = t463.
    DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t464.
    DATA(t465) = VALUE abap_bool( ).
    DATA(t466) = t405.
    IF t466 IS INITIAL.
      t465 = abap_true.
    ENDIF.
    IF t465 = abap_true.
      DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t467.
      t464 = t467.
    ELSE.
      DATA(t468) = VALUE string( ).
      DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t469.
      DATA(t470) = t405.
      t469 = t470.
      t468 = t469->as_string( ).
      DATA(t471) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t471->has = abap_true.
      t471->value = t468.
      t464 = t471.
    ENDIF.
    t462->delivery_class = t464.
    DELETE t462->zlnt_record_delet_0597644d88b4 WHERE table_line = `deliveryClass`.
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t472.
    IF t462->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t462->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deliveryClass` p1 = t472 ).
    ENDIF.
    DATA(t473) = |deliveryClass|.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t474.
    IF t462->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t462->zlnt_json_ownkeys_70e5fd461788->put( p0 = t473 p1 = t474 ).
    ENDIF.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t475.
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t476.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t478.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t479.
    DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t480.
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t481.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t482.
    DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t483.
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t484.
    DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t485.
    DATA(t486) = t3.
    t485 = t486.
    DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t487.
    DATA(t488) = VALUE abap_bool( ).
    DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t489.
    DATA(t490) = t485.
    CLEAR t489.
    IF t490 IS BOUND.
      t489 = t490.
    ENDIF.
    IF t489 IS NOT BOUND.
      t488 = abap_true.
    ELSE.
      t488 = xsdbool( t489->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t488 = abap_true.
      DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t491.
      t487 = t491.
    ELSE.
      DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t492.
      DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t493.
      DATA(t494) = t485.
      t493 = t494.
      DATA(t495) = |abapGit|.
      t492 = t493->get( p0 = t495 ).
      t487 = t492.
    ENDIF.
    t484 = t487.
    t483 = t484.
    DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t496.
    DATA(t497) = VALUE abap_bool( ).
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t498.
    DATA(t499) = t483.
    CLEAR t498.
    IF t499 IS BOUND.
      t498 = t499.
    ENDIF.
    IF t498 IS NOT BOUND.
      t497 = abap_true.
    ELSE.
      t497 = xsdbool( t498->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t497 = abap_true.
      DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t500.
      t496 = t500.
    ELSE.
      DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t501.
      DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t502.
      DATA(t503) = t483.
      t502 = t503.
      DATA(t504) = |asx:abap|.
      t501 = t502->get( p0 = t504 ).
      t496 = t501.
    ENDIF.
    t482 = t496.
    t481 = t482.
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t505.
    DATA(t506) = VALUE abap_bool( ).
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    DATA(t508) = t481.
    CLEAR t507.
    IF t508 IS BOUND.
      t507 = t508.
    ENDIF.
    IF t507 IS NOT BOUND.
      t506 = abap_true.
    ELSE.
      t506 = xsdbool( t507->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t506 = abap_true.
      DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t509.
      t505 = t509.
    ELSE.
      DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t510.
      DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t511.
      DATA(t512) = t481.
      t511 = t512.
      DATA(t513) = |asx:values|.
      t510 = t511->get( p0 = t513 ).
      t505 = t510.
    ENDIF.
    t480 = t505.
    t479 = t480.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t514.
    DATA(t515) = VALUE abap_bool( ).
    DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t516.
    DATA(t517) = t479.
    CLEAR t516.
    IF t517 IS BOUND.
      t516 = t517.
    ENDIF.
    IF t516 IS NOT BOUND.
      t515 = abap_true.
    ELSE.
      t515 = xsdbool( t516->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t515 = abap_true.
      DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t518.
      t514 = t518.
    ELSE.
      DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t519.
      DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t520.
      DATA(t521) = t479.
      t520 = t521.
      DATA(t522) = |DD09L|.
      t519 = t520->get( p0 = t522 ).
      t514 = t519.
    ENDIF.
    t478 = t514.
    t477 = t478.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t523.
    DATA(t524) = VALUE abap_bool( ).
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t525.
    DATA(t526) = t477.
    CLEAR t525.
    IF t526 IS BOUND.
      t525 = t526.
    ENDIF.
    IF t525 IS NOT BOUND.
      t524 = abap_true.
    ELSE.
      t524 = xsdbool( t525->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t524 = abap_true.
      DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t527.
      t523 = t527.
    ELSE.
      DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t528.
      DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t529.
      DATA(t530) = t477.
      t529 = t530.
      DATA(t531) = |TABKAT|.
      t528 = t529->get( p0 = t531 ).
      t523 = t528.
    ENDIF.
    t476 = t523.
    t475 = t476.
    DATA t532 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t532.
    DATA(t533) = me->parsed_data.
    t532 = t533.
    DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t534.
    DATA(t535) = VALUE abap_bool( ).
    DATA(t536) = t475.
    IF t536 IS INITIAL.
      t535 = abap_true.
    ENDIF.
    IF t535 = abap_true.
      DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t537.
      t534 = t537.
    ELSE.
      DATA(t538) = VALUE string( ).
      DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t539.
      DATA(t540) = t475.
      t539 = t540.
      t538 = t539->as_string( ).
      DATA(t541) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t541->has = abap_true.
      t541->value = t538.
      t534 = t541.
    ENDIF.
    t532->size_category = t534.
    DELETE t532->zlnt_record_delet_0597644d88b4 WHERE table_line = `sizeCategory`.
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t542.
    IF t532->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t532->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sizeCategory` p1 = t542 ).
    ENDIF.
    DATA(t543) = |sizeCategory|.
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t544.
    IF t532->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t532->zlnt_json_ownkeys_70e5fd461788->put( p0 = t543 p1 = t544 ).
    ENDIF.
    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t545.
    DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t546.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t548.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t549.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t551.
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t552.
    DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t553.
    DATA(t554) = t3.
    t553 = t554.
    DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t555.
    DATA(t556) = VALUE abap_bool( ).
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t557.
    DATA(t558) = t553.
    CLEAR t557.
    IF t558 IS BOUND.
      t557 = t558.
    ENDIF.
    IF t557 IS NOT BOUND.
      t556 = abap_true.
    ELSE.
      t556 = xsdbool( t557->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t556 = abap_true.
      DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t559.
      t555 = t559.
    ELSE.
      DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t560.
      DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t561.
      DATA(t562) = t553.
      t561 = t562.
      DATA(t563) = |abapGit|.
      t560 = t561->get( p0 = t563 ).
      t555 = t560.
    ENDIF.
    t552 = t555.
    t551 = t552.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t564.
    DATA(t565) = VALUE abap_bool( ).
    DATA t566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t566.
    DATA(t567) = t551.
    CLEAR t566.
    IF t567 IS BOUND.
      t566 = t567.
    ENDIF.
    IF t566 IS NOT BOUND.
      t565 = abap_true.
    ELSE.
      t565 = xsdbool( t566->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t565 = abap_true.
      DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t568.
      t564 = t568.
    ELSE.
      DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t569.
      DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t570.
      DATA(t571) = t551.
      t570 = t571.
      DATA(t572) = |asx:abap|.
      t569 = t570->get( p0 = t572 ).
      t564 = t569.
    ENDIF.
    t550 = t564.
    t549 = t550.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t573.
    DATA(t574) = VALUE abap_bool( ).
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t575.
    DATA(t576) = t549.
    CLEAR t575.
    IF t576 IS BOUND.
      t575 = t576.
    ENDIF.
    IF t575 IS NOT BOUND.
      t574 = abap_true.
    ELSE.
      t574 = xsdbool( t575->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t574 = abap_true.
      DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t577.
      t573 = t577.
    ELSE.
      DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t578.
      DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t579.
      DATA(t580) = t549.
      t579 = t580.
      DATA(t581) = |asx:values|.
      t578 = t579->get( p0 = t581 ).
      t573 = t578.
    ENDIF.
    t548 = t573.
    t547 = t548.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t582.
    DATA(t583) = VALUE abap_bool( ).
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t584.
    DATA(t585) = t547.
    CLEAR t584.
    IF t585 IS BOUND.
      t584 = t585.
    ENDIF.
    IF t584 IS NOT BOUND.
      t583 = abap_true.
    ELSE.
      t583 = xsdbool( t584->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t583 = abap_true.
      DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t586.
      t582 = t586.
    ELSE.
      DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t587.
      DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t588.
      DATA(t589) = t547.
      t588 = t589.
      DATA(t590) = |DD03P_TABLE|.
      t587 = t588->get( p0 = t590 ).
      t582 = t587.
    ENDIF.
    t546 = t582.
    t545 = t546.
    DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t591.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t592.
    DATA(t593) = VALUE abap_bool( ).
    DATA(t594) = t545.
    IF t594 IS INITIAL.
      t593 = abap_true.
    ENDIF.
    IF t593 = abap_true.
      DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t595.
      t592 = t595.
    ELSE.
      DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t596.
      DATA(t597) = t545.
      t596 = t597.
      t592 = t596.
    ENDIF.
    t591 = t592.
    DATA t598 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t598.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t599.
    DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t600.
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t601.
    DATA(t602) = t591.
    t601 = t602.
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t603.
    DATA(t604) = VALUE abap_bool( ).
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t605.
    DATA(t606) = t601.
    CLEAR t605.
    IF t606 IS BOUND.
      t605 = t606.
    ENDIF.
    IF t605 IS NOT BOUND.
      t604 = abap_true.
    ELSE.
      t604 = xsdbool( t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t604 = abap_true.
      DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t607.
      t603 = t607.
    ELSE.
      DATA t608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t608.
      DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t609.
      DATA(t610) = t601.
      t609 = t610.
      DATA(t611) = |DD03P|.
      t608 = t609->get( p0 = t611 ).
      t603 = t608.
    ENDIF.
    t600 = t603.
    CLEAR t599.
    IF t600 IS BOUND.
      t599 = t600.
    ENDIF.
    t598 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t599 ).
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t612.
    DATA t613 TYPE REF TO object.
    CLEAR t613.
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
            DATA t618 TYPE REF TO object.
            CLEAR t618.
            CLEAR t617.
            t618 = t613.
            TRY.
                t612 ?= t618.
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
      DATA(t619) = VALUE abap_bool( ).
      DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t620.
      DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t621.
      DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t622.
      DATA(t623) = t612.
      t622 = t623.
      DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t624.
      DATA(t625) = VALUE abap_bool( ).
      DATA(t626) = t622.
      IF t626 IS NOT BOUND.
        t625 = abap_true.
      ELSE.
        t625 = xsdbool( t626->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t625 = abap_true.
        DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t627.
        t624 = t627.
      ELSE.
        DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t628.
        DATA(t629) = t622.
        DATA(t630) = |FIELDNAME|.
        t628 = t629->get( p0 = t630 ).
        t624 = t628.
      ENDIF.
      t621 = t624.
      t620 = t621.
      DATA(t631) = VALUE abap_bool( ).
      DATA(t632) = VALUE string( ).
      DATA(t633) = VALUE abap_bool( ).
      DATA(t634) = t620.
      IF t634 IS INITIAL.
        t633 = abap_true.
      ENDIF.
      IF t633 = abap_true.
        DATA(t635) = |undefined|.
        t632 = t635.
      ELSE.
        DATA(t636) = VALUE string( ).
        DATA t637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t637.
        DATA(t638) = t620.
        t637 = t638.
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
      DATA(t639) = |string|.
      t631 = xsdbool( t632 <> t639 ).
      t619 = t631.
      IF t619 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t640 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t640.
      DATA t641 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      CLEAR t641.
      DATA(t642) = me->parsed_data.
      t641 = t642.
      t640 = t641->fields_464c.
      DATA t643 TYPE REF TO zcl_lnt_shape_e534171c.
      CLEAR t643.
      DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t644.
      DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t645.
      DATA(t646) = t612.
      DATA(t647) = |FIELDNAME|.
      t645 = t646->get( p0 = t647 ).
      t644 = t645.
      DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t648.
      DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t649.
      DATA(t650) = t612.
      DATA(t651) = |ROLLNAME|.
      t649 = t650->get( p0 = t651 ).
      t648 = t649.
      DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t652.
      DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t653.
      DATA(t654) = t612.
      DATA(t655) = |COMPTYPE|.
      t653 = t654->get( p0 = t655 ).
      t652 = t653.
      DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t656.
      DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t657.
      DATA(t658) = t612.
      DATA(t659) = |PRECFIELD|.
      t657 = t658->get( p0 = t659 ).
      t656 = t657.
      DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t660.
      DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t661.
      DATA(t662) = t612.
      DATA(t663) = |LENG|.
      t661 = t662->get( p0 = t663 ).
      t660 = t661.
      DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t664.
      DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t665.
      DATA(t666) = t612.
      DATA(t667) = |INTLEN|.
      t665 = t666->get( p0 = t667 ).
      t664 = t665.
      DATA t668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t668.
      DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t669.
      DATA(t670) = t612.
      DATA(t671) = |DATATYPE|.
      t669 = t670->get( p0 = t671 ).
      t668 = t669.
      DATA t672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t672.
      DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t673.
      DATA(t674) = t612.
      DATA(t675) = |DECIMALS|.
      t673 = t674->get( p0 = t675 ).
      t672 = t673.
      DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t676.
      DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t677.
      DATA(t678) = t612.
      DATA(t679) = |KEYFLAG|.
      t677 = t678->get( p0 = t679 ).
      t676 = t677.
      DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t680.
      DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t681.
      DATA(t682) = t612.
      DATA(t683) = |GROUPNAME|.
      t681 = t682->get( p0 = t683 ).
      t680 = t681.
      DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t684.
      DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t685.
      DATA(t686) = t612.
      DATA(t687) = |CHECKTABLE|.
      t685 = t686->get( p0 = t687 ).
      t684 = t685.
      DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t688.
      DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t689.
      DATA(t690) = t612.
      DATA(t691) = |REFTABLE|.
      t689 = t690->get( p0 = t691 ).
      t688 = t689.
      DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t692.
      DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t693.
      DATA(t694) = t612.
      DATA(t695) = |REFFIELD|.
      t693 = t694->get( p0 = t695 ).
      t692 = t693.
      DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t696.
      DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t697.
      DATA(t698) = t612.
      DATA(t699) = |REFTYPE|.
      t697 = t698->get( p0 = t699 ).
      t696 = t697.
      DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t700.
      DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t701.
      DATA(t702) = t612.
      DATA(t703) = |DDTEXT|.
      t701 = t702->get( p0 = t703 ).
      t700 = t701.
      DATA t704 TYPE REF TO zcl_lnt_shape_e534171c.
      CLEAR t704.
      DATA t705 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t705.
      DATA t706 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t706.
      DATA(t707) = VALUE abap_bool( ).
      DATA(t708) = t644.
      IF t708 IS INITIAL.
        t707 = abap_true.
      ENDIF.
      IF t707 = abap_true.
        DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t709.
        t706 = t709.
      ELSE.
        DATA(t710) = VALUE string( ).
        DATA(t711) = t644.
        t710 = t711->as_string( ).
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
      DATA(t715) = VALUE abap_bool( ).
      DATA(t716) = t648.
      IF t716 IS INITIAL.
        t715 = abap_true.
      ENDIF.
      IF t715 = abap_true.
        DATA t717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t717.
        t714 = t717.
      ELSE.
        DATA(t718) = VALUE string( ).
        DATA(t719) = t648.
        t718 = t719->as_string( ).
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
      DATA(t723) = VALUE abap_bool( ).
      DATA(t724) = t652.
      IF t724 IS INITIAL.
        t723 = abap_true.
      ENDIF.
      IF t723 = abap_true.
        DATA t725 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t725.
        t722 = t725.
      ELSE.
        DATA(t726) = VALUE string( ).
        DATA(t727) = t652.
        t726 = t727->as_string( ).
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
      DATA(t731) = VALUE abap_bool( ).
      DATA(t732) = t656.
      IF t732 IS INITIAL.
        t731 = abap_true.
      ENDIF.
      IF t731 = abap_true.
        DATA t733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t733.
        t730 = t733.
      ELSE.
        DATA(t734) = VALUE string( ).
        DATA(t735) = t656.
        t734 = t735->as_string( ).
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
      DATA(t739) = VALUE abap_bool( ).
      DATA(t740) = t660.
      IF t740 IS INITIAL.
        t739 = abap_true.
      ENDIF.
      IF t739 = abap_true.
        DATA t741 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t741.
        t738 = t741.
      ELSE.
        DATA(t742) = VALUE string( ).
        DATA(t743) = t660.
        t742 = t743->as_string( ).
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
      DATA(t747) = VALUE abap_bool( ).
      DATA(t748) = t664.
      IF t748 IS INITIAL.
        t747 = abap_true.
      ENDIF.
      IF t747 = abap_true.
        DATA t749 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t749.
        t746 = t749.
      ELSE.
        DATA(t750) = VALUE string( ).
        DATA(t751) = t664.
        t750 = t751->as_string( ).
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
      DATA(t755) = VALUE abap_bool( ).
      DATA(t756) = t668.
      IF t756 IS INITIAL.
        t755 = abap_true.
      ENDIF.
      IF t755 = abap_true.
        DATA t757 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t757.
        t754 = t757.
      ELSE.
        DATA(t758) = VALUE string( ).
        DATA(t759) = t668.
        t758 = t759->as_string( ).
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
      DATA(t763) = VALUE abap_bool( ).
      DATA(t764) = t672.
      IF t764 IS INITIAL.
        t763 = abap_true.
      ENDIF.
      IF t763 = abap_true.
        DATA t765 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t765.
        t762 = t765.
      ELSE.
        DATA(t766) = VALUE string( ).
        DATA(t767) = t672.
        t766 = t767->as_string( ).
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
      DATA(t771) = VALUE abap_bool( ).
      DATA(t772) = t676.
      IF t772 IS INITIAL.
        t771 = abap_true.
      ENDIF.
      IF t771 = abap_true.
        DATA t773 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t773.
        t770 = t773.
      ELSE.
        DATA(t774) = VALUE string( ).
        DATA(t775) = t676.
        t774 = t775->as_string( ).
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
      DATA(t779) = VALUE abap_bool( ).
      DATA(t780) = t680.
      IF t780 IS INITIAL.
        t779 = abap_true.
      ENDIF.
      IF t779 = abap_true.
        DATA t781 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t781.
        t778 = t781.
      ELSE.
        DATA(t782) = VALUE string( ).
        DATA(t783) = t680.
        t782 = t783->as_string( ).
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
      DATA(t787) = VALUE abap_bool( ).
      DATA(t788) = t684.
      IF t788 IS INITIAL.
        t787 = abap_true.
      ENDIF.
      IF t787 = abap_true.
        DATA t789 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t789.
        t786 = t789.
      ELSE.
        DATA(t790) = VALUE string( ).
        DATA(t791) = t684.
        t790 = t791->as_string( ).
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
      DATA(t795) = VALUE abap_bool( ).
      DATA(t796) = t688.
      IF t796 IS INITIAL.
        t795 = abap_true.
      ENDIF.
      IF t795 = abap_true.
        DATA t797 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t797.
        t794 = t797.
      ELSE.
        DATA(t798) = VALUE string( ).
        DATA(t799) = t688.
        t798 = t799->as_string( ).
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
      DATA(t803) = VALUE abap_bool( ).
      DATA(t804) = t692.
      IF t804 IS INITIAL.
        t803 = abap_true.
      ENDIF.
      IF t803 = abap_true.
        DATA t805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t805.
        t802 = t805.
      ELSE.
        DATA(t806) = VALUE string( ).
        DATA(t807) = t692.
        t806 = t807->as_string( ).
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
      DATA(t811) = VALUE abap_bool( ).
      DATA(t812) = t696.
      IF t812 IS INITIAL.
        t811 = abap_true.
      ENDIF.
      IF t811 = abap_true.
        DATA t813 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t813.
        t810 = t813.
      ELSE.
        DATA(t814) = VALUE string( ).
        DATA(t815) = t696.
        t814 = t815->as_string( ).
        DATA(t816) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t816->has = abap_true.
        t816->value = t814.
        t810 = t816.
      ENDIF.
      t809 = t810.
      DATA t817 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t817.
      DATA t818 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t818.
      DATA(t819) = VALUE abap_bool( ).
      DATA(t820) = t700.
      IF t820 IS INITIAL.
        t819 = abap_true.
      ENDIF.
      IF t819 = abap_true.
        DATA t821 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t821.
        t818 = t821.
      ELSE.
        DATA(t822) = VALUE string( ).
        DATA(t823) = t700.
        t822 = t823->as_string( ).
        DATA(t824) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t824->has = abap_true.
        t824->value = t822.
        t818 = t824.
      ENDIF.
      t817 = t818.
      t704 = NEW zcl_lnt_shape_e534171c( i_fieldname = t705 i_rollname_e353 = t713 i_comptype = t721 i_precfield = t729 i_leng_f9b0 = t737 i_intlen = t745 i_datatype_73ff = t753 i_decimals_c159 = t761 i_keyflag = t769 i_groupname = t777
      i_checktable = t785 i_reftable = t793 i_reffield = t801 i_reftype = t809 i_ddtext_4f13 = t817 ).
      CREATE OBJECT t704->zlnt_view_ownkeys_b0e8086400eb.
      t704->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t825.
      IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `FIELDNAME` p1 = t825 ).
      ENDIF.
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
      DATA(t840) = |FIELDNAME|.
      DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t841.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t840 p1 = t841 ).
      ENDIF.
      DATA(t842) = |ROLLNAME|.
      DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t843.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t842 p1 = t843 ).
      ENDIF.
      DATA(t844) = |COMPTYPE|.
      DATA t845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t845.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t844 p1 = t845 ).
      ENDIF.
      DATA(t846) = |PRECFIELD|.
      DATA t847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t847.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t846 p1 = t847 ).
      ENDIF.
      DATA(t848) = |LENG|.
      DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t849.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t848 p1 = t849 ).
      ENDIF.
      DATA(t850) = |INTLEN|.
      DATA t851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t851.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t850 p1 = t851 ).
      ENDIF.
      DATA(t852) = |DATATYPE|.
      DATA t853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t853.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t852 p1 = t853 ).
      ENDIF.
      DATA(t854) = |DECIMALS|.
      DATA t855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t855.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t854 p1 = t855 ).
      ENDIF.
      DATA(t856) = |KEYFLAG|.
      DATA t857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t857.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t856 p1 = t857 ).
      ENDIF.
      DATA(t858) = |GROUPNAME|.
      DATA t859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t859.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t858 p1 = t859 ).
      ENDIF.
      DATA(t860) = |CHECKTABLE|.
      DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t861.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t860 p1 = t861 ).
      ENDIF.
      DATA(t862) = |REFTABLE|.
      DATA t863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t863.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t862 p1 = t863 ).
      ENDIF.
      DATA(t864) = |REFFIELD|.
      DATA t865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t865.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t864 p1 = t865 ).
      ENDIF.
      DATA(t866) = |REFTYPE|.
      DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t867.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t866 p1 = t867 ).
      ENDIF.
      DATA(t868) = |DDTEXT|.
      DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t869.
      IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t868 p1 = t869 ).
      ENDIF.
      t643 = t704.
      t640->load( ).
      APPEND t643 TO t640->items.
      t640->save( ).
    ENDDO.
    DATA t870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t870.
    DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t871.
    DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t872.
    DATA t873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t873.
    DATA t874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t874.
    DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t875.
    DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t876.
    DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t877.
    DATA t878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t878.
    DATA(t879) = t3.
    t878 = t879.
    DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t880.
    DATA(t881) = VALUE abap_bool( ).
    DATA t882 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t882.
    DATA(t883) = t878.
    CLEAR t882.
    IF t883 IS BOUND.
      t882 = t883.
    ENDIF.
    IF t882 IS NOT BOUND.
      t881 = abap_true.
    ELSE.
      t881 = xsdbool( t882->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t881 = abap_true.
      DATA t884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t884.
      t880 = t884.
    ELSE.
      DATA t885 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t885.
      DATA t886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t886.
      DATA(t887) = t878.
      t886 = t887.
      DATA(t888) = |abapGit|.
      t885 = t886->get( p0 = t888 ).
      t880 = t885.
    ENDIF.
    t877 = t880.
    t876 = t877.
    DATA t889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t889.
    DATA(t890) = VALUE abap_bool( ).
    DATA t891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t891.
    DATA(t892) = t876.
    CLEAR t891.
    IF t892 IS BOUND.
      t891 = t892.
    ENDIF.
    IF t891 IS NOT BOUND.
      t890 = abap_true.
    ELSE.
      t890 = xsdbool( t891->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t890 = abap_true.
      DATA t893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t893.
      t889 = t893.
    ELSE.
      DATA t894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t894.
      DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t895.
      DATA(t896) = t876.
      t895 = t896.
      DATA(t897) = |asx:abap|.
      t894 = t895->get( p0 = t897 ).
      t889 = t894.
    ENDIF.
    t875 = t889.
    t874 = t875.
    DATA t898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t898.
    DATA(t899) = VALUE abap_bool( ).
    DATA t900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t900.
    DATA(t901) = t874.
    CLEAR t900.
    IF t901 IS BOUND.
      t900 = t901.
    ENDIF.
    IF t900 IS NOT BOUND.
      t899 = abap_true.
    ELSE.
      t899 = xsdbool( t900->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t899 = abap_true.
      DATA t902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t902.
      t898 = t902.
    ELSE.
      DATA t903 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t903.
      DATA t904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t904.
      DATA(t905) = t874.
      t904 = t905.
      DATA(t906) = |asx:values|.
      t903 = t904->get( p0 = t906 ).
      t898 = t903.
    ENDIF.
    t873 = t898.
    t872 = t873.
    DATA t907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t907.
    DATA(t908) = VALUE abap_bool( ).
    DATA t909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t909.
    DATA(t910) = t872.
    CLEAR t909.
    IF t910 IS BOUND.
      t909 = t910.
    ENDIF.
    IF t909 IS NOT BOUND.
      t908 = abap_true.
    ELSE.
      t908 = xsdbool( t909->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t908 = abap_true.
      DATA t911 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t911.
      t907 = t911.
    ELSE.
      DATA t912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t912.
      DATA t913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t913.
      DATA(t914) = t872.
      t913 = t914.
      DATA(t915) = |DD12V|.
      t912 = t913->get( p0 = t915 ).
      t907 = t912.
    ENDIF.
    t871 = t907.
    t870 = t871.
    DATA t916 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t916.
    DATA t917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t917.
    DATA(t918) = VALUE abap_bool( ).
    DATA(t919) = t870.
    IF t919 IS INITIAL.
      t918 = abap_true.
    ENDIF.
    IF t918 = abap_true.
      DATA t920 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t920.
      t917 = t920.
    ELSE.
      DATA t921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t921.
      DATA(t922) = t870.
      t921 = t922.
      t917 = t921.
    ENDIF.
    t916 = t917.
    DATA t923 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    CLEAR t923.
    DATA(t924) = me->parsed_data.
    t923 = t924.
    DATA t925 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t925.
    DATA(t926) = abap_true.
    IF t926 = abap_true.
      DATA t927 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t927.
      CREATE OBJECT t927.
      t925 = t927.
    ELSE.
      DATA t928 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t928.
      t925 = t928.
    ENDIF.
    t923->secondary_indexes = t925.
    DELETE t923->zlnt_record_delet_0597644d88b4 WHERE table_line = `secondaryIndexes`.
    DATA t929 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t929.
    IF t923->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t923->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `secondaryIndexes` p1 = t929 ).
    ENDIF.
    DATA(t930) = |secondaryIndexes|.
    DATA t931 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t931.
    IF t923->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t923->zlnt_json_ownkeys_70e5fd461788->put( p0 = t930 p1 = t931 ).
    ENDIF.
    DATA t932 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t932.
    DATA t933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t933.
    DATA t934 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t934.
    DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t935.
    DATA(t936) = t916.
    t935 = t936.
    DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t937.
    DATA(t938) = VALUE abap_bool( ).
    DATA t939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t939.
    DATA(t940) = t935.
    CLEAR t939.
    IF t940 IS BOUND.
      t939 = t940.
    ENDIF.
    IF t939 IS NOT BOUND.
      t938 = abap_true.
    ELSE.
      t938 = xsdbool( t939->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t938 = abap_true.
      DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t941.
      t937 = t941.
    ELSE.
      DATA t942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t942.
      DATA t943 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t943.
      DATA(t944) = t935.
      t943 = t944.
      DATA(t945) = |DD12V|.
      t942 = t943->get( p0 = t945 ).
      t937 = t942.
    ENDIF.
    t934 = t937.
    CLEAR t933.
    IF t934 IS BOUND.
      t933 = t934.
    ENDIF.
    t932 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t933 ).
    DATA t946 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t946.
    DATA t947 TYPE REF TO object.
    CLEAR t947.
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
            DATA t952 TYPE REF TO object.
            CLEAR t952.
            CLEAR t951.
            t952 = t947.
            TRY.
                t946 ?= t952.
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
      DATA t954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t954.
      DATA(t955) = t946.
      DATA(t956) = |INDEXNAME|.
      t954 = t955->get( p0 = t956 ).
      t953 = t954.
      DATA t957 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t957.
      DATA t958 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t958.
      CREATE OBJECT t958.
      t957 = t958.
      DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t959.
      DATA t960 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t960.
      DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t961.
      DATA t962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t962.
      DATA t963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t963.
      DATA t964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t964.
      DATA t965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t965.
      DATA t966 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t966.
      DATA t967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t967.
      DATA(t968) = t3.
      t967 = t968.
      DATA t969 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t969.
      DATA(t970) = VALUE abap_bool( ).
      DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t971.
      DATA(t972) = t967.
      CLEAR t971.
      IF t972 IS BOUND.
        t971 = t972.
      ENDIF.
      IF t971 IS NOT BOUND.
        t970 = abap_true.
      ELSE.
        t970 = xsdbool( t971->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t970 = abap_true.
        DATA t973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t973.
        t969 = t973.
      ELSE.
        DATA t974 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t974.
        DATA t975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t975.
        DATA(t976) = t967.
        t975 = t976.
        DATA(t977) = |abapGit|.
        t974 = t975->get( p0 = t977 ).
        t969 = t974.
      ENDIF.
      t966 = t969.
      t965 = t966.
      DATA t978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t978.
      DATA(t979) = VALUE abap_bool( ).
      DATA t980 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t980.
      DATA(t981) = t965.
      CLEAR t980.
      IF t981 IS BOUND.
        t980 = t981.
      ENDIF.
      IF t980 IS NOT BOUND.
        t979 = abap_true.
      ELSE.
        t979 = xsdbool( t980->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t979 = abap_true.
        DATA t982 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t982.
        t978 = t982.
      ELSE.
        DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t983.
        DATA t984 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t984.
        DATA(t985) = t965.
        t984 = t985.
        DATA(t986) = |asx:abap|.
        t983 = t984->get( p0 = t986 ).
        t978 = t983.
      ENDIF.
      t964 = t978.
      t963 = t964.
      DATA t987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t987.
      DATA(t988) = VALUE abap_bool( ).
      DATA t989 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t989.
      DATA(t990) = t963.
      CLEAR t989.
      IF t990 IS BOUND.
        t989 = t990.
      ENDIF.
      IF t989 IS NOT BOUND.
        t988 = abap_true.
      ELSE.
        t988 = xsdbool( t989->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t988 = abap_true.
        DATA t991 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t991.
        t987 = t991.
      ELSE.
        DATA t992 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t992.
        DATA t993 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t993.
        DATA(t994) = t963.
        t993 = t994.
        DATA(t995) = |asx:values|.
        t992 = t993->get( p0 = t995 ).
        t987 = t992.
      ENDIF.
      t962 = t987.
      t961 = t962.
      DATA t996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t996.
      DATA(t997) = VALUE abap_bool( ).
      DATA t998 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t998.
      DATA(t999) = t961.
      CLEAR t998.
      IF t999 IS BOUND.
        t998 = t999.
      ENDIF.
      IF t998 IS NOT BOUND.
        t997 = abap_true.
      ELSE.
        t997 = xsdbool( t998->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t997 = abap_true.
        DATA t1000 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1000.
        t996 = t1000.
      ELSE.
        DATA t1001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1001.
        DATA t1002 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1002.
        DATA(t1003) = t961.
        t1002 = t1003.
        DATA(t1004) = |DD17V|.
        t1001 = t1002->get( p0 = t1004 ).
        t996 = t1001.
      ENDIF.
      t960 = t996.
      t959 = t960.
      DATA t1005 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1005.
      DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1006.
      DATA(t1007) = VALUE abap_bool( ).
      DATA(t1008) = t959.
      IF t1008 IS INITIAL.
        t1007 = abap_true.
      ENDIF.
      IF t1007 = abap_true.
        DATA t1009 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1009.
        t1006 = t1009.
      ELSE.
        DATA t1010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1010.
        DATA(t1011) = t959.
        t1010 = t1011.
        t1006 = t1010.
      ENDIF.
      t1005 = t1006.
      DATA t1012 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t1012.
      DATA t1013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1013.
      DATA t1014 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1014.
      DATA t1015 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1015.
      DATA(t1016) = t1005.
      t1015 = t1016.
      DATA t1017 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1017.
      DATA(t1018) = VALUE abap_bool( ).
      DATA t1019 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1019.
      DATA(t1020) = t1015.
      CLEAR t1019.
      IF t1020 IS BOUND.
        t1019 = t1020.
      ENDIF.
      IF t1019 IS NOT BOUND.
        t1018 = abap_true.
      ELSE.
        t1018 = xsdbool( t1019->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t1018 = abap_true.
        DATA t1021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1021.
        t1017 = t1021.
      ELSE.
        DATA t1022 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1022.
        DATA t1023 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1023.
        DATA(t1024) = t1015.
        t1023 = t1024.
        DATA(t1025) = |DD17V|.
        t1022 = t1023->get( p0 = t1025 ).
        t1017 = t1022.
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
              DATA t1032 TYPE REF TO object.
              CLEAR t1032.
              CLEAR t1031.
              t1032 = t1027.
              TRY.
                  t1026 ?= t1032.
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
        CLEAR t1034.
        DATA(t1035) = t1026.
        DATA(t1036) = |INDEXNAME|.
        t1034 = t1035->get( p0 = t1036 ).
        DATA(t1037) = t953.
        IF t1034 IS NOT BOUND.
          t1033 = xsdbool( t1037 IS NOT BOUND ).
        ELSE.
          t1033 = t1034->strict_equals( t1037 ).
        ENDIF.
        IF t1033 = abap_true.
          DATA(t1038) = t957.
          DATA(t1039) = VALUE string( ).
          DATA t1040 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1040.
          DATA(t1041) = t1026.
          DATA(t1042) = |FIELDNAME|.
          t1040 = t1041->get( p0 = t1042 ).
          t1039 = t1040->as_string( ).
          t1038->load( ).
          APPEND t1039 TO t1038->items.
          t1038->save( ).
        ENDIF.
      ENDDO.
      DATA t1043 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t1043.
      DATA t1044 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t1044.
      DATA t1045 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      CLEAR t1045.
      DATA(t1046) = me->parsed_data.
      t1045 = t1046.
      t1044 = t1045->secondary_indexes.
      t1043 = t1044.
      DATA t1047 TYPE REF TO zcl_lnt_secondary_index.
      CLEAR t1047.
      DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1048.
      DATA(t1049) = t953.
      t1048 = t1049.
      DATA t1050 TYPE REF TO zcl_lnt_secondary_index.
      CLEAR t1050.
      DATA t1051 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1051.
      DATA t1052 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1052.
      DATA(t1053) = VALUE abap_bool( ).
      DATA(t1054) = t1048.
      IF t1054 IS INITIAL.
        t1053 = abap_true.
      ENDIF.
      IF t1053 = abap_true.
        DATA t1055 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1055.
        t1052 = t1055.
      ELSE.
        DATA(t1056) = VALUE string( ).
        DATA(t1057) = t1048.
        t1056 = t1057->as_string( ).
        DATA(t1058) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1058->has = abap_true.
        t1058->value = t1056.
        t1052 = t1058.
      ENDIF.
      t1051 = t1052.
      DATA t1059 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t1059.
      DATA(t1060) = t957.
      t1059 = t1060.
      t1050 = NEW zcl_lnt_secondary_index( i_name = t1051 i_fields_62af = t1059 ).
      CREATE OBJECT t1050->zlnt_view_ownkeys_b0e8086400eb.
      t1050->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1061 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1061.
      IF t1050->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1050->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1061 ).
      ENDIF.
      DATA t1062 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1062.
      IF t1050->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1050->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t1062 ).
      ENDIF.
      CREATE OBJECT t1050->zlnt_json_ownkeys_70e5fd461788.
      t1050->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t1063) = |name|.
      DATA t1064 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1064.
      IF t1050->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1050->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1063 p1 = t1064 ).
      ENDIF.
      DATA(t1065) = |fields|.
      DATA t1066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1066.
      IF t1050->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1050->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1065 p1 = t1066 ).
      ENDIF.
      t1047 = t1050.
      t1043->load( ).
      APPEND t1047 TO t1043->items.
      t1043->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD parse_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = t1.
    t4 = me->prs_typ_ins_src_obj_tbl_ts_tbl( i_reg_f149 = t5 ).
    result = t4.

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
