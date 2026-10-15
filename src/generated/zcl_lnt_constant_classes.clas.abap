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
    DATA(t1) = NEW zcl_lnt_constant_classes_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |constant_classes|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Validate constant classes|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that a class contains exactly the constants correspon|.
    t7 = t7 && |ding to a domain's fixed values.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#prefer-enum-to-constants-interfaces|.
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
      DATA(t21) = |Styleguide|.
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

  METHOD in_in_sr_rl_cns_cls_ts_cns_cls.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_cn_cl_ts_cn_cls.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_cn_cl_ts_cn_cls.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = me->conf.
    t4 = xsdbool( t5 IS BOUND ).
    t3 = t4.
    IF t4 = abap_true.
      DATA(t6) = VALUE abap_bool( ).
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t7.
      DATA(t8) = me->conf.
      t7 = t8->zlnt_view_read_sr_0ae60a1e951e( ).
      t6 = xsdbool( t7 IS BOUND ).
      t3 = t6.
    ENDIF.
    t2 = t3.
    IF t3 = abap_true.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = t1.
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_domain ).
      t2 = t9.
    ENDIF.
    IF t2 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_domain_class_mapping.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_domain_class_mapping.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA(t15) = me->conf.
      t14 = t15->zlnt_view_read_sr_0ae60a1e951e( ).
      t13 = t14.
      DATA(t16) = VALUE i( ).
      DATA(t17) = VALUE i( ).
      DATA(t18) = t13.
      t18->load( ).
      t17 = lines( t18->items ).
      t16 = t17.
      DATA(t19) = VALUE i( ).
      DATA(t20) = 0.
      t19 = t20.
      DATA t21 TYPE REF TO zcl_lnt_domain_class_mapping.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_domain_class_mapping.
      CLEAR t22.
      t21 = t22.
      DO.
        DATA(t23) = VALUE abap_bool( ).
        DATA(t24) = t19.
        DATA(t25) = t16.
        t23 = xsdbool( t24 < t25 ).
        IF t23 = abap_false.
          EXIT.
        ENDIF.
        DATA t26 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t26.
        DATA t27 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t27.
        DATA t28 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t28.
        DATA(t29) = t13.
        DATA(t30) = t19.
        DATA t31 TYPE REF TO object.
        CLEAR t31.
        t31 = t29->get( p0 = t30 ).
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
        t27 = t28.
        t26 = t27.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE string( ).
        DATA(t40) = VALUE string( ).
        DATA(t41) = t26.
        t40 = t41->zlnt_view_read_sr_f8de08988c9e( ).
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
        CLEAR t45.
        DATA t46 TYPE REF TO zcl_lnt_domain.
        CLEAR t46.
        DATA(t47) = t1.
        DATA t48 TYPE REF TO object.
        CLEAR t48.
        t48 = t47.
        t46 ?= t48.
        t45 = t46.
        DATA(t49) = VALUE string( ).
        DATA(t50) = t45.
        t49 = t50->name.
        t44 = t49.
        DATA(t51) = strlen( t44 ).
        t43 = t44.
        IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t43 TO UPPER CASE.
        ELSE.
          t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
        ENDIF.
        t38 = xsdbool( t39 = t43 ).
        IF t38 = abap_true.
          DATA t52 TYPE REF TO zcl_lnt_domain_class_mapping.
          CLEAR t52.
          DATA(t53) = abap_true.
          IF t53 = abap_true.
            DATA(t54) = t26.
            t52 = t54.
          ELSE.
            DATA t55 TYPE REF TO zcl_lnt_domain_class_mapping.
            CLEAR t55.
            t52 = t55.
          ENDIF.
          t21 = t52.
          EXIT.
        ENDIF.
        DATA(t56) = VALUE i( ).
        DATA(t57) = t19.
        DATA(t58) = 1.
        t56 = t57 + t58.
        t19 = t56.
      ENDDO.
      DATA(t59) = t21.
      t12 = t59.
      t11 = t12.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = t11.
      t61 = xsdbool( t62 IS BOUND ).
      t60 = xsdbool( t61 = abap_false ).
      IF t60 = abap_true.
        DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t63.
        CREATE OBJECT t63.
        result = t63.
        RETURN.
      ENDIF.
      DATA t64 TYPE REF TO zcl_lnt_class.
      CLEAR t64.
      DATA t65 TYPE REF TO zcl_lnt_class.
      CLEAR t65.
      DATA t66 TYPE REF TO zif_lnt_object.
      CLEAR t66.
      DATA(t67) = me->reg.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t68.
      DATA(t69) = abap_true.
      IF t69 = abap_true.
        DATA(t70) = |CLAS|.
        DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t71->has = abap_true.
        t71->value = t70.
        t68 = t71.
      ELSE.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        t68 = t72.
      ENDIF.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      DATA(t74) = abap_true.
      IF t74 = abap_true.
        DATA(t75) = VALUE string( ).
        DATA(t76) = VALUE string( ).
        DATA t77 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t78.
        DATA(t79) = t11.
        t78 = t79.
        t77 = t78.
        DATA(t80) = VALUE string( ).
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = t77.
        IF t83 IS INITIAL.
          t82 = abap_true.
        ENDIF.
        IF t82 = abap_true.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t84.
          t81 = t84.
        ELSE.
          DATA(t85) = VALUE string( ).
          DATA(t86) = t77.
          t85 = t86->zlnt_view_read_sr_86cf045b7b25( ).
          DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t87->has = abap_true.
          t87->value = t85.
          t81 = t87.
        ENDIF.
        t80 = t81->value.
        t76 = t80.
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
        t73 = t89.
      ELSE.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        t73 = t90.
      ENDIF.
      t66 = t67->get_object( i_type_9913 = t68 i_name = t73 ).
      DATA t91 TYPE REF TO object.
      CLEAR t91.
      t91 = t66.
      t65 ?= t91.
      t64 = t65.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = t64.
      t93 = xsdbool( t94 IS BOUND ).
      t92 = xsdbool( t93 = abap_false ).
      IF t92 = abap_true.
        DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t95.
        DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t96.
        DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t97.
        CREATE OBJECT t97.
        t96 = t97.
        DATA(t98) = t96.
        DATA t99 TYPE REF TO zcl_lnt_issue.
        CLEAR t99.
        DATA t100 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t100.
        DATA t101 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t101.
        DATA t102 TYPE REF TO zcl_lnt_domain.
        CLEAR t102.
        DATA(t103) = t1.
        DATA t104 TYPE REF TO object.
        CLEAR t104.
        t104 = t103.
        t102 ?= t104.
        t101 = t102->get_identifier( ).
        t100 = t101.
        DATA(t105) = VALUE string( ).
        DATA(t106) = VALUE string( ).
        DATA(t107) = VALUE string( ).
        DATA(t108) = VALUE string( ).
        DATA(t109) = |Constant class pattern implementation |.
        DATA(t110) = VALUE string( ).
        DATA t111 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t111.
        DATA(t112) = t11.
        t111 = t112.
        t110 = t111->zlnt_view_read_sr_86cf045b7b25( ).
        DATA(t113) = strlen( t109 ).
        t108 = |{ t109 }{ t110 }|.
        DATA(t114) = | missing for domain |.
        DATA(t115) = strlen( t108 ).
        t107 = |{ t108 }{ t114 }|.
        DATA(t116) = VALUE string( ).
        DATA t117 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t117.
        DATA(t118) = t11.
        t117 = t118.
        t116 = t117->zlnt_view_read_sr_f8de08988c9e( ).
        DATA(t119) = strlen( t107 ).
        t106 = |{ t107 }{ t116 }|.
        DATA(t120) = ||.
        DATA(t121) = strlen( t106 ).
        t105 = |{ t106 }{ t120 }|.
        DATA(t122) = VALUE string( ).
        DATA t123 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t123.
        DATA(t124) = VALUE string( ).
        DATA(t125) = |constant_classes|.
        t124 = t125.
        DATA(t126) = VALUE string( ).
        DATA(t127) = |Validate constant classes|.
        t126 = t127.
        DATA(t128) = VALUE string( ).
        DATA(t129) = |Checks that a class contains exactly the constants correspon|.
        t129 = t129 && |ding to a domain's fixed values.|.
        t128 = t129.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t130.
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t131.
        DATA(t132) = abap_true.
        IF t132 = abap_true.
          DATA(t133) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t133 = t133 && |nABAP.md#prefer-enum-to-constants-interfaces|.
          DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t134->has = abap_true.
          t134->value = t133.
          t131 = t134.
        ELSE.
          DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t135.
          t131 = t135.
        ENDIF.
        t130 = t131.
        DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t136.
        DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t137.
        DATA(t138) = abap_true.
        IF t138 = abap_true.
          DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t139.
          DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t140.
          DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t141.
          CREATE OBJECT t141.
          t140 = t141.
          DATA(t142) = t140.
          DATA(t143) = |Styleguide|.
          t142->load( ).
          APPEND t143 TO t142->items.
          t142->save( ).
          DATA(t144) = t140.
          t139 = t144.
          t137 = t139.
        ELSE.
          DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t145.
          t137 = t145.
        ENDIF.
        t136 = t137.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t146.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        t146 = t147.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        t148 = t149.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        t150 = t151.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t152.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        t152 = t153.
        t123 = NEW zcl_lnt_irule_metadata( i_key = t124 i_title = t126 i_short_description = t128 i_bad_example = t146 i_good_example = t148 i_extended_information = t130 i_tags = t136 i_pragma = t150 i_pseudo_comment = t152 ).
        CREATE OBJECT t123->zlnt_view_ownkeys_b0e8086400eb.
        t123->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t154 ).
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t155 ).
        ENDIF.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t156 ).
        ENDIF.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t157 ).
        ENDIF.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t158 ).
        ENDIF.
        CREATE OBJECT t123->zlnt_json_ownkeys_70e5fd461788.
        t123->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t159) = |key|.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
        ENDIF.
        DATA(t161) = |title|.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
        ENDIF.
        DATA(t163) = |shortDescription|.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
        ENDIF.
        DATA(t165) = |extendedInformation|.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
        ENDIF.
        DATA(t167) = |tags|.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
        ENDIF.
        t122 = t123->key.
        DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t169.
        DATA(t170) = me->conf.
        t169 = t170->zlnt_view_read_sr_15c06369f827( ).
        DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t171.
        t99 = zcl_lnt_issue=>at_identifier( i_identifier = t100 i_message_26cb = t105 i_key = t122 i_severity = t169 i_fix = t171 ).
        t98->load( ).
        APPEND t99 TO t98->items.
        t98->save( ).
        DATA(t172) = t96.
        t95 = t172.
        result = t95.
        RETURN.
      ENDIF.
      DATA t173 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t173.
      DATA t174 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t174.
      DATA t175 TYPE REF TO zcl_lnt_class.
      CLEAR t175.
      DATA(t176) = t64.
      t175 = t176.
      t174 = t175->get_main_abap_file( ).
      t173 = t174.
      DATA(t177) = VALUE abap_bool( ).
      DATA t178 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t178.
      DATA(t179) = t173.
      t178 = t179.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t180.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t181.
      t180 = t181.
      DATA(t182) = VALUE abap_bool( ).
      DATA(t183) = t178.
      IF t183 IS INITIAL.
        t182 = abap_true.
      ENDIF.
      t177 = t182.
      IF t177 = abap_true.
        DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t184.
        CREATE OBJECT t184.
        result = t184.
        RETURN.
      ENDIF.
      DATA t185 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t185.
      DATA t186 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t186.
      DATA t187 TYPE REF TO zcl_lnt_class.
      CLEAR t187.
      DATA t188 TYPE REF TO zcl_lnt_class.
      CLEAR t188.
      DATA(t189) = t64.
      t188 = t189.
      t187 = t188.
      DATA t190 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t190.
      DATA t191 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t191.
      DATA t192 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t192.
      DATA t193 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t193.
      DATA t194 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t194.
      DATA(t195) = t187.
      t194 = t195->get_main_abap_file( ).
      t193 = t194.
      DATA t196 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t196.
      DATA(t197) = VALUE abap_bool( ).
      DATA(t198) = t193.
      IF t198 IS INITIAL.
        t197 = abap_true.
      ENDIF.
      IF t197 = abap_true.
        DATA t199 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t199.
        t196 = t199.
      ELSE.
        DATA t200 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t200.
        DATA t201 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t201.
        DATA t202 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t202.
        DATA(t203) = t193.
        t202 = t203.
        t201 = t202.
        DATA t204 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t204.
        DATA(t205) = t201.
        t204 = t205->info.
        t200 = t204.
        t196 = t200.
      ENDIF.
      t192 = t196.
      t191 = t192.
      DATA t206 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t206.
      DATA(t207) = VALUE abap_bool( ).
      DATA(t208) = t191.
      IF t208 IS INITIAL.
        t207 = abap_true.
      ENDIF.
      IF t207 = abap_true.
        DATA t209 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t209.
        t206 = t209.
      ELSE.
        DATA t210 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t210.
        DATA t211 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t211.
        DATA(t212) = t191.
        t211 = t212.
        DATA(t213) = VALUE string( ).
        DATA t214 TYPE REF TO zcl_lnt_abstract_object.
        CLEAR t214.
        DATA(t215) = t187.
        t214 = t215.
        DATA(t216) = VALUE string( ).
        DATA(t217) = t214.
        t216 = t217->name.
        t213 = t216.
        t210 = t211->get_class_definition_by_name( i_name = t213 ).
        t206 = t210.
      ENDIF.
      t190 = t206.
      t186 = t190.
      t185 = t186.
      DATA(t218) = VALUE abap_bool( ).
      DATA(t219) = VALUE abap_bool( ).
      DATA(t220) = t185.
      t219 = xsdbool( t220 IS BOUND ).
      t218 = xsdbool( t219 = abap_false ).
      IF t218 = abap_true.
        DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t221.
        CREATE OBJECT t221.
        result = t221.
        RETURN.
      ENDIF.
      DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t222.
      DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t223.
      DATA t224 TYPE REF TO zcl_lnt_domain.
      CLEAR t224.
      DATA t225 TYPE REF TO zcl_lnt_domain.
      CLEAR t225.
      DATA(t226) = t1.
      DATA t227 TYPE REF TO object.
      CLEAR t227.
      t227 = t226.
      t225 ?= t227.
      t224 = t225.
      DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t228.
      DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t229.
      DATA t230 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t230.
      DATA t231 TYPE REF TO zcl_lnt_shape_b346f020.
      CLEAR t231.
      DATA t232 TYPE REF TO zcl_lnt_shape_b346f020.
      CLEAR t232.
      DATA(t233) = t224.
      t232 = t233->parsed_xml.
      t231 = t232.
      DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t234.
      DATA(t235) = VALUE abap_bool( ).
      DATA(t236) = t231.
      IF t236 IS INITIAL.
        t235 = abap_true.
      ENDIF.
      IF t235 = abap_true.
        DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t237.
        t234 = t237.
      ELSE.
        DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t238.
        DATA t239 TYPE REF TO zcl_lnt_shape_b346f020.
        CLEAR t239.
        DATA(t240) = t231.
        t239 = t240.
        t238 = t239->values.
        t234 = t238.
      ENDIF.
      t230 = t234.
      t229 = t230.
      DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t241.
      DATA(t242) = VALUE abap_bool( ).
      DATA(t243) = t229.
      IF t243 IS INITIAL.
        t242 = abap_true.
      ENDIF.
      IF t242 = abap_true.
        DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t244.
        CREATE OBJECT t244.
        t241 = t244.
      ELSE.
        DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t245.
        DATA(t246) = t229.
        t245 = t246.
        t241 = t245.
      ENDIF.
      t228 = t241.
      t223 = t228.
      t222 = t223.
      DATA t247 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t247.
      DATA t248 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t248.
      DATA t249 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CLEAR t249.
      DATA t250 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CLEAR t250.
      CREATE OBJECT t250.
      t249 = t250.
      DATA(t251) = t222.
      DATA t252 TYPE REF TO zcl_lnt_domain_value.
      CLEAR t252.
      DATA t253 TYPE REF TO object.
      CLEAR t253.
      DATA(t254) = VALUE i( ).
      DO.
        t251->load( ).
        IF t254 >= lines( t251->items ).
          EXIT.
        ENDIF.
        CLEAR t253.
        READ TABLE t251->items INDEX t254 + 1 INTO t253.
        t254 = t254 + 1.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t255.
        CLEAR t252.
        IF t253 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t255 ?= t253.
          DATA t256 TYPE REF TO object.
          CLEAR t256.
          t256 = t255->as_ref( ).
          t252 ?= t256.
        ELSE.
          t252 ?= t253.
        ENDIF.
        DATA(t257) = t249.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t258.
        DATA(t259) = t252.
        t258 = t259->low.
        t257->load( ).
        APPEND t258 TO t257->items.
        t257->save( ).
      ENDDO.
      DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t260.
      DATA(t261) = t249.
      IF t261->source IS BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `emit.go: array mutation: graph-backed storage requires live mutation ABI`.
      ENDIF.
      CREATE OBJECT t260.
      LOOP AT t261->items INTO DATA(t262).
        IF t262 IS NOT BOUND OR t262->has = abap_false.
          RAISE EXCEPTION TYPE cx_sy_move_cast_error.
        ENDIF.
        APPEND t262->value TO t260->items.
      ENDLOOP.
      t248 = t260.
      t247 = t248.
      DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t263.
      DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t264.
      CREATE OBJECT t264.
      t263 = t264.
      DATA(t265) = VALUE abap_bool( ).
      DATA(t266) = VALUE i( ).
      DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t267.
      DATA t268 TYPE REF TO zcl_lnt_domain.
      CLEAR t268.
      DATA t269 TYPE REF TO zcl_lnt_domain.
      CLEAR t269.
      DATA(t270) = t1.
      DATA t271 TYPE REF TO object.
      CLEAR t271.
      t271 = t270.
      t269 ?= t271.
      t268 = t269.
      DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t272.
      DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t273.
      DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t274.
      DATA t275 TYPE REF TO zcl_lnt_shape_b346f020.
      CLEAR t275.
      DATA t276 TYPE REF TO zcl_lnt_shape_b346f020.
      CLEAR t276.
      DATA(t277) = t268.
      t276 = t277->parsed_xml.
      t275 = t276.
      DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t278.
      DATA(t279) = VALUE abap_bool( ).
      DATA(t280) = t275.
      IF t280 IS INITIAL.
        t279 = abap_true.
      ENDIF.
      IF t279 = abap_true.
        DATA t281 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t281.
        t278 = t281.
      ELSE.
        DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t282.
        DATA t283 TYPE REF TO zcl_lnt_shape_b346f020.
        CLEAR t283.
        DATA(t284) = t275.
        t283 = t284.
        t282 = t283->values.
        t278 = t282.
      ENDIF.
      t274 = t278.
      t273 = t274.
      DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t285.
      DATA(t286) = VALUE abap_bool( ).
      DATA(t287) = t273.
      IF t287 IS INITIAL.
        t286 = abap_true.
      ENDIF.
      IF t286 = abap_true.
        DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t288.
        CREATE OBJECT t288.
        t285 = t288.
      ELSE.
        DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t289.
        DATA(t290) = t273.
        t289 = t290.
        t285 = t289.
      ENDIF.
      t272 = t285.
      t267 = t272.
      t267->load( ).
      t266 = lines( t267->items ).
      DATA(t291) = 0.
      t265 = xsdbool( t266 = t291 ).
      IF t265 = abap_true.
        DATA(t292) = t263.
        DATA t293 TYPE REF TO zcl_lnt_issue.
        CLEAR t293.
        DATA t294 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t294.
        DATA(t295) = t173.
        t294 = t295.
        DATA t296 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t296.
        DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t297.
        DATA t298 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t298.
        DATA t299 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t299.
        DATA(t300) = t173.
        t299 = t300.
        t298 = t299.
        DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t301.
        DATA(t302) = t298.
        t301 = t302->statements.
        t297 = t301.
        DATA t303 TYPE REF TO object.
        CLEAR t303.
        t297->load( ).
        CLEAR t303.
        READ TABLE t297->items INDEX 1 INTO t303.
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t304.
        CLEAR t296.
        IF t303 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t304 ?= t303.
          DATA t305 TYPE REF TO object.
          CLEAR t305.
          t305 = t304->as_ref( ).
          t296 ?= t305.
        ELSE.
          t296 ?= t303.
        ENDIF.
        DATA(t306) = VALUE string( ).
        DATA(t307) = VALUE string( ).
        DATA(t308) = |Domain |.
        DATA(t309) = VALUE string( ).
        DATA t310 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t310.
        DATA(t311) = t11.
        t310 = t311.
        t309 = t310->zlnt_view_read_sr_f8de08988c9e( ).
        DATA(t312) = strlen( t308 ).
        t307 = |{ t308 }{ t309 }|.
        DATA(t313) = | does not contain any fixed values. Either add some values o|.
        t313 = t313 && |r disable this check|.
        DATA(t314) = strlen( t307 ).
        t306 = |{ t307 }{ t313 }|.
        DATA(t315) = VALUE string( ).
        DATA t316 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t316.
        DATA(t317) = VALUE string( ).
        DATA(t318) = |constant_classes|.
        t317 = t318.
        DATA(t319) = VALUE string( ).
        DATA(t320) = |Validate constant classes|.
        t319 = t320.
        DATA(t321) = VALUE string( ).
        DATA(t322) = |Checks that a class contains exactly the constants correspon|.
        t322 = t322 && |ding to a domain's fixed values.|.
        t321 = t322.
        DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t323.
        DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t324.
        DATA(t325) = abap_true.
        IF t325 = abap_true.
          DATA(t326) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t326 = t326 && |nABAP.md#prefer-enum-to-constants-interfaces|.
          DATA(t327) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t327->has = abap_true.
          t327->value = t326.
          t324 = t327.
        ELSE.
          DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t328.
          t324 = t328.
        ENDIF.
        t323 = t324.
        DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t329.
        DATA t330 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t330.
        DATA(t331) = abap_true.
        IF t331 = abap_true.
          DATA t332 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t332.
          DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t333.
          DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t334.
          CREATE OBJECT t334.
          t333 = t334.
          DATA(t335) = t333.
          DATA(t336) = |Styleguide|.
          t335->load( ).
          APPEND t336 TO t335->items.
          t335->save( ).
          DATA(t337) = t333.
          t332 = t337.
          t330 = t332.
        ELSE.
          DATA t338 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t338.
          t330 = t338.
        ENDIF.
        t329 = t330.
        DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t339.
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t340.
        t339 = t340.
        DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t341.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t342.
        t341 = t342.
        DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t343.
        DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t344.
        t343 = t344.
        DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t345.
        DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t346.
        t345 = t346.
        t316 = NEW zcl_lnt_irule_metadata( i_key = t317 i_title = t319 i_short_description = t321 i_bad_example = t339 i_good_example = t341 i_extended_information = t323 i_tags = t329 i_pragma = t343 i_pseudo_comment = t345 ).
        CREATE OBJECT t316->zlnt_view_ownkeys_b0e8086400eb.
        t316->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t347.
        IF t316->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t316->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t347 ).
        ENDIF.
        DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t348.
        IF t316->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t316->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t348 ).
        ENDIF.
        DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t349.
        IF t316->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t316->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t349 ).
        ENDIF.
        DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t350.
        IF t316->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t316->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t350 ).
        ENDIF.
        DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t351.
        IF t316->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t316->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t351 ).
        ENDIF.
        CREATE OBJECT t316->zlnt_json_ownkeys_70e5fd461788.
        t316->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t352) = |key|.
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t353.
        IF t316->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t316->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
        ENDIF.
        DATA(t354) = |title|.
        DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t355.
        IF t316->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t316->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
        ENDIF.
        DATA(t356) = |shortDescription|.
        DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t357.
        IF t316->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t316->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
        ENDIF.
        DATA(t358) = |extendedInformation|.
        DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t359.
        IF t316->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t316->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
        ENDIF.
        DATA(t360) = |tags|.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t361.
        IF t316->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t316->zlnt_json_ownkeys_70e5fd461788->put( p0 = t360 p1 = t361 ).
        ENDIF.
        t315 = t316->key.
        DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t362.
        DATA(t363) = me->conf.
        t362 = t363->zlnt_view_read_sr_15c06369f827( ).
        DATA t364 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t364.
        DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t365.
        t293 = zcl_lnt_issue=>at_statement( i_file = t294 i_statement = t296 i_message_26cb = t306 i_key = t315 i_severity = t362 i_fix = t364 i_alternative_fixes = t365 ).
        t292->load( ).
        APPEND t293 TO t292->items.
        t292->save( ).
      ENDIF.
      DATA(t366) = VALUE abap_bool( ).
      DATA(t367) = abap_false.
      t366 = t367.
      DATA t368 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t368.
      DATA t369 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t369.
      DATA(t370) = t185.
      t369 = t370.
      t368 = t369->constants.
      DATA t371 TYPE REF TO zcl_lnt_info_constant.
      CLEAR t371.
      DATA t372 TYPE REF TO object.
      CLEAR t372.
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
          CLEAR t375.
          t375 = t374->as_ref( ).
          t371 ?= t375.
        ELSE.
          t371 ?= t372.
        ENDIF.
        DATA(t376) = VALUE abap_bool( ).
        DATA(t377) = VALUE abap_bool( ).
        DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t378.
        DATA t379 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t379.
        DATA(t380) = t11.
        t379 = t380.
        t378 = t379->zlnt_view_read_sr_3ef2d1088b9b( ).
        IF t378 IS BOUND.
          IF t378->has = abap_true.
            t377 = xsdbool( strlen( t378->value ) > 0 ).
          ENDIF.
        ENDIF.
        t376 = t377.
        IF t377 = abap_true.
          DATA(t381) = VALUE abap_bool( ).
          DATA(t382) = VALUE string( ).
          DATA(t383) = t371.
          t382 = t383->name.
          DATA(t384) = VALUE string( ).
          DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t385.
          DATA t386 TYPE REF TO zcl_lnt_domain_class_mapping.
          CLEAR t386.
          DATA(t387) = t11.
          t386 = t387.
          t385 = t386->zlnt_view_read_sr_3ef2d1088b9b( ).
          t384 = t385->value.
          t381 = xsdbool( t382 = t384 ).
          t376 = t381.
        ENDIF.
        IF t376 = abap_true.
          DATA(t388) = VALUE abap_bool( ).
          DATA(t389) = VALUE string( ).
          DATA(t390) = t371.
          t389 = t390->value.
          DATA(t391) = VALUE string( ).
          DATA(t392) = VALUE string( ).
          DATA t393 TYPE REF TO zcl_lnt_domain_class_mapping.
          CLEAR t393.
          DATA(t394) = t11.
          t393 = t394.
          t392 = t393->zlnt_view_read_sr_f8de08988c9e( ).
          DATA(t395) = strlen( t392 ).
          t391 = t392.
          IF t391 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t391 TO UPPER CASE.
          ELSE.
            t391 = zlnt_runtime_uppe_91169605024d=>full( t391 ).
          ENDIF.
          t388 = xsdbool( t389 <> t391 ).
          IF t388 = abap_true.
            DATA(t396) = t263.
            DATA t397 TYPE REF TO zcl_lnt_issue.
            CLEAR t397.
            DATA t398 TYPE REF TO zcl_lnt_info_constant.
            CLEAR t398.
            DATA(t399) = t371.
            t398 = t399.
            DATA(t400) = VALUE string( ).
            DATA(t401) = VALUE string( ).
            DATA(t402) = VALUE string( ).
            DATA(t403) = VALUE string( ).
            DATA(t404) = VALUE string( ).
            DATA(t405) = |Constant value |.
            DATA(t406) = VALUE string( ).
            DATA(t407) = t371.
            t406 = t407->value.
            DATA(t408) = strlen( t405 ).
            t404 = |{ t405 }{ t406 }|.
            DATA(t409) = | must match domain name |.
            DATA(t410) = strlen( t404 ).
            t403 = |{ t404 }{ t409 }|.
            DATA(t411) = VALUE string( ).
            DATA t412 TYPE REF TO zcl_lnt_domain_class_mapping.
            CLEAR t412.
            DATA(t413) = t11.
            t412 = t413.
            t411 = t412->zlnt_view_read_sr_f8de08988c9e( ).
            DATA(t414) = strlen( t403 ).
            t402 = |{ t403 }{ t411 }|.
            DATA(t415) = | |.
            DATA(t416) = strlen( t402 ).
            t401 = |{ t402 }{ t415 }|.
            t400 = t401.
            DATA t417 TYPE REF TO zcl_lnt_issue.
            CLEAR t417.
            DATA t418 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t418.
            DATA(t419) = t398.
            t418 = t419->identifier.
            DATA(t420) = t400.
            DATA(t421) = VALUE string( ).
            DATA t422 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t422.
            DATA(t423) = VALUE string( ).
            DATA(t424) = |constant_classes|.
            t423 = t424.
            DATA(t425) = VALUE string( ).
            DATA(t426) = |Validate constant classes|.
            t425 = t426.
            DATA(t427) = VALUE string( ).
            DATA(t428) = |Checks that a class contains exactly the constants correspon|.
            t428 = t428 && |ding to a domain's fixed values.|.
            t427 = t428.
            DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t429.
            DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t430.
            DATA(t431) = abap_true.
            IF t431 = abap_true.
              DATA(t432) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
              t432 = t432 && |nABAP.md#prefer-enum-to-constants-interfaces|.
              DATA(t433) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t433->has = abap_true.
              t433->value = t432.
              t430 = t433.
            ELSE.
              DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t434.
              t430 = t434.
            ENDIF.
            t429 = t430.
            DATA t435 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t435.
            DATA t436 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t436.
            DATA(t437) = abap_true.
            IF t437 = abap_true.
              DATA t438 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t438.
              DATA t439 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t439.
              DATA t440 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t440.
              CREATE OBJECT t440.
              t439 = t440.
              DATA(t441) = t439.
              DATA(t442) = |Styleguide|.
              t441->load( ).
              APPEND t442 TO t441->items.
              t441->save( ).
              DATA(t443) = t439.
              t438 = t443.
              t436 = t438.
            ELSE.
              DATA t444 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t444.
              t436 = t444.
            ENDIF.
            t435 = t436.
            DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t445.
            DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t446.
            t445 = t446.
            DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t447.
            DATA t448 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t448.
            t447 = t448.
            DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t449.
            DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t450.
            t449 = t450.
            DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t451.
            DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t452.
            t451 = t452.
            t422 = NEW zcl_lnt_irule_metadata( i_key = t423 i_title = t425 i_short_description = t427 i_bad_example = t445 i_good_example = t447 i_extended_information = t429 i_tags = t435 i_pragma = t449 i_pseudo_comment = t451 ).
            CREATE OBJECT t422->zlnt_view_ownkeys_b0e8086400eb.
            t422->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t453.
            IF t422->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t422->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t453 ).
            ENDIF.
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
            DATA(t458) = |key|.
            DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t459.
            IF t422->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t422->zlnt_json_ownkeys_70e5fd461788->put( p0 = t458 p1 = t459 ).
            ENDIF.
            DATA(t460) = |title|.
            DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t461.
            IF t422->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t422->zlnt_json_ownkeys_70e5fd461788->put( p0 = t460 p1 = t461 ).
            ENDIF.
            DATA(t462) = |shortDescription|.
            DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t463.
            IF t422->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t422->zlnt_json_ownkeys_70e5fd461788->put( p0 = t462 p1 = t463 ).
            ENDIF.
            DATA(t464) = |extendedInformation|.
            DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t465.
            IF t422->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t422->zlnt_json_ownkeys_70e5fd461788->put( p0 = t464 p1 = t465 ).
            ENDIF.
            DATA(t466) = |tags|.
            DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t467.
            IF t422->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t422->zlnt_json_ownkeys_70e5fd461788->put( p0 = t466 p1 = t467 ).
            ENDIF.
            t421 = t422->key.
            DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t468.
            DATA(t469) = me->conf.
            t468 = t469->zlnt_view_read_sr_15c06369f827( ).
            DATA t470 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t470.
            t417 = zcl_lnt_issue=>at_identifier( i_identifier = t418 i_message_26cb = t420 i_key = t421 i_severity = t468 i_fix = t470 ).
            t397 = t417.
            t396->load( ).
            APPEND t397 TO t396->items.
            t396->save( ).
          ENDIF.
          DATA(t471) = abap_true.
          t366 = t471.
          CONTINUE.
        ENDIF.
        DATA(t472) = VALUE abap_bool( ).
        DATA(t473) = VALUE abap_bool( ).
        DATA t474 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t474.
        DATA t475 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t475.
        DATA(t476) = t11.
        t475 = t476.
        t474 = t475->zlnt_view_read_sr_ee5be126cb68( ).
        IF t474 IS BOUND.
          IF t474->has = abap_true.
            t473 = xsdbool( t474->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t472 = t473.
        IF t473 = abap_true.
          DATA(t477) = VALUE abap_bool( ).
          DATA(t478) = VALUE string( ).
          DATA(t479) = VALUE string( ).
          DATA(t480) = t371.
          t479 = t480->type_name.
          DATA(t481) = strlen( t479 ).
          t478 = t479.
          TRANSLATE t478 TO LOWER CASE.
          DATA(t482) = VALUE string( ).
          DATA(t483) = VALUE string( ).
          DATA t484 TYPE REF TO zcl_lnt_domain_class_mapping.
          CLEAR t484.
          DATA(t485) = t11.
          t484 = t485.
          t483 = t484->zlnt_view_read_sr_f8de08988c9e( ).
          DATA(t486) = strlen( t483 ).
          t482 = t483.
          TRANSLATE t482 TO LOWER CASE.
          t477 = xsdbool( t478 <> t482 ).
          t472 = t477.
        ENDIF.
        IF t472 = abap_true.
          DATA(t487) = t263.
          DATA t488 TYPE REF TO zcl_lnt_issue.
          CLEAR t488.
          DATA t489 TYPE REF TO zcl_lnt_info_constant.
          CLEAR t489.
          DATA(t490) = t371.
          t489 = t490.
          DATA(t491) = VALUE string( ).
          DATA(t492) = VALUE string( ).
          DATA(t493) = VALUE string( ).
          DATA(t494) = VALUE string( ).
          DATA(t495) = VALUE string( ).
          DATA(t496) = |Use exact type |.
          DATA(t497) = VALUE string( ).
          DATA t498 TYPE REF TO zcl_lnt_domain_class_mapping.
          CLEAR t498.
          DATA(t499) = t11.
          t498 = t499.
          t497 = t498->zlnt_view_read_sr_f8de08988c9e( ).
          DATA(t500) = strlen( t496 ).
          t495 = |{ t496 }{ t497 }|.
          DATA(t501) = | instead of |.
          DATA(t502) = strlen( t495 ).
          t494 = |{ t495 }{ t501 }|.
          DATA(t503) = VALUE string( ).
          DATA(t504) = t371.
          t503 = t504->type_name.
          DATA(t505) = strlen( t494 ).
          t493 = |{ t494 }{ t503 }|.
          DATA(t506) = ||.
          DATA(t507) = strlen( t493 ).
          t492 = |{ t493 }{ t506 }|.
          t491 = t492.
          DATA t508 TYPE REF TO zcl_lnt_issue.
          CLEAR t508.
          DATA t509 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t509.
          DATA(t510) = t489.
          t509 = t510->identifier.
          DATA(t511) = t491.
          DATA(t512) = VALUE string( ).
          DATA t513 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t513.
          DATA(t514) = VALUE string( ).
          DATA(t515) = |constant_classes|.
          t514 = t515.
          DATA(t516) = VALUE string( ).
          DATA(t517) = |Validate constant classes|.
          t516 = t517.
          DATA(t518) = VALUE string( ).
          DATA(t519) = |Checks that a class contains exactly the constants correspon|.
          t519 = t519 && |ding to a domain's fixed values.|.
          t518 = t519.
          DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t520.
          DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t521.
          DATA(t522) = abap_true.
          IF t522 = abap_true.
            DATA(t523) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t523 = t523 && |nABAP.md#prefer-enum-to-constants-interfaces|.
            DATA(t524) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t524->has = abap_true.
            t524->value = t523.
            t521 = t524.
          ELSE.
            DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t525.
            t521 = t525.
          ENDIF.
          t520 = t521.
          DATA t526 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t526.
          DATA t527 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t527.
          DATA(t528) = abap_true.
          IF t528 = abap_true.
            DATA t529 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t529.
            DATA t530 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t530.
            DATA t531 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t531.
            CREATE OBJECT t531.
            t530 = t531.
            DATA(t532) = t530.
            DATA(t533) = |Styleguide|.
            t532->load( ).
            APPEND t533 TO t532->items.
            t532->save( ).
            DATA(t534) = t530.
            t529 = t534.
            t527 = t529.
          ELSE.
            DATA t535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t535.
            t527 = t535.
          ENDIF.
          t526 = t527.
          DATA t536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t536.
          DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t537.
          t536 = t537.
          DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t538.
          DATA t539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t539.
          t538 = t539.
          DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t540.
          DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t541.
          t540 = t541.
          DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t542.
          DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t543.
          t542 = t543.
          t513 = NEW zcl_lnt_irule_metadata( i_key = t514 i_title = t516 i_short_description = t518 i_bad_example = t536 i_good_example = t538 i_extended_information = t520 i_tags = t526 i_pragma = t540 i_pseudo_comment = t542 ).
          CREATE OBJECT t513->zlnt_view_ownkeys_b0e8086400eb.
          t513->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t544.
          IF t513->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t513->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t544 ).
          ENDIF.
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
          DATA(t549) = |key|.
          DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t550.
          IF t513->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t513->zlnt_json_ownkeys_70e5fd461788->put( p0 = t549 p1 = t550 ).
          ENDIF.
          DATA(t551) = |title|.
          DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t552.
          IF t513->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t513->zlnt_json_ownkeys_70e5fd461788->put( p0 = t551 p1 = t552 ).
          ENDIF.
          DATA(t553) = |shortDescription|.
          DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t554.
          IF t513->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t513->zlnt_json_ownkeys_70e5fd461788->put( p0 = t553 p1 = t554 ).
          ENDIF.
          DATA(t555) = |extendedInformation|.
          DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t556.
          IF t513->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t513->zlnt_json_ownkeys_70e5fd461788->put( p0 = t555 p1 = t556 ).
          ENDIF.
          DATA(t557) = |tags|.
          DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t558.
          IF t513->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t513->zlnt_json_ownkeys_70e5fd461788->put( p0 = t557 p1 = t558 ).
          ENDIF.
          t512 = t513->key.
          DATA t559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t559.
          DATA(t560) = me->conf.
          t559 = t560->zlnt_view_read_sr_15c06369f827( ).
          DATA t561 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t561.
          t508 = zcl_lnt_issue=>at_identifier( i_identifier = t509 i_message_26cb = t511 i_key = t512 i_severity = t559 i_fix = t561 ).
          t488 = t508.
          t487->load( ).
          APPEND t488 TO t487->items.
          t487->save( ).
        ENDIF.
        DATA(t562) = VALUE abap_bool( ).
        DATA(t563) = VALUE f( ).
        DATA(t564) = t371.
        t563 = t564->visibility.
        DATA(t565) = CONV f( 3 ).
        t562 = xsdbool( t563 <> t565 ).
        IF t562 = abap_true.
          DATA(t566) = t263.
          DATA t567 TYPE REF TO zcl_lnt_issue.
          CLEAR t567.
          DATA t568 TYPE REF TO zcl_lnt_info_constant.
          CLEAR t568.
          DATA(t569) = t371.
          t568 = t569.
          DATA(t570) = VALUE string( ).
          DATA(t571) = VALUE string( ).
          DATA(t572) = VALUE string( ).
          DATA(t573) = |Constant |.
          DATA(t574) = VALUE string( ).
          DATA(t575) = t371.
          t574 = t575->name.
          DATA(t576) = strlen( t573 ).
          t572 = |{ t573 }{ t574 }|.
          DATA(t577) = | should be public|.
          DATA(t578) = strlen( t572 ).
          t571 = |{ t572 }{ t577 }|.
          t570 = t571.
          DATA t579 TYPE REF TO zcl_lnt_issue.
          CLEAR t579.
          DATA t580 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t580.
          DATA(t581) = t568.
          t580 = t581->identifier.
          DATA(t582) = t570.
          DATA(t583) = VALUE string( ).
          DATA t584 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t584.
          DATA(t585) = VALUE string( ).
          DATA(t586) = |constant_classes|.
          t585 = t586.
          DATA(t587) = VALUE string( ).
          DATA(t588) = |Validate constant classes|.
          t587 = t588.
          DATA(t589) = VALUE string( ).
          DATA(t590) = |Checks that a class contains exactly the constants correspon|.
          t590 = t590 && |ding to a domain's fixed values.|.
          t589 = t590.
          DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t591.
          DATA t592 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t592.
          DATA(t593) = abap_true.
          IF t593 = abap_true.
            DATA(t594) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t594 = t594 && |nABAP.md#prefer-enum-to-constants-interfaces|.
            DATA(t595) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t595->has = abap_true.
            t595->value = t594.
            t592 = t595.
          ELSE.
            DATA t596 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t596.
            t592 = t596.
          ENDIF.
          t591 = t592.
          DATA t597 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t597.
          DATA t598 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t598.
          DATA(t599) = abap_true.
          IF t599 = abap_true.
            DATA t600 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t600.
            DATA t601 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t601.
            DATA t602 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t602.
            CREATE OBJECT t602.
            t601 = t602.
            DATA(t603) = t601.
            DATA(t604) = |Styleguide|.
            t603->load( ).
            APPEND t604 TO t603->items.
            t603->save( ).
            DATA(t605) = t601.
            t600 = t605.
            t598 = t600.
          ELSE.
            DATA t606 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t606.
            t598 = t606.
          ENDIF.
          t597 = t598.
          DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t607.
          DATA t608 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t608.
          t607 = t608.
          DATA t609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t609.
          DATA t610 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t610.
          t609 = t610.
          DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t611.
          DATA t612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t612.
          t611 = t612.
          DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t613.
          DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t614.
          t613 = t614.
          t584 = NEW zcl_lnt_irule_metadata( i_key = t585 i_title = t587 i_short_description = t589 i_bad_example = t607 i_good_example = t609 i_extended_information = t591 i_tags = t597 i_pragma = t611 i_pseudo_comment = t613 ).
          CREATE OBJECT t584->zlnt_view_ownkeys_b0e8086400eb.
          t584->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t615.
          IF t584->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t584->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t615 ).
          ENDIF.
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
          DATA(t620) = |key|.
          DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t621.
          IF t584->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t584->zlnt_json_ownkeys_70e5fd461788->put( p0 = t620 p1 = t621 ).
          ENDIF.
          DATA(t622) = |title|.
          DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t623.
          IF t584->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t584->zlnt_json_ownkeys_70e5fd461788->put( p0 = t622 p1 = t623 ).
          ENDIF.
          DATA(t624) = |shortDescription|.
          DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t625.
          IF t584->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t584->zlnt_json_ownkeys_70e5fd461788->put( p0 = t624 p1 = t625 ).
          ENDIF.
          DATA(t626) = |extendedInformation|.
          DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t627.
          IF t584->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t584->zlnt_json_ownkeys_70e5fd461788->put( p0 = t626 p1 = t627 ).
          ENDIF.
          DATA(t628) = |tags|.
          DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t629.
          IF t584->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t584->zlnt_json_ownkeys_70e5fd461788->put( p0 = t628 p1 = t629 ).
          ENDIF.
          t583 = t584->key.
          DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t630.
          DATA(t631) = me->conf.
          t630 = t631->zlnt_view_read_sr_15c06369f827( ).
          DATA t632 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t632.
          t579 = zcl_lnt_issue=>at_identifier( i_identifier = t580 i_message_26cb = t582 i_key = t583 i_severity = t630 i_fix = t632 ).
          t567 = t579.
          t566->load( ).
          APPEND t567 TO t566->items.
          t566->save( ).
        ENDIF.
        DATA(t633) = VALUE abap_bool( ).
        DATA(t634) = VALUE abap_bool( ).
        DATA(t635) = t247.
        DATA(t636) = VALUE string( ).
        DATA(t637) = t371.
        t636 = t637->value.
        t634 = t635->includes( p0 = t636 ).
        t633 = xsdbool( t634 = abap_false ).
        IF t633 = abap_true.
          DATA(t638) = t263.
          DATA t639 TYPE REF TO zcl_lnt_issue.
          CLEAR t639.
          DATA t640 TYPE REF TO zcl_lnt_info_constant.
          CLEAR t640.
          DATA(t641) = t371.
          t640 = t641.
          DATA(t642) = VALUE string( ).
          DATA(t643) = VALUE string( ).
          DATA(t644) = VALUE string( ).
          DATA(t645) = VALUE string( ).
          DATA(t646) = VALUE string( ).
          DATA(t647) = |Extra constant |.
          DATA(t648) = VALUE string( ).
          DATA(t649) = t371.
          t648 = t649->name.
          DATA(t650) = strlen( t647 ).
          t646 = |{ t647 }{ t648 }|.
          DATA(t651) = | found which is not present in domain |.
          DATA(t652) = strlen( t646 ).
          t645 = |{ t646 }{ t651 }|.
          DATA(t653) = VALUE string( ).
          DATA t654 TYPE REF TO zcl_lnt_domain_class_mapping.
          CLEAR t654.
          DATA(t655) = t11.
          t654 = t655.
          t653 = t654->zlnt_view_read_sr_f8de08988c9e( ).
          DATA(t656) = strlen( t645 ).
          t644 = |{ t645 }{ t653 }|.
          DATA(t657) = ||.
          DATA(t658) = strlen( t644 ).
          t643 = |{ t644 }{ t657 }|.
          t642 = t643.
          DATA t659 TYPE REF TO zcl_lnt_issue.
          CLEAR t659.
          DATA t660 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t660.
          DATA(t661) = t640.
          t660 = t661->identifier.
          DATA(t662) = t642.
          DATA(t663) = VALUE string( ).
          DATA t664 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t664.
          DATA(t665) = VALUE string( ).
          DATA(t666) = |constant_classes|.
          t665 = t666.
          DATA(t667) = VALUE string( ).
          DATA(t668) = |Validate constant classes|.
          t667 = t668.
          DATA(t669) = VALUE string( ).
          DATA(t670) = |Checks that a class contains exactly the constants correspon|.
          t670 = t670 && |ding to a domain's fixed values.|.
          t669 = t670.
          DATA t671 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t671.
          DATA t672 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t672.
          DATA(t673) = abap_true.
          IF t673 = abap_true.
            DATA(t674) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t674 = t674 && |nABAP.md#prefer-enum-to-constants-interfaces|.
            DATA(t675) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t675->has = abap_true.
            t675->value = t674.
            t672 = t675.
          ELSE.
            DATA t676 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t676.
            t672 = t676.
          ENDIF.
          t671 = t672.
          DATA t677 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t677.
          DATA t678 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t678.
          DATA(t679) = abap_true.
          IF t679 = abap_true.
            DATA t680 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t680.
            DATA t681 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t681.
            DATA t682 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t682.
            CREATE OBJECT t682.
            t681 = t682.
            DATA(t683) = t681.
            DATA(t684) = |Styleguide|.
            t683->load( ).
            APPEND t684 TO t683->items.
            t683->save( ).
            DATA(t685) = t681.
            t680 = t685.
            t678 = t680.
          ELSE.
            DATA t686 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t686.
            t678 = t686.
          ENDIF.
          t677 = t678.
          DATA t687 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t687.
          DATA t688 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t688.
          t687 = t688.
          DATA t689 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t689.
          DATA t690 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t690.
          t689 = t690.
          DATA t691 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t691.
          DATA t692 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t692.
          t691 = t692.
          DATA t693 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t693.
          DATA t694 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t694.
          t693 = t694.
          t664 = NEW zcl_lnt_irule_metadata( i_key = t665 i_title = t667 i_short_description = t669 i_bad_example = t687 i_good_example = t689 i_extended_information = t671 i_tags = t677 i_pragma = t691 i_pseudo_comment = t693 ).
          CREATE OBJECT t664->zlnt_view_ownkeys_b0e8086400eb.
          t664->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t695.
          IF t664->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t664->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t695 ).
          ENDIF.
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
          DATA(t700) = |key|.
          DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t701.
          IF t664->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t664->zlnt_json_ownkeys_70e5fd461788->put( p0 = t700 p1 = t701 ).
          ENDIF.
          DATA(t702) = |title|.
          DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t703.
          IF t664->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t664->zlnt_json_ownkeys_70e5fd461788->put( p0 = t702 p1 = t703 ).
          ENDIF.
          DATA(t704) = |shortDescription|.
          DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t705.
          IF t664->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t664->zlnt_json_ownkeys_70e5fd461788->put( p0 = t704 p1 = t705 ).
          ENDIF.
          DATA(t706) = |extendedInformation|.
          DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t707.
          IF t664->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t664->zlnt_json_ownkeys_70e5fd461788->put( p0 = t706 p1 = t707 ).
          ENDIF.
          DATA(t708) = |tags|.
          DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t709.
          IF t664->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t664->zlnt_json_ownkeys_70e5fd461788->put( p0 = t708 p1 = t709 ).
          ENDIF.
          t663 = t664->key.
          DATA t710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t710.
          DATA(t711) = me->conf.
          t710 = t711->zlnt_view_read_sr_15c06369f827( ).
          DATA t712 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t712.
          t659 = zcl_lnt_issue=>at_identifier( i_identifier = t660 i_message_26cb = t662 i_key = t663 i_severity = t710 i_fix = t712 ).
          t639 = t659.
          t638->load( ).
          APPEND t639 TO t638->items.
          t638->save( ).
        ENDIF.
      ENDDO.
      DATA(t713) = t222.
      DATA t714 TYPE REF TO zcl_lnt_domain_value.
      CLEAR t714.
      DATA t715 TYPE REF TO object.
      CLEAR t715.
      DATA(t716) = VALUE i( ).
      DO.
        t713->load( ).
        IF t716 >= lines( t713->items ).
          EXIT.
        ENDIF.
        CLEAR t715.
        READ TABLE t713->items INDEX t716 + 1 INTO t715.
        t716 = t716 + 1.
        DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t717.
        CLEAR t714.
        IF t715 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t717 ?= t715.
          DATA t718 TYPE REF TO object.
          CLEAR t718.
          t718 = t717->as_ref( ).
          t714 ?= t718.
        ELSE.
          t714 ?= t715.
        ENDIF.
        DATA(t719) = VALUE abap_bool( ).
        DATA(t720) = VALUE abap_bool( ).
        DATA t721 TYPE REF TO zcl_lnt_info_constant.
        CLEAR t721.
        DATA t722 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t722.
        DATA t723 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t723.
        DATA t724 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t724.
        DATA(t725) = t185.
        t724 = t725.
        t723 = t724->constants.
        t722 = t723.
        DATA(t726) = VALUE i( ).
        DATA(t727) = VALUE i( ).
        DATA(t728) = t722.
        t728->load( ).
        t727 = lines( t728->items ).
        t726 = t727.
        DATA(t729) = VALUE i( ).
        DATA(t730) = 0.
        t729 = t730.
        DATA t731 TYPE REF TO zcl_lnt_info_constant.
        CLEAR t731.
        DATA t732 TYPE REF TO zcl_lnt_info_constant.
        CLEAR t732.
        t731 = t732.
        DO.
          DATA(t733) = VALUE abap_bool( ).
          DATA(t734) = t729.
          DATA(t735) = t726.
          t733 = xsdbool( t734 < t735 ).
          IF t733 = abap_false.
            EXIT.
          ENDIF.
          DATA t736 TYPE REF TO zcl_lnt_info_constant.
          CLEAR t736.
          DATA t737 TYPE REF TO zcl_lnt_info_constant.
          CLEAR t737.
          DATA t738 TYPE REF TO zcl_lnt_info_constant.
          CLEAR t738.
          DATA(t739) = t722.
          DATA(t740) = t729.
          DATA t741 TYPE REF TO object.
          CLEAR t741.
          t741 = t739->get( p0 = t740 ).
          DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t742.
          CLEAR t738.
          IF t741 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t742 ?= t741.
            DATA t743 TYPE REF TO object.
            CLEAR t743.
            t743 = t742->as_ref( ).
            t738 ?= t743.
          ELSE.
            t738 ?= t741.
          ENDIF.
          t737 = t738.
          t736 = t737.
          DATA(t744) = VALUE abap_bool( ).
          DATA t745 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t745.
          DATA(t746) = abap_true.
          IF t746 = abap_true.
            DATA(t747) = VALUE string( ).
            DATA(t748) = t736.
            t747 = t748->value.
            DATA(t749) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t749->has = abap_true.
            t749->value = t747.
            t745 = t749.
          ELSE.
            DATA t750 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t750.
            t745 = t750.
          ENDIF.
          DATA t751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t751.
          DATA(t752) = t714.
          t751 = t752->low.
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
            DATA t755 TYPE REF TO zcl_lnt_info_constant.
            CLEAR t755.
            DATA(t756) = abap_true.
            IF t756 = abap_true.
              DATA(t757) = t736.
              t755 = t757.
            ELSE.
              DATA t758 TYPE REF TO zcl_lnt_info_constant.
              CLEAR t758.
              t755 = t758.
            ENDIF.
            t731 = t755.
            EXIT.
          ENDIF.
          DATA(t759) = VALUE i( ).
          DATA(t760) = t729.
          DATA(t761) = 1.
          t759 = t760 + t761.
          t729 = t759.
        ENDDO.
        DATA(t762) = t731.
        t721 = t762.
        t720 = xsdbool( t721 IS BOUND ).
        t719 = xsdbool( t720 = abap_false ).
        IF t719 = abap_true.
          DATA(t763) = t263.
          DATA t764 TYPE REF TO zcl_lnt_issue.
          CLEAR t764.
          DATA t765 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t765.
          DATA(t766) = t173.
          t765 = t766.
          DATA t767 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t767.
          DATA t768 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t768.
          DATA t769 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t769.
          DATA t770 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t770.
          DATA(t771) = t173.
          t770 = t771.
          t769 = t770.
          DATA t772 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t772.
          DATA(t773) = t769.
          t772 = t773->statements.
          t768 = t772.
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
            CLEAR t776.
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
          CLEAR t783.
          DATA t784 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t784.
          DATA(t785) = t714.
          t784 = t785->low.
          t783 = t784.
          DATA(t786) = VALUE string( ).
          DATA(t787) = VALUE abap_bool( ).
          DATA(t788) = t783.
          IF t788 IS INITIAL.
            t787 = abap_true.
          ELSEIF t788->has = abap_false.
            t787 = abap_true.
          ENDIF.
          IF t787 = abap_true.
            DATA(t789) = |undefined|.
            t786 = t789.
          ELSE.
            DATA(t790) = VALUE string( ).
            DATA(t791) = t783.
            t790 = t791->value.
            t786 = t790.
          ENDIF.
          t782 = t786.
          DATA(t792) = strlen( t781 ).
          t780 = |{ t781 }{ t782 }|.
          DATA(t793) = | (domain |.
          DATA(t794) = strlen( t780 ).
          t779 = |{ t780 }{ t793 }|.
          DATA(t795) = VALUE string( ).
          DATA t796 TYPE REF TO zcl_lnt_domain_class_mapping.
          CLEAR t796.
          DATA(t797) = t11.
          t796 = t797.
          t795 = t796->zlnt_view_read_sr_f8de08988c9e( ).
          DATA(t798) = strlen( t779 ).
          t778 = |{ t779 }{ t795 }|.
          DATA(t799) = |)|.
          DATA(t800) = strlen( t778 ).
          t777 = |{ t778 }{ t799 }|.
          DATA(t801) = VALUE string( ).
          DATA t802 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t802.
          DATA(t803) = VALUE string( ).
          DATA(t804) = |constant_classes|.
          t803 = t804.
          DATA(t805) = VALUE string( ).
          DATA(t806) = |Validate constant classes|.
          t805 = t806.
          DATA(t807) = VALUE string( ).
          DATA(t808) = |Checks that a class contains exactly the constants correspon|.
          t808 = t808 && |ding to a domain's fixed values.|.
          t807 = t808.
          DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t809.
          DATA t810 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t810.
          DATA(t811) = abap_true.
          IF t811 = abap_true.
            DATA(t812) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t812 = t812 && |nABAP.md#prefer-enum-to-constants-interfaces|.
            DATA(t813) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t813->has = abap_true.
            t813->value = t812.
            t810 = t813.
          ELSE.
            DATA t814 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t814.
            t810 = t814.
          ENDIF.
          t809 = t810.
          DATA t815 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t815.
          DATA t816 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t816.
          DATA(t817) = abap_true.
          IF t817 = abap_true.
            DATA t818 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t818.
            DATA t819 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t819.
            DATA t820 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t820.
            CREATE OBJECT t820.
            t819 = t820.
            DATA(t821) = t819.
            DATA(t822) = |Styleguide|.
            t821->load( ).
            APPEND t822 TO t821->items.
            t821->save( ).
            DATA(t823) = t819.
            t818 = t823.
            t816 = t818.
          ELSE.
            DATA t824 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t824.
            t816 = t824.
          ENDIF.
          t815 = t816.
          DATA t825 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t825.
          DATA t826 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t826.
          t825 = t826.
          DATA t827 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t827.
          DATA t828 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t828.
          t827 = t828.
          DATA t829 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t829.
          DATA t830 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t830.
          t829 = t830.
          DATA t831 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t831.
          DATA t832 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t832.
          t831 = t832.
          t802 = NEW zcl_lnt_irule_metadata( i_key = t803 i_title = t805 i_short_description = t807 i_bad_example = t825 i_good_example = t827 i_extended_information = t809 i_tags = t815 i_pragma = t829 i_pseudo_comment = t831 ).
          CREATE OBJECT t802->zlnt_view_ownkeys_b0e8086400eb.
          t802->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t833.
          IF t802->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t802->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t833 ).
          ENDIF.
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
          DATA(t838) = |key|.
          DATA t839 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t839.
          IF t802->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t802->zlnt_json_ownkeys_70e5fd461788->put( p0 = t838 p1 = t839 ).
          ENDIF.
          DATA(t840) = |title|.
          DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t841.
          IF t802->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t802->zlnt_json_ownkeys_70e5fd461788->put( p0 = t840 p1 = t841 ).
          ENDIF.
          DATA(t842) = |shortDescription|.
          DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t843.
          IF t802->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t802->zlnt_json_ownkeys_70e5fd461788->put( p0 = t842 p1 = t843 ).
          ENDIF.
          DATA(t844) = |extendedInformation|.
          DATA t845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t845.
          IF t802->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t802->zlnt_json_ownkeys_70e5fd461788->put( p0 = t844 p1 = t845 ).
          ENDIF.
          DATA(t846) = |tags|.
          DATA t847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t847.
          IF t802->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t802->zlnt_json_ownkeys_70e5fd461788->put( p0 = t846 p1 = t847 ).
          ENDIF.
          t801 = t802->key.
          DATA t848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t848.
          DATA(t849) = me->conf.
          t848 = t849->zlnt_view_read_sr_15c06369f827( ).
          DATA t850 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t850.
          DATA t851 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t851.
          t764 = zcl_lnt_issue=>at_statement( i_file = t765 i_statement = t767 i_message_26cb = t777 i_key = t801 i_severity = t848 i_fix = t850 i_alternative_fixes = t851 ).
          t763->load( ).
          APPEND t764 TO t763->items.
          t763->save( ).
        ENDIF.
      ENDDO.
      DATA(t852) = VALUE abap_bool( ).
      DATA(t853) = VALUE abap_bool( ).
      DATA t854 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t854.
      DATA t855 TYPE REF TO zcl_lnt_domain_class_mapping.
      CLEAR t855.
      DATA(t856) = t11.
      t855 = t856.
      t854 = t855->zlnt_view_read_sr_3ef2d1088b9b( ).
      IF t854 IS BOUND.
        IF t854->has = abap_true.
          t853 = xsdbool( strlen( t854->value ) > 0 ).
        ENDIF.
      ENDIF.
      t852 = t853.
      IF t853 = abap_true.
        DATA(t857) = VALUE abap_bool( ).
        DATA(t858) = t366.
        t857 = xsdbool( t858 = abap_false ).
        t852 = t857.
      ENDIF.
      IF t852 = abap_true.
        DATA(t859) = t263.
        DATA t860 TYPE REF TO zcl_lnt_issue.
        CLEAR t860.
        DATA t861 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t861.
        DATA(t862) = t173.
        t861 = t862.
        DATA t863 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t863.
        DATA t864 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t864.
        DATA t865 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t865.
        DATA t866 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t866.
        DATA(t867) = t173.
        t866 = t867.
        t865 = t866.
        DATA t868 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t868.
        DATA(t869) = t865.
        t868 = t869->statements.
        t864 = t868.
        DATA t870 TYPE REF TO object.
        CLEAR t870.
        t864->load( ).
        CLEAR t870.
        READ TABLE t864->items INDEX 1 INTO t870.
        DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t871.
        CLEAR t863.
        IF t870 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t871 ?= t870.
          DATA t872 TYPE REF TO object.
          CLEAR t872.
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
        DATA t879 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t879.
        DATA t880 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t880.
        DATA(t881) = t11.
        t880 = t881.
        t879 = t880->zlnt_view_read_sr_3ef2d1088b9b( ).
        t878 = t879->value.
        DATA(t882) = strlen( t877 ).
        t876 = |{ t877 }{ t878 }|.
        DATA(t883) = | for name of domain |.
        DATA(t884) = strlen( t876 ).
        t875 = |{ t876 }{ t883 }|.
        DATA(t885) = VALUE string( ).
        DATA t886 TYPE REF TO zcl_lnt_domain_class_mapping.
        CLEAR t886.
        DATA(t887) = t11.
        t886 = t887.
        t885 = t886->zlnt_view_read_sr_f8de08988c9e( ).
        DATA(t888) = strlen( t875 ).
        t874 = |{ t875 }{ t885 }|.
        DATA(t889) = ||.
        DATA(t890) = strlen( t874 ).
        t873 = |{ t874 }{ t889 }|.
        DATA(t891) = VALUE string( ).
        DATA t892 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t892.
        DATA(t893) = VALUE string( ).
        DATA(t894) = |constant_classes|.
        t893 = t894.
        DATA(t895) = VALUE string( ).
        DATA(t896) = |Validate constant classes|.
        t895 = t896.
        DATA(t897) = VALUE string( ).
        DATA(t898) = |Checks that a class contains exactly the constants correspon|.
        t898 = t898 && |ding to a domain's fixed values.|.
        t897 = t898.
        DATA t899 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t899.
        DATA t900 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t900.
        DATA(t901) = abap_true.
        IF t901 = abap_true.
          DATA(t902) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t902 = t902 && |nABAP.md#prefer-enum-to-constants-interfaces|.
          DATA(t903) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t903->has = abap_true.
          t903->value = t902.
          t900 = t903.
        ELSE.
          DATA t904 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t904.
          t900 = t904.
        ENDIF.
        t899 = t900.
        DATA t905 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t905.
        DATA t906 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t906.
        DATA(t907) = abap_true.
        IF t907 = abap_true.
          DATA t908 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t908.
          DATA t909 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t909.
          DATA t910 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t910.
          CREATE OBJECT t910.
          t909 = t910.
          DATA(t911) = t909.
          DATA(t912) = |Styleguide|.
          t911->load( ).
          APPEND t912 TO t911->items.
          t911->save( ).
          DATA(t913) = t909.
          t908 = t913.
          t906 = t908.
        ELSE.
          DATA t914 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t914.
          t906 = t914.
        ENDIF.
        t905 = t906.
        DATA t915 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t915.
        DATA t916 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t916.
        t915 = t916.
        DATA t917 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t917.
        DATA t918 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t918.
        t917 = t918.
        DATA t919 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t919.
        DATA t920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t920.
        t919 = t920.
        DATA t921 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t921.
        DATA t922 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t922.
        t921 = t922.
        t892 = NEW zcl_lnt_irule_metadata( i_key = t893 i_title = t895 i_short_description = t897 i_bad_example = t915 i_good_example = t917 i_extended_information = t899 i_tags = t905 i_pragma = t919 i_pseudo_comment = t921 ).
        CREATE OBJECT t892->zlnt_view_ownkeys_b0e8086400eb.
        t892->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t923.
        IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t923 ).
        ENDIF.
        DATA t924 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t924.
        IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t924 ).
        ENDIF.
        DATA t925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t925.
        IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t925 ).
        ENDIF.
        DATA t926 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t926.
        IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t926 ).
        ENDIF.
        DATA t927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t927.
        IF t892->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t892->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t927 ).
        ENDIF.
        CREATE OBJECT t892->zlnt_json_ownkeys_70e5fd461788.
        t892->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t928) = |key|.
        DATA t929 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t929.
        IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = t928 p1 = t929 ).
        ENDIF.
        DATA(t930) = |title|.
        DATA t931 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t931.
        IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = t930 p1 = t931 ).
        ENDIF.
        DATA(t932) = |shortDescription|.
        DATA t933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t933.
        IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = t932 p1 = t933 ).
        ENDIF.
        DATA(t934) = |extendedInformation|.
        DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t935.
        IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = t934 p1 = t935 ).
        ENDIF.
        DATA(t936) = |tags|.
        DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t937.
        IF t892->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t892->zlnt_json_ownkeys_70e5fd461788->put( p0 = t936 p1 = t937 ).
        ENDIF.
        t891 = t892->key.
        DATA t938 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t938.
        DATA(t939) = me->conf.
        t938 = t939->zlnt_view_read_sr_15c06369f827( ).
        DATA t940 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t940.
        DATA t941 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t941.
        t860 = zcl_lnt_issue=>at_statement( i_file = t861 i_statement = t863 i_message_26cb = t873 i_key = t891 i_severity = t938 i_fix = t940 i_alternative_fixes = t941 ).
        t859->load( ).
        APPEND t860 TO t859->items.
        t859->save( ).
      ENDIF.
      DATA(t942) = t263.
      result = t942.
      RETURN.
    ENDIF.
    DATA t943 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t943.
    CREATE OBJECT t943.
    result = t943.

  ENDMETHOD.

  METHOD issue_at_constant.
    DATA(t1) = i_constant_6eda.
    DATA(t2) = i_message_26cb.
    DATA t3 TYPE REF TO zcl_lnt_issue.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t5) = t1.
    t4 = t5->identifier.
    DATA(t6) = t2.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t8.
    DATA t9 TYPE string.
    DATA(t10) = |constant_classes|.
    t9 = t10.
    DATA t11 TYPE string.
    DATA(t12) = |Validate constant classes|.
    t11 = t12.
    DATA t13 TYPE string.
    DATA(t14) = |Checks that a class contains exactly the constants correspon|.
    t14 = t14 && |ding to a domain's fixed values.|.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t18 = t18 && |nABAP.md#prefer-enum-to-constants-interfaces|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t18.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t16 = t20.
    ENDIF.
    t15 = t16.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t26.
      t25 = t26.
      DATA(t27) = t25.
      DATA(t28) = |Styleguide|.
      t27->load( ).
      APPEND t28 TO t27->items.
      t27->save( ).
      DATA(t29) = t25.
      t24 = t29.
      t22 = t24.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t30.
      t22 = t30.
    ENDIF.
    t21 = t22.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    t31 = t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    t35 = t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    t37 = t38.
    t8 = NEW zcl_lnt_irule_metadata( i_key = t9 i_title = t11 i_short_description = t13 i_bad_example = t31 i_good_example = t33 i_extended_information = t15 i_tags = t21 i_pragma = t35 i_pseudo_comment = t37 ).
    CREATE OBJECT t8->zlnt_view_ownkeys_b0e8086400eb.
    t8->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t8->zlnt_json_ownkeys_70e5fd461788.
    t8->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t44) = |key|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |title|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |shortDescription|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |extendedInformation|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    t7 = t8->key.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t55) = me->conf.
    t54 = t55->zlnt_view_read_sr_15c06369f827( ).
    DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t56.
    t3 = zcl_lnt_issue=>at_identifier( i_identifier = t4 i_message_26cb = t6 i_key = t7 i_severity = t54 i_fix = t56 ).
    result = t3.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_constant_classes.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_cns_cls_ts_cns_cls( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_constant_classes_conf( me->gt_cn_in_sr_rl_cn_cl_ts_cn_cls( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_constant_classes_conf( me->gt_cn_in_sr_rl_cn_cl_ts_cn_cls( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_constant_classes_conf.
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
        t2 = NEW zcl_lnt_constant_classes_conf( view_source = t3 ).
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
