* TS: src/rules/method_length.ts:29:1 MethodLength
CLASS zcl_lnt_method_length DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_method_length_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_description IMPORTING i_issue_type TYPE i i_actual TYPE string i_type_9913 TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_mt_ln_ts_mt_lng RETURNING VALUE(result) TYPE REF TO zcl_lnt_method_length_conf.
    METHODS st_cn_in_sr_rl_mt_ln_ts_mt_lng IMPORTING i_conf TYPE REF TO zcl_lnt_method_length_conf.
    METHODS in_in_sr_rl_mth_lng_ts_mth_lng IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_method_length.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_bf6e IMPORTING i_stats TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_abstract IMPORTING i_result TYPE REF TO zcl_lnt_imethod_length_result RETURNING VALUE(result) TYPE abap_bool.
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
CLASS zcl_lnt_method_length IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_method_length_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |method_length|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Method/Form/Function Module Length|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks relating to method/form/function module length.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#keep-methods-small\n\nAbstract methods without statem|.
      t11 = t11 && |ents are considered okay.|.
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
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
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
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_issue_type.
    DATA(t2) = i_actual.
    DATA(t3) = i_type_9913.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    DATA(t6) = 0.
    t4 = xsdbool( t5 = t6 ).
    IF t4 = abap_true.
      DATA t7 TYPE string.
      DATA(t8) = |Empty |.
      DATA(t9) = t3.
      DATA(t10) = strlen( t8 ).
      t7 = |{ t8 }{ t9 }|.
      result = t7.
      RETURN.
    ELSE.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t1.
      DATA(t13) = 1.
      t11 = xsdbool( t12 = t13 ).
      IF t11 = abap_true.
        DATA(t14) = VALUE string( ).
        DATA(t15) = VALUE string( ).
        DATA(t16) = VALUE string( ).
        DATA t17 TYPE string.
        DATA t18 TYPE string.
        DATA(t19) = |Reduce |.
        DATA(t20) = t3.
        DATA(t21) = strlen( t19 ).
        t18 = |{ t19 }{ t20 }|.
        DATA(t22) = | length to max |.
        DATA(t23) = strlen( t18 ).
        t17 = |{ t18 }{ t22 }|.
        DATA(t24) = VALUE string( ).
        DATA t25 TYPE f.
        DATA(t26) = me->conf.
        t25 = t26->zlnt_view_read_sr_4ca833a633a7( ).
        IF t25 <> trunc( t25 ) OR t25 > range_safe_integer OR t25 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t27) = CONV int8( t25 ).
        t24 = |{ t27 }|.
        DATA(t28) = strlen( t17 ).
        t16 = |{ t17 }{ t24 }|.
        DATA(t29) = | statements, currently |.
        DATA(t30) = strlen( t16 ).
        t15 = |{ t16 }{ t29 }|.
        DATA(t31) = t2.
        DATA(t32) = strlen( t15 ).
        t14 = |{ t15 }{ t31 }|.
        result = t14.
        RETURN.
      ELSE.
        DATA(t33) = ||.
        result = t33.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_mt_ln_ts_mt_lng.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_mt_ln_ts_mt_lng.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_mth_lng_ts_mth_lng.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_95a4e30cd6a8( ).
    DATA(t7) = abap_true.
    t4 = xsdbool( t5 = t7 ).
    t3 = t4.
    IF t4 = abap_true.
      DATA t8 TYPE abap_bool.
      DATA(t9) = t1.
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_class ).
      t3 = t8.
    ENDIF.
    t2 = t3.
    IF t3 = abap_true.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_class.
      DATA t15 TYPE REF TO zcl_lnt_class.
      DATA(t16) = t1.
      DATA t17 TYPE REF TO object.
      t17 = t16.
      t15 ?= t17.
      t14 = t15.
      DATA t18 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_abap_file.
      DATA t22 TYPE REF TO zcl_lnt_abap_file.
      DATA(t23) = t14.
      t22 = t23->get_main_abap_file( ).
      t21 = t22.
      DATA t24 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t24.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = t21.
      IF t26 IS INITIAL.
        t25 = abap_true.
      ENDIF.
      IF t25 = abap_true.
        DATA t27 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t27.
        t24 = t27.
      ELSE.
        DATA t28 TYPE REF TO zif_lnt_abap_file_information.
        DATA t29 TYPE REF TO zcl_lnt_abap_file.
        DATA t30 TYPE REF TO zcl_lnt_abap_file.
        DATA(t31) = t21.
        t30 = t31.
        t29 = t30.
        DATA t32 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t33) = t29.
        t32 = t33->info.
        t28 = t32.
        t24 = t28.
      ENDIF.
      t20 = t24.
      t19 = t20.
      DATA t34 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = t19.
      IF t36 IS INITIAL.
        t35 = abap_true.
      ENDIF.
      IF t35 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t37.
        t34 = t37.
      ELSE.
        DATA t38 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t39 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t40) = t19.
        t39 = t40.
        DATA t41 TYPE string.
        DATA t42 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t43) = t14.
        t42 = t43.
        DATA t44 TYPE string.
        DATA(t45) = t42.
        t44 = t45->name.
        t41 = t44.
        t38 = t39->get_class_definition_by_name( i_name = t41 ).
        t34 = t38.
      ENDIF.
      t18 = t34.
      t13 = t18.
      t12 = t13.
      DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t12.
      IF t48 IS INITIAL.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
        DATA t49 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t49.
        t46 = t49.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t51 TYPE REF TO zcl_lnt_info_class_definition.
        DATA(t52) = t12.
        t51 = t52.
        t50 = t51->is_for_testing.
        t46 = t50.
      ENDIF.
      t11 = t46.
      DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t53.
      DATA(t54) = abap_true.
      IF t54 = abap_true.
        DATA(t55) = abap_true.
        DATA(t56) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t56->has = abap_true.
        t56->value = t55.
        t53 = t56.
      ELSE.
        DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t57.
        t53 = t57.
      ENDIF.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = VALUE abap_bool( ).
      IF t11 IS BOUND.
        t58 = t11->has.
      ENDIF.
      IF t53 IS BOUND.
        t59 = t53->has.
      ENDIF.
      IF t58 = t59.
        IF t58 = abap_false.
          t10 = abap_true.
        ELSEIF t11->value = t53->value.
          t10 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t10.
    ENDIF.
    IF t2 = abap_true.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t60.
      result = t60.
      RETURN.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t63) = t1.
    t62 = zcl_lnt_method_length_stats=>run( i_obj_1ed0 = t63 ).
    t61 = t62.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t66) = t61.
    DATA(t67) = |METHOD|.
    t65 = me->check_bf6e( i_stats = t66 i_type_9913 = t67 ).
    t64 = t65.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t68 = t69.
    DATA(t70) = VALUE abap_bool( ).
    DATA t71 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t72) = me->conf.
    t71 = t72->zlnt_view_read_sr_3593016b2d88( ).
    IF t71 IS BOUND.
      IF t71->has = abap_true.
        t70 = xsdbool( t71->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t70 = abap_true.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t75) = t1.
      t74 = zcl_lnt_form_length_stats=>run( i_obj_1ed0 = t75 ).
      t73 = t74.
      DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t77) = t73.
      DATA(t78) = |FORM|.
      t76 = me->check_bf6e( i_stats = t77 i_type_9913 = t78 ).
      t68 = t76.
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t79 = t80.
    DATA(t81) = VALUE abap_bool( ).
    DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t83) = me->conf.
    t82 = t83->zlnt_view_read_sr_53288d537bd5( ).
    IF t82 IS BOUND.
      IF t82->has = abap_true.
        t81 = xsdbool( t82->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t81 = abap_true.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t86) = t1.
      t85 = zcl_lnt_function_length_stats=>run( i_obj_1ed0 = t86 ).
      t84 = t85.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t88) = t84.
      DATA(t89) = |FUNCTION MODULE|.
      t87 = me->check_bf6e( i_stats = t88 i_type_9913 = t89 ).
      t79 = t87.
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t92) = t64.
    DATA(t93) = t68.
    t91 = t92->concat( p0 = t93 ).
    DATA(t94) = t79.
    t90 = t91->concat( p0 = t94 ).
    result = t90.

  ENDMETHOD.

  METHOD check_bf6e.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_stats.
    DATA(t2) = i_type_9913.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = t1.
    DATA t6 TYPE REF TO zcl_lnt_imethod_length_result.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t5->load( ).
      IF t8 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t5->items INDEX t8 + 1 INTO t7.
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
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA(t14) = me->conf.
      t13 = t14->zlnt_view_read_sr_95a4e30cd6a8( ).
      DATA(t15) = abap_true.
      t12 = xsdbool( t13 = t15 ).
      t11 = t12.
      IF t12 = abap_true.
        DATA(t16) = VALUE abap_bool( ).
        DATA(t17) = VALUE i( ).
        DATA t18 TYPE string.
        DATA t19 TYPE REF TO zcl_lnt_abstract_file.
        DATA t20 TYPE REF TO zcl_lnt_abap_file.
        DATA(t21) = t6.
        t20 = t21->file.
        t19 = t20.
        DATA t22 TYPE string.
        DATA(t23) = t19.
        t22 = t23->filename.
        t18 = t22.
        DATA(t24) = |.testclasses.|.
        DATA(t25) = strlen( t18 ).
        IF t24 IS INITIAL.
          t17 = 0.
        ELSE.
          FIND t24 IN t18 MATCH OFFSET t17.
          IF sy-subrc <> 0.
            t17 = -1.
          ENDIF.
        ENDIF.
        DATA(t26) = 0.
        t16 = xsdbool( t17 >= t26 ).
        t11 = t16.
      ENDIF.
      IF t11 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE f.
      DATA(t30) = t6.
      t29 = t30->count.
      DATA(t31) = CONV f( 0 ).
      t28 = xsdbool( t29 = t31 ).
      t27 = t28.
      IF t28 = abap_true.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE abap_bool.
        DATA(t34) = me->conf.
        t33 = t34->zlnt_view_read_sr_5aa546d946cc( ).
        DATA(t35) = abap_true.
        t32 = xsdbool( t33 = t35 ).
        t27 = t32.
      ENDIF.
      IF t27 = abap_true.
        DATA(t36) = VALUE abap_bool( ).
        DATA t37 TYPE REF TO zcl_lnt_imethod_length_result.
        DATA(t38) = t6.
        t37 = t38.
        DATA(t39) = VALUE abap_bool( ).
        DATA t40 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t41 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t42 TYPE REF TO zif_lnt_abap_file_information.
        DATA t43 TYPE REF TO zcl_lnt_abap_file.
        DATA t44 TYPE REF TO zcl_lnt_abap_file.
        DATA(t45) = t37.
        t44 = t45->file.
        t43 = t44.
        DATA t46 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t47) = t43.
        t46 = t47->info.
        t42 = t46.
        DATA t48 TYPE string.
        DATA(t49) = t37.
        t48 = t49->class_name.
        t41 = t42->get_class_definition_by_name( i_name = t48 ).
        t40 = t41.
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_info_class_definition.
        DATA(t53) = t40.
        t52 = t53.
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t54.
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = t52.
        IF t56 IS INITIAL.
          t55 = abap_true.
        ENDIF.
        IF t55 = abap_true.
          DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t57.
          t54 = t57.
        ELSE.
          DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t59 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t60) = t52.
          t59 = t60.
          t58 = t59->is_abstract.
          t54 = t58.
        ENDIF.
        t51 = t54.
        DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t61.
        DATA(t62) = abap_true.
        IF t62 = abap_true.
          DATA(t63) = abap_true.
          DATA(t64) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t64->has = abap_true.
          t64->value = t63.
          t61 = t64.
        ELSE.
          DATA t65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t65.
          t61 = t65.
        ENDIF.
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = VALUE abap_bool( ).
        IF t51 IS BOUND.
          t66 = t51->has.
        ENDIF.
        IF t61 IS BOUND.
          t67 = t61->has.
        ENDIF.
        IF t66 = t67.
          IF t66 = abap_false.
            t50 = abap_true.
          ELSEIF t51->value = t61->value.
            t50 = abap_true.
          ENDIF.
        ENDIF.
        t39 = t50.
        t36 = t39.
        IF t36 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t68 TYPE REF TO zcl_lnt_issue.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_issue.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_abap_file.
        DATA(t71) = t6.
        t70 = t71->file.
        DATA t72 TYPE REF TO zcl_lnt_position.
        DATA(t73) = t6.
        t72 = t73->pos.
        DATA(t74) = VALUE string( ).
        DATA t75 TYPE string.
        DATA(t76) = t2.
        t75 = t76.
        DATA(t77) = VALUE string( ).
        DATA t78 TYPE abap_bool.
        DATA(t79) = 0.
        DATA(t80) = 0.
        t78 = xsdbool( t79 = t80 ).
        IF t78 = abap_true.
          DATA t81 TYPE string.
          DATA(t82) = |Empty |.
          DATA(t83) = t75.
          DATA(t84) = strlen( t82 ).
          t81 = |{ t82 }{ t83 }|.
          t77 = t81.
        ELSE.
          DATA(t85) = VALUE string( ).
          DATA t86 TYPE abap_bool.
          DATA(t87) = 0.
          DATA(t88) = 1.
          t86 = xsdbool( t87 = t88 ).
          IF t86 = abap_true.
            DATA(t89) = VALUE string( ).
            DATA(t90) = VALUE string( ).
            DATA(t91) = VALUE string( ).
            DATA t92 TYPE string.
            DATA t93 TYPE string.
            DATA(t94) = |Reduce |.
            DATA(t95) = t75.
            DATA(t96) = strlen( t94 ).
            t93 = |{ t94 }{ t95 }|.
            DATA(t97) = | length to max |.
            DATA(t98) = strlen( t93 ).
            t92 = |{ t93 }{ t97 }|.
            DATA(t99) = VALUE string( ).
            DATA t100 TYPE f.
            DATA(t101) = me->conf.
            t100 = t101->zlnt_view_read_sr_4ca833a633a7( ).
            IF t100 <> trunc( t100 ) OR t100 > range_safe_integer OR t100 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t102) = CONV int8( t100 ).
            t99 = |{ t102 }|.
            DATA(t103) = strlen( t92 ).
            t91 = |{ t92 }{ t99 }|.
            DATA(t104) = | statements, currently |.
            DATA(t105) = strlen( t91 ).
            t90 = |{ t91 }{ t104 }|.
            DATA(t106) = |0|.
            DATA(t107) = strlen( t90 ).
            t89 = |{ t90 }{ t106 }|.
            t85 = t89.
          ELSE.
            DATA(t108) = ||.
            t85 = t108.
          ENDIF.
          t77 = t85.
        ENDIF.
        t74 = t77.
        DATA(t109) = VALUE string( ).
        DATA t110 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t110.
        DATA t111 TYPE string.
        DATA(t112) = |method_length|.
        t111 = t112.
        DATA t113 TYPE string.
        DATA(t114) = |Method/Form/Function Module Length|.
        t113 = t114.
        DATA t115 TYPE string.
        DATA(t116) = |Checks relating to method/form/function module length.|.
        t115 = t116.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        DATA(t119) = abap_true.
        IF t119 = abap_true.
          DATA(t120) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t120 = t120 && |nABAP.md#keep-methods-small\n\nAbstract methods without statem|.
          t120 = t120 && |ents are considered okay.|.
          DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t121->has = abap_true.
          t121->value = t120.
          t118 = t121.
        ELSE.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          t118 = t122.
        ENDIF.
        t117 = t118.
        DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t123.
        DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t124.
        DATA(t125) = abap_true.
        IF t125 = abap_true.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t128.
          t127 = t128.
          DATA(t129) = t127.
          DATA(t130) = |Styleguide|.
          t129->load( ).
          APPEND t130 TO t129->items.
          t129->save( ).
          DATA(t131) = t127.
          DATA(t132) = |SingleFile|.
          t131->load( ).
          APPEND t132 TO t131->items.
          t131->save( ).
          DATA(t133) = t127.
          t126 = t133.
          t124 = t126.
        ELSE.
          DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t134.
          t124 = t134.
        ENDIF.
        t123 = t124.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t136.
        t135 = t136.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t138.
        t137 = t138.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        t139 = t140.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        t141 = t142.
        t110 = NEW zcl_lnt_irule_metadata( i_key = t111 i_title = t113 i_short_description = t115 i_bad_example = t135 i_good_example = t137 i_extended_information = t117 i_tags = t123 i_pragma = t139 i_pseudo_comment = t141 ).
        CREATE OBJECT t110->zlnt_view_ownkeys_b0e8086400eb.
        t110->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t143 ).
        ENDIF.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t144 ).
        ENDIF.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t145 ).
        ENDIF.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t146 ).
        ENDIF.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t147 ).
        ENDIF.
        CREATE OBJECT t110->zlnt_json_ownkeys_70e5fd461788.
        t110->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t148) = |key|.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
        ENDIF.
        DATA(t150) = |title|.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
        ENDIF.
        DATA(t152) = |shortDescription|.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
        ENDIF.
        DATA(t154) = |extendedInformation|.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
        ENDIF.
        DATA(t156) = |tags|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        ENDIF.
        t109 = t110->key.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t159) = me->conf.
        t158 = t159->zlnt_view_read_sr_15c06369f827( ).
        DATA t160 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t160.
        t69 = zcl_lnt_issue=>at_position( i_file = t70 i_start = t72 i_message_26cb = t74 i_key = t109 i_severity = t158 i_fix = t160 ).
        t68 = t69.
        DATA(t161) = t3.
        DATA(t162) = t68.
        t161->load( ).
        APPEND t162 TO t161->items.
        t161->save( ).
        CONTINUE.
      ENDIF.
      DATA t163 TYPE abap_bool.
      DATA t164 TYPE f.
      DATA(t165) = t6.
      t164 = t165->count.
      DATA t166 TYPE f.
      DATA(t167) = me->conf.
      t166 = t167->zlnt_view_read_sr_4ca833a633a7( ).
      t163 = xsdbool( t164 > t166 ).
      IF t163 = abap_true.
        DATA(t168) = VALUE string( ).
        DATA(t169) = VALUE string( ).
        DATA(t170) = VALUE string( ).
        DATA(t171) = VALUE string( ).
        DATA t172 TYPE f.
        DATA(t173) = t6.
        t172 = t173->count.
        IF t172 <> trunc( t172 ) OR t172 > range_safe_integer OR t172 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t174) = CONV int8( t172 ).
        t171 = |{ t174 }|.
        t170 = t171.
        DATA t175 TYPE string.
        DATA(t176) = t2.
        t175 = t176.
        DATA(t177) = VALUE string( ).
        DATA t178 TYPE abap_bool.
        DATA(t179) = 1.
        DATA(t180) = 0.
        t178 = xsdbool( t179 = t180 ).
        IF t178 = abap_true.
          DATA t181 TYPE string.
          DATA(t182) = |Empty |.
          DATA(t183) = t175.
          DATA(t184) = strlen( t182 ).
          t181 = |{ t182 }{ t183 }|.
          t177 = t181.
        ELSE.
          DATA(t185) = VALUE string( ).
          DATA t186 TYPE abap_bool.
          DATA(t187) = 1.
          DATA(t188) = 1.
          t186 = xsdbool( t187 = t188 ).
          IF t186 = abap_true.
            DATA(t189) = VALUE string( ).
            DATA(t190) = VALUE string( ).
            DATA(t191) = VALUE string( ).
            DATA t192 TYPE string.
            DATA t193 TYPE string.
            DATA(t194) = |Reduce |.
            DATA(t195) = t175.
            DATA(t196) = strlen( t194 ).
            t193 = |{ t194 }{ t195 }|.
            DATA(t197) = | length to max |.
            DATA(t198) = strlen( t193 ).
            t192 = |{ t193 }{ t197 }|.
            DATA(t199) = VALUE string( ).
            DATA t200 TYPE f.
            DATA(t201) = me->conf.
            t200 = t201->zlnt_view_read_sr_4ca833a633a7( ).
            IF t200 <> trunc( t200 ) OR t200 > range_safe_integer OR t200 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t202) = CONV int8( t200 ).
            t199 = |{ t202 }|.
            DATA(t203) = strlen( t192 ).
            t191 = |{ t192 }{ t199 }|.
            DATA(t204) = | statements, currently |.
            DATA(t205) = strlen( t191 ).
            t190 = |{ t191 }{ t204 }|.
            DATA(t206) = t170.
            DATA(t207) = strlen( t190 ).
            t189 = |{ t190 }{ t206 }|.
            t185 = t189.
          ELSE.
            DATA(t208) = ||.
            t185 = t208.
          ENDIF.
          t177 = t185.
        ENDIF.
        t169 = t177.
        t168 = t169.
        DATA t209 TYPE REF TO zcl_lnt_issue.
        CLEAR t209.
        DATA t210 TYPE REF TO zcl_lnt_issue.
        CLEAR t210.
        DATA t211 TYPE REF TO zcl_lnt_abap_file.
        DATA(t212) = t6.
        t211 = t212->file.
        DATA t213 TYPE REF TO zcl_lnt_position.
        DATA(t214) = t6.
        t213 = t214->pos.
        DATA(t215) = t168.
        DATA(t216) = VALUE string( ).
        DATA t217 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t217.
        DATA t218 TYPE string.
        DATA(t219) = |method_length|.
        t218 = t219.
        DATA t220 TYPE string.
        DATA(t221) = |Method/Form/Function Module Length|.
        t220 = t221.
        DATA t222 TYPE string.
        DATA(t223) = |Checks relating to method/form/function module length.|.
        t222 = t223.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t225.
        DATA(t226) = abap_true.
        IF t226 = abap_true.
          DATA(t227) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t227 = t227 && |nABAP.md#keep-methods-small\n\nAbstract methods without statem|.
          t227 = t227 && |ents are considered okay.|.
          DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t228->has = abap_true.
          t228->value = t227.
          t225 = t228.
        ELSE.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t229.
          t225 = t229.
        ENDIF.
        t224 = t225.
        DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t230.
        DATA t231 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t231.
        DATA(t232) = abap_true.
        IF t232 = abap_true.
          DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t235.
          t234 = t235.
          DATA(t236) = t234.
          DATA(t237) = |Styleguide|.
          t236->load( ).
          APPEND t237 TO t236->items.
          t236->save( ).
          DATA(t238) = t234.
          DATA(t239) = |SingleFile|.
          t238->load( ).
          APPEND t239 TO t238->items.
          t238->save( ).
          DATA(t240) = t234.
          t233 = t240.
          t231 = t233.
        ELSE.
          DATA t241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t241.
          t231 = t241.
        ENDIF.
        t230 = t231.
        DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t243.
        t242 = t243.
        DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t245.
        t244 = t245.
        DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t247.
        t246 = t247.
        DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t249.
        t248 = t249.
        t217 = NEW zcl_lnt_irule_metadata( i_key = t218 i_title = t220 i_short_description = t222 i_bad_example = t242 i_good_example = t244 i_extended_information = t224 i_tags = t230 i_pragma = t246 i_pseudo_comment = t248 ).
        CREATE OBJECT t217->zlnt_view_ownkeys_b0e8086400eb.
        t217->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t250.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t250 ).
        ENDIF.
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t251.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t251 ).
        ENDIF.
        DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t252.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t252 ).
        ENDIF.
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t253.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t253 ).
        ENDIF.
        DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t254.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t254 ).
        ENDIF.
        CREATE OBJECT t217->zlnt_json_ownkeys_70e5fd461788.
        t217->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t255) = |key|.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t255 p1 = t256 ).
        ENDIF.
        DATA(t257) = |title|.
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t258.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t257 p1 = t258 ).
        ENDIF.
        DATA(t259) = |shortDescription|.
        DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t260.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t259 p1 = t260 ).
        ENDIF.
        DATA(t261) = |extendedInformation|.
        DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t262.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t261 p1 = t262 ).
        ENDIF.
        DATA(t263) = |tags|.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t264.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
        ENDIF.
        t216 = t217->key.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t266) = me->conf.
        t265 = t266->zlnt_view_read_sr_15c06369f827( ).
        DATA t267 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t267.
        t210 = zcl_lnt_issue=>at_position( i_file = t211 i_start = t213 i_message_26cb = t215 i_key = t216 i_severity = t265 i_fix = t267 ).
        t209 = t210.
        DATA(t268) = t3.
        DATA(t269) = t209.
        t268->load( ).
        APPEND t269 TO t268->items.
        t268->save( ).
      ENDIF.
    ENDDO.
    DATA(t270) = t3.
    result = t270.

  ENDMETHOD.

  METHOD is_abstract.
    DATA(t1) = i_result.
    DATA t2 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t3 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t4 TYPE REF TO zif_lnt_abap_file_information.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7->file.
    t5 = t6.
    DATA t8 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t9) = t5.
    t8 = t9->info.
    t4 = t8.
    DATA t10 TYPE string.
    DATA(t11) = t1.
    t10 = t11->class_name.
    t3 = t4->get_class_definition_by_name( i_name = t10 ).
    t2 = t3.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t15) = t2.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t14.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t21 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t22) = t14.
      t21 = t22.
      t20 = t21->is_abstract.
      t16 = t20.
    ENDIF.
    t13 = t16.
    DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = abap_true.
      DATA(t26) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = VALUE abap_bool( ).
    IF t13 IS BOUND.
      t28 = t13->has.
    ENDIF.
    IF t23 IS BOUND.
      t29 = t23->has.
    ENDIF.
    IF t28 = t29.
      IF t28 = abap_false.
        t12 = abap_true.
      ELSEIF t13->value = t23->value.
        t12 = abap_true.
      ENDIF.
    ENDIF.
    result = t12.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_method_length_conf( me->gt_cn_in_sr_rl_mt_ln_ts_mt_lng( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_method_length_conf( me->gt_cn_in_sr_rl_mt_ln_ts_mt_lng( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_method_length_conf.
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
        t2 = NEW zcl_lnt_method_length_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_mt_ln_ts_mt_lng( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_method_length.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_mth_lng_ts_mth_lng( i_reg_d009 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1587_7730d9cb6c51.
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
