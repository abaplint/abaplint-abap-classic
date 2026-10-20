* TS: src/rules/method_parameter_names.ts:24:1 MethodParameterNames
CLASS zcl_lnt_method_parameter_names DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_mthd_prmtr_nms_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_description IMPORTING i_expected TYPE string i_actual TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_mt_pr_nm_ts_mt_pr_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_mthd_prmtr_nms_cnf.
    METHODS s_c_i_s_r_mt_pr_nm_ts_mt_pr_nm IMPORTING i_conf TYPE REF TO zcl_lnt_mthd_prmtr_nms_cnf.
    METHODS i_i_sr_rl_mt_pr_nm_ts_mt_pr_nm IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_method_parameter_names.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_method IMPORTING i_method TYPE REF TO zcl_lnt_info_method_definition RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_parameter IMPORTING i_param TYPE REF TO zcl_lnt_info_method_parameter i_expected TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_parameter_names IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_mthd_prmtr_nms_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Allows you to enforce a pattern, such as a prefix, for metho|.
    t7 = t7 && |d parameter names|.
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
    DATA(t23) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
    t23 = t23 && |G VALUE(name) TYPE string.|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    t20 = t24.
    DATA(t29) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
    t29 = t29 && |NING VALUE(rv_name) TYPE string.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |method_parameter_names| i_title = |Method parameter naming conventions| i_short_description = t6 i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
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
    DATA(t1) = i_expected.
    DATA(t2) = i_actual.
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
      DATA(t17) = |Method parameter name does not match pattern |.
      DATA(t19) = strlen( t17 ).
      t16 = |{ t17 }{ t1 }|.
      DATA(t21) = strlen( t16 ).
      t15 = |{ t16 }{ |: | }|.
      DATA(t23) = strlen( t15 ).
      t3 = |{ t15 }{ t2 }|.
    ELSE.
      DATA t25 TYPE string.
      DATA t26 TYPE string.
      DATA(t27) = |Method parameter name must not match pattern |.
      DATA(t29) = strlen( t27 ).
      t26 = |{ t27 }{ t1 }|.
      DATA(t31) = strlen( t26 ).
      t25 = |{ t26 }{ |: | }|.
      DATA(t33) = strlen( t25 ).
      t3 = |{ t25 }{ t2 }|.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_r_mt_pr_nm_ts_mt_pr_nm.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_mt_pr_nm_ts_mt_pr_nm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_mt_pr_nm_ts_mt_pr_nm.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = VALUE abap_bool( ).
    IF t5 IS INITIAL.
      t10 = abap_true.
    ELSEIF t5->has = abap_false.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA(t12) = me->conf.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = |required|.
      t12->zlnt_view_write_s_9ebcbca32e92( p0 = t16 ).
    ENDIF.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zcl_lnt_ddic.
    DATA(t24) = me->reg.
    t22 = NEW zcl_lnt_ddic( i_reg_f149 = t24 ).
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zcl_lnt_abap_object.
    DATA t29 TYPE REF TO object.
    t29 = t1.
    t27 ?= t29.
    t25 = t27->parsed.
    DATA t32 TYPE REF TO zcl_lnt_abap_file.
    DATA t33 TYPE REF TO object.
    DATA(t34) = VALUE i( ).
    DO.
      t25->load( ).
      IF t34 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t33.
      READ TABLE t25->items INDEX t34 + 1 INTO t33.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t32.
      IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t33.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t32 ?= t36.
      ELSE.
        t32 ?= t33.
      ENDIF.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t37 = t32->info->list_interface_definitions( ).
      DATA t43 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
      DATA(t45) = VALUE i( ).
      DO.
        t37->load( ).
        IF t45 >= lines( t37->items ).
          EXIT.
        ENDIF.
        CLEAR t44.
        READ TABLE t37->items INDEX t45 + 1 INTO t44.
        t45 = t45 + 1.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        CLEAR t43.
        IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t46 ?= t44.
          DATA t47 TYPE REF TO object.
          t47 = t46->as_ref( ).
          t43 ?= t47.
        ELSE.
          t43 ?= t44.
        ENDIF.
        DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t48 = t43->methods.
        DATA t50 TYPE REF TO zcl_lnt_info_method_definition.
        CLEAR t50.
        DATA t51 TYPE REF TO object.
        CLEAR t51.
        DATA(t52) = VALUE i( ).
        DO.
          t48->load( ).
          IF t52 >= lines( t48->items ).
            EXIT.
          ENDIF.
          CLEAR t51.
          READ TABLE t48->items INDEX t52 + 1 INTO t51.
          t52 = t52 + 1.
          DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t53.
          CLEAR t50.
          IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t53 ?= t51.
            DATA t54 TYPE REF TO object.
            t54 = t53->as_ref( ).
            t50 ?= t54.
          ELSE.
            t50 ?= t51.
          ENDIF.
          t2 = t2->concat( p0 = me->check_method( i_method = t50 ) ).
        ENDDO.
      ENDDO.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t59 = t32->info->list_class_definitions( ).
      DATA t65 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t65.
      DATA t66 TYPE REF TO object.
      CLEAR t66.
      DATA(t67) = VALUE i( ).
      DO.
        t59->load( ).
        IF t67 >= lines( t59->items ).
          EXIT.
        ENDIF.
        CLEAR t66.
        READ TABLE t59->items INDEX t67 + 1 INTO t66.
        t67 = t67 + 1.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        CLEAR t65.
        IF t66 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t68 ?= t66.
          DATA t69 TYPE REF TO object.
          t69 = t68->as_ref( ).
          t65 ?= t69.
        ELSE.
          t65 ?= t66.
        ENDIF.
        DATA(t70) = VALUE abap_bool( ).
        DATA(t71) = VALUE abap_bool( ).
        DATA t72 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t72 = me->conf->zlnt_view_read_sr_0a69a8d19e64( ).
        IF t72 IS BOUND.
          IF t72->has = abap_true.
            t71 = xsdbool( t72->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t70 = t71.
        IF t71 = abap_true.
          DATA t76 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t76.
          t76 = t65.
          DATA t80 TYPE REF TO zcl_lnt_abap_object.
          DATA t82 TYPE REF TO object.
          t82 = t1.
          t80 ?= t82.
          t70 = t22->is_exception( i_def = t76 i_obj_ac26 = t80 ).
        ENDIF.
        IF t70 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t83 = t65->methods.
        DATA t85 TYPE REF TO zcl_lnt_info_method_definition.
        CLEAR t85.
        DATA t86 TYPE REF TO object.
        CLEAR t86.
        DATA(t87) = VALUE i( ).
        DO.
          t83->load( ).
          IF t87 >= lines( t83->items ).
            EXIT.
          ENDIF.
          CLEAR t86.
          READ TABLE t83->items INDEX t87 + 1 INTO t86.
          t87 = t87 + 1.
          DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t88.
          CLEAR t85.
          IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t88 ?= t86.
            DATA t89 TYPE REF TO object.
            t89 = t88->as_ref( ).
            t85 ?= t89.
          ELSE.
            t85 ?= t86.
          ENDIF.
          DATA(t90) = VALUE abap_bool( ).
          DATA t91 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t91 = t85->is_event_handler.
          IF t91 IS BOUND.
            IF t91->has = abap_true.
              t90 = xsdbool( t91->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          IF t90 = abap_true.
            CONTINUE.
          ENDIF.
          t2 = t2->concat( p0 = me->check_method( i_method = t85 ) ).
        ENDDO.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD check_method.
    DATA(t1) = i_method.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->parameters.
    DATA t6 TYPE REF TO zcl_lnt_info_method_parameter.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t4->load( ).
      IF t8 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t4->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE string.
      t11 = t6->direction.
      IF xsdbool( t11 = |importing| ) = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_info_method_parameter.
        t20 = t6.
        DATA t22 TYPE string.
        t22 = me->conf->zlnt_view_read_sr_f91ac81de17a( ).
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t26.
        DATA t29 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t29.
        CREATE OBJECT t29 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t22 flags = |i|.
        DATA t32 TYPE string.
        t32 = t20->name.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t39->has = abap_true.
        t39->value = t32.
        t36 = t39.
        DATA(t42) = me->conf.
        IF zcl_lnt_name_validator=>violates_rule( i_name = t36 i_pattern = t29 i_params_4c59 = t42 ) = abap_true.
          DATA(t43) = VALUE string( ).
          DATA t45 TYPE string.
          t45 = t22.
          DATA t47 TYPE string.
          t47 = t32.
          DATA(t49) = VALUE string( ).
          DATA(t50) = VALUE abap_bool( ).
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t51 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = |required|.
          t53 = t56.
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = VALUE abap_bool( ).
          IF t51 IS BOUND.
            t58 = t51->has.
          ENDIF.
          IF t53 IS BOUND.
            t59 = t53->has.
          ENDIF.
          IF t58 = t59.
            IF t58 = abap_false.
              t50 = abap_true.
            ELSEIF t51->value = t53->value.
              t50 = abap_true.
            ENDIF.
          ENDIF.
          IF t50 = abap_true.
            DATA t61 TYPE string.
            DATA t62 TYPE string.
            DATA(t63) = |Method parameter name does not match pattern |.
            DATA(t65) = strlen( t63 ).
            t62 = |{ t63 }{ t45 }|.
            DATA(t67) = strlen( t62 ).
            t61 = |{ t62 }{ |: | }|.
            DATA(t69) = strlen( t61 ).
            t49 = |{ t61 }{ t47 }|.
          ELSE.
            DATA t71 TYPE string.
            DATA t72 TYPE string.
            DATA(t73) = |Method parameter name must not match pattern |.
            DATA(t75) = strlen( t73 ).
            t72 = |{ t73 }{ t45 }|.
            DATA(t77) = strlen( t72 ).
            t71 = |{ t72 }{ |: | }|.
            DATA(t79) = strlen( t71 ).
            t49 = |{ t71 }{ t47 }|.
          ENDIF.
          t43 = t49.
          DATA t81 TYPE REF TO zcl_lnt_issue.
          CLEAR t81.
          DATA t82 TYPE REF TO zcl_lnt_fi_identifier.
          t82 = t20->identifier.
          DATA(t85) = VALUE string( ).
          DATA t86 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t91 TYPE string.
          DATA(t92) = |Allows you to enforce a pattern, such as a prefix, for metho|.
          t92 = t92 && |d parameter names|.
          t91 = t92.
          DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t93.
          DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t97.
          t97->load( ).
          APPEND |Naming| TO t97->items.
          t97->save( ).
          t97->load( ).
          APPEND |SingleFile| TO t97->items.
          t97->save( ).
          t93 = t97.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          DATA(t108) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
          t108 = t108 && |G VALUE(name) TYPE string.|.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t108.
          t105 = t109.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          DATA(t114) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
          t114 = t114 && |NING VALUE(rv_name) TYPE string.|.
          DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t115->has = abap_true.
          t115->value = t114.
          t111 = t115.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t119.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          t86 = NEW zcl_lnt_irule_metadata( i_key = |method_parameter_names| i_title = |Method parameter naming conventions| i_short_description = t91 i_bad_example = t105 i_good_example = t111 i_extended_information = t117 i_tags = t93 i_pragma = t119 i_pseudo_comment = t121 ).
          CREATE OBJECT t86->zlnt_view_ownkeys_b0e8086400eb.
          t86->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t123 ).
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t124 ).
          ENDIF.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t125 ).
          ENDIF.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t126 ).
          ENDIF.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t127 ).
          ENDIF.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t128 ).
          ENDIF.
          CREATE OBJECT t86->zlnt_json_ownkeys_70e5fd461788.
          t86->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t130 ).
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t132 ).
          ENDIF.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t134 ).
          ENDIF.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t136 ).
          ENDIF.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t138 ).
          ENDIF.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t140 ).
          ENDIF.
          t85 = t86->key.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t141 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t143 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t143.
          t81 = zcl_lnt_issue=>at_identifier( i_identifier = t82 i_message_26cb = t43 i_key = t85 i_severity = t141 i_fix = t143 ).
          t26->load( ).
          APPEND t81 TO t26->items.
          t26->save( ).
        ENDIF.
        t2 = t2->concat( p0 = t26 ).
      ELSE.
        IF xsdbool( t11 = |exporting| ) = abap_true.
          DATA t153 TYPE REF TO zcl_lnt_info_method_parameter.
          t153 = t6.
          DATA t155 TYPE string.
          t155 = me->conf->zlnt_view_read_sr_b316e3c54933( ).
          DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t159.
          DATA t162 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t162.
          CREATE OBJECT t162 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t155 flags = |i|.
          DATA t165 TYPE string.
          t165 = t153->name.
          DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t169.
          DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t172->has = abap_true.
          t172->value = t165.
          t169 = t172.
          DATA(t175) = me->conf.
          IF zcl_lnt_name_validator=>violates_rule( i_name = t169 i_pattern = t162 i_params_4c59 = t175 ) = abap_true.
            DATA(t176) = VALUE string( ).
            DATA t178 TYPE string.
            t178 = t155.
            DATA t180 TYPE string.
            t180 = t165.
            DATA(t182) = VALUE string( ).
            DATA(t183) = VALUE abap_bool( ).
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t184 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
            DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t189->has = abap_true.
            t189->value = |required|.
            t186 = t189.
            DATA(t191) = VALUE abap_bool( ).
            DATA(t192) = VALUE abap_bool( ).
            IF t184 IS BOUND.
              t191 = t184->has.
            ENDIF.
            IF t186 IS BOUND.
              t192 = t186->has.
            ENDIF.
            IF t191 = t192.
              IF t191 = abap_false.
                t183 = abap_true.
              ELSEIF t184->value = t186->value.
                t183 = abap_true.
              ENDIF.
            ENDIF.
            IF t183 = abap_true.
              DATA t194 TYPE string.
              DATA t195 TYPE string.
              DATA(t196) = |Method parameter name does not match pattern |.
              DATA(t198) = strlen( t196 ).
              t195 = |{ t196 }{ t178 }|.
              DATA(t200) = strlen( t195 ).
              t194 = |{ t195 }{ |: | }|.
              DATA(t202) = strlen( t194 ).
              t182 = |{ t194 }{ t180 }|.
            ELSE.
              DATA t204 TYPE string.
              DATA t205 TYPE string.
              DATA(t206) = |Method parameter name must not match pattern |.
              DATA(t208) = strlen( t206 ).
              t205 = |{ t206 }{ t178 }|.
              DATA(t210) = strlen( t205 ).
              t204 = |{ t205 }{ |: | }|.
              DATA(t212) = strlen( t204 ).
              t182 = |{ t204 }{ t180 }|.
            ENDIF.
            t176 = t182.
            DATA t214 TYPE REF TO zcl_lnt_issue.
            CLEAR t214.
            DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
            t215 = t153->identifier.
            DATA(t218) = VALUE string( ).
            DATA t219 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t224 TYPE string.
            DATA(t225) = |Allows you to enforce a pattern, such as a prefix, for metho|.
            t225 = t225 && |d parameter names|.
            t224 = t225.
            DATA t226 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t226.
            DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t230.
            t230->load( ).
            APPEND |Naming| TO t230->items.
            t230->save( ).
            t230->load( ).
            APPEND |SingleFile| TO t230->items.
            t230->save( ).
            t226 = t230.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            DATA(t241) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
            t241 = t241 && |G VALUE(name) TYPE string.|.
            DATA(t242) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t242->has = abap_true.
            t242->value = t241.
            t238 = t242.
            DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t244.
            DATA(t247) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
            t247 = t247 && |NING VALUE(rv_name) TYPE string.|.
            DATA(t248) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t248->has = abap_true.
            t248->value = t247.
            t244 = t248.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t250.
            DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t252.
            DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t254.
            t219 = NEW zcl_lnt_irule_metadata( i_key = |method_parameter_names| i_title = |Method parameter naming conventions| i_short_description = t224 i_bad_example = t238 i_good_example = t244 i_extended_information = t250 i_tags = t226 i_pragma = t252 i_pseudo_comment = t254 ).
            CREATE OBJECT t219->zlnt_view_ownkeys_b0e8086400eb.
            t219->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t256.
            t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t256 ).
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t257 ).
            ENDIF.
            DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t258.
            IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t258 ).
            ENDIF.
            DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t259.
            IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t259 ).
            ENDIF.
            DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t260.
            IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t260 ).
            ENDIF.
            DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t261.
            IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t261 ).
            ENDIF.
            CREATE OBJECT t219->zlnt_json_ownkeys_70e5fd461788.
            t219->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t263.
            t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t263 ).
            DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t265.
            IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t265 ).
            ENDIF.
            DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t267.
            IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t267 ).
            ENDIF.
            DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t269.
            IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t269 ).
            ENDIF.
            DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t271.
            IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t271 ).
            ENDIF.
            DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t273.
            IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t273 ).
            ENDIF.
            t218 = t219->key.
            DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t274 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t276 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t276.
            t214 = zcl_lnt_issue=>at_identifier( i_identifier = t215 i_message_26cb = t176 i_key = t218 i_severity = t274 i_fix = t276 ).
            t159->load( ).
            APPEND t214 TO t159->items.
            t159->save( ).
          ENDIF.
          t2 = t2->concat( p0 = t159 ).
        ELSE.
          IF xsdbool( t11 = |changing| ) = abap_true.
            DATA t286 TYPE REF TO zcl_lnt_info_method_parameter.
            t286 = t6.
            DATA t288 TYPE string.
            t288 = me->conf->zlnt_view_read_sr_14784b935524( ).
            DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t292.
            DATA t295 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t295.
            CREATE OBJECT t295 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t288 flags = |i|.
            DATA t298 TYPE string.
            t298 = t286->name.
            DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t302.
            DATA(t305) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t305->has = abap_true.
            t305->value = t298.
            t302 = t305.
            DATA(t308) = me->conf.
            IF zcl_lnt_name_validator=>violates_rule( i_name = t302 i_pattern = t295 i_params_4c59 = t308 ) = abap_true.
              DATA(t309) = VALUE string( ).
              DATA t311 TYPE string.
              t311 = t288.
              DATA t313 TYPE string.
              t313 = t298.
              DATA(t315) = VALUE string( ).
              DATA(t316) = VALUE abap_bool( ).
              DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t317 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
              DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t322->has = abap_true.
              t322->value = |required|.
              t319 = t322.
              DATA(t324) = VALUE abap_bool( ).
              DATA(t325) = VALUE abap_bool( ).
              IF t317 IS BOUND.
                t324 = t317->has.
              ENDIF.
              IF t319 IS BOUND.
                t325 = t319->has.
              ENDIF.
              IF t324 = t325.
                IF t324 = abap_false.
                  t316 = abap_true.
                ELSEIF t317->value = t319->value.
                  t316 = abap_true.
                ENDIF.
              ENDIF.
              IF t316 = abap_true.
                DATA t327 TYPE string.
                DATA t328 TYPE string.
                DATA(t329) = |Method parameter name does not match pattern |.
                DATA(t331) = strlen( t329 ).
                t328 = |{ t329 }{ t311 }|.
                DATA(t333) = strlen( t328 ).
                t327 = |{ t328 }{ |: | }|.
                DATA(t335) = strlen( t327 ).
                t315 = |{ t327 }{ t313 }|.
              ELSE.
                DATA t337 TYPE string.
                DATA t338 TYPE string.
                DATA(t339) = |Method parameter name must not match pattern |.
                DATA(t341) = strlen( t339 ).
                t338 = |{ t339 }{ t311 }|.
                DATA(t343) = strlen( t338 ).
                t337 = |{ t338 }{ |: | }|.
                DATA(t345) = strlen( t337 ).
                t315 = |{ t337 }{ t313 }|.
              ENDIF.
              t309 = t315.
              DATA t347 TYPE REF TO zcl_lnt_issue.
              CLEAR t347.
              DATA t348 TYPE REF TO zcl_lnt_fi_identifier.
              t348 = t286->identifier.
              DATA(t351) = VALUE string( ).
              DATA t352 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t357 TYPE string.
              DATA(t358) = |Allows you to enforce a pattern, such as a prefix, for metho|.
              t358 = t358 && |d parameter names|.
              t357 = t358.
              DATA t359 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t359.
              DATA t363 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t363.
              t363->load( ).
              APPEND |Naming| TO t363->items.
              t363->save( ).
              t363->load( ).
              APPEND |SingleFile| TO t363->items.
              t363->save( ).
              t359 = t363.
              DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t371.
              DATA(t374) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
              t374 = t374 && |G VALUE(name) TYPE string.|.
              DATA(t375) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t375->has = abap_true.
              t375->value = t374.
              t371 = t375.
              DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t377.
              DATA(t380) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
              t380 = t380 && |NING VALUE(rv_name) TYPE string.|.
              DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t381->has = abap_true.
              t381->value = t380.
              t377 = t381.
              DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t383.
              DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t385.
              DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t387.
              t352 = NEW zcl_lnt_irule_metadata( i_key = |method_parameter_names| i_title = |Method parameter naming conventions| i_short_description = t357 i_bad_example = t371 i_good_example = t377 i_extended_information = t383 i_tags = t359 i_pragma = t385 i_pseudo_comment = t387 ).
              CREATE OBJECT t352->zlnt_view_ownkeys_b0e8086400eb.
              t352->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t389.
              t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t389 ).
              DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t390.
              IF t352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t390 ).
              ENDIF.
              DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t391.
              IF t352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t391 ).
              ENDIF.
              DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t392.
              IF t352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t392 ).
              ENDIF.
              DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t393.
              IF t352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t393 ).
              ENDIF.
              DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t394.
              IF t352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t394 ).
              ENDIF.
              CREATE OBJECT t352->zlnt_json_ownkeys_70e5fd461788.
              t352->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t396.
              t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t396 ).
              DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t398.
              IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t398 ).
              ENDIF.
              DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t400.
              IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t400 ).
              ENDIF.
              DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t402.
              IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t402 ).
              ENDIF.
              DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t404.
              IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t404 ).
              ENDIF.
              DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t406.
              IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t406 ).
              ENDIF.
              t351 = t352->key.
              DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t407 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t409 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t409.
              t347 = zcl_lnt_issue=>at_identifier( i_identifier = t348 i_message_26cb = t309 i_key = t351 i_severity = t407 i_fix = t409 ).
              t292->load( ).
              APPEND t347 TO t292->items.
              t292->save( ).
            ENDIF.
            t2 = t2->concat( p0 = t292 ).
          ELSE.
            IF xsdbool( t11 = |returning| ) = abap_true.
              DATA t419 TYPE REF TO zcl_lnt_info_method_parameter.
              t419 = t6.
              DATA t421 TYPE string.
              t421 = me->conf->zlnt_view_read_sr_c2b9ba314ce4( ).
              DATA t425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t425.
              DATA t428 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
              CLEAR t428.
              CREATE OBJECT t428 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t421 flags = |i|.
              DATA t431 TYPE string.
              t431 = t419->name.
              DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t435.
              DATA(t438) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t438->has = abap_true.
              t438->value = t431.
              t435 = t438.
              DATA(t441) = me->conf.
              IF zcl_lnt_name_validator=>violates_rule( i_name = t435 i_pattern = t428 i_params_4c59 = t441 ) = abap_true.
                DATA(t442) = VALUE string( ).
                DATA t444 TYPE string.
                t444 = t421.
                DATA t446 TYPE string.
                t446 = t431.
                DATA(t448) = VALUE string( ).
                DATA(t449) = VALUE abap_bool( ).
                DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t450 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
                DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t455) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t455->has = abap_true.
                t455->value = |required|.
                t452 = t455.
                DATA(t457) = VALUE abap_bool( ).
                DATA(t458) = VALUE abap_bool( ).
                IF t450 IS BOUND.
                  t457 = t450->has.
                ENDIF.
                IF t452 IS BOUND.
                  t458 = t452->has.
                ENDIF.
                IF t457 = t458.
                  IF t457 = abap_false.
                    t449 = abap_true.
                  ELSEIF t450->value = t452->value.
                    t449 = abap_true.
                  ENDIF.
                ENDIF.
                IF t449 = abap_true.
                  DATA t460 TYPE string.
                  DATA t461 TYPE string.
                  DATA(t462) = |Method parameter name does not match pattern |.
                  DATA(t464) = strlen( t462 ).
                  t461 = |{ t462 }{ t444 }|.
                  DATA(t466) = strlen( t461 ).
                  t460 = |{ t461 }{ |: | }|.
                  DATA(t468) = strlen( t460 ).
                  t448 = |{ t460 }{ t446 }|.
                ELSE.
                  DATA t470 TYPE string.
                  DATA t471 TYPE string.
                  DATA(t472) = |Method parameter name must not match pattern |.
                  DATA(t474) = strlen( t472 ).
                  t471 = |{ t472 }{ t444 }|.
                  DATA(t476) = strlen( t471 ).
                  t470 = |{ t471 }{ |: | }|.
                  DATA(t478) = strlen( t470 ).
                  t448 = |{ t470 }{ t446 }|.
                ENDIF.
                t442 = t448.
                DATA t480 TYPE REF TO zcl_lnt_issue.
                CLEAR t480.
                DATA t481 TYPE REF TO zcl_lnt_fi_identifier.
                t481 = t419->identifier.
                DATA(t484) = VALUE string( ).
                DATA t485 TYPE REF TO zcl_lnt_irule_metadata.
                DATA t490 TYPE string.
                DATA(t491) = |Allows you to enforce a pattern, such as a prefix, for metho|.
                t491 = t491 && |d parameter names|.
                t490 = t491.
                DATA t492 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t492.
                DATA t496 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t496.
                t496->load( ).
                APPEND |Naming| TO t496->items.
                t496->save( ).
                t496->load( ).
                APPEND |SingleFile| TO t496->items.
                t496->save( ).
                t492 = t496.
                DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t504.
                DATA(t507) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
                t507 = t507 && |G VALUE(name) TYPE string.|.
                DATA(t508) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t508->has = abap_true.
                t508->value = t507.
                t504 = t508.
                DATA t510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t510.
                DATA(t513) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
                t513 = t513 && |NING VALUE(rv_name) TYPE string.|.
                DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t514->has = abap_true.
                t514->value = t513.
                t510 = t514.
                DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t516.
                DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t518.
                DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t520.
                t485 = NEW zcl_lnt_irule_metadata( i_key = |method_parameter_names| i_title = |Method parameter naming conventions| i_short_description = t490 i_bad_example = t504 i_good_example = t510 i_extended_information = t516 i_tags = t492 i_pragma = t518 i_pseudo_comment = t520 ).
                CREATE OBJECT t485->zlnt_view_ownkeys_b0e8086400eb.
                t485->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t522.
                t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t522 ).
                DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t523.
                IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t523 ).
                ENDIF.
                DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t524.
                IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t524 ).
                ENDIF.
                DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t525.
                IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t525 ).
                ENDIF.
                DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t526.
                IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t526 ).
                ENDIF.
                DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t527.
                IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t527 ).
                ENDIF.
                CREATE OBJECT t485->zlnt_json_ownkeys_70e5fd461788.
                t485->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t529.
                t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t529 ).
                DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t531.
                IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t531 ).
                ENDIF.
                DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t533.
                IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t533 ).
                ENDIF.
                DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t535.
                IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t535 ).
                ENDIF.
                DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t537.
                IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t537 ).
                ENDIF.
                DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t539.
                IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t539 ).
                ENDIF.
                t484 = t485->key.
                DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t540 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                DATA t542 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t542.
                t480 = zcl_lnt_issue=>at_identifier( i_identifier = t481 i_message_26cb = t442 i_key = t484 i_severity = t540 i_fix = t542 ).
                t425->load( ).
                APPEND t480 TO t425->items.
                t425->save( ).
              ENDIF.
              t2 = t2->concat( p0 = t425 ).
            ELSE.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD check_parameter.
    DATA(t1) = i_param.
    DATA(t2) = i_expected.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t2 flags = |i|.
    DATA t9 TYPE string.
    t9 = t1->name.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t16->has = abap_true.
    t16->value = t9.
    t13 = t16.
    DATA(t19) = me->conf.
    IF zcl_lnt_name_validator=>violates_rule( i_name = t13 i_pattern = t6 i_params_4c59 = t19 ) = abap_true.
      DATA(t20) = VALUE string( ).
      DATA t22 TYPE string.
      t22 = t2.
      DATA t24 TYPE string.
      t24 = t9.
      DATA(t26) = VALUE string( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t28 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t33->has = abap_true.
      t33->value = |required|.
      t30 = t33.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      IF t28 IS BOUND.
        t35 = t28->has.
      ENDIF.
      IF t30 IS BOUND.
        t36 = t30->has.
      ENDIF.
      IF t35 = t36.
        IF t35 = abap_false.
          t27 = abap_true.
        ELSEIF t28->value = t30->value.
          t27 = abap_true.
        ENDIF.
      ENDIF.
      IF t27 = abap_true.
        DATA t38 TYPE string.
        DATA t39 TYPE string.
        DATA(t40) = |Method parameter name does not match pattern |.
        DATA(t42) = strlen( t40 ).
        t39 = |{ t40 }{ t22 }|.
        DATA(t44) = strlen( t39 ).
        t38 = |{ t39 }{ |: | }|.
        DATA(t46) = strlen( t38 ).
        t26 = |{ t38 }{ t24 }|.
      ELSE.
        DATA t48 TYPE string.
        DATA t49 TYPE string.
        DATA(t50) = |Method parameter name must not match pattern |.
        DATA(t52) = strlen( t50 ).
        t49 = |{ t50 }{ t22 }|.
        DATA(t54) = strlen( t49 ).
        t48 = |{ t49 }{ |: | }|.
        DATA(t56) = strlen( t48 ).
        t26 = |{ t48 }{ t24 }|.
      ENDIF.
      t20 = t26.
      DATA t58 TYPE REF TO zcl_lnt_issue.
      DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
      t59 = t1->identifier.
      DATA(t62) = VALUE string( ).
      DATA t63 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t68 TYPE string.
      DATA(t69) = |Allows you to enforce a pattern, such as a prefix, for metho|.
      t69 = t69 && |d parameter names|.
      t68 = t69.
      DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t74.
      t74->load( ).
      APPEND |Naming| TO t74->items.
      t74->save( ).
      t74->load( ).
      APPEND |SingleFile| TO t74->items.
      t74->save( ).
      t70 = t74.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t85) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
      t85 = t85 && |G VALUE(name) TYPE string.|.
      DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t86->has = abap_true.
      t86->value = t85.
      t82 = t86.
      DATA(t91) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
      t91 = t91 && |NING VALUE(rv_name) TYPE string.|.
      DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t92->has = abap_true.
      t92->value = t91.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t63 = NEW zcl_lnt_irule_metadata( i_key = |method_parameter_names| i_title = |Method parameter naming conventions| i_short_description = t68 i_bad_example = t82 i_good_example = t92 i_extended_information = t94 i_tags = t70 i_pragma = t96 i_pseudo_comment = t98 ).
      CREATE OBJECT t63->zlnt_view_ownkeys_b0e8086400eb.
      t63->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t100 ).
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t101 ).
      ENDIF.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t102 ).
      ENDIF.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t103 ).
      ENDIF.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t104 ).
      ENDIF.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t105 ).
      ENDIF.
      CREATE OBJECT t63->zlnt_json_ownkeys_70e5fd461788.
      t63->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t107 ).
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t109 ).
      ENDIF.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t111 ).
      ENDIF.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t113 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t115 ).
      ENDIF.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t117 ).
      ENDIF.
      t62 = t63->key.
      DATA t120 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t58 = zcl_lnt_issue=>at_identifier( i_identifier = t59 i_message_26cb = t20 i_key = t62 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t120 ).
      t3->load( ).
      APPEND t58 TO t3->items.
      t3->save( ).
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_mthd_prmtr_nms_cnf( me->g_c_i_s_r_mt_pr_nm_ts_mt_pr_nm( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mthd_prmtr_nms_cnf( me->g_c_i_s_r_mt_pr_nm_ts_mt_pr_nm( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_mthd_prmtr_nms_cnf.
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
        t2 = NEW zcl_lnt_mthd_prmtr_nms_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_mt_pr_nm_ts_mt_pr_nm( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_sr_rl_mt_pr_nm_ts_mt_pr_nm( i_reg_f149 = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1591_d18be3f3fa68.
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
