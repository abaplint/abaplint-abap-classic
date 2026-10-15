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
    DATA(t1) = NEW zcl_lnt_clss_attrbt_nms_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |class_attribute_names|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Class attributes naming|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Allows you to enforce a pattern, such as a prefix, for class|.
    t7 = t7 && | variable names.|.
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
      DATA(t23) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
      t23 = t23 && |counter TYPE i.\nENDCLASS.|.
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
      DATA(t29) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
      t29 = t29 && |mv_counter TYPE i.\nENDCLASS.|.
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
    DATA(t1) = i_actual.
    DATA(t2) = i_expected.
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
      DATA(t17) = |Class attribute name "|.
      DATA(t18) = t1.
      DATA(t19) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      DATA(t20) = |" does not match pattern |.
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
      DATA(t27) = |Class attribute name "|.
      DATA(t28) = t1.
      DATA(t29) = strlen( t27 ).
      t26 = |{ t27 }{ t28 }|.
      DATA(t30) = |" must not match pattern |.
      DATA(t31) = strlen( t26 ).
      t25 = |{ t26 }{ t30 }|.
      DATA(t32) = t2.
      DATA(t33) = strlen( t25 ).
      t24 = |{ t25 }{ t32 }|.
      t3 = t24.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_r_cl_at_nm_ts_cl_at_nm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_cl_at_nm_ts_cl_at_nm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t8) = me->conf.
    t7 = t8->zlnt_view_read_sr_ef452f77fd06( ).
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t6.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ELSEIF t12->has = abap_false.
      t11 = abap_true.
    ENDIF.
    t5 = t11.
    IF t5 = abap_true.
      DATA(t13) = me->conf.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA(t16) = |required|.
        DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t17->has = abap_true.
        t17->value = t16.
        t14 = t17.
      ELSE.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        t14 = t18.
      ENDIF.
      t13->zlnt_view_write_s_9ebcbca32e92( p0 = t14 ).
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA t21 TYPE REF TO zcl_lnt_ddic.
    DATA t22 TYPE REF TO zcl_lnt_ddic.
    DATA(t23) = me->reg.
    t22 = NEW zcl_lnt_ddic( i_reg_f149 = t23 ).
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zif_lnt_abap_file_information.
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    DATA(t27) = t1.
    t26 = t27.
    DATA t28 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t29) = t26.
    t28 = t29->info.
    t25 = t28.
    t24 = t25->list_class_definitions( ).
    DATA t30 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t30.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
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
      DATA(t39) = t30.
      t38 = t39->is_local.
      IF t38 IS BOUND.
        IF t38->has = abap_true.
          t37 = xsdbool( t38->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t36 = t37.
      IF t37 = abap_true.
        DATA t40 TYPE abap_bool.
        DATA(t41) = me->conf.
        t40 = t41->zlnt_view_read_sr_f48d79db9126( ).
        t36 = t40.
      ENDIF.
      t35 = t36.
      IF t36 = abap_false.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = t21.
        DATA t45 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t45.
        DATA(t46) = abap_true.
        IF t46 = abap_true.
          DATA(t47) = t30.
          t45 = t47.
        ELSE.
          DATA t48 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t48.
          t45 = t48.
        ENDIF.
        DATA(t49) = t2.
        t43 = t44->is_exception( i_def = t45 i_obj_ac26 = t49 ).
        t42 = t43.
        IF t43 = abap_true.
          DATA t50 TYPE abap_bool.
          DATA(t51) = me->conf.
          t50 = t51->zlnt_view_read_sr_9e03d5ab100a( ).
          t42 = t50.
        ENDIF.
        t35 = t42.
      ENDIF.
      IF t35 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t53) = t19.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t55) = t30.
      t54 = t55->attributes.
      t52 = t53->concat( p0 = t54 ).
      t19 = t52.
    ENDDO.
    DATA t56 TYPE abap_bool.
    DATA t57 TYPE abap_bool.
    DATA(t58) = me->conf.
    t57 = t58->zlnt_view_read_sr_8168a86be8c6( ).
    DATA(t59) = abap_false.
    t56 = xsdbool( t57 = t59 ).
    IF t56 = abap_true.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t61 TYPE REF TO zif_lnt_abap_file_information.
      DATA t62 TYPE REF TO zcl_lnt_abap_file.
      DATA(t63) = t1.
      t62 = t63.
      DATA t64 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t65) = t62.
      t64 = t65->info.
      t61 = t64.
      t60 = t61->list_interface_definitions( ).
      DATA t66 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t66.
      DATA t67 TYPE REF TO object.
      CLEAR t67.
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
        DATA(t74) = t66.
        t73 = t74->is_local.
        IF t73 IS BOUND.
          IF t73->has = abap_true.
            t72 = xsdbool( t73->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t71 = t72.
        IF t72 = abap_true.
          DATA t75 TYPE abap_bool.
          DATA(t76) = me->conf.
          t75 = t76->zlnt_view_read_sr_f48d79db9126( ).
          t71 = t75.
        ENDIF.
        IF t71 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t78) = t19.
        DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t80) = t66.
        t79 = t80->attributes.
        t77 = t78->concat( p0 = t79 ).
        t19 = t77.
      ENDDO.
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    DATA(t83) = abap_true.
    IF t83 = abap_true.
      DATA(t84) = t19.
      t82 = t84.
    ELSE.
      DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t85.
      t82 = t85.
    ENDIF.
    t81 = me->check_attributes( i_attr = t82 ).
    t3 = t81.
    DATA(t86) = t3.
    result = t86.

  ENDMETHOD.

  METHOD check_attributes.
    DATA(t1) = i_attr.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = t1.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_info_attribute.
    CLEAR t14.
    DATA t15 TYPE REF TO object.
    CLEAR t15.
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
      DATA t20 TYPE string.
      DATA(t21) = t14.
      t20 = t21->level.
      t19 = t20.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t19.
      DATA(t24) = |instance|.
      t22 = xsdbool( t23 = t24 ).
      IF t22 = abap_true.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t25.
        DATA(t26) = t10.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t27.
        DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t29 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t30) = t14.
        t29 = t30->identifier.
        t28 = t29.
        DATA t31 TYPE string.
        DATA t32 TYPE string.
        DATA(t33) = me->conf.
        t32 = t33->zlnt_view_read_sr_e8cbf985871b( ).
        t31 = t32.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t34.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t36.
        t35 = t36.
        DATA t37 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA t38 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t38.
        DATA(t39) = t31.
        DATA(t40) = |i|.
        CREATE OBJECT t38 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t39 flags = t40.
        t37 = t38.
        DATA(t41) = VALUE string( ).
        DATA(t42) = VALUE string( ).
        DATA t43 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t44) = t28.
        t43 = t44.
        DATA(t45) = VALUE string( ).
        DATA t46 TYPE string.
        DATA t47 TYPE string.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        DATA t49 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t50) = t43.
        t49 = t50->token.
        t48 = t49.
        DATA t51 TYPE string.
        DATA(t52) = t48.
        t51 = t52->str.
        t47 = t51.
        t46 = t47.
        DATA(t53) = VALUE abap_bool( ).
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
          CLEAR t54.
        ELSE.
          IF t57 > t58 - t56.
            t57 = t58 - t56.
          ENDIF.
          t54 = t55+t56(t57).
        ENDIF.
        DATA(t59) = |!|.
        t53 = xsdbool( t54 = t59 ).
        IF t53 = abap_true.
          DATA(t60) = VALUE string( ).
          DATA t61 TYPE string.
          DATA(t62) = t46.
          t61 = t62.
          DATA(t63) = VALUE string( ).
          DATA(t64) = t61.
          DATA(t65) = 1.
          DATA t66 TYPE i.
          DATA(t67) = t61.
          DATA(t68) = strlen( t67 ).
          t66 = t68.
          DATA(t69) = strlen( t64 ).
          IF t65 < 0.
            t65 = t65 + t69.
            IF t65 < 0.
              t65 = 0.
            ENDIF.
          ENDIF.
          IF t65 > t69 OR t66 <= 0.
            CLEAR t63.
          ELSE.
            IF t66 > t69 - t65.
              t66 = t69 - t65.
            ENDIF.
            t63 = t64+t65(t66).
          ENDIF.
          t60 = t63.
          t46 = t60.
        ENDIF.
        DATA(t70) = t46.
        t45 = t70.
        t42 = t45.
        t41 = t42.
        DATA(t71) = VALUE abap_bool( ).
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA(t73) = abap_true.
        IF t73 = abap_true.
          DATA(t74) = t41.
          DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t75->has = abap_true.
          t75->value = t74.
          t72 = t75.
        ELSE.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          t72 = t76.
        ENDIF.
        DATA(t77) = t37.
        DATA(t78) = me->conf.
        t71 = zcl_lnt_name_validator=>violates_rule( i_name = t72 i_pattern = t77 i_params_4c59 = t78 ).
        IF t71 = abap_true.
          DATA t79 TYPE REF TO zcl_lnt_issue.
          CLEAR t79.
          DATA t80 TYPE REF TO zcl_lnt_issue.
          CLEAR t80.
          DATA(t81) = t28.
          DATA(t82) = VALUE string( ).
          DATA t83 TYPE string.
          DATA(t84) = t41.
          t83 = t84.
          DATA t85 TYPE string.
          DATA(t86) = t31.
          t85 = t86.
          DATA(t87) = VALUE string( ).
          DATA(t88) = VALUE abap_bool( ).
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t90) = me->conf.
          t89 = t90->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA(t92) = abap_true.
          IF t92 = abap_true.
            DATA(t93) = |required|.
            DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t94->has = abap_true.
            t94->value = t93.
            t91 = t94.
          ELSE.
            DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t95.
            t91 = t95.
          ENDIF.
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
            DATA t98 TYPE string.
            DATA t99 TYPE string.
            DATA t100 TYPE string.
            DATA(t101) = |Class attribute name "|.
            DATA(t102) = t83.
            DATA(t103) = strlen( t101 ).
            t100 = |{ t101 }{ t102 }|.
            DATA(t104) = |" does not match pattern |.
            DATA(t105) = strlen( t100 ).
            t99 = |{ t100 }{ t104 }|.
            DATA(t106) = t85.
            DATA(t107) = strlen( t99 ).
            t98 = |{ t99 }{ t106 }|.
            t87 = t98.
          ELSE.
            DATA t108 TYPE string.
            DATA t109 TYPE string.
            DATA t110 TYPE string.
            DATA(t111) = |Class attribute name "|.
            DATA(t112) = t83.
            DATA(t113) = strlen( t111 ).
            t110 = |{ t111 }{ t112 }|.
            DATA(t114) = |" must not match pattern |.
            DATA(t115) = strlen( t110 ).
            t109 = |{ t110 }{ t114 }|.
            DATA(t116) = t85.
            DATA(t117) = strlen( t109 ).
            t108 = |{ t109 }{ t116 }|.
            t87 = t108.
          ENDIF.
          t82 = t87.
          DATA(t118) = VALUE string( ).
          DATA t119 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t119.
          DATA t120 TYPE string.
          DATA(t121) = |class_attribute_names|.
          t120 = t121.
          DATA t122 TYPE string.
          DATA(t123) = |Class attributes naming|.
          t122 = t123.
          DATA t124 TYPE string.
          DATA(t125) = |Allows you to enforce a pattern, such as a prefix, for class|.
          t125 = t125 && | variable names.|.
          t124 = t125.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t126.
          DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t127.
          DATA(t128) = abap_true.
          IF t128 = abap_true.
            DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t131.
            t130 = t131.
            DATA(t132) = t130.
            DATA(t133) = |Naming|.
            t132->load( ).
            APPEND t133 TO t132->items.
            t132->save( ).
            DATA(t134) = t130.
            DATA(t135) = |SingleFile|.
            t134->load( ).
            APPEND t135 TO t134->items.
            t134->save( ).
            DATA(t136) = t130.
            t129 = t136.
            t127 = t129.
          ELSE.
            DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t137.
            t127 = t137.
          ENDIF.
          t126 = t127.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          DATA(t140) = abap_true.
          IF t140 = abap_true.
            DATA(t141) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
            t141 = t141 && |counter TYPE i.\nENDCLASS.|.
            DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t142->has = abap_true.
            t142->value = t141.
            t139 = t142.
          ELSE.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t143.
            t139 = t143.
          ENDIF.
          t138 = t139.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          DATA(t146) = abap_true.
          IF t146 = abap_true.
            DATA(t147) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
            t147 = t147 && |mv_counter TYPE i.\nENDCLASS.|.
            DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t148->has = abap_true.
            t148->value = t147.
            t145 = t148.
          ELSE.
            DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t149.
            t145 = t149.
          ENDIF.
          t144 = t145.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          t150 = t151.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t153.
          t152 = t153.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t155.
          t154 = t155.
          t119 = NEW zcl_lnt_irule_metadata( i_key = t120 i_title = t122 i_short_description = t124 i_bad_example = t138 i_good_example = t144 i_extended_information = t150 i_tags = t126 i_pragma = t152 i_pseudo_comment = t154 ).
          CREATE OBJECT t119->zlnt_view_ownkeys_b0e8086400eb.
          t119->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t156 ).
          ENDIF.
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
          DATA(t162) = |key|.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
          ENDIF.
          DATA(t164) = |title|.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
          ENDIF.
          DATA(t166) = |shortDescription|.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
          ENDIF.
          DATA(t168) = |tags|.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
          ENDIF.
          DATA(t170) = |badExample|.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
          ENDIF.
          DATA(t172) = |goodExample|.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
          ENDIF.
          t118 = t119->key.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t175) = me->conf.
          t174 = t175->zlnt_view_read_sr_15c06369f827( ).
          DATA t176 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t176.
          t80 = zcl_lnt_issue=>at_identifier( i_identifier = t81 i_message_26cb = t82 i_key = t118 i_severity = t174 i_fix = t176 ).
          t79 = t80.
          DATA(t177) = t35.
          DATA(t178) = t79.
          t177->load( ).
          APPEND t178 TO t177->items.
          t177->save( ).
        ENDIF.
        DATA(t179) = t35.
        t34 = t179.
        t27 = t34.
        t25 = t26->concat( p0 = t27 ).
        t10 = t25.
      ELSE.
        DATA t180 TYPE abap_bool.
        DATA(t181) = t19.
        DATA(t182) = |static|.
        t180 = xsdbool( t181 = t182 ).
        IF t180 = abap_true.
          DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t183.
          DATA(t184) = t10.
          DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t185.
          DATA t186 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t187 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t188) = t14.
          t187 = t188->identifier.
          t186 = t187.
          DATA t189 TYPE string.
          DATA t190 TYPE string.
          DATA(t191) = me->conf.
          t190 = t191->zlnt_view_read_sr_341955304f75( ).
          t189 = t190.
          DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t192.
          DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t194.
          t193 = t194.
          DATA t195 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          DATA t196 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t196.
          DATA(t197) = t189.
          DATA(t198) = |i|.
          CREATE OBJECT t196 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t197 flags = t198.
          t195 = t196.
          DATA(t199) = VALUE string( ).
          DATA(t200) = VALUE string( ).
          DATA t201 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t202) = t186.
          t201 = t202.
          DATA(t203) = VALUE string( ).
          DATA t204 TYPE string.
          DATA t205 TYPE string.
          DATA t206 TYPE REF TO zcl_lnt_abstract_token.
          DATA t207 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t208) = t201.
          t207 = t208->token.
          t206 = t207.
          DATA t209 TYPE string.
          DATA(t210) = t206.
          t209 = t210->str.
          t205 = t209.
          t204 = t205.
          DATA(t211) = VALUE abap_bool( ).
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
            CLEAR t212.
          ELSE.
            IF t215 > t216 - t214.
              t215 = t216 - t214.
            ENDIF.
            t212 = t213+t214(t215).
          ENDIF.
          DATA(t217) = |!|.
          t211 = xsdbool( t212 = t217 ).
          IF t211 = abap_true.
            DATA(t218) = VALUE string( ).
            DATA t219 TYPE string.
            DATA(t220) = t204.
            t219 = t220.
            DATA(t221) = VALUE string( ).
            DATA(t222) = t219.
            DATA(t223) = 1.
            DATA t224 TYPE i.
            DATA(t225) = t219.
            DATA(t226) = strlen( t225 ).
            t224 = t226.
            DATA(t227) = strlen( t222 ).
            IF t223 < 0.
              t223 = t223 + t227.
              IF t223 < 0.
                t223 = 0.
              ENDIF.
            ENDIF.
            IF t223 > t227 OR t224 <= 0.
              CLEAR t221.
            ELSE.
              IF t224 > t227 - t223.
                t224 = t227 - t223.
              ENDIF.
              t221 = t222+t223(t224).
            ENDIF.
            t218 = t221.
            t204 = t218.
          ENDIF.
          DATA(t228) = t204.
          t203 = t228.
          t200 = t203.
          t199 = t200.
          DATA(t229) = VALUE abap_bool( ).
          DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t230.
          DATA(t231) = abap_true.
          IF t231 = abap_true.
            DATA(t232) = t199.
            DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t233->has = abap_true.
            t233->value = t232.
            t230 = t233.
          ELSE.
            DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t234.
            t230 = t234.
          ENDIF.
          DATA(t235) = t195.
          DATA(t236) = me->conf.
          t229 = zcl_lnt_name_validator=>violates_rule( i_name = t230 i_pattern = t235 i_params_4c59 = t236 ).
          IF t229 = abap_true.
            DATA t237 TYPE REF TO zcl_lnt_issue.
            CLEAR t237.
            DATA t238 TYPE REF TO zcl_lnt_issue.
            CLEAR t238.
            DATA(t239) = t186.
            DATA(t240) = VALUE string( ).
            DATA t241 TYPE string.
            DATA(t242) = t199.
            t241 = t242.
            DATA t243 TYPE string.
            DATA(t244) = t189.
            t243 = t244.
            DATA(t245) = VALUE string( ).
            DATA(t246) = VALUE abap_bool( ).
            DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t248) = me->conf.
            t247 = t248->zlnt_view_read_sr_ef452f77fd06( ).
            DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t249.
            DATA(t250) = abap_true.
            IF t250 = abap_true.
              DATA(t251) = |required|.
              DATA(t252) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t252->has = abap_true.
              t252->value = t251.
              t249 = t252.
            ELSE.
              DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t253.
              t249 = t253.
            ENDIF.
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
              DATA t256 TYPE string.
              DATA t257 TYPE string.
              DATA t258 TYPE string.
              DATA(t259) = |Class attribute name "|.
              DATA(t260) = t241.
              DATA(t261) = strlen( t259 ).
              t258 = |{ t259 }{ t260 }|.
              DATA(t262) = |" does not match pattern |.
              DATA(t263) = strlen( t258 ).
              t257 = |{ t258 }{ t262 }|.
              DATA(t264) = t243.
              DATA(t265) = strlen( t257 ).
              t256 = |{ t257 }{ t264 }|.
              t245 = t256.
            ELSE.
              DATA t266 TYPE string.
              DATA t267 TYPE string.
              DATA t268 TYPE string.
              DATA(t269) = |Class attribute name "|.
              DATA(t270) = t241.
              DATA(t271) = strlen( t269 ).
              t268 = |{ t269 }{ t270 }|.
              DATA(t272) = |" must not match pattern |.
              DATA(t273) = strlen( t268 ).
              t267 = |{ t268 }{ t272 }|.
              DATA(t274) = t243.
              DATA(t275) = strlen( t267 ).
              t266 = |{ t267 }{ t274 }|.
              t245 = t266.
            ENDIF.
            t240 = t245.
            DATA(t276) = VALUE string( ).
            DATA t277 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t277.
            DATA t278 TYPE string.
            DATA(t279) = |class_attribute_names|.
            t278 = t279.
            DATA t280 TYPE string.
            DATA(t281) = |Class attributes naming|.
            t280 = t281.
            DATA t282 TYPE string.
            DATA(t283) = |Allows you to enforce a pattern, such as a prefix, for class|.
            t283 = t283 && | variable names.|.
            t282 = t283.
            DATA t284 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t284.
            DATA t285 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t285.
            DATA(t286) = abap_true.
            IF t286 = abap_true.
              DATA t287 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t288 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t289 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t289.
              t288 = t289.
              DATA(t290) = t288.
              DATA(t291) = |Naming|.
              t290->load( ).
              APPEND t291 TO t290->items.
              t290->save( ).
              DATA(t292) = t288.
              DATA(t293) = |SingleFile|.
              t292->load( ).
              APPEND t293 TO t292->items.
              t292->save( ).
              DATA(t294) = t288.
              t287 = t294.
              t285 = t287.
            ELSE.
              DATA t295 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t295.
              t285 = t295.
            ENDIF.
            t284 = t285.
            DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t296.
            DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t297.
            DATA(t298) = abap_true.
            IF t298 = abap_true.
              DATA(t299) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
              t299 = t299 && |counter TYPE i.\nENDCLASS.|.
              DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t300->has = abap_true.
              t300->value = t299.
              t297 = t300.
            ELSE.
              DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t301.
              t297 = t301.
            ENDIF.
            t296 = t297.
            DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t302.
            DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t303.
            DATA(t304) = abap_true.
            IF t304 = abap_true.
              DATA(t305) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
              t305 = t305 && |mv_counter TYPE i.\nENDCLASS.|.
              DATA(t306) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t306->has = abap_true.
              t306->value = t305.
              t303 = t306.
            ELSE.
              DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t307.
              t303 = t307.
            ENDIF.
            t302 = t303.
            DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t309.
            t308 = t309.
            DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t311.
            t310 = t311.
            DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t313.
            t312 = t313.
            t277 = NEW zcl_lnt_irule_metadata( i_key = t278 i_title = t280 i_short_description = t282 i_bad_example = t296 i_good_example = t302 i_extended_information = t308 i_tags = t284 i_pragma = t310 i_pseudo_comment = t312 ).
            CREATE OBJECT t277->zlnt_view_ownkeys_b0e8086400eb.
            t277->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t314.
            IF t277->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t277->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t314 ).
            ENDIF.
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
            DATA(t320) = |key|.
            DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t321.
            IF t277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = t320 p1 = t321 ).
            ENDIF.
            DATA(t322) = |title|.
            DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t323.
            IF t277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
            ENDIF.
            DATA(t324) = |shortDescription|.
            DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t325.
            IF t277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = t324 p1 = t325 ).
            ENDIF.
            DATA(t326) = |tags|.
            DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t327.
            IF t277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = t326 p1 = t327 ).
            ENDIF.
            DATA(t328) = |badExample|.
            DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t329.
            IF t277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
            ENDIF.
            DATA(t330) = |goodExample|.
            DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t331.
            IF t277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t277->zlnt_json_ownkeys_70e5fd461788->put( p0 = t330 p1 = t331 ).
            ENDIF.
            t276 = t277->key.
            DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t333) = me->conf.
            t332 = t333->zlnt_view_read_sr_15c06369f827( ).
            DATA t334 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t334.
            t238 = zcl_lnt_issue=>at_identifier( i_identifier = t239 i_message_26cb = t240 i_key = t276 i_severity = t332 i_fix = t334 ).
            t237 = t238.
            DATA(t335) = t193.
            DATA(t336) = t237.
            t335->load( ).
            APPEND t336 TO t335->items.
            t335->save( ).
          ENDIF.
          DATA(t337) = t193.
          t192 = t337.
          t185 = t192.
          t183 = t184->concat( p0 = t185 ).
          t10 = t183.
        ELSE.
          DATA t338 TYPE abap_bool.
          DATA(t339) = t19.
          DATA(t340) = |constant|.
          t338 = xsdbool( t339 = t340 ).
          IF t338 = abap_true.
            DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t341.
            DATA(t342) = t10.
            DATA t343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t343.
            DATA t344 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t345 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t346) = t14.
            t345 = t346->identifier.
            t344 = t345.
            DATA t347 TYPE string.
            DATA t348 TYPE string.
            DATA(t349) = me->conf.
            t348 = t349->zlnt_view_read_sr_2dc0cab76d28( ).
            t347 = t348.
            DATA t350 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t350.
            DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t352.
            t351 = t352.
            DATA t353 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            DATA t354 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t354.
            DATA(t355) = t347.
            DATA(t356) = |i|.
            CREATE OBJECT t354 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t355 flags = t356.
            t353 = t354.
            DATA(t357) = VALUE string( ).
            DATA(t358) = VALUE string( ).
            DATA t359 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t360) = t344.
            t359 = t360.
            DATA(t361) = VALUE string( ).
            DATA t362 TYPE string.
            DATA t363 TYPE string.
            DATA t364 TYPE REF TO zcl_lnt_abstract_token.
            DATA t365 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t366) = t359.
            t365 = t366->token.
            t364 = t365.
            DATA t367 TYPE string.
            DATA(t368) = t364.
            t367 = t368->str.
            t363 = t367.
            t362 = t363.
            DATA(t369) = VALUE abap_bool( ).
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
              CLEAR t370.
            ELSE.
              IF t373 > t374 - t372.
                t373 = t374 - t372.
              ENDIF.
              t370 = t371+t372(t373).
            ENDIF.
            DATA(t375) = |!|.
            t369 = xsdbool( t370 = t375 ).
            IF t369 = abap_true.
              DATA(t376) = VALUE string( ).
              DATA t377 TYPE string.
              DATA(t378) = t362.
              t377 = t378.
              DATA(t379) = VALUE string( ).
              DATA(t380) = t377.
              DATA(t381) = 1.
              DATA t382 TYPE i.
              DATA(t383) = t377.
              DATA(t384) = strlen( t383 ).
              t382 = t384.
              DATA(t385) = strlen( t380 ).
              IF t381 < 0.
                t381 = t381 + t385.
                IF t381 < 0.
                  t381 = 0.
                ENDIF.
              ENDIF.
              IF t381 > t385 OR t382 <= 0.
                CLEAR t379.
              ELSE.
                IF t382 > t385 - t381.
                  t382 = t385 - t381.
                ENDIF.
                t379 = t380+t381(t382).
              ENDIF.
              t376 = t379.
              t362 = t376.
            ENDIF.
            DATA(t386) = t362.
            t361 = t386.
            t358 = t361.
            t357 = t358.
            DATA(t387) = VALUE abap_bool( ).
            DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t388.
            DATA(t389) = abap_true.
            IF t389 = abap_true.
              DATA(t390) = t357.
              DATA(t391) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t391->has = abap_true.
              t391->value = t390.
              t388 = t391.
            ELSE.
              DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t392.
              t388 = t392.
            ENDIF.
            DATA(t393) = t353.
            DATA(t394) = me->conf.
            t387 = zcl_lnt_name_validator=>violates_rule( i_name = t388 i_pattern = t393 i_params_4c59 = t394 ).
            IF t387 = abap_true.
              DATA t395 TYPE REF TO zcl_lnt_issue.
              CLEAR t395.
              DATA t396 TYPE REF TO zcl_lnt_issue.
              CLEAR t396.
              DATA(t397) = t344.
              DATA(t398) = VALUE string( ).
              DATA t399 TYPE string.
              DATA(t400) = t357.
              t399 = t400.
              DATA t401 TYPE string.
              DATA(t402) = t347.
              t401 = t402.
              DATA(t403) = VALUE string( ).
              DATA(t404) = VALUE abap_bool( ).
              DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t406) = me->conf.
              t405 = t406->zlnt_view_read_sr_ef452f77fd06( ).
              DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t407.
              DATA(t408) = abap_true.
              IF t408 = abap_true.
                DATA(t409) = |required|.
                DATA(t410) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t410->has = abap_true.
                t410->value = t409.
                t407 = t410.
              ELSE.
                DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t411.
                t407 = t411.
              ENDIF.
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
                DATA t414 TYPE string.
                DATA t415 TYPE string.
                DATA t416 TYPE string.
                DATA(t417) = |Class attribute name "|.
                DATA(t418) = t399.
                DATA(t419) = strlen( t417 ).
                t416 = |{ t417 }{ t418 }|.
                DATA(t420) = |" does not match pattern |.
                DATA(t421) = strlen( t416 ).
                t415 = |{ t416 }{ t420 }|.
                DATA(t422) = t401.
                DATA(t423) = strlen( t415 ).
                t414 = |{ t415 }{ t422 }|.
                t403 = t414.
              ELSE.
                DATA t424 TYPE string.
                DATA t425 TYPE string.
                DATA t426 TYPE string.
                DATA(t427) = |Class attribute name "|.
                DATA(t428) = t399.
                DATA(t429) = strlen( t427 ).
                t426 = |{ t427 }{ t428 }|.
                DATA(t430) = |" must not match pattern |.
                DATA(t431) = strlen( t426 ).
                t425 = |{ t426 }{ t430 }|.
                DATA(t432) = t401.
                DATA(t433) = strlen( t425 ).
                t424 = |{ t425 }{ t432 }|.
                t403 = t424.
              ENDIF.
              t398 = t403.
              DATA(t434) = VALUE string( ).
              DATA t435 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t435.
              DATA t436 TYPE string.
              DATA(t437) = |class_attribute_names|.
              t436 = t437.
              DATA t438 TYPE string.
              DATA(t439) = |Class attributes naming|.
              t438 = t439.
              DATA t440 TYPE string.
              DATA(t441) = |Allows you to enforce a pattern, such as a prefix, for class|.
              t441 = t441 && | variable names.|.
              t440 = t441.
              DATA t442 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t442.
              DATA t443 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t443.
              DATA(t444) = abap_true.
              IF t444 = abap_true.
                DATA t445 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t446 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t447 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t447.
                t446 = t447.
                DATA(t448) = t446.
                DATA(t449) = |Naming|.
                t448->load( ).
                APPEND t449 TO t448->items.
                t448->save( ).
                DATA(t450) = t446.
                DATA(t451) = |SingleFile|.
                t450->load( ).
                APPEND t451 TO t450->items.
                t450->save( ).
                DATA(t452) = t446.
                t445 = t452.
                t443 = t445.
              ELSE.
                DATA t453 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t453.
                t443 = t453.
              ENDIF.
              t442 = t443.
              DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t454.
              DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t455.
              DATA(t456) = abap_true.
              IF t456 = abap_true.
                DATA(t457) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
                t457 = t457 && |counter TYPE i.\nENDCLASS.|.
                DATA(t458) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t458->has = abap_true.
                t458->value = t457.
                t455 = t458.
              ELSE.
                DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t459.
                t455 = t459.
              ENDIF.
              t454 = t455.
              DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t460.
              DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t461.
              DATA(t462) = abap_true.
              IF t462 = abap_true.
                DATA(t463) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
                t463 = t463 && |mv_counter TYPE i.\nENDCLASS.|.
                DATA(t464) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t464->has = abap_true.
                t464->value = t463.
                t461 = t464.
              ELSE.
                DATA t465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t465.
                t461 = t465.
              ENDIF.
              t460 = t461.
              DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t467.
              t466 = t467.
              DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t469.
              t468 = t469.
              DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t471.
              t470 = t471.
              t435 = NEW zcl_lnt_irule_metadata( i_key = t436 i_title = t438 i_short_description = t440 i_bad_example = t454 i_good_example = t460 i_extended_information = t466 i_tags = t442 i_pragma = t468 i_pseudo_comment = t470 ).
              CREATE OBJECT t435->zlnt_view_ownkeys_b0e8086400eb.
              t435->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t472.
              IF t435->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t435->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t472 ).
              ENDIF.
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
              DATA(t478) = |key|.
              DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t479.
              IF t435->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = t478 p1 = t479 ).
              ENDIF.
              DATA(t480) = |title|.
              DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t481.
              IF t435->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = t480 p1 = t481 ).
              ENDIF.
              DATA(t482) = |shortDescription|.
              DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t483.
              IF t435->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = t482 p1 = t483 ).
              ENDIF.
              DATA(t484) = |tags|.
              DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t485.
              IF t435->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = t484 p1 = t485 ).
              ENDIF.
              DATA(t486) = |badExample|.
              DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t487.
              IF t435->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = t486 p1 = t487 ).
              ENDIF.
              DATA(t488) = |goodExample|.
              DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t489.
              IF t435->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t435->zlnt_json_ownkeys_70e5fd461788->put( p0 = t488 p1 = t489 ).
              ENDIF.
              t434 = t435->key.
              DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t491) = me->conf.
              t490 = t491->zlnt_view_read_sr_15c06369f827( ).
              DATA t492 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t492.
              t396 = zcl_lnt_issue=>at_identifier( i_identifier = t397 i_message_26cb = t398 i_key = t434 i_severity = t490 i_fix = t492 ).
              t395 = t396.
              DATA(t493) = t351.
              DATA(t494) = t395.
              t493->load( ).
              APPEND t494 TO t493->items.
              t493->save( ).
            ENDIF.
            DATA(t495) = t351.
            t350 = t495.
            t343 = t350.
            t341 = t342->concat( p0 = t343 ).
            t10 = t341.
          ELSE.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t496) = t10.
    result = t496.

  ENDMETHOD.

  METHOD check_name.
    DATA(t1) = i_attr.
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
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t12) = t1.
    t11 = t12.
    DATA(t13) = VALUE string( ).
    DATA t14 TYPE string.
    DATA t15 TYPE string.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = t11.
    t17 = t18->token.
    t16 = t17.
    DATA t19 TYPE string.
    DATA(t20) = t16.
    t19 = t20->str.
    t15 = t19.
    t14 = t15.
    DATA(t21) = VALUE abap_bool( ).
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
      CLEAR t22.
    ELSE.
      IF t25 > t26 - t24.
        t25 = t26 - t24.
      ENDIF.
      t22 = t23+t24(t25).
    ENDIF.
    DATA(t27) = |!|.
    t21 = xsdbool( t22 = t27 ).
    IF t21 = abap_true.
      DATA(t28) = VALUE string( ).
      DATA t29 TYPE string.
      DATA(t30) = t14.
      t29 = t30.
      DATA(t31) = VALUE string( ).
      DATA(t32) = t29.
      DATA(t33) = 1.
      DATA t34 TYPE i.
      DATA(t35) = t29.
      DATA(t36) = strlen( t35 ).
      t34 = t36.
      DATA(t37) = strlen( t32 ).
      IF t33 < 0.
        t33 = t33 + t37.
        IF t33 < 0.
          t33 = 0.
        ENDIF.
      ENDIF.
      IF t33 > t37 OR t34 <= 0.
        CLEAR t31.
      ELSE.
        IF t34 > t37 - t33.
          t34 = t37 - t33.
        ENDIF.
        t31 = t32+t33(t34).
      ENDIF.
      t28 = t31.
      t14 = t28.
    ENDIF.
    DATA(t38) = t14.
    t13 = t38.
    t10 = t13.
    t9 = t10.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA(t41) = abap_true.
    IF t41 = abap_true.
      DATA(t42) = t9.
      DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t43->has = abap_true.
      t43->value = t42.
      t40 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t40 = t44.
    ENDIF.
    DATA(t45) = t5.
    DATA(t46) = me->conf.
    t39 = zcl_lnt_name_validator=>violates_rule( i_name = t40 i_pattern = t45 i_params_4c59 = t46 ).
    IF t39 = abap_true.
      DATA t47 TYPE REF TO zcl_lnt_issue.
      CLEAR t47.
      DATA t48 TYPE REF TO zcl_lnt_issue.
      CLEAR t48.
      DATA(t49) = t1.
      DATA(t50) = VALUE string( ).
      DATA t51 TYPE string.
      DATA(t52) = t9.
      t51 = t52.
      DATA t53 TYPE string.
      DATA(t54) = t2.
      t53 = t54.
      DATA(t55) = VALUE string( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t58) = me->conf.
      t57 = t58->zlnt_view_read_sr_ef452f77fd06( ).
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA(t60) = abap_true.
      IF t60 = abap_true.
        DATA(t61) = |required|.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t61.
        t59 = t62.
      ELSE.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        t59 = t63.
      ENDIF.
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
        DATA t66 TYPE string.
        DATA t67 TYPE string.
        DATA t68 TYPE string.
        DATA(t69) = |Class attribute name "|.
        DATA(t70) = t51.
        DATA(t71) = strlen( t69 ).
        t68 = |{ t69 }{ t70 }|.
        DATA(t72) = |" does not match pattern |.
        DATA(t73) = strlen( t68 ).
        t67 = |{ t68 }{ t72 }|.
        DATA(t74) = t53.
        DATA(t75) = strlen( t67 ).
        t66 = |{ t67 }{ t74 }|.
        t55 = t66.
      ELSE.
        DATA t76 TYPE string.
        DATA t77 TYPE string.
        DATA t78 TYPE string.
        DATA(t79) = |Class attribute name "|.
        DATA(t80) = t51.
        DATA(t81) = strlen( t79 ).
        t78 = |{ t79 }{ t80 }|.
        DATA(t82) = |" must not match pattern |.
        DATA(t83) = strlen( t78 ).
        t77 = |{ t78 }{ t82 }|.
        DATA(t84) = t53.
        DATA(t85) = strlen( t77 ).
        t76 = |{ t77 }{ t84 }|.
        t55 = t76.
      ENDIF.
      t50 = t55.
      DATA(t86) = VALUE string( ).
      DATA t87 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t87.
      DATA t88 TYPE string.
      DATA(t89) = |class_attribute_names|.
      t88 = t89.
      DATA t90 TYPE string.
      DATA(t91) = |Class attributes naming|.
      t90 = t91.
      DATA t92 TYPE string.
      DATA(t93) = |Allows you to enforce a pattern, such as a prefix, for class|.
      t93 = t93 && | variable names.|.
      t92 = t93.
      DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t94.
      DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t95.
      DATA(t96) = abap_true.
      IF t96 = abap_true.
        DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t99.
        t98 = t99.
        DATA(t100) = t98.
        DATA(t101) = |Naming|.
        t100->load( ).
        APPEND t101 TO t100->items.
        t100->save( ).
        DATA(t102) = t98.
        DATA(t103) = |SingleFile|.
        t102->load( ).
        APPEND t103 TO t102->items.
        t102->save( ).
        DATA(t104) = t98.
        t97 = t104.
        t95 = t97.
      ELSE.
        DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t105.
        t95 = t105.
      ENDIF.
      t94 = t95.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t107.
      DATA(t108) = abap_true.
      IF t108 = abap_true.
        DATA(t109) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
        t109 = t109 && |counter TYPE i.\nENDCLASS.|.
        DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t110->has = abap_true.
        t110->value = t109.
        t107 = t110.
      ELSE.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        t107 = t111.
      ENDIF.
      t106 = t107.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t112.
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t113.
      DATA(t114) = abap_true.
      IF t114 = abap_true.
        DATA(t115) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
        t115 = t115 && |mv_counter TYPE i.\nENDCLASS.|.
        DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t116->has = abap_true.
        t116->value = t115.
        t113 = t116.
      ELSE.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        t113 = t117.
      ENDIF.
      t112 = t113.
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t119.
      t118 = t119.
      DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t121.
      t120 = t121.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t123.
      t122 = t123.
      t87 = NEW zcl_lnt_irule_metadata( i_key = t88 i_title = t90 i_short_description = t92 i_bad_example = t106 i_good_example = t112 i_extended_information = t118 i_tags = t94 i_pragma = t120 i_pseudo_comment = t122 ).
      CREATE OBJECT t87->zlnt_view_ownkeys_b0e8086400eb.
      t87->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t124 ).
      ENDIF.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t125 ).
      ENDIF.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t126 ).
      ENDIF.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t127 ).
      ENDIF.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t128 ).
      ENDIF.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t129 ).
      ENDIF.
      CREATE OBJECT t87->zlnt_json_ownkeys_70e5fd461788.
      t87->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t130) = |key|.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
      ENDIF.
      DATA(t132) = |title|.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
      ENDIF.
      DATA(t134) = |shortDescription|.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
      ENDIF.
      DATA(t136) = |tags|.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
      ENDIF.
      DATA(t138) = |badExample|.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
      ENDIF.
      DATA(t140) = |goodExample|.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
      ENDIF.
      t86 = t87->key.
      DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t143) = me->conf.
      t142 = t143->zlnt_view_read_sr_15c06369f827( ).
      DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t144.
      t48 = zcl_lnt_issue=>at_identifier( i_identifier = t49 i_message_26cb = t50 i_key = t86 i_severity = t142 i_fix = t144 ).
      t47 = t48.
      DATA(t145) = t3.
      DATA(t146) = t47.
      t145->load( ).
      APPEND t146 TO t145->items.
      t145->save( ).
    ENDIF.
    DATA(t147) = t3.
    result = t147.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_clss_attrbt_nms_cnf( me->g_c_i_s_r_cl_at_nm_ts_cl_at_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_clss_attrbt_nms_cnf( me->g_c_i_s_r_cl_at_nm_ts_cl_at_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_clss_attrbt_nms_cnf.
    CLEAR t1.
    CLEAR t1.
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
          CLEAR t2.
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
