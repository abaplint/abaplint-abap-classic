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
    DATA(t1) = NEW zcl_lnt_mthd_prmtr_nms_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |method_parameter_names|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Method parameter naming conventions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Allows you to enforce a pattern, such as a prefix, for metho|.
    t7 = t7 && |d parameter names|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Naming|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |SingleFile|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      t11 = t18.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
      t23 = t23 && |G VALUE(name) TYPE string.|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
      t29 = t29 && |NING VALUE(rv_name) TYPE string.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t26 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t44) = |key|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |title|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |shortDescription|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |tags|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |badExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |goodExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_expected.
    DATA(t2) = i_actual.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |required|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t9.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t7 = t11.
    ENDIF.
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
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA(t17) = |Method parameter name does not match pattern |.
      DATA(t18) = t1.
      DATA(t19) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      DATA(t20) = |: |.
      DATA(t21) = strlen( t16 ).
      t15 = |{ t16 }{ t20 }|.
      DATA(t22) = t2.
      DATA(t23) = strlen( t15 ).
      t14 = |{ t15 }{ t22 }|.
      t3 = t14.
    ELSE.
      DATA t24 TYPE string.
      DATA t25 TYPE string.
      DATA t26 TYPE string.
      DATA(t27) = |Method parameter name must not match pattern |.
      DATA(t28) = t1.
      DATA(t29) = strlen( t27 ).
      t26 = |{ t27 }{ t28 }|.
      DATA(t30) = |: |.
      DATA(t31) = strlen( t26 ).
      t25 = |{ t26 }{ t30 }|.
      DATA(t32) = t2.
      DATA(t33) = strlen( t25 ).
      t24 = |{ t25 }{ t32 }|.
      t3 = t24.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_r_mt_pr_nm_ts_mt_pr_nm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_mt_pr_nm_ts_mt_pr_nm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_mt_pr_nm_ts_mt_pr_nm.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t7) = me->conf.
    t6 = t7->zlnt_view_read_sr_ef452f77fd06( ).
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t5.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ELSEIF t11->has = abap_false.
      t10 = abap_true.
    ENDIF.
    t4 = t10.
    IF t4 = abap_true.
      DATA(t12) = me->conf.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA(t15) = |required|.
        DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t16->has = abap_true.
        t16->value = t15.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      t12->zlnt_view_write_s_9ebcbca32e92( p0 = t13 ).
    ENDIF.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t1.
    t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_abap_object ).
    t18 = xsdbool( t19 = abap_false ).
    IF t18 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t21.
      result = t21.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zcl_lnt_ddic.
    DATA t23 TYPE REF TO zcl_lnt_ddic.
    DATA(t24) = me->reg.
    t23 = NEW zcl_lnt_ddic( i_reg_f149 = t24 ).
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_abap_object.
    DATA t27 TYPE REF TO zcl_lnt_abap_object.
    DATA(t28) = t1.
    DATA t29 TYPE REF TO object.
    t29 = t28.
    t27 ?= t29.
    t26 = t27.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t31) = t26.
    t30 = t31->parsed.
    t25 = t30.
    DATA t32 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t32.
    DATA t33 TYPE REF TO object.
    CLEAR t33.
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
      DATA t38 TYPE REF TO zif_lnt_abap_file_information.
      DATA t39 TYPE REF TO zcl_lnt_abap_file.
      DATA(t40) = t32.
      t39 = t40.
      DATA t41 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t42) = t39.
      t41 = t42->info.
      t38 = t41.
      t37 = t38->list_interface_definitions( ).
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
        DATA(t49) = t43.
        t48 = t49->methods.
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
          DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t56) = t2.
          DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t58) = t50.
          t57 = me->check_method( i_method = t58 ).
          t55 = t56->concat( p0 = t57 ).
          t2 = t55.
        ENDDO.
      ENDDO.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t60 TYPE REF TO zif_lnt_abap_file_information.
      DATA t61 TYPE REF TO zcl_lnt_abap_file.
      DATA(t62) = t32.
      t61 = t62.
      DATA t63 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t64) = t61.
      t63 = t64->info.
      t60 = t63.
      t59 = t60->list_class_definitions( ).
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
        DATA(t73) = me->conf.
        t72 = t73->zlnt_view_read_sr_0a69a8d19e64( ).
        IF t72 IS BOUND.
          IF t72->has = abap_true.
            t71 = xsdbool( t72->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t70 = t71.
        IF t71 = abap_true.
          DATA(t74) = VALUE abap_bool( ).
          DATA(t75) = t22.
          DATA t76 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t76.
          DATA(t77) = abap_true.
          IF t77 = abap_true.
            DATA(t78) = t65.
            t76 = t78.
          ELSE.
            DATA t79 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t79.
            t76 = t79.
          ENDIF.
          DATA t80 TYPE REF TO zcl_lnt_abap_object.
          DATA(t81) = t1.
          DATA t82 TYPE REF TO object.
          t82 = t81.
          t80 ?= t82.
          t74 = t75->is_exception( i_def = t76 i_obj_ac26 = t80 ).
          t70 = t74.
        ENDIF.
        IF t70 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t84) = t65.
        t83 = t84->methods.
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
          DATA(t92) = t85.
          t91 = t92->is_event_handler.
          IF t91 IS BOUND.
            IF t91->has = abap_true.
              t90 = xsdbool( t91->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          IF t90 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t94) = t2.
          DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t96) = t85.
          t95 = me->check_method( i_method = t96 ).
          t93 = t94->concat( p0 = t95 ).
          t2 = t93.
        ENDDO.
      ENDDO.
    ENDDO.
    DATA(t97) = t2.
    result = t97.

  ENDMETHOD.

  METHOD check_method.
    DATA(t1) = i_method.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    t4 = t5->parameters.
    DATA t6 TYPE REF TO zcl_lnt_info_method_parameter.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
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
      DATA t12 TYPE string.
      DATA(t13) = t6.
      t12 = t13->direction.
      t11 = t12.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t11.
      DATA(t16) = |importing|.
      t14 = xsdbool( t15 = t16 ).
      IF t14 = abap_true.
        DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t17.
        DATA(t18) = t2.
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t19.
        DATA t20 TYPE REF TO zcl_lnt_info_method_parameter.
        DATA(t21) = t6.
        t20 = t21.
        DATA t22 TYPE string.
        DATA t23 TYPE string.
        DATA(t24) = me->conf.
        t23 = t24->zlnt_view_read_sr_f91ac81de17a( ).
        t22 = t23.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t25.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t27.
        t26 = t27.
        DATA t28 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA t29 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t29.
        DATA(t30) = t22.
        DATA(t31) = |i|.
        CREATE OBJECT t29 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t30 flags = t31.
        t28 = t29.
        DATA t32 TYPE string.
        DATA t33 TYPE string.
        DATA(t34) = t20.
        t33 = t34->name.
        t32 = t33.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        DATA(t37) = abap_true.
        IF t37 = abap_true.
          DATA(t38) = t32.
          DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t39->has = abap_true.
          t39->value = t38.
          t36 = t39.
        ELSE.
          DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t40.
          t36 = t40.
        ENDIF.
        DATA(t41) = t28.
        DATA(t42) = me->conf.
        t35 = zcl_lnt_name_validator=>violates_rule( i_name = t36 i_pattern = t41 i_params_4c59 = t42 ).
        IF t35 = abap_true.
          DATA(t43) = VALUE string( ).
          DATA(t44) = VALUE string( ).
          DATA t45 TYPE string.
          DATA(t46) = t22.
          t45 = t46.
          DATA t47 TYPE string.
          DATA(t48) = t32.
          t47 = t48.
          DATA(t49) = VALUE string( ).
          DATA(t50) = VALUE abap_bool( ).
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t52) = me->conf.
          t51 = t52->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          DATA(t54) = abap_true.
          IF t54 = abap_true.
            DATA(t55) = |required|.
            DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t56->has = abap_true.
            t56->value = t55.
            t53 = t56.
          ELSE.
            DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t57.
            t53 = t57.
          ENDIF.
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
            DATA t60 TYPE string.
            DATA t61 TYPE string.
            DATA t62 TYPE string.
            DATA(t63) = |Method parameter name does not match pattern |.
            DATA(t64) = t45.
            DATA(t65) = strlen( t63 ).
            t62 = |{ t63 }{ t64 }|.
            DATA(t66) = |: |.
            DATA(t67) = strlen( t62 ).
            t61 = |{ t62 }{ t66 }|.
            DATA(t68) = t47.
            DATA(t69) = strlen( t61 ).
            t60 = |{ t61 }{ t68 }|.
            t49 = t60.
          ELSE.
            DATA t70 TYPE string.
            DATA t71 TYPE string.
            DATA t72 TYPE string.
            DATA(t73) = |Method parameter name must not match pattern |.
            DATA(t74) = t45.
            DATA(t75) = strlen( t73 ).
            t72 = |{ t73 }{ t74 }|.
            DATA(t76) = |: |.
            DATA(t77) = strlen( t72 ).
            t71 = |{ t72 }{ t76 }|.
            DATA(t78) = t47.
            DATA(t79) = strlen( t71 ).
            t70 = |{ t71 }{ t78 }|.
            t49 = t70.
          ENDIF.
          t44 = t49.
          t43 = t44.
          DATA t80 TYPE REF TO zcl_lnt_issue.
          CLEAR t80.
          DATA t81 TYPE REF TO zcl_lnt_issue.
          CLEAR t81.
          DATA t82 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t83) = t20.
          t82 = t83->identifier.
          DATA(t84) = t43.
          DATA(t85) = VALUE string( ).
          DATA t86 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t86.
          DATA t87 TYPE string.
          DATA(t88) = |method_parameter_names|.
          t87 = t88.
          DATA t89 TYPE string.
          DATA(t90) = |Method parameter naming conventions|.
          t89 = t90.
          DATA t91 TYPE string.
          DATA(t92) = |Allows you to enforce a pattern, such as a prefix, for metho|.
          t92 = t92 && |d parameter names|.
          t91 = t92.
          DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t93.
          DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t94.
          DATA(t95) = abap_true.
          IF t95 = abap_true.
            DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t98.
            t97 = t98.
            DATA(t99) = t97.
            DATA(t100) = |Naming|.
            t99->load( ).
            APPEND t100 TO t99->items.
            t99->save( ).
            DATA(t101) = t97.
            DATA(t102) = |SingleFile|.
            t101->load( ).
            APPEND t102 TO t101->items.
            t101->save( ).
            DATA(t103) = t97.
            t96 = t103.
            t94 = t96.
          ELSE.
            DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t104.
            t94 = t104.
          ENDIF.
          t93 = t94.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          DATA(t107) = abap_true.
          IF t107 = abap_true.
            DATA(t108) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
            t108 = t108 && |G VALUE(name) TYPE string.|.
            DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t109->has = abap_true.
            t109->value = t108.
            t106 = t109.
          ELSE.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            t106 = t110.
          ENDIF.
          t105 = t106.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          DATA(t113) = abap_true.
          IF t113 = abap_true.
            DATA(t114) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
            t114 = t114 && |NING VALUE(rv_name) TYPE string.|.
            DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t115->has = abap_true.
            t115->value = t114.
            t112 = t115.
          ELSE.
            DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t116.
            t112 = t116.
          ENDIF.
          t111 = t112.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          t117 = t118.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t120.
          t119 = t120.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          t121 = t122.
          t86 = NEW zcl_lnt_irule_metadata( i_key = t87 i_title = t89 i_short_description = t91 i_bad_example = t105 i_good_example = t111 i_extended_information = t117 i_tags = t93 i_pragma = t119 i_pseudo_comment = t121 ).
          CREATE OBJECT t86->zlnt_view_ownkeys_b0e8086400eb.
          t86->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t123 ).
          ENDIF.
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
          DATA(t129) = |key|.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
          ENDIF.
          DATA(t131) = |title|.
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
          ENDIF.
          DATA(t133) = |shortDescription|.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
          ENDIF.
          DATA(t135) = |tags|.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
          ENDIF.
          DATA(t137) = |badExample|.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
          ENDIF.
          DATA(t139) = |goodExample|.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
          ENDIF.
          t85 = t86->key.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t142) = me->conf.
          t141 = t142->zlnt_view_read_sr_15c06369f827( ).
          DATA t143 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t143.
          t81 = zcl_lnt_issue=>at_identifier( i_identifier = t82 i_message_26cb = t84 i_key = t85 i_severity = t141 i_fix = t143 ).
          t80 = t81.
          DATA(t144) = t26.
          DATA(t145) = t80.
          t144->load( ).
          APPEND t145 TO t144->items.
          t144->save( ).
        ENDIF.
        DATA(t146) = t26.
        t25 = t146.
        t19 = t25.
        t17 = t18->concat( p0 = t19 ).
        t2 = t17.
      ELSE.
        DATA t147 TYPE abap_bool.
        DATA(t148) = t11.
        DATA(t149) = |exporting|.
        t147 = xsdbool( t148 = t149 ).
        IF t147 = abap_true.
          DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t150.
          DATA(t151) = t2.
          DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t152.
          DATA t153 TYPE REF TO zcl_lnt_info_method_parameter.
          DATA(t154) = t6.
          t153 = t154.
          DATA t155 TYPE string.
          DATA t156 TYPE string.
          DATA(t157) = me->conf.
          t156 = t157->zlnt_view_read_sr_b316e3c54933( ).
          t155 = t156.
          DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t158.
          DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t160.
          t159 = t160.
          DATA t161 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          DATA t162 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t162.
          DATA(t163) = t155.
          DATA(t164) = |i|.
          CREATE OBJECT t162 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t163 flags = t164.
          t161 = t162.
          DATA t165 TYPE string.
          DATA t166 TYPE string.
          DATA(t167) = t153.
          t166 = t167->name.
          t165 = t166.
          DATA(t168) = VALUE abap_bool( ).
          DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t169.
          DATA(t170) = abap_true.
          IF t170 = abap_true.
            DATA(t171) = t165.
            DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t172->has = abap_true.
            t172->value = t171.
            t169 = t172.
          ELSE.
            DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t173.
            t169 = t173.
          ENDIF.
          DATA(t174) = t161.
          DATA(t175) = me->conf.
          t168 = zcl_lnt_name_validator=>violates_rule( i_name = t169 i_pattern = t174 i_params_4c59 = t175 ).
          IF t168 = abap_true.
            DATA(t176) = VALUE string( ).
            DATA(t177) = VALUE string( ).
            DATA t178 TYPE string.
            DATA(t179) = t155.
            t178 = t179.
            DATA t180 TYPE string.
            DATA(t181) = t165.
            t180 = t181.
            DATA(t182) = VALUE string( ).
            DATA(t183) = VALUE abap_bool( ).
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t185) = me->conf.
            t184 = t185->zlnt_view_read_sr_ef452f77fd06( ).
            DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t186.
            DATA(t187) = abap_true.
            IF t187 = abap_true.
              DATA(t188) = |required|.
              DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t189->has = abap_true.
              t189->value = t188.
              t186 = t189.
            ELSE.
              DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t190.
              t186 = t190.
            ENDIF.
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
              DATA t193 TYPE string.
              DATA t194 TYPE string.
              DATA t195 TYPE string.
              DATA(t196) = |Method parameter name does not match pattern |.
              DATA(t197) = t178.
              DATA(t198) = strlen( t196 ).
              t195 = |{ t196 }{ t197 }|.
              DATA(t199) = |: |.
              DATA(t200) = strlen( t195 ).
              t194 = |{ t195 }{ t199 }|.
              DATA(t201) = t180.
              DATA(t202) = strlen( t194 ).
              t193 = |{ t194 }{ t201 }|.
              t182 = t193.
            ELSE.
              DATA t203 TYPE string.
              DATA t204 TYPE string.
              DATA t205 TYPE string.
              DATA(t206) = |Method parameter name must not match pattern |.
              DATA(t207) = t178.
              DATA(t208) = strlen( t206 ).
              t205 = |{ t206 }{ t207 }|.
              DATA(t209) = |: |.
              DATA(t210) = strlen( t205 ).
              t204 = |{ t205 }{ t209 }|.
              DATA(t211) = t180.
              DATA(t212) = strlen( t204 ).
              t203 = |{ t204 }{ t211 }|.
              t182 = t203.
            ENDIF.
            t177 = t182.
            t176 = t177.
            DATA t213 TYPE REF TO zcl_lnt_issue.
            CLEAR t213.
            DATA t214 TYPE REF TO zcl_lnt_issue.
            CLEAR t214.
            DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t216) = t153.
            t215 = t216->identifier.
            DATA(t217) = t176.
            DATA(t218) = VALUE string( ).
            DATA t219 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t219.
            DATA t220 TYPE string.
            DATA(t221) = |method_parameter_names|.
            t220 = t221.
            DATA t222 TYPE string.
            DATA(t223) = |Method parameter naming conventions|.
            t222 = t223.
            DATA t224 TYPE string.
            DATA(t225) = |Allows you to enforce a pattern, such as a prefix, for metho|.
            t225 = t225 && |d parameter names|.
            t224 = t225.
            DATA t226 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t226.
            DATA t227 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t227.
            DATA(t228) = abap_true.
            IF t228 = abap_true.
              DATA t229 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t231 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t231.
              t230 = t231.
              DATA(t232) = t230.
              DATA(t233) = |Naming|.
              t232->load( ).
              APPEND t233 TO t232->items.
              t232->save( ).
              DATA(t234) = t230.
              DATA(t235) = |SingleFile|.
              t234->load( ).
              APPEND t235 TO t234->items.
              t234->save( ).
              DATA(t236) = t230.
              t229 = t236.
              t227 = t229.
            ELSE.
              DATA t237 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t237.
              t227 = t237.
            ENDIF.
            t226 = t227.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t239.
            DATA(t240) = abap_true.
            IF t240 = abap_true.
              DATA(t241) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
              t241 = t241 && |G VALUE(name) TYPE string.|.
              DATA(t242) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t242->has = abap_true.
              t242->value = t241.
              t239 = t242.
            ELSE.
              DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t243.
              t239 = t243.
            ENDIF.
            t238 = t239.
            DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t244.
            DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t245.
            DATA(t246) = abap_true.
            IF t246 = abap_true.
              DATA(t247) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
              t247 = t247 && |NING VALUE(rv_name) TYPE string.|.
              DATA(t248) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t248->has = abap_true.
              t248->value = t247.
              t245 = t248.
            ELSE.
              DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t249.
              t245 = t249.
            ENDIF.
            t244 = t245.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t251.
            t250 = t251.
            DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t253.
            t252 = t253.
            DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t255.
            t254 = t255.
            t219 = NEW zcl_lnt_irule_metadata( i_key = t220 i_title = t222 i_short_description = t224 i_bad_example = t238 i_good_example = t244 i_extended_information = t250 i_tags = t226 i_pragma = t252 i_pseudo_comment = t254 ).
            CREATE OBJECT t219->zlnt_view_ownkeys_b0e8086400eb.
            t219->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t256.
            IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t256 ).
            ENDIF.
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
            DATA(t262) = |key|.
            DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t263.
            IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t262 p1 = t263 ).
            ENDIF.
            DATA(t264) = |title|.
            DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t265.
            IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
            ENDIF.
            DATA(t266) = |shortDescription|.
            DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t267.
            IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
            ENDIF.
            DATA(t268) = |tags|.
            DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t269.
            IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t268 p1 = t269 ).
            ENDIF.
            DATA(t270) = |badExample|.
            DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t271.
            IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t270 p1 = t271 ).
            ENDIF.
            DATA(t272) = |goodExample|.
            DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t273.
            IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t272 p1 = t273 ).
            ENDIF.
            t218 = t219->key.
            DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t275) = me->conf.
            t274 = t275->zlnt_view_read_sr_15c06369f827( ).
            DATA t276 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t276.
            t214 = zcl_lnt_issue=>at_identifier( i_identifier = t215 i_message_26cb = t217 i_key = t218 i_severity = t274 i_fix = t276 ).
            t213 = t214.
            DATA(t277) = t159.
            DATA(t278) = t213.
            t277->load( ).
            APPEND t278 TO t277->items.
            t277->save( ).
          ENDIF.
          DATA(t279) = t159.
          t158 = t279.
          t152 = t158.
          t150 = t151->concat( p0 = t152 ).
          t2 = t150.
        ELSE.
          DATA t280 TYPE abap_bool.
          DATA(t281) = t11.
          DATA(t282) = |changing|.
          t280 = xsdbool( t281 = t282 ).
          IF t280 = abap_true.
            DATA t283 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t283.
            DATA(t284) = t2.
            DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t285.
            DATA t286 TYPE REF TO zcl_lnt_info_method_parameter.
            DATA(t287) = t6.
            t286 = t287.
            DATA t288 TYPE string.
            DATA t289 TYPE string.
            DATA(t290) = me->conf.
            t289 = t290->zlnt_view_read_sr_14784b935524( ).
            t288 = t289.
            DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t291.
            DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t293.
            t292 = t293.
            DATA t294 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            DATA t295 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t295.
            DATA(t296) = t288.
            DATA(t297) = |i|.
            CREATE OBJECT t295 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t296 flags = t297.
            t294 = t295.
            DATA t298 TYPE string.
            DATA t299 TYPE string.
            DATA(t300) = t286.
            t299 = t300->name.
            t298 = t299.
            DATA(t301) = VALUE abap_bool( ).
            DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t302.
            DATA(t303) = abap_true.
            IF t303 = abap_true.
              DATA(t304) = t298.
              DATA(t305) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t305->has = abap_true.
              t305->value = t304.
              t302 = t305.
            ELSE.
              DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t306.
              t302 = t306.
            ENDIF.
            DATA(t307) = t294.
            DATA(t308) = me->conf.
            t301 = zcl_lnt_name_validator=>violates_rule( i_name = t302 i_pattern = t307 i_params_4c59 = t308 ).
            IF t301 = abap_true.
              DATA(t309) = VALUE string( ).
              DATA(t310) = VALUE string( ).
              DATA t311 TYPE string.
              DATA(t312) = t288.
              t311 = t312.
              DATA t313 TYPE string.
              DATA(t314) = t298.
              t313 = t314.
              DATA(t315) = VALUE string( ).
              DATA(t316) = VALUE abap_bool( ).
              DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t318) = me->conf.
              t317 = t318->zlnt_view_read_sr_ef452f77fd06( ).
              DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t319.
              DATA(t320) = abap_true.
              IF t320 = abap_true.
                DATA(t321) = |required|.
                DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t322->has = abap_true.
                t322->value = t321.
                t319 = t322.
              ELSE.
                DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t323.
                t319 = t323.
              ENDIF.
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
                DATA t326 TYPE string.
                DATA t327 TYPE string.
                DATA t328 TYPE string.
                DATA(t329) = |Method parameter name does not match pattern |.
                DATA(t330) = t311.
                DATA(t331) = strlen( t329 ).
                t328 = |{ t329 }{ t330 }|.
                DATA(t332) = |: |.
                DATA(t333) = strlen( t328 ).
                t327 = |{ t328 }{ t332 }|.
                DATA(t334) = t313.
                DATA(t335) = strlen( t327 ).
                t326 = |{ t327 }{ t334 }|.
                t315 = t326.
              ELSE.
                DATA t336 TYPE string.
                DATA t337 TYPE string.
                DATA t338 TYPE string.
                DATA(t339) = |Method parameter name must not match pattern |.
                DATA(t340) = t311.
                DATA(t341) = strlen( t339 ).
                t338 = |{ t339 }{ t340 }|.
                DATA(t342) = |: |.
                DATA(t343) = strlen( t338 ).
                t337 = |{ t338 }{ t342 }|.
                DATA(t344) = t313.
                DATA(t345) = strlen( t337 ).
                t336 = |{ t337 }{ t344 }|.
                t315 = t336.
              ENDIF.
              t310 = t315.
              t309 = t310.
              DATA t346 TYPE REF TO zcl_lnt_issue.
              CLEAR t346.
              DATA t347 TYPE REF TO zcl_lnt_issue.
              CLEAR t347.
              DATA t348 TYPE REF TO zcl_lnt_fi_identifier.
              DATA(t349) = t286.
              t348 = t349->identifier.
              DATA(t350) = t309.
              DATA(t351) = VALUE string( ).
              DATA t352 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t352.
              DATA t353 TYPE string.
              DATA(t354) = |method_parameter_names|.
              t353 = t354.
              DATA t355 TYPE string.
              DATA(t356) = |Method parameter naming conventions|.
              t355 = t356.
              DATA t357 TYPE string.
              DATA(t358) = |Allows you to enforce a pattern, such as a prefix, for metho|.
              t358 = t358 && |d parameter names|.
              t357 = t358.
              DATA t359 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t359.
              DATA t360 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t360.
              DATA(t361) = abap_true.
              IF t361 = abap_true.
                DATA t362 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t363 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t364 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t364.
                t363 = t364.
                DATA(t365) = t363.
                DATA(t366) = |Naming|.
                t365->load( ).
                APPEND t366 TO t365->items.
                t365->save( ).
                DATA(t367) = t363.
                DATA(t368) = |SingleFile|.
                t367->load( ).
                APPEND t368 TO t367->items.
                t367->save( ).
                DATA(t369) = t363.
                t362 = t369.
                t360 = t362.
              ELSE.
                DATA t370 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t370.
                t360 = t370.
              ENDIF.
              t359 = t360.
              DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t371.
              DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t372.
              DATA(t373) = abap_true.
              IF t373 = abap_true.
                DATA(t374) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
                t374 = t374 && |G VALUE(name) TYPE string.|.
                DATA(t375) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t375->has = abap_true.
                t375->value = t374.
                t372 = t375.
              ELSE.
                DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t376.
                t372 = t376.
              ENDIF.
              t371 = t372.
              DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t377.
              DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t378.
              DATA(t379) = abap_true.
              IF t379 = abap_true.
                DATA(t380) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
                t380 = t380 && |NING VALUE(rv_name) TYPE string.|.
                DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t381->has = abap_true.
                t381->value = t380.
                t378 = t381.
              ELSE.
                DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t382.
                t378 = t382.
              ENDIF.
              t377 = t378.
              DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t384.
              t383 = t384.
              DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t386.
              t385 = t386.
              DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t388.
              t387 = t388.
              t352 = NEW zcl_lnt_irule_metadata( i_key = t353 i_title = t355 i_short_description = t357 i_bad_example = t371 i_good_example = t377 i_extended_information = t383 i_tags = t359 i_pragma = t385 i_pseudo_comment = t387 ).
              CREATE OBJECT t352->zlnt_view_ownkeys_b0e8086400eb.
              t352->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t389.
              IF t352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t389 ).
              ENDIF.
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
              DATA(t395) = |key|.
              DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t396.
              IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t395 p1 = t396 ).
              ENDIF.
              DATA(t397) = |title|.
              DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t398.
              IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t397 p1 = t398 ).
              ENDIF.
              DATA(t399) = |shortDescription|.
              DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t400.
              IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t399 p1 = t400 ).
              ENDIF.
              DATA(t401) = |tags|.
              DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t402.
              IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t401 p1 = t402 ).
              ENDIF.
              DATA(t403) = |badExample|.
              DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t404.
              IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t403 p1 = t404 ).
              ENDIF.
              DATA(t405) = |goodExample|.
              DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t406.
              IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t405 p1 = t406 ).
              ENDIF.
              t351 = t352->key.
              DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t408) = me->conf.
              t407 = t408->zlnt_view_read_sr_15c06369f827( ).
              DATA t409 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t409.
              t347 = zcl_lnt_issue=>at_identifier( i_identifier = t348 i_message_26cb = t350 i_key = t351 i_severity = t407 i_fix = t409 ).
              t346 = t347.
              DATA(t410) = t292.
              DATA(t411) = t346.
              t410->load( ).
              APPEND t411 TO t410->items.
              t410->save( ).
            ENDIF.
            DATA(t412) = t292.
            t291 = t412.
            t285 = t291.
            t283 = t284->concat( p0 = t285 ).
            t2 = t283.
          ELSE.
            DATA t413 TYPE abap_bool.
            DATA(t414) = t11.
            DATA(t415) = |returning|.
            t413 = xsdbool( t414 = t415 ).
            IF t413 = abap_true.
              DATA t416 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t416.
              DATA(t417) = t2.
              DATA t418 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t418.
              DATA t419 TYPE REF TO zcl_lnt_info_method_parameter.
              DATA(t420) = t6.
              t419 = t420.
              DATA t421 TYPE string.
              DATA t422 TYPE string.
              DATA(t423) = me->conf.
              t422 = t423->zlnt_view_read_sr_c2b9ba314ce4( ).
              t421 = t422.
              DATA t424 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t424.
              DATA t425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t426.
              t425 = t426.
              DATA t427 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
              DATA t428 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
              CLEAR t428.
              DATA(t429) = t421.
              DATA(t430) = |i|.
              CREATE OBJECT t428 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t429 flags = t430.
              t427 = t428.
              DATA t431 TYPE string.
              DATA t432 TYPE string.
              DATA(t433) = t419.
              t432 = t433->name.
              t431 = t432.
              DATA(t434) = VALUE abap_bool( ).
              DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t435.
              DATA(t436) = abap_true.
              IF t436 = abap_true.
                DATA(t437) = t431.
                DATA(t438) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t438->has = abap_true.
                t438->value = t437.
                t435 = t438.
              ELSE.
                DATA t439 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t439.
                t435 = t439.
              ENDIF.
              DATA(t440) = t427.
              DATA(t441) = me->conf.
              t434 = zcl_lnt_name_validator=>violates_rule( i_name = t435 i_pattern = t440 i_params_4c59 = t441 ).
              IF t434 = abap_true.
                DATA(t442) = VALUE string( ).
                DATA(t443) = VALUE string( ).
                DATA t444 TYPE string.
                DATA(t445) = t421.
                t444 = t445.
                DATA t446 TYPE string.
                DATA(t447) = t431.
                t446 = t447.
                DATA(t448) = VALUE string( ).
                DATA(t449) = VALUE abap_bool( ).
                DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t451) = me->conf.
                t450 = t451->zlnt_view_read_sr_ef452f77fd06( ).
                DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t452.
                DATA(t453) = abap_true.
                IF t453 = abap_true.
                  DATA(t454) = |required|.
                  DATA(t455) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t455->has = abap_true.
                  t455->value = t454.
                  t452 = t455.
                ELSE.
                  DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t456.
                  t452 = t456.
                ENDIF.
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
                  DATA t459 TYPE string.
                  DATA t460 TYPE string.
                  DATA t461 TYPE string.
                  DATA(t462) = |Method parameter name does not match pattern |.
                  DATA(t463) = t444.
                  DATA(t464) = strlen( t462 ).
                  t461 = |{ t462 }{ t463 }|.
                  DATA(t465) = |: |.
                  DATA(t466) = strlen( t461 ).
                  t460 = |{ t461 }{ t465 }|.
                  DATA(t467) = t446.
                  DATA(t468) = strlen( t460 ).
                  t459 = |{ t460 }{ t467 }|.
                  t448 = t459.
                ELSE.
                  DATA t469 TYPE string.
                  DATA t470 TYPE string.
                  DATA t471 TYPE string.
                  DATA(t472) = |Method parameter name must not match pattern |.
                  DATA(t473) = t444.
                  DATA(t474) = strlen( t472 ).
                  t471 = |{ t472 }{ t473 }|.
                  DATA(t475) = |: |.
                  DATA(t476) = strlen( t471 ).
                  t470 = |{ t471 }{ t475 }|.
                  DATA(t477) = t446.
                  DATA(t478) = strlen( t470 ).
                  t469 = |{ t470 }{ t477 }|.
                  t448 = t469.
                ENDIF.
                t443 = t448.
                t442 = t443.
                DATA t479 TYPE REF TO zcl_lnt_issue.
                CLEAR t479.
                DATA t480 TYPE REF TO zcl_lnt_issue.
                CLEAR t480.
                DATA t481 TYPE REF TO zcl_lnt_fi_identifier.
                DATA(t482) = t419.
                t481 = t482->identifier.
                DATA(t483) = t442.
                DATA(t484) = VALUE string( ).
                DATA t485 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t485.
                DATA t486 TYPE string.
                DATA(t487) = |method_parameter_names|.
                t486 = t487.
                DATA t488 TYPE string.
                DATA(t489) = |Method parameter naming conventions|.
                t488 = t489.
                DATA t490 TYPE string.
                DATA(t491) = |Allows you to enforce a pattern, such as a prefix, for metho|.
                t491 = t491 && |d parameter names|.
                t490 = t491.
                DATA t492 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t492.
                DATA t493 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t493.
                DATA(t494) = abap_true.
                IF t494 = abap_true.
                  DATA t495 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t496 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t497 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CREATE OBJECT t497.
                  t496 = t497.
                  DATA(t498) = t496.
                  DATA(t499) = |Naming|.
                  t498->load( ).
                  APPEND t499 TO t498->items.
                  t498->save( ).
                  DATA(t500) = t496.
                  DATA(t501) = |SingleFile|.
                  t500->load( ).
                  APPEND t501 TO t500->items.
                  t500->save( ).
                  DATA(t502) = t496.
                  t495 = t502.
                  t493 = t495.
                ELSE.
                  DATA t503 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t503.
                  t493 = t503.
                ENDIF.
                t492 = t493.
                DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t504.
                DATA t505 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t505.
                DATA(t506) = abap_true.
                IF t506 = abap_true.
                  DATA(t507) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
                  t507 = t507 && |G VALUE(name) TYPE string.|.
                  DATA(t508) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t508->has = abap_true.
                  t508->value = t507.
                  t505 = t508.
                ELSE.
                  DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t509.
                  t505 = t509.
                ENDIF.
                t504 = t505.
                DATA t510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t510.
                DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t511.
                DATA(t512) = abap_true.
                IF t512 = abap_true.
                  DATA(t513) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
                  t513 = t513 && |NING VALUE(rv_name) TYPE string.|.
                  DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t514->has = abap_true.
                  t514->value = t513.
                  t511 = t514.
                ELSE.
                  DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t515.
                  t511 = t515.
                ENDIF.
                t510 = t511.
                DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t517.
                t516 = t517.
                DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t519.
                t518 = t519.
                DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t521.
                t520 = t521.
                t485 = NEW zcl_lnt_irule_metadata( i_key = t486 i_title = t488 i_short_description = t490 i_bad_example = t504 i_good_example = t510 i_extended_information = t516 i_tags = t492 i_pragma = t518 i_pseudo_comment = t520 ).
                CREATE OBJECT t485->zlnt_view_ownkeys_b0e8086400eb.
                t485->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t522.
                IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t522 ).
                ENDIF.
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
                DATA(t528) = |key|.
                DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t529.
                IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t528 p1 = t529 ).
                ENDIF.
                DATA(t530) = |title|.
                DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t531.
                IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t530 p1 = t531 ).
                ENDIF.
                DATA(t532) = |shortDescription|.
                DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t533.
                IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t532 p1 = t533 ).
                ENDIF.
                DATA(t534) = |tags|.
                DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t535.
                IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t534 p1 = t535 ).
                ENDIF.
                DATA(t536) = |badExample|.
                DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t537.
                IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t536 p1 = t537 ).
                ENDIF.
                DATA(t538) = |goodExample|.
                DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t539.
                IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t538 p1 = t539 ).
                ENDIF.
                t484 = t485->key.
                DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t541) = me->conf.
                t540 = t541->zlnt_view_read_sr_15c06369f827( ).
                DATA t542 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t542.
                t480 = zcl_lnt_issue=>at_identifier( i_identifier = t481 i_message_26cb = t483 i_key = t484 i_severity = t540 i_fix = t542 ).
                t479 = t480.
                DATA(t543) = t425.
                DATA(t544) = t479.
                t543->load( ).
                APPEND t544 TO t543->items.
                t543->save( ).
              ENDIF.
              DATA(t545) = t425.
              t424 = t545.
              t418 = t424.
              t416 = t417->concat( p0 = t418 ).
              t2 = t416.
            ELSE.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t546) = t2.
    result = t546.

  ENDMETHOD.

  METHOD check_parameter.
    DATA(t1) = i_param.
    DATA(t2) = i_expected.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t6.
    DATA(t7) = t2.
    DATA(t8) = |i|.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t7 flags = t8.
    t5 = t6.
    DATA t9 TYPE string.
    DATA t10 TYPE string.
    DATA(t11) = t1.
    t10 = t11->name.
    t9 = t10.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA(t15) = t9.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t15.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      t13 = t17.
    ENDIF.
    DATA(t18) = t5.
    DATA(t19) = me->conf.
    t12 = zcl_lnt_name_validator=>violates_rule( i_name = t13 i_pattern = t18 i_params_4c59 = t19 ).
    IF t12 = abap_true.
      DATA(t20) = VALUE string( ).
      DATA(t21) = VALUE string( ).
      DATA t22 TYPE string.
      DATA(t23) = t2.
      t22 = t23.
      DATA t24 TYPE string.
      DATA(t25) = t9.
      t24 = t25.
      DATA(t26) = VALUE string( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t29) = me->conf.
      t28 = t29->zlnt_view_read_sr_ef452f77fd06( ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = |required|.
        DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t33->has = abap_true.
        t33->value = t32.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        t30 = t34.
      ENDIF.
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
        DATA t37 TYPE string.
        DATA t38 TYPE string.
        DATA t39 TYPE string.
        DATA(t40) = |Method parameter name does not match pattern |.
        DATA(t41) = t22.
        DATA(t42) = strlen( t40 ).
        t39 = |{ t40 }{ t41 }|.
        DATA(t43) = |: |.
        DATA(t44) = strlen( t39 ).
        t38 = |{ t39 }{ t43 }|.
        DATA(t45) = t24.
        DATA(t46) = strlen( t38 ).
        t37 = |{ t38 }{ t45 }|.
        t26 = t37.
      ELSE.
        DATA t47 TYPE string.
        DATA t48 TYPE string.
        DATA t49 TYPE string.
        DATA(t50) = |Method parameter name must not match pattern |.
        DATA(t51) = t22.
        DATA(t52) = strlen( t50 ).
        t49 = |{ t50 }{ t51 }|.
        DATA(t53) = |: |.
        DATA(t54) = strlen( t49 ).
        t48 = |{ t49 }{ t53 }|.
        DATA(t55) = t24.
        DATA(t56) = strlen( t48 ).
        t47 = |{ t48 }{ t55 }|.
        t26 = t47.
      ENDIF.
      t21 = t26.
      t20 = t21.
      DATA t57 TYPE REF TO zcl_lnt_issue.
      CLEAR t57.
      DATA t58 TYPE REF TO zcl_lnt_issue.
      CLEAR t58.
      DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t60) = t1.
      t59 = t60->identifier.
      DATA(t61) = t20.
      DATA(t62) = VALUE string( ).
      DATA t63 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t63.
      DATA t64 TYPE string.
      DATA(t65) = |method_parameter_names|.
      t64 = t65.
      DATA t66 TYPE string.
      DATA(t67) = |Method parameter naming conventions|.
      t66 = t67.
      DATA t68 TYPE string.
      DATA(t69) = |Allows you to enforce a pattern, such as a prefix, for metho|.
      t69 = t69 && |d parameter names|.
      t68 = t69.
      DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t71.
      DATA(t72) = abap_true.
      IF t72 = abap_true.
        DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t75.
        t74 = t75.
        DATA(t76) = t74.
        DATA(t77) = |Naming|.
        t76->load( ).
        APPEND t77 TO t76->items.
        t76->save( ).
        DATA(t78) = t74.
        DATA(t79) = |SingleFile|.
        t78->load( ).
        APPEND t79 TO t78->items.
        t78->save( ).
        DATA(t80) = t74.
        t73 = t80.
        t71 = t73.
      ELSE.
        DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t81.
        t71 = t81.
      ENDIF.
      t70 = t71.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t82.
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t83.
      DATA(t84) = abap_true.
      IF t84 = abap_true.
        DATA(t85) = |METHODS get_name\n  IMPORTING customer TYPE string\n  RETURNIN|.
        t85 = t85 && |G VALUE(name) TYPE string.|.
        DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t86->has = abap_true.
        t86->value = t85.
        t83 = t86.
      ELSE.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        t83 = t87.
      ENDIF.
      t82 = t83.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t88.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t89.
      DATA(t90) = abap_true.
      IF t90 = abap_true.
        DATA(t91) = |METHODS get_name\n  IMPORTING iv_customer TYPE string\n  RETUR|.
        t91 = t91 && |NING VALUE(rv_name) TYPE string.|.
        DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t92->has = abap_true.
        t92->value = t91.
        t89 = t92.
      ELSE.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t93.
        t89 = t93.
      ENDIF.
      t88 = t89.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t95.
      t94 = t95.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      t96 = t97.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      t98 = t99.
      t63 = NEW zcl_lnt_irule_metadata( i_key = t64 i_title = t66 i_short_description = t68 i_bad_example = t82 i_good_example = t88 i_extended_information = t94 i_tags = t70 i_pragma = t96 i_pseudo_comment = t98 ).
      CREATE OBJECT t63->zlnt_view_ownkeys_b0e8086400eb.
      t63->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t100 ).
      ENDIF.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t101 ).
      ENDIF.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t102 ).
      ENDIF.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t103 ).
      ENDIF.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t104 ).
      ENDIF.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t105 ).
      ENDIF.
      CREATE OBJECT t63->zlnt_json_ownkeys_70e5fd461788.
      t63->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t106) = |key|.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
      ENDIF.
      DATA(t108) = |title|.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
      ENDIF.
      DATA(t110) = |shortDescription|.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
      ENDIF.
      DATA(t112) = |tags|.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
      ENDIF.
      DATA(t114) = |badExample|.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
      ENDIF.
      DATA(t116) = |goodExample|.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
      ENDIF.
      t62 = t63->key.
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t119) = me->conf.
      t118 = t119->zlnt_view_read_sr_15c06369f827( ).
      DATA t120 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t120.
      t58 = zcl_lnt_issue=>at_identifier( i_identifier = t59 i_message_26cb = t61 i_key = t62 i_severity = t118 i_fix = t120 ).
      t57 = t58.
      DATA(t121) = t3.
      DATA(t122) = t57.
      t121->load( ).
      APPEND t122 TO t121->items.
      t121->save( ).
    ENDIF.
    DATA(t123) = t3.
    result = t123.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_mthd_prmtr_nms_cnf( me->g_c_i_s_r_mt_pr_nm_ts_mt_pr_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mthd_prmtr_nms_cnf( me->g_c_i_s_r_mt_pr_nm_ts_mt_pr_nm( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_mthd_prmtr_nms_cnf.
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
        t2 = NEW zcl_lnt_mthd_prmtr_nms_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_mt_pr_nm_ts_mt_pr_nm( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_method_parameter_names.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_mt_pr_nm_ts_mt_pr_nm( i_reg_f149 = t3 ).
    result = t2.

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
