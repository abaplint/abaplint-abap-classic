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
    me->conf = NEW zcl_lnt_method_length_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#keep-methods-small\n\nAbstract methods without statem|.
    t11 = t11 && |ents are considered okay.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |method_length| i_title = |Method/Form/Function Module Length| i_short_description = |Checks relating to method/form/function module length.| i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t18 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t40 ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t46 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_issue_type.
    DATA(t2) = i_actual.
    DATA(t3) = i_type_9913.
    IF xsdbool( t1 = 0 ) = abap_true.
      DATA(t8) = |Empty |.
      DATA(t10) = strlen( t8 ).
      result = |{ t8 }{ t3 }|.
      RETURN.
    ELSE.
      IF xsdbool( t1 = 1 ) = abap_true.
        DATA(t15) = VALUE string( ).
        DATA(t16) = VALUE string( ).
        DATA t17 TYPE string.
        DATA t18 TYPE string.
        DATA(t19) = |Reduce |.
        DATA(t21) = strlen( t19 ).
        t18 = |{ t19 }{ t3 }|.
        DATA(t23) = strlen( t18 ).
        t17 = |{ t18 }{ | length to max | }|.
        DATA(t24) = VALUE string( ).
        DATA t25 TYPE f.
        t25 = me->conf->zlnt_view_read_sr_4ca833a633a7( ).
        IF t25 <> trunc( t25 ) OR t25 > range_safe_integer OR t25 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t27) = CONV int8( t25 ).
        t24 = |{ t27 }|.
        DATA(t28) = strlen( t17 ).
        t16 = |{ t17 }{ t24 }|.
        DATA(t30) = strlen( t16 ).
        t15 = |{ t16 }{ | statements, currently | }|.
        DATA(t32) = strlen( t15 ).
        result = |{ t15 }{ t2 }|.
        RETURN.
      ELSE.
        result = ||.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_mt_ln_ts_mt_lng.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_mt_ln_ts_mt_lng.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_mth_lng_ts_mth_lng.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    t5 = me->conf->zlnt_view_read_sr_95a4e30cd6a8( ).
    t4 = xsdbool( t5 = abap_true ).
    t3 = t4.
    IF t4 = abap_true.
      t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ).
    ENDIF.
    t2 = t3.
    IF t3 = abap_true.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t12 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t14 TYPE REF TO zcl_lnt_class.
      DATA t15 TYPE REF TO zcl_lnt_class.
      DATA t17 TYPE REF TO object.
      t17 = t1.
      t15 ?= t17.
      t14 = t15.
      DATA t19 TYPE REF TO zif_lnt_abap_file_information.
      DATA t21 TYPE REF TO zcl_lnt_abap_file.
      t21 = t14->get_main_abap_file( ).
      DATA t24 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t21 IS INITIAL ) = abap_true.
      ELSE.
        t24 = t21->info.
      ENDIF.
      t19 = t24.
      DATA t34 TYPE REF TO zcl_lnt_info_class_definition.
      IF xsdbool( t19 IS INITIAL ) = abap_true.
      ELSE.
        DATA t39 TYPE REF TO zif_lnt_abap_file_information.
        t39 = t19.
        DATA t41 TYPE string.
        DATA t42 TYPE REF TO zcl_lnt_abstract_object.
        t42 = t14.
        t41 = t42->name.
        t34 = t39->get_class_definition_by_name( i_name = t41 ).
      ENDIF.
      t12 = t34.
      DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      IF xsdbool( t12 IS INITIAL ) = abap_true.
      ELSE.
        t46 = t12->is_for_testing.
      ENDIF.
      t11 = t46.
      DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t56) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t56->has = abap_true.
      t56->value = abap_true.
      t53 = t56.
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
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t65 = me->check_bf6e( i_stats = zcl_lnt_method_length_stats=>run( i_obj_1ed0 = t1 ) i_type_9913 = |METHOD| ).
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    DATA(t70) = VALUE abap_bool( ).
    DATA t71 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t71 = me->conf->zlnt_view_read_sr_3593016b2d88( ).
    IF t71 IS BOUND.
      IF t71->has = abap_true.
        t70 = xsdbool( t71->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t70 = abap_true.
      t68 = me->check_bf6e( i_stats = zcl_lnt_form_length_stats=>run( i_obj_1ed0 = t1 ) i_type_9913 = |FORM| ).
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    DATA(t81) = VALUE abap_bool( ).
    DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t82 = me->conf->zlnt_view_read_sr_53288d537bd5( ).
    IF t82 IS BOUND.
      IF t82->has = abap_true.
        t81 = xsdbool( t82->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t81 = abap_true.
      t79 = me->check_bf6e( i_stats = zcl_lnt_function_length_stats=>run( i_obj_1ed0 = t1 ) i_type_9913 = |FUNCTION MODULE| ).
    ENDIF.
    result = t65->concat( p0 = t68 )->concat( p0 = t79 ).

  ENDMETHOD.

  METHOD check_bf6e.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_stats.
    DATA(t2) = i_type_9913.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE REF TO zcl_lnt_imethod_length_result.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t1->load( ).
      IF t8 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t1->items INDEX t8 + 1 INTO t7.
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
      t13 = me->conf->zlnt_view_read_sr_95a4e30cd6a8( ).
      t12 = xsdbool( t13 = abap_true ).
      t11 = t12.
      IF t12 = abap_true.
        DATA(t17) = VALUE i( ).
        DATA t18 TYPE string.
        DATA t19 TYPE REF TO zcl_lnt_abstract_file.
        t19 = t6->file.
        t18 = t19->filename.
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
        t11 = xsdbool( t17 >= 0 ).
      ENDIF.
      IF t11 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE abap_bool.
      t28 = xsdbool( t6->count = CONV f( 0 ) ).
      t27 = t28.
      IF t28 = abap_true.
        DATA t33 TYPE abap_bool.
        t33 = me->conf->zlnt_view_read_sr_5aa546d946cc( ).
        t27 = xsdbool( t33 = abap_true ).
      ENDIF.
      IF t27 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_imethod_length_result.
        t37 = t6.
        DATA t41 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t42 TYPE REF TO zif_lnt_abap_file_information.
        t42 = t37->file->info.
        DATA t48 TYPE string.
        t48 = t37->class_name.
        t41 = t42->get_class_definition_by_name( i_name = t48 ).
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_info_class_definition.
        t52 = t41.
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t54.
        IF xsdbool( t52 IS INITIAL ) = abap_true.
          CLEAR t54.
        ELSE.
          t54 = t52->is_abstract.
        ENDIF.
        t51 = t54.
        DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t61.
        DATA(t64) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t64->has = abap_true.
        t64->value = abap_true.
        t61 = t64.
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
        IF t50 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t69 TYPE REF TO zcl_lnt_issue.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_abap_file.
        t70 = t6->file.
        DATA t72 TYPE REF TO zcl_lnt_position.
        t72 = t6->pos.
        DATA(t74) = VALUE string( ).
        DATA t75 TYPE string.
        t75 = t2.
        DATA(t77) = VALUE string( ).
        IF xsdbool( 0 = 0 ) = abap_true.
          DATA(t82) = |Empty |.
          DATA(t84) = strlen( t82 ).
          t77 = |{ t82 }{ t75 }|.
        ELSE.
          DATA(t85) = VALUE string( ).
          IF xsdbool( 0 = 1 ) = abap_true.
            DATA(t90) = VALUE string( ).
            DATA(t91) = VALUE string( ).
            DATA t92 TYPE string.
            DATA t93 TYPE string.
            DATA(t94) = |Reduce |.
            DATA(t96) = strlen( t94 ).
            t93 = |{ t94 }{ t75 }|.
            DATA(t98) = strlen( t93 ).
            t92 = |{ t93 }{ | length to max | }|.
            DATA(t99) = VALUE string( ).
            DATA t100 TYPE f.
            t100 = me->conf->zlnt_view_read_sr_4ca833a633a7( ).
            IF t100 <> trunc( t100 ) OR t100 > range_safe_integer OR t100 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t102) = CONV int8( t100 ).
            t99 = |{ t102 }|.
            DATA(t103) = strlen( t92 ).
            t91 = |{ t92 }{ t99 }|.
            DATA(t105) = strlen( t91 ).
            t90 = |{ t91 }{ | statements, currently | }|.
            DATA(t107) = strlen( t90 ).
            t85 = |{ t90 }{ |0| }|.
          ELSE.
            t85 = ||.
          ENDIF.
          t77 = t85.
        ENDIF.
        t74 = t77.
        DATA(t109) = VALUE string( ).
        DATA t110 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t110.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA(t120) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t120 = t120 && |nABAP.md#keep-methods-small\n\nAbstract methods without statem|.
        t120 = t120 && |ents are considered okay.|.
        DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t121->has = abap_true.
        t121->value = t120.
        t117 = t121.
        DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t123.
        DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t127.
        t127->load( ).
        APPEND |Styleguide| TO t127->items.
        t127->save( ).
        t127->load( ).
        APPEND |SingleFile| TO t127->items.
        t127->save( ).
        t123 = t127.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t135.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t137.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        t110 = NEW zcl_lnt_irule_metadata( i_key = |method_length| i_title = |Method/Form/Function Module Length| i_short_description = |Checks relating to method/form/function module length.| i_bad_example = t135 i_good_example = t137 i_extended_information = t117 i_tags = t123 i_pragma = t139 i_pseudo_comment = t141 ).
        CREATE OBJECT t110->zlnt_view_ownkeys_b0e8086400eb.
        t110->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t143 ).
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
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t149 ).
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t151 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t153 ).
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t155 ).
        ENDIF.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t157 ).
        ENDIF.
        t109 = t110->key.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t158 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t160 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t160.
        t69 = zcl_lnt_issue=>at_position( i_file = t70 i_start = t72 i_message_26cb = t74 i_key = t109 i_severity = t158 i_fix = t160 ).
        t3->load( ).
        APPEND t69 TO t3->items.
        t3->save( ).
        CONTINUE.
      ENDIF.
      DATA t164 TYPE f.
      t164 = t6->count.
      DATA t166 TYPE f.
      t166 = me->conf->zlnt_view_read_sr_4ca833a633a7( ).
      IF xsdbool( t164 > t166 ) = abap_true.
        DATA(t168) = VALUE string( ).
        DATA(t170) = VALUE string( ).
        DATA t172 TYPE f.
        t172 = t6->count.
        IF t172 <> trunc( t172 ) OR t172 > range_safe_integer OR t172 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t174) = CONV int8( t172 ).
        t170 = |{ t174 }|.
        DATA t175 TYPE string.
        t175 = t2.
        DATA(t177) = VALUE string( ).
        IF xsdbool( 1 = 0 ) = abap_true.
          DATA(t182) = |Empty |.
          DATA(t184) = strlen( t182 ).
          t177 = |{ t182 }{ t175 }|.
        ELSE.
          DATA(t185) = VALUE string( ).
          IF xsdbool( 1 = 1 ) = abap_true.
            DATA(t190) = VALUE string( ).
            DATA(t191) = VALUE string( ).
            DATA t192 TYPE string.
            DATA t193 TYPE string.
            DATA(t194) = |Reduce |.
            DATA(t196) = strlen( t194 ).
            t193 = |{ t194 }{ t175 }|.
            DATA(t198) = strlen( t193 ).
            t192 = |{ t193 }{ | length to max | }|.
            DATA(t199) = VALUE string( ).
            DATA t200 TYPE f.
            t200 = me->conf->zlnt_view_read_sr_4ca833a633a7( ).
            IF t200 <> trunc( t200 ) OR t200 > range_safe_integer OR t200 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t202) = CONV int8( t200 ).
            t199 = |{ t202 }|.
            DATA(t203) = strlen( t192 ).
            t191 = |{ t192 }{ t199 }|.
            DATA(t205) = strlen( t191 ).
            t190 = |{ t191 }{ | statements, currently | }|.
            DATA(t207) = strlen( t190 ).
            t185 = |{ t190 }{ t170 }|.
          ELSE.
            t185 = ||.
          ENDIF.
          t177 = t185.
        ENDIF.
        t168 = t177.
        DATA t210 TYPE REF TO zcl_lnt_issue.
        CLEAR t210.
        DATA t211 TYPE REF TO zcl_lnt_abap_file.
        t211 = t6->file.
        DATA t213 TYPE REF TO zcl_lnt_position.
        t213 = t6->pos.
        DATA(t216) = VALUE string( ).
        DATA t217 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t217.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        DATA(t227) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t227 = t227 && |nABAP.md#keep-methods-small\n\nAbstract methods without statem|.
        t227 = t227 && |ents are considered okay.|.
        DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t228->has = abap_true.
        t228->value = t227.
        t224 = t228.
        DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t230.
        DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t234.
        t234->load( ).
        APPEND |Styleguide| TO t234->items.
        t234->save( ).
        t234->load( ).
        APPEND |SingleFile| TO t234->items.
        t234->save( ).
        t230 = t234.
        DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t242.
        DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t244.
        DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t246.
        DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t248.
        t217 = NEW zcl_lnt_irule_metadata( i_key = |method_length| i_title = |Method/Form/Function Module Length| i_short_description = |Checks relating to method/form/function module length.| i_bad_example = t242 i_good_example = t244 i_extended_information = t224 i_tags = t230 i_pragma = t246 i_pseudo_comment = t248 ).
        CREATE OBJECT t217->zlnt_view_ownkeys_b0e8086400eb.
        t217->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t250.
        t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t250 ).
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
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t256 ).
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t258.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t258 ).
        ENDIF.
        DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t260.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t260 ).
        ENDIF.
        DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t262.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t262 ).
        ENDIF.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t264.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t264 ).
        ENDIF.
        t216 = t217->key.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t265 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t267 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t267.
        t210 = zcl_lnt_issue=>at_position( i_file = t211 i_start = t213 i_message_26cb = t168 i_key = t216 i_severity = t265 i_fix = t267 ).
        t3->load( ).
        APPEND t210 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD is_abstract.
    DATA(t1) = i_result.
    DATA t3 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t4 TYPE REF TO zif_lnt_abap_file_information.
    t4 = t1->file->info.
    DATA t10 TYPE string.
    t10 = t1->class_name.
    t3 = t4->get_class_definition_by_name( i_name = t10 ).
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t14 TYPE REF TO zcl_lnt_info_class_definition.
    t14 = t3.
    DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    IF xsdbool( t14 IS INITIAL ) = abap_true.
    ELSE.
      t16 = t14->is_abstract.
    ENDIF.
    t13 = t16.
    DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t26) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t26->has = abap_true.
    t26->value = abap_true.
    t23 = t26.
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
    result = CAST zcl_lnt_method_length_conf( me->gt_cn_in_sr_rl_mt_ln_ts_mt_lng( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_method_length_conf( me->gt_cn_in_sr_rl_mt_ln_ts_mt_lng( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_method_length_conf.
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
        t2 = NEW zcl_lnt_method_length_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_mt_ln_ts_mt_lng( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_mth_lng_ts_mth_lng( i_reg_d009 = t3 ).

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
