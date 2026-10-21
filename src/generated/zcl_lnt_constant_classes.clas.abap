* TS: src/rules/constant_classes.ts:29:1 ConstantClasses
CLASS zcl_lnt_constant_classes DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_constant_classes_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS in_in_sr_rl_cns_cls_ts_cns_cls IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_constant_classes.
    METHODS gt_cn_in_sr_rl_cn_cl_ts_cn_cls RETURNING VALUE(result) TYPE REF TO zcl_lnt_constant_classes_conf.
    METHODS st_cn_in_sr_rl_cn_cl_ts_cn_cls IMPORTING i_conf TYPE REF TO zcl_lnt_constant_classes_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS issue_at_constant IMPORTING i_constant_6eda TYPE REF TO zcl_lnt_info_constant i_message_26cb TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
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
CLASS zcl_lnt_constant_classes IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_constant_classes_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that a class contains exactly the constants correspon|.
    t7 = t7 && |ding to a domain's fixed values.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#prefer-enum-to-constants-interfaces|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |constant_classes| i_title = |Validate constant classes| i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t18 i_pragma = t28 i_pseudo_comment = t30 ).
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

  METHOD in_in_sr_rl_cns_cls_ts_cns_cls.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_cn_cl_ts_cn_cls.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_cn_cl_ts_cn_cls.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    t4 = xsdbool( me->conf IS BOUND ).
    t3 = t4.
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t7 = me->conf->zlnt_view_read_sr_0ae60a1e951e( ).
      t3 = xsdbool( t7 IS BOUND ).
    ENDIF.
    t2 = t3.
    IF t3 = abap_true.
      t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_domain ).
    ENDIF.
    IF t2 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_domain_class_mapping.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t13 = me->conf->zlnt_view_read_sr_0ae60a1e951e( ).
      DATA(t16) = VALUE i( ).
      t13->load( ).
      t16 = lines( t13->items ).
      DATA(t19) = VALUE i( ).
      t19 = 0.
      DATA t21 TYPE REF TO zcl_lnt_domain_class_mapping.
      DO.
        IF xsdbool( t19 < t16 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t26 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t26.
        DATA t28 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t28.
        DATA t31 TYPE REF TO object.
        t31 = t13->get( p0 = t19 ).
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        CLEAR t28.
        IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t32 ?= t31.
          CLEAR t28.
          IF t32 IS BOUND.
            IF t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t28 ?= t32->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t28 IS NOT BOUND.
              IF t32->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t32->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t32->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t32->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t33.
                IF t32->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t33 ?= t32->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t33->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t34) = VALUE string( ).
              DATA(t35) = VALUE string( ).
              DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t36.
              DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t37.
              t28 = NEW zcl_lnt_domain_class_mapping( view_source = t32 i_domain = t34 i_class_631c = t35 i_use_exact_type = t36 i_constant_for_domain_name = t37 ).
            ENDIF.
          ENDIF.
        ELSE.
          t28 ?= t31.
        ENDIF.
        t26 = t28.
        DATA(t39) = VALUE string( ).
        DATA(t40) = VALUE string( ).
        t40 = t26->zlnt_view_read_sr_f8de08988c9e( ).
        DATA(t42) = strlen( t40 ).
        t39 = t40.
        IF t39 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t39 TO UPPER CASE.
        ELSE.
          t39 = zlnt_runtime_uppe_91169605024d=>full( t39 ).
        ENDIF.
        DATA(t43) = VALUE string( ).
        DATA(t44) = VALUE string( ).
        DATA t45 TYPE REF TO zcl_lnt_abstract_object.
        DATA t46 TYPE REF TO zcl_lnt_domain.
        CLEAR t46.
        t46 ?= t1.
        t45 = t46.
        t44 = t45->name.
        DATA(t51) = strlen( t44 ).
        t43 = t44.
        IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t43 TO UPPER CASE.
        ELSE.
          t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
        ENDIF.
        IF xsdbool( t39 = t43 ) = abap_true.
          t21 = t26.
          EXIT.
        ENDIF.
        DATA(t58) = 1.
        t19 = t19 + t58.
      ENDDO.
      t11 = t21.
      IF xsdbool( xsdbool( t11 IS BOUND ) = abap_false ) = abap_true.
        CREATE OBJECT result.
        RETURN.
      ENDIF.
      DATA t64 TYPE REF TO zcl_lnt_class.
      DATA t65 TYPE REF TO zcl_lnt_class.
      DATA(t67) = me->reg.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t71->has = abap_true.
      t71->value = |CLAS|.
      t68 = t71.
      DATA(t75) = VALUE string( ).
      DATA(t76) = VALUE string( ).
      DATA t77 TYPE REF TO zcl_lnt_domain_class_mapping.
      t77 = t11.
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t77 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t85) = VALUE string( ).
        t85 = t77->zlnt_view_read_sr_86cf045b7b25( ).
        DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t87->has = abap_true.
        t87->value = t85.
        t81 = t87.
      ENDIF.
      t76 = t81->value.
      DATA(t88) = strlen( t76 ).
      t75 = t76.
      IF t75 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t75 TO UPPER CASE.
      ELSE.
        t75 = zlnt_runtime_uppe_91169605024d=>full( t75 ).
      ENDIF.
      DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t89->has = abap_true.
      t89->value = t75.
      DATA t91 TYPE REF TO object.
      t91 = t67->get_object( i_type_9913 = t68 i_name = t89 ).
      t65 ?= t91.
      t64 = t65.
      IF xsdbool( xsdbool( t64 IS BOUND ) = abap_false ) = abap_true.
        DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t96.
        DATA t99 TYPE REF TO zcl_lnt_issue.
        DATA t100 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t102 TYPE REF TO zcl_lnt_domain.
        t102 ?= t1.
        t100 = t102->get_identifier( ).
        DATA(t105) = VALUE string( ).
        DATA(t106) = VALUE string( ).
        DATA(t107) = VALUE string( ).
        DATA(t108) = VALUE string( ).
        DATA(t109) = |Constant class pattern implementation |.
        DATA(t110) = VALUE string( ).
        t110 = t11->zlnt_view_read_sr_86cf045b7b25( ).
        DATA(t113) = strlen( t109 ).
        t108 = |{ t109 }{ t110 }|.
        DATA(t115) = strlen( t108 ).
        t107 = |{ t108 }{ | missing for domain | }|.
        DATA(t116) = VALUE string( ).
        t116 = t11->zlnt_view_read_sr_f8de08988c9e( ).
        DATA(t119) = strlen( t107 ).
        t106 = |{ t107 }{ t116 }|.
        DATA(t121) = strlen( t106 ).
        t105 = |{ t106 }{ || }|.
        DATA(t122) = VALUE string( ).
        DATA t123 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t128) = VALUE string( ).
        DATA(t129) = |Checks that a class contains exactly the constants correspon|.
        t129 = t129 && |ding to a domain's fixed values.|.
        t128 = t129.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t133) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t133 = t133 && |nABAP.md#prefer-enum-to-constants-interfaces|.
        DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t134->has = abap_true.
        t134->value = t133.
        t130 = t134.
        DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t140.
        t140->load( ).
        APPEND |Styleguide| TO t140->items.
        t140->save( ).
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t123 = NEW zcl_lnt_irule_metadata( i_key = |constant_classes| i_title = |Validate constant classes| i_short_description = t128 i_bad_example = t146 i_good_example = t148 i_extended_information = t130 i_tags = t140 i_pragma = t150 i_pseudo_comment = t152 ).
        CREATE OBJECT t123->zlnt_view_ownkeys_b0e8086400eb.
        t123->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t154 ).
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t155 ).
        ENDIF.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t156 ).
        ENDIF.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t157 ).
        ENDIF.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t158 ).
        ENDIF.
        CREATE OBJECT t123->zlnt_json_ownkeys_70e5fd461788.
        t123->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t160 ).
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t162 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t164 ).
        ENDIF.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t166 ).
        ENDIF.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t168 ).
        ENDIF.
        t122 = t123->key.
        DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t99 = zcl_lnt_issue=>at_identifier( i_identifier = t100 i_message_26cb = t105 i_key = t122 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t171 ).
        t96->load( ).
        APPEND t99 TO t96->items.
        t96->save( ).
        result = t96.
        RETURN.
      ENDIF.
      DATA t173 TYPE REF TO zcl_lnt_abap_file.
      t173 = t64->get_main_abap_file( ).
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t173 IS INITIAL ) = abap_true.
        CREATE OBJECT result.
        RETURN.
      ENDIF.
      DATA t185 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t187 TYPE REF TO zcl_lnt_class.
      t187 = t64.
      DATA t191 TYPE REF TO zif_lnt_abap_file_information.
      DATA t193 TYPE REF TO zcl_lnt_abap_file.
      t193 = t187->get_main_abap_file( ).
      DATA t196 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t193 IS INITIAL ) = abap_true.
      ELSE.
        t196 = t193->info.
      ENDIF.
      t191 = t196.
      DATA t206 TYPE REF TO zcl_lnt_info_class_definition.
      IF xsdbool( t191 IS INITIAL ) = abap_true.
      ELSE.
        DATA t211 TYPE REF TO zif_lnt_abap_file_information.
        t211 = t191.
        DATA(t213) = VALUE string( ).
        DATA t214 TYPE REF TO zcl_lnt_abstract_object.
        t214 = t187.
        t213 = t214->name.
        t206 = t211->get_class_definition_by_name( i_name = t213 ).
      ENDIF.
      t185 = t206.
      IF xsdbool( xsdbool( t185 IS BOUND ) = abap_false ) = abap_true.
        CREATE OBJECT result.
        RETURN.
      ENDIF.
      DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t225 TYPE REF TO zcl_lnt_domain.
      t225 ?= t1.
      DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t231 TYPE REF TO zcl_lnt_shape_b346f020.
      t231 = t225->parsed_xml.
      DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t231 IS INITIAL ) = abap_true.
      ELSE.
        t234 = t231->values.
      ENDIF.
      t229 = t234.
      DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t229 IS INITIAL ) = abap_true.
        CREATE OBJECT t241.
      ELSE.
        t241 = t229.
      ENDIF.
      t222 = t241.
      DATA t247 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t249 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CREATE OBJECT t249.
      DATA t252 TYPE REF TO zcl_lnt_domain_value.
      DATA t253 TYPE REF TO object.
      DATA(t254) = VALUE i( ).
      DO.
        t222->load( ).
        IF t254 >= lines( t222->items ).
          EXIT.
        ENDIF.
        CLEAR t253.
        READ TABLE t222->items INDEX t254 + 1 INTO t253.
        t254 = t254 + 1.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t255.
        CLEAR t252.
        IF t253 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t255 ?= t253.
          DATA t256 TYPE REF TO object.
          t256 = t255->as_ref( ).
          t252 ?= t256.
        ELSE.
          t252 ?= t253.
        ENDIF.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t258 = t252->low.
        t249->load( ).
        APPEND t258 TO t249->items.
        t249->save( ).
      ENDDO.
      DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      IF t249->source IS BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `emit.go: array mutation: graph-backed storage requires live mutation ABI`.
      ENDIF.
      CREATE OBJECT t260.
      LOOP AT t249->items INTO DATA(t262).
        IF t262 IS NOT BOUND OR t262->has = abap_false.
          RAISE EXCEPTION TYPE cx_sy_move_cast_error.
        ENDIF.
        APPEND t262->value TO t260->items.
      ENDLOOP.
      t247 = t260.
      DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t263.
      DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t269 TYPE REF TO zcl_lnt_domain.
      t269 ?= t1.
      DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t275 TYPE REF TO zcl_lnt_shape_b346f020.
      t275 = t269->parsed_xml.
      DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t275 IS INITIAL ) = abap_true.
      ELSE.
        t278 = t275->values.
      ENDIF.
      t273 = t278.
      DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t273 IS INITIAL ) = abap_true.
        CREATE OBJECT t285.
      ELSE.
        t285 = t273.
      ENDIF.
      t267 = t285.
      t267->load( ).
      IF xsdbool( lines( t267->items ) = 0 ) = abap_true.
        DATA t293 TYPE REF TO zcl_lnt_issue.
        DATA t294 TYPE REF TO zcl_lnt_abap_file.
        t294 = t173.
        DATA t296 TYPE REF TO zcl_lnt_statement_node.
        DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t297 = t173->statements.
        DATA t303 TYPE REF TO object.
        t297->load( ).
        READ TABLE t297->items INDEX 1 INTO t303.
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t303 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t304 ?= t303.
          DATA t305 TYPE REF TO object.
          t305 = t304->as_ref( ).
          t296 ?= t305.
        ELSE.
          t296 ?= t303.
        ENDIF.
        DATA(t306) = VALUE string( ).
        DATA(t307) = VALUE string( ).
        DATA(t308) = |Domain |.
        DATA(t309) = VALUE string( ).
        t309 = t11->zlnt_view_read_sr_f8de08988c9e( ).
        DATA(t312) = strlen( t308 ).
        t307 = |{ t308 }{ t309 }|.
        DATA(t313) = | does not contain any fixed values. Either add some values o|.
        t313 = t313 && |r disable this check|.
        DATA(t314) = strlen( t307 ).
        t306 = |{ t307 }{ t313 }|.
        DATA(t315) = VALUE string( ).
        DATA t316 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t321) = VALUE string( ).
        DATA(t322) = |Checks that a class contains exactly the constants correspon|.
        t322 = t322 && |ding to a domain's fixed values.|.
        t321 = t322.
        DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t326) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t326 = t326 && |nABAP.md#prefer-enum-to-constants-interfaces|.
        DATA(t327) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t327->has = abap_true.
        t327->value = t326.
        t323 = t327.
        DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t333.
        t333->load( ).
        APPEND |Styleguide| TO t333->items.
        t333->save( ).
        DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t316 = NEW zcl_lnt_irule_metadata( i_key = |constant_classes| i_title = |Validate constant classes| i_short_description = t321 i_bad_example = t339 i_good_example = t341 i_extended_information = t323 i_tags = t333 i_pragma = t343 i_pseudo_comment = t345 ).
        CREATE OBJECT t316->zlnt_view_ownkeys_b0e8086400eb.
        t316->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t316->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t347 ).
        DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t316->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t316->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t348 ).
        ENDIF.
        DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t316->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t316->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t349 ).
        ENDIF.
        DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t316->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t316->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t350 ).
        ENDIF.
        DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t316->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t316->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t351 ).
        ENDIF.
        CREATE OBJECT t316->zlnt_json_ownkeys_70e5fd461788.
        t316->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t316->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t353 ).
        DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t316->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t316->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t355 ).
        ENDIF.
        DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t316->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t316->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t357 ).
        ENDIF.
        DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t316->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t316->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t359 ).
        ENDIF.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t316->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t316->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t361 ).
        ENDIF.
        t315 = t316->key.
        DATA t364 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t293 = zcl_lnt_issue=>at_statement( i_file = t294 i_statement = t296 i_message_26cb = t306 i_key = t315 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t364 i_alternative_fixes = t365 ).
        t263->load( ).
        APPEND t293 TO t263->items.
        t263->save( ).
      ENDIF.
      DATA(t366) = VALUE abap_bool( ).
      t366 = abap_false.
      DATA t368 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t368 = t185->constants.
      DATA t371 TYPE REF TO zcl_lnt_info_constant.
      DATA t372 TYPE REF TO object.
      DATA(t373) = VALUE i( ).
      DO.
        t368->load( ).
        IF t373 >= lines( t368->items ).
          EXIT.
        ENDIF.
        CLEAR t372.
        READ TABLE t368->items INDEX t373 + 1 INTO t372.
        t373 = t373 + 1.
        DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t374.
        CLEAR t371.
        IF t372 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t374 ?= t372.
          DATA t375 TYPE REF TO object.
          t375 = t374->as_ref( ).
          t371 ?= t375.
        ELSE.
          t371 ?= t372.
        ENDIF.
        DATA(t376) = VALUE abap_bool( ).
        DATA(t377) = VALUE abap_bool( ).
        DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t378.
        t378 = t11->zlnt_view_read_sr_3ef2d1088b9b( ).
        IF t378 IS BOUND.
          IF t378->has = abap_true.
            t377 = xsdbool( strlen( t378->value ) > 0 ).
          ENDIF.
        ENDIF.
        t376 = t377.
        IF t377 = abap_true.
          DATA(t382) = VALUE string( ).
          t382 = t371->name.
          DATA(t384) = VALUE string( ).
          t384 = t11->zlnt_view_read_sr_3ef2d1088b9b( )->value.
          t376 = xsdbool( t382 = t384 ).
        ENDIF.
        IF t376 = abap_true.
          DATA(t389) = VALUE string( ).
          t389 = t371->value.
          DATA(t391) = VALUE string( ).
          DATA(t392) = VALUE string( ).
          t392 = t11->zlnt_view_read_sr_f8de08988c9e( ).
          DATA(t395) = strlen( t392 ).
          t391 = t392.
          IF t391 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t391 TO UPPER CASE.
          ELSE.
            t391 = zlnt_runtime_uppe_91169605024d=>full( t391 ).
          ENDIF.
          IF xsdbool( t389 <> t391 ) = abap_true.
            DATA t397 TYPE REF TO zcl_lnt_issue.
            CLEAR t397.
            DATA(t400) = VALUE string( ).
            DATA(t402) = VALUE string( ).
            DATA(t403) = VALUE string( ).
            DATA(t404) = VALUE string( ).
            DATA(t405) = |Constant value |.
            DATA(t406) = VALUE string( ).
            t406 = t371->value.
            DATA(t408) = strlen( t405 ).
            t404 = |{ t405 }{ t406 }|.
            DATA(t410) = strlen( t404 ).
            t403 = |{ t404 }{ | must match domain name | }|.
            DATA(t411) = VALUE string( ).
            t411 = t11->zlnt_view_read_sr_f8de08988c9e( ).
            DATA(t414) = strlen( t403 ).
            t402 = |{ t403 }{ t411 }|.
            DATA(t416) = strlen( t402 ).
            t400 = |{ t402 }{ | | }|.
            DATA t418 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t418.
            t418 = t371->identifier.
            DATA(t421) = VALUE string( ).
            DATA t422 TYPE REF TO zcl_lnt_irule_metadata.
            DATA(t427) = VALUE string( ).
            DATA(t428) = |Checks that a class contains exactly the constants correspon|.
            t428 = t428 && |ding to a domain's fixed values.|.
            t427 = t428.
            DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t429.
            DATA(t432) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t432 = t432 && |nABAP.md#prefer-enum-to-constants-interfaces|.
            DATA(t433) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t433->has = abap_true.
            t433->value = t432.
            t429 = t433.
            DATA t435 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t435.
            DATA t439 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t439.
            t439->load( ).
            APPEND |Styleguide| TO t439->items.
            t439->save( ).
            t435 = t439.
            DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t445.
            CLEAR t445.
            DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t447.
            CLEAR t447.
            DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t449.
            CLEAR t449.
            DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t451.
            CLEAR t451.
            t422 = NEW zcl_lnt_irule_metadata( i_key = |constant_classes| i_title = |Validate constant classes| i_short_description = t427 i_bad_example = t445 i_good_example = t447 i_extended_information = t429 i_tags = t435 i_pragma = t449 i_pseudo_comment = t451 ).
            CREATE OBJECT t422->zlnt_view_ownkeys_b0e8086400eb.
            t422->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t453.
            t422->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t453 ).
            DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t454.
            IF t422->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t422->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t454 ).
            ENDIF.
            DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t455.
            IF t422->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t422->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t455 ).
            ENDIF.
            DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t456.
            IF t422->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t422->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t456 ).
            ENDIF.
            DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t457.
            IF t422->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t422->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t457 ).
            ENDIF.
            CREATE OBJECT t422->zlnt_json_ownkeys_70e5fd461788.
            t422->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t459.
            t422->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t459 ).
            DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t461.
            IF t422->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t422->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t461 ).
            ENDIF.
            DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t463.
            IF t422->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t422->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t463 ).
            ENDIF.
            DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t465.
            IF t422->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t422->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t465 ).
            ENDIF.
            DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t467.
            IF t422->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t422->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t467 ).
            ENDIF.
            t421 = t422->key.
            DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t468.
            t468 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t470 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t470.
            t397 = zcl_lnt_issue=>at_identifier( i_identifier = t418 i_message_26cb = t400 i_key = t421 i_severity = t468 i_fix = t470 ).
            t263->load( ).
            APPEND t397 TO t263->items.
            t263->save( ).
          ENDIF.
          t366 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t472) = VALUE abap_bool( ).
        DATA(t473) = VALUE abap_bool( ).
        DATA t474 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t474 = t11->zlnt_view_read_sr_ee5be126cb68( ).
        IF t474 IS BOUND.
          IF t474->has = abap_true.
            t473 = xsdbool( t474->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t472 = t473.
        IF t473 = abap_true.
          DATA(t478) = VALUE string( ).
          DATA(t479) = VALUE string( ).
          t479 = t371->type_name.
          DATA(t481) = strlen( t479 ).
          t478 = t479.
          TRANSLATE t478 TO LOWER CASE.
          DATA(t482) = VALUE string( ).
          DATA(t483) = VALUE string( ).
          t483 = t11->zlnt_view_read_sr_f8de08988c9e( ).
          DATA(t486) = strlen( t483 ).
          t482 = t483.
          TRANSLATE t482 TO LOWER CASE.
          t472 = xsdbool( t478 <> t482 ).
        ENDIF.
        IF t472 = abap_true.
          DATA t488 TYPE REF TO zcl_lnt_issue.
          CLEAR t488.
          DATA(t491) = VALUE string( ).
          DATA(t493) = VALUE string( ).
          DATA(t494) = VALUE string( ).
          DATA(t495) = VALUE string( ).
          DATA(t496) = |Use exact type |.
          DATA(t497) = VALUE string( ).
          t497 = t11->zlnt_view_read_sr_f8de08988c9e( ).
          DATA(t500) = strlen( t496 ).
          t495 = |{ t496 }{ t497 }|.
          DATA(t502) = strlen( t495 ).
          t494 = |{ t495 }{ | instead of | }|.
          DATA(t503) = VALUE string( ).
          t503 = t371->type_name.
          DATA(t505) = strlen( t494 ).
          t493 = |{ t494 }{ t503 }|.
          DATA(t507) = strlen( t493 ).
          t491 = |{ t493 }{ || }|.
          DATA t509 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t509.
          t509 = t371->identifier.
          DATA(t512) = VALUE string( ).
          DATA t513 TYPE REF TO zcl_lnt_irule_metadata.
          DATA(t518) = VALUE string( ).
          DATA(t519) = |Checks that a class contains exactly the constants correspon|.
          t519 = t519 && |ding to a domain's fixed values.|.
          t518 = t519.
          DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t520.
          DATA(t523) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t523 = t523 && |nABAP.md#prefer-enum-to-constants-interfaces|.
          DATA(t524) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t524->has = abap_true.
          t524->value = t523.
          t520 = t524.
          DATA t526 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t526.
          DATA t530 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t530.
          t530->load( ).
          APPEND |Styleguide| TO t530->items.
          t530->save( ).
          t526 = t530.
          DATA t536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t536.
          CLEAR t536.
          DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t538.
          CLEAR t538.
          DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t540.
          CLEAR t540.
          DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t542.
          CLEAR t542.
          t513 = NEW zcl_lnt_irule_metadata( i_key = |constant_classes| i_title = |Validate constant classes| i_short_description = t518 i_bad_example = t536 i_good_example = t538 i_extended_information = t520 i_tags = t526 i_pragma = t540 i_pseudo_comment = t542 ).
          CREATE OBJECT t513->zlnt_view_ownkeys_b0e8086400eb.
          t513->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t544.
          t513->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t544 ).
          DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t545.
          IF t513->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t513->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t545 ).
          ENDIF.
          DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t546.
          IF t513->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t513->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t546 ).
          ENDIF.
          DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t547.
          IF t513->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t513->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t547 ).
          ENDIF.
          DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t548.
          IF t513->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t513->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t548 ).
          ENDIF.
          CREATE OBJECT t513->zlnt_json_ownkeys_70e5fd461788.
          t513->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t550.
          t513->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t550 ).
          DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t552.
          IF t513->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t513->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t552 ).
          ENDIF.
          DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t554.
          IF t513->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t513->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t554 ).
          ENDIF.
          DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t556.
          IF t513->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t513->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t556 ).
          ENDIF.
          DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t558.
          IF t513->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t513->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t558 ).
          ENDIF.
          t512 = t513->key.
          DATA t559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t559.
          t559 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t561 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t561.
          t488 = zcl_lnt_issue=>at_identifier( i_identifier = t509 i_message_26cb = t491 i_key = t512 i_severity = t559 i_fix = t561 ).
          t263->load( ).
          APPEND t488 TO t263->items.
          t263->save( ).
        ENDIF.
        IF xsdbool( t371->visibility <> CONV f( 3 ) ) = abap_true.
          DATA t567 TYPE REF TO zcl_lnt_issue.
          CLEAR t567.
          DATA(t570) = VALUE string( ).
          DATA(t572) = VALUE string( ).
          DATA(t573) = |Constant |.
          DATA(t574) = VALUE string( ).
          t574 = t371->name.
          DATA(t576) = strlen( t573 ).
          t572 = |{ t573 }{ t574 }|.
          DATA(t578) = strlen( t572 ).
          t570 = |{ t572 }{ | should be public| }|.
          DATA t580 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t580.
          t580 = t371->identifier.
          DATA(t583) = VALUE string( ).
          DATA t584 TYPE REF TO zcl_lnt_irule_metadata.
          DATA(t589) = VALUE string( ).
          DATA(t590) = |Checks that a class contains exactly the constants correspon|.
          t590 = t590 && |ding to a domain's fixed values.|.
          t589 = t590.
          DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t591.
          DATA(t594) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t594 = t594 && |nABAP.md#prefer-enum-to-constants-interfaces|.
          DATA(t595) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t595->has = abap_true.
          t595->value = t594.
          t591 = t595.
          DATA t597 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t597.
          DATA t601 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t601.
          t601->load( ).
          APPEND |Styleguide| TO t601->items.
          t601->save( ).
          t597 = t601.
          DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t607.
          CLEAR t607.
          DATA t609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t609.
          CLEAR t609.
          DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t611.
          CLEAR t611.
          DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t613.
          CLEAR t613.
          t584 = NEW zcl_lnt_irule_metadata( i_key = |constant_classes| i_title = |Validate constant classes| i_short_description = t589 i_bad_example = t607 i_good_example = t609 i_extended_information = t591 i_tags = t597 i_pragma = t611 i_pseudo_comment = t613 ).
          CREATE OBJECT t584->zlnt_view_ownkeys_b0e8086400eb.
          t584->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t615.
          t584->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t615 ).
          DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t616.
          IF t584->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t584->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t616 ).
          ENDIF.
          DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t617.
          IF t584->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t584->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t617 ).
          ENDIF.
          DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t618.
          IF t584->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t584->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t618 ).
          ENDIF.
          DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t619.
          IF t584->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t584->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t619 ).
          ENDIF.
          CREATE OBJECT t584->zlnt_json_ownkeys_70e5fd461788.
          t584->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t621.
          t584->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t621 ).
          DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t623.
          IF t584->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t584->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t623 ).
          ENDIF.
          DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t625.
          IF t584->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t584->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t625 ).
          ENDIF.
          DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t627.
          IF t584->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t584->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t627 ).
          ENDIF.
          DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t629.
          IF t584->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t584->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t629 ).
          ENDIF.
          t583 = t584->key.
          DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t630.
          t630 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t632 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t632.
          t567 = zcl_lnt_issue=>at_identifier( i_identifier = t580 i_message_26cb = t570 i_key = t583 i_severity = t630 i_fix = t632 ).
          t263->load( ).
          APPEND t567 TO t263->items.
          t263->save( ).
        ENDIF.
        DATA(t636) = VALUE string( ).
        t636 = t371->value.
        IF xsdbool( t247->includes( p0 = t636 ) = abap_false ) = abap_true.
          DATA t639 TYPE REF TO zcl_lnt_issue.
          CLEAR t639.
          DATA(t642) = VALUE string( ).
          DATA(t644) = VALUE string( ).
          DATA(t645) = VALUE string( ).
          DATA(t646) = VALUE string( ).
          DATA(t647) = |Extra constant |.
          DATA(t648) = VALUE string( ).
          t648 = t371->name.
          DATA(t650) = strlen( t647 ).
          t646 = |{ t647 }{ t648 }|.
          DATA(t652) = strlen( t646 ).
          t645 = |{ t646 }{ | found which is not present in domain | }|.
          DATA(t653) = VALUE string( ).
          t653 = t11->zlnt_view_read_sr_f8de08988c9e( ).
          DATA(t656) = strlen( t645 ).
          t644 = |{ t645 }{ t653 }|.
          DATA(t658) = strlen( t644 ).
          t642 = |{ t644 }{ || }|.
          DATA t660 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t660.
          t660 = t371->identifier.
          DATA(t663) = VALUE string( ).
          DATA t664 TYPE REF TO zcl_lnt_irule_metadata.
          DATA(t669) = VALUE string( ).
          DATA(t670) = |Checks that a class contains exactly the constants correspon|.
          t670 = t670 && |ding to a domain's fixed values.|.
          t669 = t670.
          DATA t671 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t671.
          DATA(t674) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t674 = t674 && |nABAP.md#prefer-enum-to-constants-interfaces|.
          DATA(t675) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t675->has = abap_true.
          t675->value = t674.
          t671 = t675.
          DATA t677 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t677.
          DATA t681 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t681.
          t681->load( ).
          APPEND |Styleguide| TO t681->items.
          t681->save( ).
          t677 = t681.
          DATA t687 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t687.
          CLEAR t687.
          DATA t689 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t689.
          CLEAR t689.
          DATA t691 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t691.
          CLEAR t691.
          DATA t693 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t693.
          CLEAR t693.
          t664 = NEW zcl_lnt_irule_metadata( i_key = |constant_classes| i_title = |Validate constant classes| i_short_description = t669 i_bad_example = t687 i_good_example = t689 i_extended_information = t671 i_tags = t677 i_pragma = t691 i_pseudo_comment = t693 ).
          CREATE OBJECT t664->zlnt_view_ownkeys_b0e8086400eb.
          t664->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t695.
          t664->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t695 ).
          DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t696.
          IF t664->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t664->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t696 ).
          ENDIF.
          DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t697.
          IF t664->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t664->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t697 ).
          ENDIF.
          DATA t698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t698.
          IF t664->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t664->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t698 ).
          ENDIF.
          DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t699.
          IF t664->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t664->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t699 ).
          ENDIF.
          CREATE OBJECT t664->zlnt_json_ownkeys_70e5fd461788.
          t664->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t701.
          t664->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t701 ).
          DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t703.
          IF t664->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t664->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t703 ).
          ENDIF.
          DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t705.
          IF t664->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t664->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t705 ).
          ENDIF.
          DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t707.
          IF t664->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t664->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t707 ).
          ENDIF.
          DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t709.
          IF t664->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t664->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t709 ).
          ENDIF.
          t663 = t664->key.
          DATA t710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t710.
          t710 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t712 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t712.
          t639 = zcl_lnt_issue=>at_identifier( i_identifier = t660 i_message_26cb = t642 i_key = t663 i_severity = t710 i_fix = t712 ).
          t263->load( ).
          APPEND t639 TO t263->items.
          t263->save( ).
        ENDIF.
      ENDDO.
      DATA t714 TYPE REF TO zcl_lnt_domain_value.
      DATA t715 TYPE REF TO object.
      DATA(t716) = VALUE i( ).
      DO.
        t222->load( ).
        IF t716 >= lines( t222->items ).
          EXIT.
        ENDIF.
        CLEAR t715.
        READ TABLE t222->items INDEX t716 + 1 INTO t715.
        t716 = t716 + 1.
        DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t717.
        CLEAR t714.
        IF t715 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t717 ?= t715.
          DATA t718 TYPE REF TO object.
          t718 = t717->as_ref( ).
          t714 ?= t718.
        ELSE.
          t714 ?= t715.
        ENDIF.
        DATA t721 TYPE REF TO zcl_lnt_info_constant.
        CLEAR t721.
        DATA t722 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t722.
        t722 = t185->constants.
        DATA(t726) = VALUE i( ).
        t722->load( ).
        t726 = lines( t722->items ).
        DATA(t729) = VALUE i( ).
        t729 = 0.
        DATA t731 TYPE REF TO zcl_lnt_info_constant.
        CLEAR t731.
        CLEAR t731.
        DO.
          IF xsdbool( t729 < t726 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t736 TYPE REF TO zcl_lnt_info_constant.
          CLEAR t736.
          DATA t738 TYPE REF TO zcl_lnt_info_constant.
          CLEAR t738.
          DATA t741 TYPE REF TO object.
          t741 = t722->get( p0 = t729 ).
          DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t742.
          CLEAR t738.
          IF t741 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t742 ?= t741.
            DATA t743 TYPE REF TO object.
            t743 = t742->as_ref( ).
            t738 ?= t743.
          ELSE.
            t738 ?= t741.
          ENDIF.
          t736 = t738.
          DATA(t744) = VALUE abap_bool( ).
          DATA t745 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t747) = VALUE string( ).
          t747 = t736->value.
          DATA(t749) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t749->has = abap_true.
          t749->value = t747.
          t745 = t749.
          DATA t751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t751 = t714->low.
          DATA(t753) = VALUE abap_bool( ).
          DATA(t754) = VALUE abap_bool( ).
          IF t745 IS BOUND.
            t753 = t745->has.
          ENDIF.
          IF t751 IS BOUND.
            t754 = t751->has.
          ENDIF.
          IF t753 = t754.
            IF t753 = abap_false.
              t744 = abap_true.
            ELSEIF t745->value = t751->value.
              t744 = abap_true.
            ENDIF.
          ENDIF.
          IF t744 = abap_true.
            t731 = t736.
            EXIT.
          ENDIF.
          DATA(t761) = 1.
          t729 = t729 + t761.
        ENDDO.
        t721 = t731.
        IF xsdbool( xsdbool( t721 IS BOUND ) = abap_false ) = abap_true.
          DATA t764 TYPE REF TO zcl_lnt_issue.
          CLEAR t764.
          DATA t765 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t765.
          t765 = t173.
          DATA t767 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t767.
          DATA t768 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t768 = t173->statements.
          DATA t774 TYPE REF TO object.
          CLEAR t774.
          t768->load( ).
          CLEAR t774.
          READ TABLE t768->items INDEX 1 INTO t774.
          DATA t775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t775.
          CLEAR t767.
          IF t774 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t775 ?= t774.
            DATA t776 TYPE REF TO object.
            t776 = t775->as_ref( ).
            t767 ?= t776.
          ELSE.
            t767 ?= t774.
          ENDIF.
          DATA(t777) = VALUE string( ).
          DATA(t778) = VALUE string( ).
          DATA(t779) = VALUE string( ).
          DATA(t780) = VALUE string( ).
          DATA(t781) = |Missing constant for |.
          DATA(t782) = VALUE string( ).
          DATA t783 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t783 = t714->low.
          DATA(t786) = VALUE string( ).
          DATA(t787) = VALUE abap_bool( ).
          IF t783 IS INITIAL.
            t787 = abap_true.
          ELSEIF t783->has = abap_false.
            t787 = abap_true.
          ENDIF.
          IF t787 = abap_true.
            t786 = |undefined|.
          ELSE.
            t786 = t783->value.
          ENDIF.
          t782 = t786.
          DATA(t792) = strlen( t781 ).
          t780 = |{ t781 }{ t782 }|.
          DATA(t794) = strlen( t780 ).
          t779 = |{ t780 }{ | (domain | }|.
          DATA(t795) = VALUE string( ).
          t795 = t11->zlnt_view_read_sr_f8de08988c9e( ).
          DATA(t798) = strlen( t779 ).
          t778 = |{ t779 }{ t795 }|.
          DATA(t800) = strlen( t778 ).
          t777 = |{ t778 }{ |)| }|.
          DATA(t801) = VALUE string( ).
          DATA t802 TYPE REF TO zcl_lnt_irule_metadata.
          DATA(t807) = VALUE string( ).
          DATA(t808) = |Checks that a class contains exactly the constants correspon|.
          t808 = t808 && |ding to a domain's fixed values.|.
          t807 = t808.
          DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t809.
          DATA(t812) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t812 = t812 && |nABAP.md#prefer-enum-to-constants-interfaces|.
          DATA(t813) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t813->has = abap_true.
          t813->value = t812.
          t809 = t813.
          DATA t815 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t815.
          DATA t819 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t819.
          t819->load( ).
          APPEND |Styleguide| TO t819->items.
          t819->save( ).
          t815 = t819.
          DATA t825 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t825.
          CLEAR t825.
          DATA t827 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t827.
          CLEAR t827.
          DATA t829 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t829.
          CLEAR t829.
          DATA t831 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t831.
          CLEAR t831.
          t802 = NEW zcl_lnt_irule_metadata( i_key = |constant_classes| i_title = |Validate constant classes| i_short_description = t807 i_bad_example = t825 i_good_example = t827 i_extended_information = t809 i_tags = t815 i_pragma = t829 i_pseudo_comment = t831 ).
          CREATE OBJECT t802->zlnt_view_ownkeys_b0e8086400eb.
          t802->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t833.
          t802->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t833 ).
          DATA t834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t834.
          IF t802->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t802->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t834 ).
          ENDIF.
          DATA t835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t835.
          IF t802->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t802->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t835 ).
          ENDIF.
          DATA t836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t836.
          IF t802->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t802->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t836 ).
          ENDIF.
          DATA t837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t837.
          IF t802->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t802->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t837 ).
          ENDIF.
          CREATE OBJECT t802->zlnt_json_ownkeys_70e5fd461788.
          t802->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t839 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t839.
          t802->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t839 ).
          DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t841.
          IF t802->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t802->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t841 ).
          ENDIF.
          DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t843.
          IF t802->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t802->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t843 ).
          ENDIF.
          DATA t845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t845.
          IF t802->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t802->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t845 ).
          ENDIF.
          DATA t847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t847.
          IF t802->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t802->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t847 ).
          ENDIF.
          t801 = t802->key.
          DATA t848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t848.
          t848 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t850 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t850.
          DATA t851 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t851.
          t764 = zcl_lnt_issue=>at_statement( i_file = t765 i_statement = t767 i_message_26cb = t777 i_key = t801 i_severity = t848 i_fix = t850 i_alternative_fixes = t851 ).
          t263->load( ).
          APPEND t764 TO t263->items.
          t263->save( ).
        ENDIF.
      ENDDO.
      DATA(t852) = VALUE abap_bool( ).
      DATA(t853) = VALUE abap_bool( ).
      DATA t854 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t854 = t11->zlnt_view_read_sr_3ef2d1088b9b( ).
      IF t854 IS BOUND.
        IF t854->has = abap_true.
          t853 = xsdbool( strlen( t854->value ) > 0 ).
        ENDIF.
      ENDIF.
      t852 = t853.
      IF t853 = abap_true.
        t852 = xsdbool( t366 = abap_false ).
      ENDIF.
      IF t852 = abap_true.
        DATA t860 TYPE REF TO zcl_lnt_issue.
        DATA t861 TYPE REF TO zcl_lnt_abap_file.
        t861 = t173.
        DATA t863 TYPE REF TO zcl_lnt_statement_node.
        DATA t864 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t864 = t173->statements.
        DATA t870 TYPE REF TO object.
        t864->load( ).
        READ TABLE t864->items INDEX 1 INTO t870.
        DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t870 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t871 ?= t870.
          DATA t872 TYPE REF TO object.
          t872 = t871->as_ref( ).
          t863 ?= t872.
        ELSE.
          t863 ?= t870.
        ENDIF.
        DATA(t873) = VALUE string( ).
        DATA(t874) = VALUE string( ).
        DATA(t875) = VALUE string( ).
        DATA(t876) = VALUE string( ).
        DATA(t877) = |Missing constant |.
        DATA(t878) = VALUE string( ).
        t878 = t11->zlnt_view_read_sr_3ef2d1088b9b( )->value.
        DATA(t882) = strlen( t877 ).
        t876 = |{ t877 }{ t878 }|.
        DATA(t884) = strlen( t876 ).
        t875 = |{ t876 }{ | for name of domain | }|.
        DATA(t885) = VALUE string( ).
        t885 = t11->zlnt_view_read_sr_f8de08988c9e( ).
        DATA(t888) = strlen( t875 ).
        t874 = |{ t875 }{ t885 }|.
        DATA(t890) = strlen( t874 ).
        t873 = |{ t874 }{ || }|.
        DATA(t891) = VALUE string( ).
        DATA t892 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t897) = VALUE string( ).
        DATA(t898) = |Checks that a class contains exactly the constants correspon|.
        t898 = t898 && |ding to a domain's fixed values.|.
        t897 = t898.
        DATA t899 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t902) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t902 = t902 && |nABAP.md#prefer-enum-to-constants-interfaces|.
        DATA(t903) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t903->has = abap_true.
        t903->value = t902.
        t899 = t903.
        DATA t909 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t909.
        t909->load( ).
        APPEND |Styleguide| TO t909->items.
        t909->save( ).
        DATA t915 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t917 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t919 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t921 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t892 = NEW zcl_lnt_irule_metadata( i_key = |constant_classes| i_title = |Validate constant classes| i_short_description = t897 i_bad_example = t915 i_good_example = t917 i_extended_information = t899 i_tags = t909 i_pragma = t919 i_pseudo_comment = t921 ).
        CREATE OBJECT t892->zlnt_view_ownkeys_b0e8086400eb.
        t892->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t923 ).
        DATA t924 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t924 ).
        ENDIF.
        DATA t925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t925 ).
        ENDIF.
        DATA t926 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t926 ).
        ENDIF.
        DATA t927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t927 ).
        ENDIF.
        CREATE OBJECT t892->zlnt_json_ownkeys_70e5fd461788.
        t892->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t929 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t929 ).
        DATA t931 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t931 ).
        ENDIF.
        DATA t933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t933 ).
        ENDIF.
        DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t935 ).
        ENDIF.
        DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t937 ).
        ENDIF.
        t891 = t892->key.
        DATA t940 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t941 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t860 = zcl_lnt_issue=>at_statement( i_file = t861 i_statement = t863 i_message_26cb = t873 i_key = t891 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t940 i_alternative_fixes = t941 ).
        t263->load( ).
        APPEND t860 TO t263->items.
        t263->save( ).
      ENDIF.
      result = t263.
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD issue_at_constant.
    DATA(t2) = i_message_26cb.
    DATA t4 TYPE REF TO zcl_lnt_fi_identifier.
    t4 = i_constant_6eda->identifier.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t13 TYPE string.
    DATA(t14) = |Checks that a class contains exactly the constants correspon|.
    t14 = t14 && |ding to a domain's fixed values.|.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t18 = t18 && |nABAP.md#prefer-enum-to-constants-interfaces|.
    DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t19->has = abap_true.
    t19->value = t18.
    t15 = t19.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t25.
    t25->load( ).
    APPEND |Styleguide| TO t25->items.
    t25->save( ).
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t8 = NEW zcl_lnt_irule_metadata( i_key = |constant_classes| i_title = |Validate constant classes| i_short_description = t13 i_bad_example = t31 i_good_example = t33 i_extended_information = t15 i_tags = t25 i_pragma = t35 i_pseudo_comment = t37 ).
    CREATE OBJECT t8->zlnt_view_ownkeys_b0e8086400eb.
    t8->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t39 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t8->zlnt_json_ownkeys_70e5fd461788.
    t8->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t45 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t53 ).
    ENDIF.
    t7 = t8->key.
    DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    result = zcl_lnt_issue=>at_identifier( i_identifier = t4 i_message_26cb = t2 i_key = t7 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t56 ).

  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_cns_cls_ts_cns_cls( i_reg_f149 = t3 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_constant_classes_conf( me->gt_cn_in_sr_rl_cn_cl_ts_cn_cls( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_constant_classes_conf( me->gt_cn_in_sr_rl_cn_cl_ts_cn_cls( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_constant_classes_conf.
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
        t2 = NEW zcl_lnt_constant_classes_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_cn_cl_ts_cn_cls( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1463_e24a690c2e30.
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
