* TS: src/rules/class_attribute_names.ts:27:1 ClassAttributeNames
CLASS zcl_lnt_class_attribute_names DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_clss_attrbt_nms_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_actual TYPE string i_expected TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_cl_at_nm_ts_cl_at_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_clss_attrbt_nms_cnf.
    METHODS s_c_i_s_r_cl_at_nm_ts_cl_at_nm IMPORTING i_conf TYPE REF TO zcl_lnt_clss_attrbt_nms_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS check_attributes IMPORTING i_attr TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_name IMPORTING i_attr TYPE REF TO zcl_lnt_fi_identifier i_expected TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_class_attribute_names IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_clss_attrbt_nms_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Allows you to enforce a pattern, such as a prefix, for class|.
    t7 = t7 && | variable names.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Naming| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
    t23 = t23 && |counter TYPE i.\nENDCLASS.|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    t20 = t24.
    DATA(t29) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
    t29 = t29 && |mv_counter TYPE i.\nENDCLASS.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |class_attribute_names| i_title = |Class attributes naming| i_short_description = t6 i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t45 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_actual.
    DATA(t2) = i_expected.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = |required|.
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
    IF t4 = abap_true.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA(t17) = |Class attribute name "|.
      DATA(t19) = strlen( t17 ).
      t16 = |{ t17 }{ t1 }|.
      DATA(t21) = strlen( t16 ).
      t15 = |{ t16 }{ |" does not match pattern | }|.
      DATA(t23) = strlen( t15 ).
      t3 = |{ t15 }{ t2 }|.
    ELSE.
      DATA t25 TYPE string.
      DATA t26 TYPE string.
      DATA(t27) = |Class attribute name "|.
      DATA(t29) = strlen( t27 ).
      t26 = |{ t27 }{ t1 }|.
      DATA(t31) = strlen( t26 ).
      t25 = |{ t26 }{ |" must not match pattern | }|.
      DATA(t33) = strlen( t25 ).
      t3 = |{ t25 }{ t2 }|.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_r_cl_at_nm_ts_cl_at_nm.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_cl_at_nm_ts_cl_at_nm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t6 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = VALUE abap_bool( ).
    IF t6 IS INITIAL.
      t11 = abap_true.
    ELSEIF t6->has = abap_false.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA(t13) = me->conf.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = |required|.
      t13->zlnt_view_write_s_9ebcbca32e92( p0 = t17 ).
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    DATA t21 TYPE REF TO zcl_lnt_ddic.
    DATA(t23) = me->reg.
    t21 = NEW zcl_lnt_ddic( i_reg_f149 = t23 ).
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t24 = t1->info->list_class_definitions( ).
    DATA t30 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t31 TYPE REF TO object.
    DATA(t32) = VALUE i( ).
    DO.
      t24->load( ).
      IF t32 >= lines( t24->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t24->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t38 = t30->is_local.
      IF t38 IS BOUND.
        IF t38->has = abap_true.
          t37 = xsdbool( t38->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t36 = t37.
      IF t37 = abap_true.
        t36 = me->conf->zlnt_view_read_sr_f48d79db9126( ).
      ENDIF.
      t35 = t36.
      IF t36 = abap_false.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE abap_bool( ).
        t43 = t21->is_exception( i_def = t30 i_obj_ac26 = t2 ).
        t42 = t43.
        IF t43 = abap_true.
          t42 = me->conf->zlnt_view_read_sr_9e03d5ab100a( ).
        ENDIF.
        t35 = t42.
      ENDIF.
      IF t35 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t54 = t30->attributes.
      t19 = t19->concat( p0 = t54 ).
    ENDDO.
    DATA t57 TYPE abap_bool.
    t57 = me->conf->zlnt_view_read_sr_8168a86be8c6( ).
    IF xsdbool( t57 = abap_false ) = abap_true.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t60 = t1->info->list_interface_definitions( ).
      DATA t66 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      DATA t67 TYPE REF TO object.
      DATA(t68) = VALUE i( ).
      DO.
        t60->load( ).
        IF t68 >= lines( t60->items ).
          EXIT.
        ENDIF.
        CLEAR t67.
        READ TABLE t60->items INDEX t68 + 1 INTO t67.
        t68 = t68 + 1.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        CLEAR t66.
        IF t67 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t69 ?= t67.
          DATA t70 TYPE REF TO object.
          t70 = t69->as_ref( ).
          t66 ?= t70.
        ELSE.
          t66 ?= t67.
        ENDIF.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = VALUE abap_bool( ).
        DATA t73 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t73 = t66->is_local.
        IF t73 IS BOUND.
          IF t73->has = abap_true.
            t72 = xsdbool( t73->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t71 = t72.
        IF t72 = abap_true.
          t71 = me->conf->zlnt_view_read_sr_f48d79db9126( ).
        ENDIF.
        IF t71 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t79 = t66->attributes.
        t19 = t19->concat( p0 = t79 ).
      ENDDO.
    ENDIF.
    t3 = me->check_attributes( i_attr = t19 ).
    result = t3.

  ENDMETHOD.

  METHOD check_attributes.
    DATA(t1) = i_attr.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t12 = t1.
    DATA t14 TYPE REF TO zcl_lnt_info_attribute.
    DATA t15 TYPE REF TO object.
    DATA(t16) = VALUE i( ).
    DO.
      t12->load( ).
      IF t16 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t15.
      READ TABLE t12->items INDEX t16 + 1 INTO t15.
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
      DATA t19 TYPE string.
      t19 = t14->level.
      IF xsdbool( t19 = |instance| ) = abap_true.
        DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
        t28 = t14->identifier.
        DATA t31 TYPE string.
        t31 = me->conf->zlnt_view_read_sr_e8cbf985871b( ).
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t35.
        DATA t38 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t38.
        CREATE OBJECT t38 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t31 flags = |i|.
        DATA(t41) = VALUE string( ).
        DATA t46 TYPE string.
        t46 = t28->token->str.
        DATA(t54) = VALUE string( ).
        DATA(t55) = t46.
        DATA(t56) = 0.
        DATA(t57) = 1.
        DATA(t58) = strlen( t55 ).
        IF t56 < 0.
          t56 = t56 + t58.
          IF t56 < 0.
            t56 = 0.
          ENDIF.
        ENDIF.
        IF t56 > t58 OR t57 <= 0.
        ELSE.
          IF t57 > t58 - t56.
            t57 = t58 - t56.
          ENDIF.
          t54 = t55+t56(t57).
        ENDIF.
        IF xsdbool( t54 = |!| ) = abap_true.
          DATA t61 TYPE string.
          t61 = t46.
          DATA(t63) = VALUE string( ).
          DATA(t65) = 1.
          DATA t66 TYPE i.
          t66 = strlen( t61 ).
          DATA(t69) = strlen( t61 ).
          IF t65 < 0.
            t65 = t65 + t69.
            IF t65 < 0.
              t65 = 0.
            ENDIF.
          ENDIF.
          IF t65 > t69 OR t66 <= 0.
          ELSE.
            IF t66 > t69 - t65.
              t66 = t69 - t65.
            ENDIF.
            t63 = t61+t65(t66).
          ENDIF.
          t46 = t63.
        ENDIF.
        t41 = t46.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t75->has = abap_true.
        t75->value = t41.
        t72 = t75.
        DATA(t78) = me->conf.
        IF zcl_lnt_name_validator=>violates_rule( i_name = t72 i_pattern = t38 i_params_4c59 = t78 ) = abap_true.
          DATA t80 TYPE REF TO zcl_lnt_issue.
          CLEAR t80.
          DATA(t82) = VALUE string( ).
          DATA t83 TYPE string.
          t83 = t41.
          DATA t85 TYPE string.
          t85 = t31.
          DATA(t87) = VALUE string( ).
          DATA(t88) = VALUE abap_bool( ).
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t89 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t94->has = abap_true.
          t94->value = |required|.
          t91 = t94.
          DATA(t96) = VALUE abap_bool( ).
          DATA(t97) = VALUE abap_bool( ).
          IF t89 IS BOUND.
            t96 = t89->has.
          ENDIF.
          IF t91 IS BOUND.
            t97 = t91->has.
          ENDIF.
          IF t96 = t97.
            IF t96 = abap_false.
              t88 = abap_true.
            ELSEIF t89->value = t91->value.
              t88 = abap_true.
            ENDIF.
          ENDIF.
          IF t88 = abap_true.
            DATA t99 TYPE string.
            DATA t100 TYPE string.
            DATA(t101) = |Class attribute name "|.
            DATA(t103) = strlen( t101 ).
            t100 = |{ t101 }{ t83 }|.
            DATA(t105) = strlen( t100 ).
            t99 = |{ t100 }{ |" does not match pattern | }|.
            DATA(t107) = strlen( t99 ).
            t87 = |{ t99 }{ t85 }|.
          ELSE.
            DATA t109 TYPE string.
            DATA t110 TYPE string.
            DATA(t111) = |Class attribute name "|.
            DATA(t113) = strlen( t111 ).
            t110 = |{ t111 }{ t83 }|.
            DATA(t115) = strlen( t110 ).
            t109 = |{ t110 }{ |" must not match pattern | }|.
            DATA(t117) = strlen( t109 ).
            t87 = |{ t109 }{ t85 }|.
          ENDIF.
          t82 = t87.
          DATA(t118) = VALUE string( ).
          DATA t119 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t119.
          DATA t124 TYPE string.
          DATA(t125) = |Allows you to enforce a pattern, such as a prefix, for class|.
          t125 = t125 && | variable names.|.
          t124 = t125.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t126.
          DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t130.
          t130->load( ).
          APPEND |Naming| TO t130->items.
          t130->save( ).
          t130->load( ).
          APPEND |SingleFile| TO t130->items.
          t130->save( ).
          t126 = t130.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA(t141) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
          t141 = t141 && |counter TYPE i.\nENDCLASS.|.
          DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t142->has = abap_true.
          t142->value = t141.
          t138 = t142.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          DATA(t147) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
          t147 = t147 && |mv_counter TYPE i.\nENDCLASS.|.
          DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t148->has = abap_true.
          t148->value = t147.
          t144 = t148.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t150.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          t119 = NEW zcl_lnt_irule_metadata( i_key = |class_attribute_names| i_title = |Class attributes naming| i_short_description = t124 i_bad_example = t138 i_good_example = t144 i_extended_information = t150 i_tags = t126 i_pragma = t152 i_pseudo_comment = t154 ).
          CREATE OBJECT t119->zlnt_view_ownkeys_b0e8086400eb.
          t119->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t156 ).
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t157 ).
          ENDIF.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t158 ).
          ENDIF.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t159 ).
          ENDIF.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t160 ).
          ENDIF.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t161 ).
          ENDIF.
          CREATE OBJECT t119->zlnt_json_ownkeys_70e5fd461788.
          t119->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t163 ).
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t165 ).
          ENDIF.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t167 ).
          ENDIF.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t169 ).
          ENDIF.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t171 ).
          ENDIF.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t173 ).
          ENDIF.
          t118 = t119->key.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t174 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t176 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t176.
          t80 = zcl_lnt_issue=>at_identifier( i_identifier = t28 i_message_26cb = t82 i_key = t118 i_severity = t174 i_fix = t176 ).
          t35->load( ).
          APPEND t80 TO t35->items.
          t35->save( ).
        ENDIF.
        t10 = t10->concat( p0 = t35 ).
      ELSE.
        IF xsdbool( t19 = |static| ) = abap_true.
          DATA t186 TYPE REF TO zcl_lnt_fi_identifier.
          t186 = t14->identifier.
          DATA t189 TYPE string.
          t189 = me->conf->zlnt_view_read_sr_341955304f75( ).
          DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t193.
          DATA t196 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t196.
          CREATE OBJECT t196 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t189 flags = |i|.
          DATA(t199) = VALUE string( ).
          DATA t204 TYPE string.
          t204 = t186->token->str.
          DATA(t212) = VALUE string( ).
          DATA(t213) = t204.
          DATA(t214) = 0.
          DATA(t215) = 1.
          DATA(t216) = strlen( t213 ).
          IF t214 < 0.
            t214 = t214 + t216.
            IF t214 < 0.
              t214 = 0.
            ENDIF.
          ENDIF.
          IF t214 > t216 OR t215 <= 0.
          ELSE.
            IF t215 > t216 - t214.
              t215 = t216 - t214.
            ENDIF.
            t212 = t213+t214(t215).
          ENDIF.
          IF xsdbool( t212 = |!| ) = abap_true.
            DATA t219 TYPE string.
            t219 = t204.
            DATA(t221) = VALUE string( ).
            DATA(t223) = 1.
            DATA t224 TYPE i.
            t224 = strlen( t219 ).
            DATA(t227) = strlen( t219 ).
            IF t223 < 0.
              t223 = t223 + t227.
              IF t223 < 0.
                t223 = 0.
              ENDIF.
            ENDIF.
            IF t223 > t227 OR t224 <= 0.
            ELSE.
              IF t224 > t227 - t223.
                t224 = t227 - t223.
              ENDIF.
              t221 = t219+t223(t224).
            ENDIF.
            t204 = t221.
          ENDIF.
          t199 = t204.
          DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t230.
          DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t233->has = abap_true.
          t233->value = t199.
          t230 = t233.
          DATA(t236) = me->conf.
          IF zcl_lnt_name_validator=>violates_rule( i_name = t230 i_pattern = t196 i_params_4c59 = t236 ) = abap_true.
            DATA t238 TYPE REF TO zcl_lnt_issue.
            CLEAR t238.
            DATA(t240) = VALUE string( ).
            DATA t241 TYPE string.
            t241 = t199.
            DATA t243 TYPE string.
            t243 = t189.
            DATA(t245) = VALUE string( ).
            DATA(t246) = VALUE abap_bool( ).
            DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t247 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
            DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t249.
            DATA(t252) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t252->has = abap_true.
            t252->value = |required|.
            t249 = t252.
            DATA(t254) = VALUE abap_bool( ).
            DATA(t255) = VALUE abap_bool( ).
            IF t247 IS BOUND.
              t254 = t247->has.
            ENDIF.
            IF t249 IS BOUND.
              t255 = t249->has.
            ENDIF.
            IF t254 = t255.
              IF t254 = abap_false.
                t246 = abap_true.
              ELSEIF t247->value = t249->value.
                t246 = abap_true.
              ENDIF.
            ENDIF.
            IF t246 = abap_true.
              DATA t257 TYPE string.
              DATA t258 TYPE string.
              DATA(t259) = |Class attribute name "|.
              DATA(t261) = strlen( t259 ).
              t258 = |{ t259 }{ t241 }|.
              DATA(t263) = strlen( t258 ).
              t257 = |{ t258 }{ |" does not match pattern | }|.
              DATA(t265) = strlen( t257 ).
              t245 = |{ t257 }{ t243 }|.
            ELSE.
              DATA t267 TYPE string.
              DATA t268 TYPE string.
              DATA(t269) = |Class attribute name "|.
              DATA(t271) = strlen( t269 ).
              t268 = |{ t269 }{ t241 }|.
              DATA(t273) = strlen( t268 ).
              t267 = |{ t268 }{ |" must not match pattern | }|.
              DATA(t275) = strlen( t267 ).
              t245 = |{ t267 }{ t243 }|.
            ENDIF.
            t240 = t245.
            DATA(t276) = VALUE string( ).
            DATA t277 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t277.
            DATA t282 TYPE string.
            DATA(t283) = |Allows you to enforce a pattern, such as a prefix, for class|.
            t283 = t283 && | variable names.|.
            t282 = t283.
            DATA t284 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t284.
            DATA t288 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t288.
            t288->load( ).
            APPEND |Naming| TO t288->items.
            t288->save( ).
            t288->load( ).
            APPEND |SingleFile| TO t288->items.
            t288->save( ).
            t284 = t288.
            DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t296.
            DATA(t299) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
            t299 = t299 && |counter TYPE i.\nENDCLASS.|.
            DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t300->has = abap_true.
            t300->value = t299.
            t296 = t300.
            DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t302.
            DATA(t305) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
            t305 = t305 && |mv_counter TYPE i.\nENDCLASS.|.
            DATA(t306) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t306->has = abap_true.
            t306->value = t305.
            t302 = t306.
            DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t308.
            DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t310.
            DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t312.
            t277 = NEW zcl_lnt_irule_metadata( i_key = |class_attribute_names| i_title = |Class attributes naming| i_short_description = t282 i_bad_example = t296 i_good_example = t302 i_extended_information = t308 i_tags = t284 i_pragma = t310 i_pseudo_comment = t312 ).
            CREATE OBJECT t277->zlnt_view_ownkeys_b0e8086400eb.
            t277->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t314.
            t277->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t314 ).
            DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t315.
            IF t277->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t277->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t315 ).
            ENDIF.
            DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t316.
            IF t277->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t277->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t316 ).
            ENDIF.
            DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t317.
            IF t277->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t277->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t317 ).
            ENDIF.
            DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t318.
            IF t277->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t277->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t318 ).
            ENDIF.
            DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t319.
            IF t277->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t277->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t319 ).
            ENDIF.
            CREATE OBJECT t277->zlnt_json_ownkeys_70e5fd461788.
            t277->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t321.
            t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t321 ).
            DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t323.
            IF t277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t323 ).
            ENDIF.
            DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t325.
            IF t277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t325 ).
            ENDIF.
            DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t327.
            IF t277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t327 ).
            ENDIF.
            DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t329.
            IF t277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t329 ).
            ENDIF.
            DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t331.
            IF t277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t331 ).
            ENDIF.
            t276 = t277->key.
            DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t332 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t334 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t334.
            t238 = zcl_lnt_issue=>at_identifier( i_identifier = t186 i_message_26cb = t240 i_key = t276 i_severity = t332 i_fix = t334 ).
            t193->load( ).
            APPEND t238 TO t193->items.
            t193->save( ).
          ENDIF.
          t10 = t10->concat( p0 = t193 ).
        ELSE.
          IF xsdbool( t19 = |constant| ) = abap_true.
            DATA t344 TYPE REF TO zcl_lnt_fi_identifier.
            t344 = t14->identifier.
            DATA t347 TYPE string.
            t347 = me->conf->zlnt_view_read_sr_2dc0cab76d28( ).
            DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t351.
            DATA t354 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t354.
            CREATE OBJECT t354 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t347 flags = |i|.
            DATA(t357) = VALUE string( ).
            DATA t362 TYPE string.
            t362 = t344->token->str.
            DATA(t370) = VALUE string( ).
            DATA(t371) = t362.
            DATA(t372) = 0.
            DATA(t373) = 1.
            DATA(t374) = strlen( t371 ).
            IF t372 < 0.
              t372 = t372 + t374.
              IF t372 < 0.
                t372 = 0.
              ENDIF.
            ENDIF.
            IF t372 > t374 OR t373 <= 0.
            ELSE.
              IF t373 > t374 - t372.
                t373 = t374 - t372.
              ENDIF.
              t370 = t371+t372(t373).
            ENDIF.
            IF xsdbool( t370 = |!| ) = abap_true.
              DATA t377 TYPE string.
              t377 = t362.
              DATA(t379) = VALUE string( ).
              DATA(t381) = 1.
              DATA t382 TYPE i.
              t382 = strlen( t377 ).
              DATA(t385) = strlen( t377 ).
              IF t381 < 0.
                t381 = t381 + t385.
                IF t381 < 0.
                  t381 = 0.
                ENDIF.
              ENDIF.
              IF t381 > t385 OR t382 <= 0.
              ELSE.
                IF t382 > t385 - t381.
                  t382 = t385 - t381.
                ENDIF.
                t379 = t377+t381(t382).
              ENDIF.
              t362 = t379.
            ENDIF.
            t357 = t362.
            DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t388.
            DATA(t391) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t391->has = abap_true.
            t391->value = t357.
            t388 = t391.
            DATA(t394) = me->conf.
            IF zcl_lnt_name_validator=>violates_rule( i_name = t388 i_pattern = t354 i_params_4c59 = t394 ) = abap_true.
              DATA t396 TYPE REF TO zcl_lnt_issue.
              CLEAR t396.
              DATA(t398) = VALUE string( ).
              DATA t399 TYPE string.
              t399 = t357.
              DATA t401 TYPE string.
              t401 = t347.
              DATA(t403) = VALUE string( ).
              DATA(t404) = VALUE abap_bool( ).
              DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t405 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
              DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t407.
              DATA(t410) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t410->has = abap_true.
              t410->value = |required|.
              t407 = t410.
              DATA(t412) = VALUE abap_bool( ).
              DATA(t413) = VALUE abap_bool( ).
              IF t405 IS BOUND.
                t412 = t405->has.
              ENDIF.
              IF t407 IS BOUND.
                t413 = t407->has.
              ENDIF.
              IF t412 = t413.
                IF t412 = abap_false.
                  t404 = abap_true.
                ELSEIF t405->value = t407->value.
                  t404 = abap_true.
                ENDIF.
              ENDIF.
              IF t404 = abap_true.
                DATA t415 TYPE string.
                DATA t416 TYPE string.
                DATA(t417) = |Class attribute name "|.
                DATA(t419) = strlen( t417 ).
                t416 = |{ t417 }{ t399 }|.
                DATA(t421) = strlen( t416 ).
                t415 = |{ t416 }{ |" does not match pattern | }|.
                DATA(t423) = strlen( t415 ).
                t403 = |{ t415 }{ t401 }|.
              ELSE.
                DATA t425 TYPE string.
                DATA t426 TYPE string.
                DATA(t427) = |Class attribute name "|.
                DATA(t429) = strlen( t427 ).
                t426 = |{ t427 }{ t399 }|.
                DATA(t431) = strlen( t426 ).
                t425 = |{ t426 }{ |" must not match pattern | }|.
                DATA(t433) = strlen( t425 ).
                t403 = |{ t425 }{ t401 }|.
              ENDIF.
              t398 = t403.
              DATA(t434) = VALUE string( ).
              DATA t435 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t435.
              DATA t440 TYPE string.
              DATA(t441) = |Allows you to enforce a pattern, such as a prefix, for class|.
              t441 = t441 && | variable names.|.
              t440 = t441.
              DATA t442 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t442.
              DATA t446 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t446.
              t446->load( ).
              APPEND |Naming| TO t446->items.
              t446->save( ).
              t446->load( ).
              APPEND |SingleFile| TO t446->items.
              t446->save( ).
              t442 = t446.
              DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t454.
              DATA(t457) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
              t457 = t457 && |counter TYPE i.\nENDCLASS.|.
              DATA(t458) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t458->has = abap_true.
              t458->value = t457.
              t454 = t458.
              DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t460.
              DATA(t463) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
              t463 = t463 && |mv_counter TYPE i.\nENDCLASS.|.
              DATA(t464) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t464->has = abap_true.
              t464->value = t463.
              t460 = t464.
              DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t466.
              DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t468.
              DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t470.
              t435 = NEW zcl_lnt_irule_metadata( i_key = |class_attribute_names| i_title = |Class attributes naming| i_short_description = t440 i_bad_example = t454 i_good_example = t460 i_extended_information = t466 i_tags = t442 i_pragma = t468 i_pseudo_comment = t470 ).
              CREATE OBJECT t435->zlnt_view_ownkeys_b0e8086400eb.
              t435->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t472.
              t435->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t472 ).
              DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t473.
              IF t435->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t435->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t473 ).
              ENDIF.
              DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t474.
              IF t435->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t435->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t474 ).
              ENDIF.
              DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t475.
              IF t435->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t435->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t475 ).
              ENDIF.
              DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t476.
              IF t435->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t435->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t476 ).
              ENDIF.
              DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t477.
              IF t435->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t435->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t477 ).
              ENDIF.
              CREATE OBJECT t435->zlnt_json_ownkeys_70e5fd461788.
              t435->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t479.
              t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t479 ).
              DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t481.
              IF t435->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t481 ).
              ENDIF.
              DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t483.
              IF t435->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t483 ).
              ENDIF.
              DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t485.
              IF t435->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t485 ).
              ENDIF.
              DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t487.
              IF t435->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t487 ).
              ENDIF.
              DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t489.
              IF t435->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t489 ).
              ENDIF.
              t434 = t435->key.
              DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t490 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t492 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t492.
              t396 = zcl_lnt_issue=>at_identifier( i_identifier = t344 i_message_26cb = t398 i_key = t434 i_severity = t490 i_fix = t492 ).
              t351->load( ).
              APPEND t396 TO t351->items.
              t351->save( ).
            ENDIF.
            t10 = t10->concat( p0 = t351 ).
          ELSE.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t10.

  ENDMETHOD.

  METHOD check_name.
    DATA(t1) = i_attr.
    DATA(t2) = i_expected.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t2 flags = |i|.
    DATA(t9) = VALUE string( ).
    DATA t14 TYPE string.
    t14 = t1->token->str.
    DATA(t22) = VALUE string( ).
    DATA(t23) = t14.
    DATA(t24) = 0.
    DATA(t25) = 1.
    DATA(t26) = strlen( t23 ).
    IF t24 < 0.
      t24 = t24 + t26.
      IF t24 < 0.
        t24 = 0.
      ENDIF.
    ENDIF.
    IF t24 > t26 OR t25 <= 0.
    ELSE.
      IF t25 > t26 - t24.
        t25 = t26 - t24.
      ENDIF.
      t22 = t23+t24(t25).
    ENDIF.
    IF xsdbool( t22 = |!| ) = abap_true.
      DATA t29 TYPE string.
      t29 = t14.
      DATA(t31) = VALUE string( ).
      DATA(t33) = 1.
      DATA t34 TYPE i.
      t34 = strlen( t29 ).
      DATA(t37) = strlen( t29 ).
      IF t33 < 0.
        t33 = t33 + t37.
        IF t33 < 0.
          t33 = 0.
        ENDIF.
      ENDIF.
      IF t33 > t37 OR t34 <= 0.
      ELSE.
        IF t34 > t37 - t33.
          t34 = t37 - t33.
        ENDIF.
        t31 = t29+t33(t34).
      ENDIF.
      t14 = t31.
    ENDIF.
    t9 = t14.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t43->has = abap_true.
    t43->value = t9.
    t40 = t43.
    DATA(t46) = me->conf.
    IF zcl_lnt_name_validator=>violates_rule( i_name = t40 i_pattern = t6 i_params_4c59 = t46 ) = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_issue.
      DATA(t50) = VALUE string( ).
      DATA t51 TYPE string.
      t51 = t9.
      DATA t53 TYPE string.
      t53 = t2.
      DATA(t55) = VALUE string( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t57 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t62->has = abap_true.
      t62->value = |required|.
      t59 = t62.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = VALUE abap_bool( ).
      IF t57 IS BOUND.
        t64 = t57->has.
      ENDIF.
      IF t59 IS BOUND.
        t65 = t59->has.
      ENDIF.
      IF t64 = t65.
        IF t64 = abap_false.
          t56 = abap_true.
        ELSEIF t57->value = t59->value.
          t56 = abap_true.
        ENDIF.
      ENDIF.
      IF t56 = abap_true.
        DATA t67 TYPE string.
        DATA t68 TYPE string.
        DATA(t69) = |Class attribute name "|.
        DATA(t71) = strlen( t69 ).
        t68 = |{ t69 }{ t51 }|.
        DATA(t73) = strlen( t68 ).
        t67 = |{ t68 }{ |" does not match pattern | }|.
        DATA(t75) = strlen( t67 ).
        t55 = |{ t67 }{ t53 }|.
      ELSE.
        DATA t77 TYPE string.
        DATA t78 TYPE string.
        DATA(t79) = |Class attribute name "|.
        DATA(t81) = strlen( t79 ).
        t78 = |{ t79 }{ t51 }|.
        DATA(t83) = strlen( t78 ).
        t77 = |{ t78 }{ |" must not match pattern | }|.
        DATA(t85) = strlen( t77 ).
        t55 = |{ t77 }{ t53 }|.
      ENDIF.
      t50 = t55.
      DATA(t86) = VALUE string( ).
      DATA t87 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t92 TYPE string.
      DATA(t93) = |Allows you to enforce a pattern, such as a prefix, for class|.
      t93 = t93 && | variable names.|.
      t92 = t93.
      DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t98.
      t98->load( ).
      APPEND |Naming| TO t98->items.
      t98->save( ).
      t98->load( ).
      APPEND |SingleFile| TO t98->items.
      t98->save( ).
      t94 = t98.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t109) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
      t109 = t109 && |counter TYPE i.\nENDCLASS.|.
      DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t110->has = abap_true.
      t110->value = t109.
      t106 = t110.
      DATA(t115) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
      t115 = t115 && |mv_counter TYPE i.\nENDCLASS.|.
      DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t116->has = abap_true.
      t116->value = t115.
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t87 = NEW zcl_lnt_irule_metadata( i_key = |class_attribute_names| i_title = |Class attributes naming| i_short_description = t92 i_bad_example = t106 i_good_example = t116 i_extended_information = t118 i_tags = t94 i_pragma = t120 i_pseudo_comment = t122 ).
      CREATE OBJECT t87->zlnt_view_ownkeys_b0e8086400eb.
      t87->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t124 ).
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t125 ).
      ENDIF.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t126 ).
      ENDIF.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t127 ).
      ENDIF.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t128 ).
      ENDIF.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t129 ).
      ENDIF.
      CREATE OBJECT t87->zlnt_json_ownkeys_70e5fd461788.
      t87->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t131 ).
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t133 ).
      ENDIF.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t135 ).
      ENDIF.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t137 ).
      ENDIF.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t139 ).
      ENDIF.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t141 ).
      ENDIF.
      t86 = t87->key.
      DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t48 = zcl_lnt_issue=>at_identifier( i_identifier = t1 i_message_26cb = t50 i_key = t86 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t144 ).
      t3->load( ).
      APPEND t48 TO t3->items.
      t3->save( ).
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_clss_attrbt_nms_cnf( me->g_c_i_s_r_cl_at_nm_ts_cl_at_nm( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_clss_attrbt_nms_cnf( me->g_c_i_s_r_cl_at_nm_ts_cl_at_nm( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_clss_attrbt_nms_cnf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_clss_attrbt_nms_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cl_at_nm_ts_cl_at_nm( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1450_68bad4036152.
  ENDMETHOD.
ENDCLASS.
