* TS: src/rules/prefer_inline.ts:28:1 PreferInline
CLASS zcl_lnt_prefer_inline DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_prefer_inline_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_pr_in_ts_pr_inl RETURNING VALUE(result) TYPE REF TO zcl_lnt_prefer_inline_conf.
    METHODS in_in_sr_rl_prf_inl_ts_prf_inl IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_prefer_inline.
    METHODS st_cn_in_sr_rl_pr_in_ts_pr_inl IMPORTING i_conf TYPE REF TO zcl_lnt_prefer_inline_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_scope IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_next_token IMPORTING i_ref TYPE REF TO zcl_lnt_ivariable_reference i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS first_use_is_write IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_identifier TYPE REF TO zcl_lnt_typed_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_ivariable_reference.
    METHODS statement_has_generic_read IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_local_definition IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_identifier TYPE REF TO zcl_lnt_typed_identifier RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_scope_candidates IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prefer_inline IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_prefer_inline_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |prefer_inline|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Prefer Inline Declarations|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Prefer inline to up-front declarations.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |EXPERIMENTAL\n\nActivates if language version is v740sp02 or a|.
      t11 = t11 && |bove.\n\nVariables must be local(METHOD or FORM).\n\nNo generic |.
      t11 = t11 && |or void typed variables. No syntax errors.\n\nFirst position u|.
      t11 = t11 && |sed must be a full/pure write.\n\nMove statment is not a cast(|.
      t11 = t11 && |?=)\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap|.
      t11 = t11 && |/CleanABAP.md#prefer-inline-to-up-front-declarations|.
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
      DATA(t23) = |Upport|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Experimental|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      DATA(t27) = |Quickfix|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t18.
      t17 = t28.
      t15 = t17.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t15 = t29.
    ENDIF.
    t14 = t15.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |DATA foo TYPE i.\nfoo = 2.\nDATA percentage TYPE decfloat34.\np|.
      t33 = t33 && |ercentage = ( comment_number / abs_statement_number ) * 100.|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = |DATA(foo) = 2.\nDATA(percentage) = CONV decfloat34( comment_n|.
      t39 = t39 && |umber / abs_statement_number ) * 100.|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    t36 = t37.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t44 = t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_pr_in_ts_pr_inl.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_prf_inl_ts_prf_inl.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_pr_in_ts_pr_inl.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE string.
    DATA(t4) = t1.
    t3 = t4->get_type( ).
    DATA(t5) = |INTF|.
    t2 = xsdbool( t3 = t5 ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t6.
      result = t6.
      RETURN.
    ENDIF.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    DATA t11 TYPE REF TO zif_lnt_configuration.
    DATA(t12) = me->reg.
    t11 = t12->get_config( ).
    t10 = t11->get_release( ).
    DATA t13 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t15.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t15 = zcl_lnt_version_module=>release_b8cd.
    DATA(t16) = |v740sp02|.
    t14 = t15->get( p0 = t16 ).
    t13 = t14.
    t9 = zcl_lnt_version_module=>release_at_least( i_running = t10 i_required = t13 ).
    t8 = xsdbool( t9 = abap_false ).
    t7 = t8.
    IF t8 = abap_true.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE string.
      DATA t19 TYPE REF TO zif_lnt_configuration.
      DATA(t20) = me->reg.
      t19 = t20->get_config( ).
      t18 = t19->get_language_version( ).
      DATA(t21) = |Cloud|.
      t17 = xsdbool( t18 <> t21 ).
      t7 = t17.
    ENDIF.
    IF t7 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t22.
      result = t22.
      RETURN.
    ELSE.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      DATA(t25) = t1.
      t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_abap_object ).
      t23 = xsdbool( t24 = abap_false ).
      IF t23 = abap_true.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t26.
        result = t26.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t28 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t29 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t30) = me->reg.
    DATA t31 TYPE REF TO zcl_lnt_abap_object.
    DATA(t32) = t1.
    DATA t33 TYPE REF TO object.
    t33 = t32.
    t31 ?= t33.
    t29 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t30 i_object_19cd = t31 ).
    t28 = t29->run( ).
    t27 = t28.
    DATA t34 TYPE abap_bool.
    DATA t35 TYPE i.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t37) = t27.
    t36 = t37->zlnt_view_read_sr_bd188c319c03( ).
    t36->load( ).
    t35 = lines( t36->items ).
    DATA(t38) = 0.
    t34 = xsdbool( t35 > t38 ).
    IF t34 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t39.
      result = t39.
      RETURN.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t42 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t43 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t44) = t27.
    t43 = t44->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t42 = t43->get_top( ).
    t41 = me->find_scope_candidates( i_node = t42 ).
    t40 = t41.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t46.
    t45 = t46.
    DATA(t47) = t40.
    DATA t48 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t48.
    DATA t49 TYPE REF TO object.
    CLEAR t49.
    DATA(t50) = VALUE i( ).
    DO.
      t47->load( ).
      IF t50 >= lines( t47->items ).
        EXIT.
      ENDIF.
      CLEAR t49.
      READ TABLE t47->items INDEX t50 + 1 INTO t49.
      t50 = t50 + 1.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      CLEAR t48.
      IF t49 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t51 ?= t49.
        DATA t52 TYPE REF TO object.
        t52 = t51->as_ref( ).
        t48 ?= t52.
      ELSE.
        t48 ?= t49.
      ENDIF.
      DATA(t53) = VALUE i( ).
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t55) = t48.
      DATA t56 TYPE REF TO zcl_lnt_abap_object.
      DATA(t57) = t1.
      DATA t58 TYPE REF TO object.
      t58 = t57.
      t56 ?= t58.
      t54 = me->analyze_scope( i_node = t55 i_obj_1ed0 = t56 ).
      DATA t59 TYPE REF TO zcl_lnt_issue.
      CLEAR t59.
      DATA t60 TYPE REF TO object.
      CLEAR t60.
      DATA(t61) = VALUE i( ).
      DO.
        t54->load( ).
        IF t61 >= lines( t54->items ).
          EXIT.
        ENDIF.
        CLEAR t60.
        READ TABLE t54->items INDEX t61 + 1 INTO t60.
        t61 = t61 + 1.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        CLEAR t59.
        IF t60 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t62 ?= t60.
          DATA t63 TYPE REF TO object.
          t63 = t62->as_ref( ).
          t59 ?= t63.
        ELSE.
          t59 ?= t60.
        ENDIF.
        DATA(t64) = t45.
        DATA(t65) = t59.
        t64->load( ).
        APPEND t65 TO t64->items.
        t64->save( ).
      ENDDO.
      DATA t66 TYPE i.
      DATA(t67) = t45.
      t67->load( ).
      t66 = lines( t67->items ).
      t53 = t66.
    ENDDO.
    DATA(t68) = t45.
    result = t68.

  ENDMETHOD.

  METHOD analyze_scope.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t6 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t7 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t8) = t1.
    t7 = t8->get_data( ).
    t6 = t7->vars.
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t10) = t5.
    t9 = t10->keys( ).
    DATA(t11) = VALUE string( ).
    t9->dense( ).
    DATA(t12) = VALUE i( ).
    DO.
      t9->load( ).
      IF t12 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t9->items INDEX t12 + 1 INTO t11.
      IF t9->has( t12 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t15) = t5.
      DATA(t16) = t11.
      t14 = t15->get( p0 = t16 ).
      t13 = t14.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA t21 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t22) = t1.
      t21 = t22.
      DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t24 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t25) = t13.
      t24 = t25.
      t23 = t24.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zcl_lnt_irange.
      DATA t28 TYPE REF TO zcl_lnt_irange.
      DATA(t29) = t21.
      t28 = t29->calc_coverage( ).
      t27 = t28.
      DATA t30 TYPE REF TO zcl_lnt_position.
      DATA t31 TYPE REF TO zcl_lnt_position.
      DATA(t32) = t27.
      t31 = t32->start.
      t30 = t31.
      DATA t33 TYPE REF TO zcl_lnt_position.
      DATA t34 TYPE REF TO zcl_lnt_position.
      DATA(t35) = t27.
      t34 = t35->end.
      t33 = t34.
      DATA(t36) = VALUE abap_bool( ).
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE REF TO zcl_lnt_position.
      DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t41) = t23.
      t40 = t41.
      DATA t42 TYPE REF TO zcl_lnt_position.
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = t40.
      t44 = t45->token.
      t43 = t44.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA(t47) = t43.
      t46 = t47->start.
      t42 = t46.
      t39 = t42.
      DATA(t48) = t30.
      t38 = t39->is_after( i_p = t48 ).
      t37 = t38.
      IF t38 = abap_true.
        DATA(t49) = VALUE abap_bool( ).
        DATA t50 TYPE REF TO zcl_lnt_position.
        DATA t51 TYPE REF TO zcl_lnt_position.
        DATA t52 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t53) = t23.
        t52 = t53.
        DATA t54 TYPE REF TO zcl_lnt_position.
        DATA t55 TYPE REF TO zcl_lnt_abstract_token.
        DATA t56 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t57) = t52.
        t56 = t57->token.
        t55 = t56.
        DATA t58 TYPE REF TO zcl_lnt_position.
        DATA(t59) = t55.
        t58 = t59->start.
        t54 = t58.
        t51 = t54.
        t50 = t51.
        DATA t60 TYPE REF TO zcl_lnt_position.
        DATA(t61) = t33.
        t60 = t61.
        DATA t62 TYPE abap_bool.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE f.
        DATA(t65) = t50.
        t64 = t65->row.
        DATA t66 TYPE f.
        DATA(t67) = t60.
        t66 = t67->row.
        t63 = xsdbool( t64 < t66 ).
        t62 = t63.
        IF t63 = abap_false.
          DATA t68 TYPE abap_bool.
          DATA t69 TYPE abap_bool.
          DATA t70 TYPE f.
          DATA(t71) = t50.
          t70 = t71->row.
          DATA t72 TYPE f.
          DATA(t73) = t60.
          t72 = t73->row.
          t69 = xsdbool( t70 = t72 ).
          t68 = t69.
          IF t69 = abap_true.
            DATA t74 TYPE abap_bool.
            DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t76) = t50.
            t75 = t76->col.
            DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t78) = t60.
            t77 = t78->col.
            t74 = zlnt_runtime_numb_290eb04a9758=>compare( left = t75 right = t77 op = `<` ).
            t68 = t74.
          ENDIF.
          t62 = t68.
        ENDIF.
        t49 = t62.
        t37 = t49.
      ENDIF.
      IF t37 = abap_true.
        DATA(t79) = abap_true.
        t36 = t79.
      ELSE.
        DATA(t80) = abap_false.
        t36 = t80.
      ENDIF.
      t26 = t36.
      t20 = t26.
      DATA(t81) = abap_false.
      t19 = xsdbool( t20 = t81 ).
      t18 = t19.
      IF t19 = abap_false.
        DATA t82 TYPE abap_bool.
        DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t86) = t13.
        t85 = t86.
        t84 = t85.
        DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t88) = t84.
        t87 = t88->meta.
        t83 = t87.
        DATA(t89) = |inline|.
        t82 = t83->includes( p0 = t89 ).
        t18 = t82.
      ENDIF.
      t17 = t18.
      IF t18 = abap_false.
        DATA t90 TYPE abap_bool.
        DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t92 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t93 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t94) = t13.
        t93 = t94.
        t92 = t93.
        DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t96) = t92.
        t95 = t96->meta.
        t91 = t95.
        DATA(t97) = |form_parameter|.
        t90 = t91->includes( p0 = t97 ).
        t17 = t90.
      ENDIF.
      IF t17 = abap_true.
        CONTINUE.
      ELSE.
        DATA t98 TYPE abap_bool.
        DATA t99 TYPE abap_bool.
        DATA t100 TYPE REF TO zcl_lnt_abstract_type.
        DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t103) = t13.
        t102 = t103.
        t101 = t102.
        DATA t104 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t105) = t101.
        t104 = t105->type_cba0.
        t100 = t104.
        t99 = t100->is_generic( ).
        DATA(t106) = abap_true.
        t98 = xsdbool( t99 = t106 ).
        IF t98 = abap_true.
          CONTINUE.
        ELSE.
          DATA t107 TYPE abap_bool.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE REF TO zcl_lnt_abstract_type.
          DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t112) = t13.
          t111 = t112.
          t110 = t111.
          DATA t113 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t114) = t110.
          t113 = t114->type_cba0.
          t109 = t113.
          t108 = t109->contains_void( ).
          DATA(t115) = abap_true.
          t107 = xsdbool( t108 = t115 ).
          IF t107 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t116 TYPE REF TO zcl_lnt_ivariable_reference.
      DATA t117 TYPE REF TO zcl_lnt_ivariable_reference.
      DATA(t118) = t1.
      DATA t119 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t120) = t13.
      t119 = t120.
      t117 = me->first_use_is_write( i_node = t118 i_identifier = t119 ).
      t116 = t117.
      DATA(t121) = VALUE abap_bool( ).
      DATA t122 TYPE REF TO zcl_lnt_ivariable_reference.
      DATA(t123) = t116.
      t122 = t123.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      t124 = t125.
      DATA(t126) = VALUE abap_bool( ).
      DATA(t127) = t122.
      IF t127 IS INITIAL.
        t126 = abap_true.
      ENDIF.
      t121 = t126.
      IF t121 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t128 TYPE REF TO zcl_lnt_abstract_token.
      DATA t129 TYPE REF TO zcl_lnt_abstract_token.
      DATA t130 TYPE REF TO zcl_lnt_ivariable_reference.
      DATA(t131) = t116.
      t130 = t131.
      DATA(t132) = t2.
      t129 = me->find_next_token( i_ref = t130 i_obj_1ed0 = t132 ).
      t128 = t129.
      DATA(t133) = VALUE abap_bool( ).
      DATA t134 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t135) = t128.
      t134 = t135.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      t136 = t137.
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = t134.
      IF t139 IS INITIAL.
        t138 = abap_true.
      ENDIF.
      t133 = t138.
      IF t133 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = VALUE abap_bool( ).
        DATA(t142) = VALUE abap_bool( ).
        DATA t143 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t143.
        DATA t144 TYPE REF TO zcl_lnt_position.
        CLEAR t144.
        DATA t145 TYPE REF TO zcl_lnt_position.
        CLEAR t145.
        DATA t146 TYPE REF TO zcl_lnt_abstract_token.
        DATA t147 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t148) = t128.
        t147 = t148.
        t146 = t147.
        DATA t149 TYPE REF TO zcl_lnt_position.
        CLEAR t149.
        DATA(t150) = VALUE abap_bool( ).
        DATA(t151) = t146.
        IF t151 IS INITIAL.
          t150 = abap_true.
        ENDIF.
        IF t150 = abap_true.
          DATA t152 TYPE REF TO zcl_lnt_position.
          CLEAR t152.
          t149 = t152.
        ELSE.
          DATA t153 TYPE REF TO zcl_lnt_position.
          DATA t154 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t155) = t146.
          t154 = t155.
          DATA t156 TYPE REF TO zcl_lnt_position.
          DATA(t157) = t154.
          t156 = t157->start.
          t153 = t156.
          t149 = t153.
        ENDIF.
        t145 = t149.
        t144 = t145.
        DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t158.
        DATA(t159) = VALUE abap_bool( ).
        DATA(t160) = t144.
        IF t160 IS INITIAL.
          t159 = abap_true.
        ENDIF.
        IF t159 = abap_true.
          DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t161.
          t158 = t161.
        ELSE.
          DATA t162 TYPE abap_bool.
          DATA t163 TYPE REF TO zcl_lnt_position.
          DATA(t164) = t144.
          t163 = t164.
          DATA t165 TYPE REF TO zcl_lnt_position.
          DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t167 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t168 TYPE REF TO zcl_lnt_ivariable_reference.
          DATA(t169) = t116.
          t168 = t169.
          t167 = t168->position_7b94.
          t166 = t167.
          DATA t170 TYPE REF TO zcl_lnt_position.
          DATA t171 TYPE REF TO zcl_lnt_abstract_token.
          DATA t172 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t173) = t166.
          t172 = t173->token.
          t171 = t172.
          DATA t174 TYPE REF TO zcl_lnt_position.
          DATA t175 TYPE f.
          DATA t176 TYPE REF TO zcl_lnt_position.
          DATA t177 TYPE REF TO zcl_lnt_position.
          DATA(t178) = t171.
          t177 = t178->start.
          t176 = t177.
          DATA t179 TYPE f.
          DATA(t180) = t176.
          t179 = t180->row.
          t175 = t179.
          DATA t181 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t182 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t183 TYPE REF TO zcl_lnt_position.
          DATA t184 TYPE REF TO zcl_lnt_position.
          DATA(t185) = t171.
          t184 = t185->start.
          t183 = t184.
          DATA t186 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t187) = t183.
          t186 = t187->col.
          t182 = t186.
          DATA t188 TYPE f.
          DATA t189 TYPE i.
          DATA t190 TYPE string.
          DATA(t191) = t171.
          t190 = t191->str.
          DATA(t192) = strlen( t190 ).
          t189 = t192.
          t188 = t189.
          DATA(t193) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t193->has = abap_true.
          t193->value = t188.
          t181 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t182 right = t193 op = `+` ).
          t174 = NEW zcl_lnt_position( i_row = t175 i_col = t181 ).
          t170 = t174.
          t165 = t170.
          t162 = t163->equals( i_p = t165 ).
          DATA(t194) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t194->has = abap_true.
          t194->value = t162.
          t158 = t194.
        ENDIF.
        t143 = t158.
        IF t143 IS BOUND.
          IF t143->has = abap_true.
            t142 = xsdbool( t143->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t141 = t142.
        IF t142 = abap_true.
          DATA t195 TYPE abap_bool.
          DATA t196 TYPE string.
          DATA t197 TYPE REF TO zcl_lnt_abstract_token.
          DATA t198 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t199) = t128.
          t198 = t199.
          t197 = t198.
          DATA t200 TYPE string.
          DATA(t201) = t197.
          t200 = t201->str.
          t196 = t200.
          DATA(t202) = |.|.
          t195 = xsdbool( t196 <> t202 ).
          t141 = t195.
        ENDIF.
        t140 = t141.
        IF t141 = abap_true.
          DATA t203 TYPE abap_bool.
          DATA t204 TYPE string.
          DATA t205 TYPE REF TO zcl_lnt_abstract_token.
          DATA t206 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t207) = t128.
          t206 = t207.
          t205 = t206.
          DATA t208 TYPE string.
          DATA(t209) = t205.
          t208 = t209->str.
          t204 = t208.
          DATA(t210) = |,|.
          t203 = xsdbool( t204 <> t210 ).
          t140 = t203.
        ENDIF.
        IF t140 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t211 TYPE REF TO zcl_lnt_abap_file.
      DATA t212 TYPE REF TO zcl_lnt_abap_file.
      DATA(t213) = t2.
      DATA t214 TYPE string.
      DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t216 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t217) = t13.
      t216 = t217.
      t215 = t216.
      DATA t218 TYPE string.
      DATA(t219) = t215.
      t218 = t219->filename.
      t214 = t218.
      t212 = t213->get_abap_file_by_name( i_filename = t214 ).
      t211 = t212.
      DATA t220 TYPE REF TO zcl_lnt_statement_node.
      DATA t221 TYPE REF TO zcl_lnt_statement_node.
      DATA t222 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t223) = t128.
      t222 = t223.
      DATA(t224) = t211.
      t221 = zcl_lnt_edit_helper=>find_statement( i_token = t222 i_file = t224 ).
      t220 = t221.
      DATA(t225) = VALUE abap_bool( ).
      DATA t226 TYPE REF TO zcl_lnt_statement_node.
      DATA(t227) = t220.
      t226 = t227.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      t228 = t229.
      DATA(t230) = VALUE abap_bool( ).
      DATA(t231) = t226.
      IF t231 IS INITIAL.
        t230 = abap_true.
      ENDIF.
      t225 = t230.
      IF t225 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t232 TYPE REF TO zif_lnt_statement.
      CLEAR t232.
      DATA t233 TYPE REF TO zif_lnt_statement.
      CLEAR t233.
      DATA t234 TYPE REF TO zcl_lnt_statement_node.
      DATA t235 TYPE REF TO zcl_lnt_statement_node.
      DATA(t236) = t220.
      t235 = t236.
      t234 = t235.
      DATA t237 TYPE REF TO zif_lnt_statement.
      CLEAR t237.
      DATA(t238) = VALUE abap_bool( ).
      DATA(t239) = t234.
      IF t239 IS INITIAL.
        t238 = abap_true.
      ENDIF.
      IF t238 = abap_true.
        DATA t240 TYPE REF TO zif_lnt_statement.
        CLEAR t240.
        t237 = t240.
      ELSE.
        DATA t241 TYPE REF TO zif_lnt_statement.
        DATA(t242) = t234.
        t241 = t242->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t237 = t241.
      ENDIF.
      t233 = t237.
      t232 = t233.
      DATA(t243) = VALUE abap_bool( ).
      DATA t244 TYPE REF TO zif_lnt_statement.
      DATA(t245) = t232.
      t244 = t245.
      DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t247.
      t246 = t247.
      DATA(t248) = VALUE abap_bool( ).
      DATA(t249) = t244.
      IF t249 IS INITIAL.
        t248 = abap_true.
      ENDIF.
      t243 = t248.
      IF t243 = abap_true.
        CONTINUE.
      ELSE.
        DATA t250 TYPE abap_bool.
        DATA(t251) = t1.
        DATA t252 TYPE REF TO zcl_lnt_statement_node.
        DATA(t253) = t220.
        t252 = t253.
        t250 = me->statement_has_generic_read( i_node = t251 i_statement = t252 ).
        IF t250 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA(t254) = VALUE abap_bool( ).
      DATA(t255) = VALUE abap_bool( ).
      DATA(t256) = VALUE abap_bool( ).
      DATA(t257) = VALUE abap_bool( ).
      DATA(t258) = VALUE abap_bool( ).
      DATA t259 TYPE abap_bool.
      DATA t260 TYPE abap_bool.
      DATA(t261) = t232.
      t260 = xsdbool( t261 IS BOUND AND t261 IS INSTANCE OF zcl_lnt_st_move ).
      t259 = t260.
      IF t260 = abap_false.
        DATA t262 TYPE abap_bool.
        DATA(t263) = t232.
        t262 = xsdbool( t263 IS BOUND AND t263 IS INSTANCE OF zcl_lnt_st_catch ).
        t259 = t262.
      ENDIF.
      t258 = t259.
      IF t259 = abap_false.
        DATA t264 TYPE abap_bool.
        DATA(t265) = t232.
        t264 = xsdbool( t265 IS BOUND AND t265 IS INSTANCE OF zcl_lnt_st_read_table ).
        t258 = t264.
      ENDIF.
      t257 = t258.
      IF t258 = abap_false.
        DATA t266 TYPE abap_bool.
        DATA(t267) = t232.
        t266 = xsdbool( t267 IS BOUND AND t267 IS INSTANCE OF zcl_lnt_st_loop ).
        t257 = t266.
      ENDIF.
      t256 = xsdbool( t257 = abap_false ).
      t255 = t256.
      IF t256 = abap_false.
        DATA(t268) = VALUE abap_bool( ).
        DATA t269 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t269.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t270.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        DATA t272 TYPE REF TO zcl_lnt_statement_node.
        DATA t273 TYPE REF TO zcl_lnt_statement_node.
        DATA(t274) = t220.
        t273 = t274.
        t272 = t273.
        DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t275.
        DATA(t276) = VALUE abap_bool( ).
        DATA(t277) = t272.
        IF t277 IS INITIAL.
          t276 = abap_true.
        ENDIF.
        IF t276 = abap_true.
          DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t278.
          t275 = t278.
        ELSE.
          DATA t279 TYPE string.
          DATA(t280) = t272.
          t279 = t280->concat_tokens( ).
          DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t281->has = abap_true.
          t281->value = t279.
          t275 = t281.
        ENDIF.
        t271 = t275.
        t270 = t271.
        DATA t282 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t282.
        DATA(t283) = VALUE abap_bool( ).
        DATA(t284) = t270.
        IF t284 IS INITIAL.
          t283 = abap_true.
        ELSEIF t284->has = abap_false.
          t283 = abap_true.
        ENDIF.
        IF t283 = abap_true.
          DATA t285 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t285.
          t282 = t285.
        ELSE.
          DATA(t286) = VALUE abap_bool( ).
          DATA(t287) = VALUE i( ).
          DATA t288 TYPE string.
          DATA(t289) = t270.
          t288 = t289->value.
          DATA(t290) = |?=|.
          DATA(t291) = strlen( t288 ).
          IF t290 IS INITIAL.
            t287 = 0.
          ELSE.
            FIND t290 IN t288 MATCH OFFSET t287.
            IF sy-subrc <> 0.
              t287 = -1.
            ENDIF.
          ENDIF.
          DATA(t292) = 0.
          t286 = xsdbool( t287 >= t292 ).
          DATA(t293) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t293->has = abap_true.
          t293->value = t286.
          t282 = t293.
        ENDIF.
        t269 = t282.
        IF t269 IS BOUND.
          IF t269->has = abap_true.
            t268 = xsdbool( t269->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t255 = t268.
      ENDIF.
      t254 = t255.
      IF t255 = abap_false.
        DATA(t294) = VALUE abap_bool( ).
        DATA t295 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t295.
        DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t296.
        DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t297.
        DATA t298 TYPE REF TO zcl_lnt_statement_node.
        DATA t299 TYPE REF TO zcl_lnt_statement_node.
        DATA(t300) = t220.
        t299 = t300.
        t298 = t299.
        DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t301.
        DATA(t302) = VALUE abap_bool( ).
        DATA(t303) = t298.
        IF t303 IS INITIAL.
          t302 = abap_true.
        ENDIF.
        IF t302 = abap_true.
          DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t304.
          t301 = t304.
        ELSE.
          DATA t305 TYPE string.
          DATA(t306) = t298.
          t305 = t306->concat_tokens( ).
          DATA(t307) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t307->has = abap_true.
          t307->value = t305.
          t301 = t307.
        ENDIF.
        t297 = t301.
        t296 = t297.
        DATA t308 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t308.
        DATA(t309) = VALUE abap_bool( ).
        DATA(t310) = t296.
        IF t310 IS INITIAL.
          t309 = abap_true.
        ELSEIF t310->has = abap_false.
          t309 = abap_true.
        ENDIF.
        IF t309 = abap_true.
          DATA t311 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t311.
          t308 = t311.
        ELSE.
          DATA(t312) = VALUE abap_bool( ).
          DATA(t313) = VALUE i( ).
          DATA t314 TYPE string.
          DATA(t315) = t296.
          t314 = t315->value.
          DATA(t316) = | #(|.
          DATA(t317) = strlen( t314 ).
          IF t316 IS INITIAL.
            t313 = 0.
          ELSE.
            FIND t316 IN t314 MATCH OFFSET t313.
            IF sy-subrc <> 0.
              t313 = -1.
            ENDIF.
          ENDIF.
          DATA(t318) = 0.
          t312 = xsdbool( t313 >= t318 ).
          DATA(t319) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t319->has = abap_true.
          t319->value = t312.
          t308 = t319.
        ENDIF.
        t295 = t308.
        IF t295 IS BOUND.
          IF t295->has = abap_true.
            t294 = xsdbool( t295->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t254 = t294.
      ENDIF.
      IF t254 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t320 TYPE REF TO zcl_lnt_statement_node.
      DATA t321 TYPE REF TO zcl_lnt_statement_node.
      DATA t322 TYPE REF TO zcl_lnt_abstract_token.
      DATA t323 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t324 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t325) = t13.
      t324 = t325.
      t323 = t324.
      DATA t326 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t327) = t323.
      t326 = t327->token.
      t322 = t326.
      DATA(t328) = t211.
      t321 = zcl_lnt_edit_helper=>find_statement( i_token = t322 i_file = t328 ).
      t320 = t321.
      DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t329.
      DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t330.
      DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t331.
      DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t332.
      DATA t333 TYPE REF TO zcl_lnt_statement_node.
      DATA(t334) = t320.
      t333 = t334.
      DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t335.
      DATA(t336) = VALUE abap_bool( ).
      DATA(t337) = t333.
      IF t337 IS INITIAL.
        t336 = abap_true.
      ENDIF.
      IF t336 = abap_true.
        DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t338.
        t335 = t338.
      ELSE.
        DATA t339 TYPE string.
        DATA t340 TYPE REF TO zcl_lnt_statement_node.
        DATA(t341) = t333.
        t340 = t341.
        t339 = t340->concat_tokens( ).
        DATA(t342) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t342->has = abap_true.
        t342->value = t339.
        t335 = t342.
      ENDIF.
      t332 = t335.
      t331 = t332.
      DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t343.
      DATA(t344) = VALUE abap_bool( ).
      DATA(t345) = t331.
      IF t345 IS INITIAL.
        t344 = abap_true.
      ELSEIF t345->has = abap_false.
        t344 = abap_true.
      ENDIF.
      IF t344 = abap_true.
        DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t346.
        t343 = t346.
      ELSE.
        DATA t347 TYPE string.
        DATA t348 TYPE string.
        DATA(t349) = t331.
        t348 = t349->value.
        DATA(t350) = strlen( t348 ).
        t347 = t348.
        IF t347 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t347 TO UPPER CASE.
        ELSE.
          t347 = zlnt_runtime_uppe_91169605024d=>full( t347 ).
        ENDIF.
        DATA(t351) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t351->has = abap_true.
        t351->value = t347.
        t343 = t351.
      ENDIF.
      t330 = t343.
      t329 = t330.
      DATA(t352) = VALUE abap_bool( ).
      DATA t353 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t353.
      DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t355) = t329.
      t354 = t355.
      DATA t356 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t356.
      DATA(t357) = VALUE abap_bool( ).
      DATA(t358) = t354.
      IF t358 IS INITIAL.
        t357 = abap_true.
      ELSEIF t358->has = abap_false.
        t357 = abap_true.
      ENDIF.
      IF t357 = abap_true.
        DATA t359 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t359.
        t356 = t359.
      ELSE.
        DATA(t360) = VALUE abap_bool( ).
        DATA(t361) = VALUE i( ).
        DATA t362 TYPE string.
        DATA(t363) = t354.
        t362 = t363->value.
        DATA(t364) = |BEGIN OF|.
        DATA(t365) = strlen( t362 ).
        IF t364 IS INITIAL.
          t361 = 0.
        ELSE.
          FIND t364 IN t362 MATCH OFFSET t361.
          IF sy-subrc <> 0.
            t361 = -1.
          ENDIF.
        ENDIF.
        DATA(t366) = 0.
        t360 = xsdbool( t361 >= t366 ).
        DATA(t367) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t367->has = abap_true.
        t367->value = t360.
        t356 = t367.
      ENDIF.
      t353 = t356.
      IF t353 IS BOUND.
        IF t353->has = abap_true.
          t352 = xsdbool( t353->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t352 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t368 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t369 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t369.
      t368 = t369.
      DATA t370 TYPE abap_bool.
      DATA t371 TYPE abap_bool.
      DATA(t372) = t211.
      t371 = xsdbool( t372 IS BOUND ).
      t370 = t371.
      IF t371 = abap_true.
        DATA t373 TYPE abap_bool.
        DATA(t374) = t320.
        t373 = xsdbool( t374 IS BOUND ).
        t370 = t373.
      ENDIF.
      IF t370 = abap_true.
        DATA t375 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t376 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t377 TYPE REF TO zcl_lnt_abap_file.
        DATA(t378) = t211.
        t377 = t378.
        DATA t379 TYPE REF TO zcl_lnt_statement_node.
        DATA(t380) = t320.
        t379 = t380.
        t376 = zcl_lnt_edit_helper=>delete_statement( i_file = t377 i_statement = t379 ).
        t375 = t376.
        DATA(t381) = VALUE string( ).
        DATA(t382) = VALUE string( ).
        DATA t383 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t384 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t385) = t13.
        t384 = t385.
        t383 = t384.
        DATA(t386) = VALUE string( ).
        DATA t387 TYPE string.
        DATA t388 TYPE string.
        DATA t389 TYPE REF TO zcl_lnt_abstract_token.
        DATA t390 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t391) = t383.
        t390 = t391->token.
        t389 = t390.
        DATA t392 TYPE string.
        DATA(t393) = t389.
        t392 = t393->str.
        t388 = t392.
        t387 = t388.
        DATA(t394) = VALUE abap_bool( ).
        DATA(t395) = VALUE string( ).
        DATA(t396) = t387.
        DATA(t397) = 0.
        DATA(t398) = 1.
        DATA(t399) = strlen( t396 ).
        IF t397 < 0.
          t397 = t397 + t399.
          IF t397 < 0.
            t397 = 0.
          ENDIF.
        ENDIF.
        IF t397 > t399 OR t398 <= 0.
          CLEAR t395.
        ELSE.
          IF t398 > t399 - t397.
            t398 = t399 - t397.
          ENDIF.
          t395 = t396+t397(t398).
        ENDIF.
        DATA(t400) = |!|.
        t394 = xsdbool( t395 = t400 ).
        IF t394 = abap_true.
          DATA(t401) = VALUE string( ).
          DATA t402 TYPE string.
          DATA(t403) = t387.
          t402 = t403.
          DATA(t404) = VALUE string( ).
          DATA(t405) = t402.
          DATA(t406) = 1.
          DATA t407 TYPE i.
          DATA(t408) = t402.
          DATA(t409) = strlen( t408 ).
          t407 = t409.
          DATA(t410) = strlen( t405 ).
          IF t406 < 0.
            t406 = t406 + t410.
            IF t406 < 0.
              t406 = 0.
            ENDIF.
          ENDIF.
          IF t406 > t410 OR t407 <= 0.
            CLEAR t404.
          ELSE.
            IF t407 > t410 - t406.
              t407 = t410 - t406.
            ENDIF.
            t404 = t405+t406(t407).
          ENDIF.
          t401 = t404.
          t387 = t401.
        ENDIF.
        DATA(t411) = t387.
        t386 = t411.
        t382 = t386.
        t381 = t382.
        DATA(t412) = VALUE string( ).
        DATA(t413) = VALUE string( ).
        DATA(t414) = VALUE abap_bool( ).
        DATA(t415) = t381.
        DATA(t416) = |<|.
        DATA(t417) = strlen( t415 ).
        DATA t418 TYPE i.
        DATA(t419) = VALUE i( ).
        DATA(t420) = VALUE string( ).
        t418 = strlen( t416 ).
        IF t418 = 0.
          t414 = abap_true.
        ELSEIF t418 <= t417.
          t419 = 0.
          t420 = t415+t419(t418).
          IF t420 = t416.
            t414 = abap_true.
          ENDIF.
        ENDIF.
        IF t414 = abap_true.
          DATA t421 TYPE string.
          DATA t422 TYPE string.
          DATA(t423) = |FIELD-SYMBOL(|.
          DATA(t424) = t381.
          DATA(t425) = strlen( t423 ).
          t422 = |{ t423 }{ t424 }|.
          DATA(t426) = |)|.
          DATA(t427) = strlen( t422 ).
          t421 = |{ t422 }{ t426 }|.
          t413 = t421.
        ELSE.
          DATA t428 TYPE string.
          DATA t429 TYPE string.
          DATA(t430) = |DATA(|.
          DATA(t431) = t381.
          DATA(t432) = strlen( t430 ).
          t429 = |{ t430 }{ t431 }|.
          DATA(t433) = |)|.
          DATA(t434) = strlen( t429 ).
          t428 = |{ t429 }{ t433 }|.
          t413 = t428.
        ENDIF.
        t412 = t413.
        DATA t435 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t436 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t437 TYPE REF TO zcl_lnt_abap_file.
        DATA(t438) = t211.
        t437 = t438.
        DATA t439 TYPE REF TO zcl_lnt_position.
        DATA t440 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t441 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t442 TYPE REF TO zcl_lnt_ivariable_reference.
        DATA(t443) = t116.
        t442 = t443.
        t441 = t442->position_7b94.
        t440 = t441.
        DATA t444 TYPE REF TO zcl_lnt_position.
        DATA t445 TYPE REF TO zcl_lnt_abstract_token.
        DATA t446 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t447) = t440.
        t446 = t447->token.
        t445 = t446.
        DATA t448 TYPE REF TO zcl_lnt_position.
        DATA(t449) = t445.
        t448 = t449->start.
        t444 = t448.
        t439 = t444.
        DATA t450 TYPE REF TO zcl_lnt_position.
        DATA t451 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t452 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t453 TYPE REF TO zcl_lnt_ivariable_reference.
        DATA(t454) = t116.
        t453 = t454.
        t452 = t453->position_7b94.
        t451 = t452.
        DATA t455 TYPE REF TO zcl_lnt_position.
        DATA t456 TYPE REF TO zcl_lnt_abstract_token.
        DATA t457 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t458) = t451.
        t457 = t458->token.
        t456 = t457.
        DATA t459 TYPE REF TO zcl_lnt_position.
        DATA t460 TYPE f.
        DATA t461 TYPE REF TO zcl_lnt_position.
        DATA t462 TYPE REF TO zcl_lnt_position.
        DATA(t463) = t456.
        t462 = t463->start.
        t461 = t462.
        DATA t464 TYPE f.
        DATA(t465) = t461.
        t464 = t465->row.
        t460 = t464.
        DATA t466 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t467 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t468 TYPE REF TO zcl_lnt_position.
        DATA t469 TYPE REF TO zcl_lnt_position.
        DATA(t470) = t456.
        t469 = t470->start.
        t468 = t469.
        DATA t471 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t472) = t468.
        t471 = t472->col.
        t467 = t471.
        DATA t473 TYPE f.
        DATA t474 TYPE i.
        DATA t475 TYPE string.
        DATA(t476) = t456.
        t475 = t476->str.
        DATA(t477) = strlen( t475 ).
        t474 = t477.
        t473 = t474.
        DATA(t478) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t478->has = abap_true.
        t478->value = t473.
        t466 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t467 right = t478 op = `+` ).
        t459 = NEW zcl_lnt_position( i_row = t460 i_col = t466 ).
        t455 = t459.
        t450 = t455.
        DATA(t479) = t412.
        t436 = zcl_lnt_edit_helper=>replace_range( i_file = t437 i_start = t439 i_end = t450 i_text = t479 ).
        t435 = t436.
        DATA t480 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t480.
        DATA(t481) = abap_true.
        IF t481 = abap_true.
          DATA t482 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t483) = t375.
          DATA(t484) = t435.
          t482 = zcl_lnt_edit_helper=>merge( i_fix1 = t483 i_fix2 = t484 ).
          t480 = t482.
        ELSE.
          DATA t485 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t485.
          t480 = t485.
        ENDIF.
        t368 = t480.
      ENDIF.
      DATA(t486) = VALUE string( ).
      DATA(t487) = VALUE string( ).
      DATA(t488) = VALUE string( ).
      DATA(t489) = VALUE string( ).
      DATA t490 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t490.
      DATA t491 TYPE string.
      DATA(t492) = |prefer_inline|.
      t491 = t492.
      DATA t493 TYPE string.
      DATA(t494) = |Prefer Inline Declarations|.
      t493 = t494.
      DATA t495 TYPE string.
      DATA(t496) = |Prefer inline to up-front declarations.|.
      t495 = t496.
      DATA t497 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t497.
      DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t498.
      DATA(t499) = abap_true.
      IF t499 = abap_true.
        DATA(t500) = |EXPERIMENTAL\n\nActivates if language version is v740sp02 or a|.
        t500 = t500 && |bove.\n\nVariables must be local(METHOD or FORM).\n\nNo generic |.
        t500 = t500 && |or void typed variables. No syntax errors.\n\nFirst position u|.
        t500 = t500 && |sed must be a full/pure write.\n\nMove statment is not a cast(|.
        t500 = t500 && |?=)\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap|.
        t500 = t500 && |/CleanABAP.md#prefer-inline-to-up-front-declarations|.
        DATA(t501) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t501->has = abap_true.
        t501->value = t500.
        t498 = t501.
      ELSE.
        DATA t502 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t502.
        t498 = t502.
      ENDIF.
      t497 = t498.
      DATA t503 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t503.
      DATA t504 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t504.
      DATA(t505) = abap_true.
      IF t505 = abap_true.
        DATA t506 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t507 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t508 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t508.
        t507 = t508.
        DATA(t509) = t507.
        DATA(t510) = |Styleguide|.
        t509->load( ).
        APPEND t510 TO t509->items.
        t509->save( ).
        DATA(t511) = t507.
        DATA(t512) = |Upport|.
        t511->load( ).
        APPEND t512 TO t511->items.
        t511->save( ).
        DATA(t513) = t507.
        DATA(t514) = |Experimental|.
        t513->load( ).
        APPEND t514 TO t513->items.
        t513->save( ).
        DATA(t515) = t507.
        DATA(t516) = |Quickfix|.
        t515->load( ).
        APPEND t516 TO t515->items.
        t515->save( ).
        DATA(t517) = t507.
        t506 = t517.
        t504 = t506.
      ELSE.
        DATA t518 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t518.
        t504 = t518.
      ENDIF.
      t503 = t504.
      DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t519.
      DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t520.
      DATA(t521) = abap_true.
      IF t521 = abap_true.
        DATA(t522) = |DATA foo TYPE i.\nfoo = 2.\nDATA percentage TYPE decfloat34.\np|.
        t522 = t522 && |ercentage = ( comment_number / abs_statement_number ) * 100.|.
        DATA(t523) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t523->has = abap_true.
        t523->value = t522.
        t520 = t523.
      ELSE.
        DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t524.
        t520 = t524.
      ENDIF.
      t519 = t520.
      DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t525.
      DATA t526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t526.
      DATA(t527) = abap_true.
      IF t527 = abap_true.
        DATA(t528) = |DATA(foo) = 2.\nDATA(percentage) = CONV decfloat34( comment_n|.
        t528 = t528 && |umber / abs_statement_number ) * 100.|.
        DATA(t529) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t529->has = abap_true.
        t529->value = t528.
        t526 = t529.
      ELSE.
        DATA t530 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t530.
        t526 = t530.
      ENDIF.
      t525 = t526.
      DATA t531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t532 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t532.
      t531 = t532.
      DATA t533 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t534.
      t533 = t534.
      t490 = NEW zcl_lnt_irule_metadata( i_key = t491 i_title = t493 i_short_description = t495 i_bad_example = t519 i_good_example = t525 i_extended_information = t497 i_tags = t503 i_pragma = t531 i_pseudo_comment = t533 ).
      CREATE OBJECT t490->zlnt_view_ownkeys_b0e8086400eb.
      t490->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t535.
      IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t535 ).
      ENDIF.
      DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t536.
      IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t536 ).
      ENDIF.
      DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t537.
      IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t537 ).
      ENDIF.
      DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t538.
      IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t538 ).
      ENDIF.
      DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t539.
      IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t539 ).
      ENDIF.
      DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t540.
      IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t540 ).
      ENDIF.
      DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t541.
      IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t541 ).
      ENDIF.
      CREATE OBJECT t490->zlnt_json_ownkeys_70e5fd461788.
      t490->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t542) = |key|.
      DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t543.
      IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t542 p1 = t543 ).
      ENDIF.
      DATA(t544) = |title|.
      DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t545.
      IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t544 p1 = t545 ).
      ENDIF.
      DATA(t546) = |shortDescription|.
      DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t547.
      IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t546 p1 = t547 ).
      ENDIF.
      DATA(t548) = |extendedInformation|.
      DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t549.
      IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t548 p1 = t549 ).
      ENDIF.
      DATA(t550) = |tags|.
      DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t551.
      IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t550 p1 = t551 ).
      ENDIF.
      DATA(t552) = |badExample|.
      DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t553.
      IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t552 p1 = t553 ).
      ENDIF.
      DATA(t554) = |goodExample|.
      DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t555.
      IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t554 p1 = t555 ).
      ENDIF.
      t489 = t490->title.
      DATA(t556) = |, |.
      DATA(t557) = strlen( t489 ).
      t488 = |{ t489 }{ t556 }|.
      DATA(t558) = t11.
      DATA(t559) = strlen( t488 ).
      t487 = |{ t488 }{ t558 }|.
      t486 = t487.
      DATA(t560) = t3.
      DATA t561 TYPE REF TO zcl_lnt_issue.
      CLEAR t561.
      DATA t562 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t563) = t13.
      t562 = t563.
      DATA(t564) = t486.
      DATA(t565) = VALUE string( ).
      DATA t566 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t566.
      DATA t567 TYPE string.
      DATA(t568) = |prefer_inline|.
      t567 = t568.
      DATA t569 TYPE string.
      DATA(t570) = |Prefer Inline Declarations|.
      t569 = t570.
      DATA t571 TYPE string.
      DATA(t572) = |Prefer inline to up-front declarations.|.
      t571 = t572.
      DATA t573 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t573.
      DATA t574 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t574.
      DATA(t575) = abap_true.
      IF t575 = abap_true.
        DATA(t576) = |EXPERIMENTAL\n\nActivates if language version is v740sp02 or a|.
        t576 = t576 && |bove.\n\nVariables must be local(METHOD or FORM).\n\nNo generic |.
        t576 = t576 && |or void typed variables. No syntax errors.\n\nFirst position u|.
        t576 = t576 && |sed must be a full/pure write.\n\nMove statment is not a cast(|.
        t576 = t576 && |?=)\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap|.
        t576 = t576 && |/CleanABAP.md#prefer-inline-to-up-front-declarations|.
        DATA(t577) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t577->has = abap_true.
        t577->value = t576.
        t574 = t577.
      ELSE.
        DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t578.
        t574 = t578.
      ENDIF.
      t573 = t574.
      DATA t579 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t579.
      DATA t580 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t580.
      DATA(t581) = abap_true.
      IF t581 = abap_true.
        DATA t582 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t583 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t584 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t584.
        t583 = t584.
        DATA(t585) = t583.
        DATA(t586) = |Styleguide|.
        t585->load( ).
        APPEND t586 TO t585->items.
        t585->save( ).
        DATA(t587) = t583.
        DATA(t588) = |Upport|.
        t587->load( ).
        APPEND t588 TO t587->items.
        t587->save( ).
        DATA(t589) = t583.
        DATA(t590) = |Experimental|.
        t589->load( ).
        APPEND t590 TO t589->items.
        t589->save( ).
        DATA(t591) = t583.
        DATA(t592) = |Quickfix|.
        t591->load( ).
        APPEND t592 TO t591->items.
        t591->save( ).
        DATA(t593) = t583.
        t582 = t593.
        t580 = t582.
      ELSE.
        DATA t594 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t594.
        t580 = t594.
      ENDIF.
      t579 = t580.
      DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t595.
      DATA t596 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t596.
      DATA(t597) = abap_true.
      IF t597 = abap_true.
        DATA(t598) = |DATA foo TYPE i.\nfoo = 2.\nDATA percentage TYPE decfloat34.\np|.
        t598 = t598 && |ercentage = ( comment_number / abs_statement_number ) * 100.|.
        DATA(t599) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t599->has = abap_true.
        t599->value = t598.
        t596 = t599.
      ELSE.
        DATA t600 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t600.
        t596 = t600.
      ENDIF.
      t595 = t596.
      DATA t601 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t601.
      DATA t602 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t602.
      DATA(t603) = abap_true.
      IF t603 = abap_true.
        DATA(t604) = |DATA(foo) = 2.\nDATA(percentage) = CONV decfloat34( comment_n|.
        t604 = t604 && |umber / abs_statement_number ) * 100.|.
        DATA(t605) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t605->has = abap_true.
        t605->value = t604.
        t602 = t605.
      ELSE.
        DATA t606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t606.
        t602 = t606.
      ENDIF.
      t601 = t602.
      DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t608 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t608.
      t607 = t608.
      DATA t609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t610 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t610.
      t609 = t610.
      t566 = NEW zcl_lnt_irule_metadata( i_key = t567 i_title = t569 i_short_description = t571 i_bad_example = t595 i_good_example = t601 i_extended_information = t573 i_tags = t579 i_pragma = t607 i_pseudo_comment = t609 ).
      CREATE OBJECT t566->zlnt_view_ownkeys_b0e8086400eb.
      t566->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t611.
      IF t566->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t611 ).
      ENDIF.
      DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t612.
      IF t566->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t612 ).
      ENDIF.
      DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t613.
      IF t566->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t613 ).
      ENDIF.
      DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t614.
      IF t566->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t614 ).
      ENDIF.
      DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t615.
      IF t566->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t615 ).
      ENDIF.
      DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t616.
      IF t566->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t616 ).
      ENDIF.
      DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t617.
      IF t566->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t617 ).
      ENDIF.
      CREATE OBJECT t566->zlnt_json_ownkeys_70e5fd461788.
      t566->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t618) = |key|.
      DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t619.
      IF t566->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = t618 p1 = t619 ).
      ENDIF.
      DATA(t620) = |title|.
      DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t621.
      IF t566->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = t620 p1 = t621 ).
      ENDIF.
      DATA(t622) = |shortDescription|.
      DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t623.
      IF t566->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = t622 p1 = t623 ).
      ENDIF.
      DATA(t624) = |extendedInformation|.
      DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t625.
      IF t566->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = t624 p1 = t625 ).
      ENDIF.
      DATA(t626) = |tags|.
      DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t627.
      IF t566->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = t626 p1 = t627 ).
      ENDIF.
      DATA(t628) = |badExample|.
      DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t629.
      IF t566->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = t628 p1 = t629 ).
      ENDIF.
      DATA(t630) = |goodExample|.
      DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t631.
      IF t566->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = t630 p1 = t631 ).
      ENDIF.
      t565 = t566->key.
      DATA t632 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t633) = me->conf.
      t632 = t633->zlnt_view_read_sr_15c06369f827( ).
      DATA(t634) = t368.
      t561 = zcl_lnt_issue=>at_identifier( i_identifier = t562 i_message_26cb = t564 i_key = t565 i_severity = t632 i_fix = t634 ).
      t560->load( ).
      APPEND t561 TO t560->items.
      t560->save( ).
    ENDDO.
    DATA(t635) = t3.
    result = t635.

  ENDMETHOD.

  METHOD find_next_token.
    DATA(t1) = i_ref.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = t2.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t9) = t1.
    t8 = t9->resolved.
    t7 = t8.
    DATA t10 TYPE string.
    DATA(t11) = t7.
    t10 = t11->filename.
    t6 = t10.
    t4 = t5->get_abap_file_by_name( i_filename = t6 ).
    t3 = t4.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_abap_file.
    DATA(t14) = t3.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t13.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    t12 = t17.
    IF t12 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t19.
      result = t19.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zcl_lnt_abap_file.
    DATA(t22) = t3.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t23.
    t20 = t21->get_tokens( i_with_pragmas = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    DATA(t26) = VALUE i( ).
    DO.
      t20->load( ).
      IF t26 >= lines( t20->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t20->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE REF TO zcl_lnt_position.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t32) = t24.
      t31 = t32.
      DATA t33 TYPE REF TO zcl_lnt_position.
      DATA(t34) = t31.
      t33 = t34->start.
      t30 = t33.
      DATA t35 TYPE REF TO zcl_lnt_position.
      DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t38) = t1.
      t37 = t38->position_7b94.
      t36 = t37.
      DATA t39 TYPE REF TO zcl_lnt_position.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t42) = t36.
      t41 = t42->token.
      t40 = t41.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE f.
      DATA t45 TYPE REF TO zcl_lnt_position.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA(t47) = t40.
      t46 = t47->start.
      t45 = t46.
      DATA t48 TYPE f.
      DATA(t49) = t45.
      t48 = t49->row.
      t44 = t48.
      DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t52 TYPE REF TO zcl_lnt_position.
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA(t54) = t40.
      t53 = t54->start.
      t52 = t53.
      DATA t55 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t56) = t52.
      t55 = t56->col.
      t51 = t55.
      DATA t57 TYPE f.
      DATA t58 TYPE i.
      DATA t59 TYPE string.
      DATA(t60) = t40.
      t59 = t60->str.
      DATA(t61) = strlen( t59 ).
      t58 = t61.
      t57 = t58.
      DATA(t62) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t62->has = abap_true.
      t62->value = t57.
      t50 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t51 right = t62 op = `+` ).
      t43 = NEW zcl_lnt_position( i_row = t44 i_col = t50 ).
      t39 = t43.
      t35 = t39.
      t29 = t30->is_after( i_p = t35 ).
      IF t29 = abap_true.
        DATA t63 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA(t65) = t24.
          t63 = t65.
        ELSE.
          DATA t66 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t66.
          t63 = t66.
        ENDIF.
        result = t63.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t67 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t67.
    result = t67.

  ENDMETHOD.

  METHOD first_use_is_write.
    DATA(t1) = i_node.
    DATA(t2) = i_identifier.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t5) = t1.
    t4 = t5->get_data( ).
    t3 = t4->references.
    DATA t6 TYPE REF TO zcl_lnt_ireference.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
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
      DATA t13 TYPE string.
      DATA(t14) = t6.
      t13 = t14->reference_type.
      DATA(t15) = |Type|.
      t12 = xsdbool( t13 = t15 ).
      t11 = t12.
      IF t12 = abap_true.
        DATA(t16) = VALUE abap_bool( ).
        DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_position.
        CLEAR t18.
        DATA t19 TYPE REF TO zcl_lnt_position.
        CLEAR t19.
        DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t22) = t6.
        t21 = t22->resolved.
        t20 = t21.
        DATA t23 TYPE REF TO zcl_lnt_position.
        CLEAR t23.
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = t20.
        IF t25 IS INITIAL.
          t24 = abap_true.
        ENDIF.
        IF t24 = abap_true.
          DATA t26 TYPE REF TO zcl_lnt_position.
          CLEAR t26.
          t23 = t26.
        ELSE.
          DATA t27 TYPE REF TO zcl_lnt_position.
          DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t29 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t30) = t20.
          t29 = t30.
          t28 = t29.
          DATA t31 TYPE REF TO zcl_lnt_position.
          DATA t32 TYPE REF TO zcl_lnt_abstract_token.
          DATA t33 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t34) = t28.
          t33 = t34->token.
          t32 = t33.
          DATA t35 TYPE REF TO zcl_lnt_position.
          DATA(t36) = t32.
          t35 = t36->start.
          t31 = t35.
          t27 = t31.
          t23 = t27.
        ENDIF.
        t19 = t23.
        t18 = t19.
        DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t37.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = t18.
        IF t39 IS INITIAL.
          t38 = abap_true.
        ENDIF.
        IF t38 = abap_true.
          DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t40.
          t37 = t40.
        ELSE.
          DATA t41 TYPE abap_bool.
          DATA t42 TYPE REF TO zcl_lnt_position.
          DATA(t43) = t18.
          t42 = t43.
          DATA t44 TYPE REF TO zcl_lnt_position.
          DATA t45 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t46) = t2.
          t45 = t46.
          DATA t47 TYPE REF TO zcl_lnt_position.
          DATA t48 TYPE REF TO zcl_lnt_abstract_token.
          DATA t49 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t50) = t45.
          t49 = t50->token.
          t48 = t49.
          DATA t51 TYPE REF TO zcl_lnt_position.
          DATA(t52) = t48.
          t51 = t52->start.
          t47 = t51.
          t44 = t47.
          t41 = t42->equals( i_p = t44 ).
          DATA(t53) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t53->has = abap_true.
          t53->value = t41.
          t37 = t53.
        ENDIF.
        t17 = t37.
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t54.
        DATA(t55) = abap_true.
        IF t55 = abap_true.
          DATA(t56) = abap_true.
          DATA(t57) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t57->has = abap_true.
          t57->value = t56.
          t54 = t57.
        ELSE.
          DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t58.
          t54 = t58.
        ENDIF.
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = VALUE abap_bool( ).
        IF t17 IS BOUND.
          t59 = t17->has.
        ENDIF.
        IF t54 IS BOUND.
          t60 = t54->has.
        ENDIF.
        IF t59 = t60.
          IF t59 = abap_false.
            t16 = abap_true.
          ELSEIF t17->value = t54->value.
            t16 = abap_true.
          ENDIF.
        ENDIF.
        t11 = t16.
      ENDIF.
      IF t11 = abap_true.
        DATA t61 TYPE REF TO zcl_lnt_ivariable_reference.
        CLEAR t61.
        result = t61.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t62 TYPE REF TO zcl_lnt_ivariable_reference.
    DATA t63 TYPE REF TO zcl_lnt_ivariable_reference.
    CLEAR t63.
    t62 = t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t66) = t1.
    t65 = t66->get_data( ).
    t64 = t65->references.
    DATA t67 TYPE REF TO zcl_lnt_ireference.
    CLEAR t67.
    DATA t68 TYPE REF TO object.
    CLEAR t68.
    DATA(t69) = VALUE i( ).
    DO.
      t64->load( ).
      IF t69 >= lines( t64->items ).
        EXIT.
      ENDIF.
      CLEAR t68.
      READ TABLE t64->items INDEX t69 + 1 INTO t68.
      t69 = t69 + 1.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      CLEAR t67.
      IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t70 ?= t68.
        DATA t71 TYPE REF TO object.
        t71 = t70->as_ref( ).
        t67 ?= t71.
      ELSE.
        t67 ?= t68.
      ENDIF.
      DATA t72 TYPE abap_bool.
      DATA t73 TYPE abap_bool.
      DATA t74 TYPE string.
      DATA(t75) = t67.
      t74 = t75->reference_type.
      DATA(t76) = |Read From|.
      t73 = xsdbool( t74 <> t76 ).
      t72 = t73.
      IF t73 = abap_false.
        DATA(t77) = VALUE abap_bool( ).
        DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t78.
        DATA t79 TYPE REF TO zcl_lnt_position.
        CLEAR t79.
        DATA t80 TYPE REF TO zcl_lnt_position.
        CLEAR t80.
        DATA t81 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t82 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t83) = t67.
        t82 = t83->resolved.
        t81 = t82.
        DATA t84 TYPE REF TO zcl_lnt_position.
        CLEAR t84.
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = t81.
        IF t86 IS INITIAL.
          t85 = abap_true.
        ENDIF.
        IF t85 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_position.
          CLEAR t87.
          t84 = t87.
        ELSE.
          DATA t88 TYPE REF TO zcl_lnt_position.
          DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t90 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t91) = t81.
          t90 = t91.
          t89 = t90.
          DATA t92 TYPE REF TO zcl_lnt_position.
          DATA t93 TYPE REF TO zcl_lnt_abstract_token.
          DATA t94 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t95) = t89.
          t94 = t95->token.
          t93 = t94.
          DATA t96 TYPE REF TO zcl_lnt_position.
          DATA(t97) = t93.
          t96 = t97->start.
          t92 = t96.
          t88 = t92.
          t84 = t88.
        ENDIF.
        t80 = t84.
        t79 = t80.
        DATA t98 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t98.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = t79.
        IF t100 IS INITIAL.
          t99 = abap_true.
        ENDIF.
        IF t99 = abap_true.
          DATA t101 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t101.
          t98 = t101.
        ELSE.
          DATA t102 TYPE abap_bool.
          DATA t103 TYPE REF TO zcl_lnt_position.
          DATA(t104) = t79.
          t103 = t104.
          DATA t105 TYPE REF TO zcl_lnt_position.
          DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t107) = t2.
          t106 = t107.
          DATA t108 TYPE REF TO zcl_lnt_position.
          DATA t109 TYPE REF TO zcl_lnt_abstract_token.
          DATA t110 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t111) = t106.
          t110 = t111->token.
          t109 = t110.
          DATA t112 TYPE REF TO zcl_lnt_position.
          DATA(t113) = t109.
          t112 = t113->start.
          t108 = t112.
          t105 = t108.
          t102 = t103->equals( i_p = t105 ).
          DATA(t114) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t114->has = abap_true.
          t114->value = t102.
          t98 = t114.
        ENDIF.
        t78 = t98.
        DATA t115 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t115.
        DATA(t116) = abap_true.
        IF t116 = abap_true.
          DATA(t117) = abap_false.
          DATA(t118) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t118->has = abap_true.
          t118->value = t117.
          t115 = t118.
        ELSE.
          DATA t119 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t119.
          t115 = t119.
        ENDIF.
        DATA(t120) = VALUE abap_bool( ).
        DATA(t121) = VALUE abap_bool( ).
        IF t78 IS BOUND.
          t120 = t78->has.
        ENDIF.
        IF t115 IS BOUND.
          t121 = t115->has.
        ENDIF.
        IF t120 = t121.
          IF t120 = abap_false.
            t77 = abap_true.
          ELSEIF t78->value = t115->value.
            t77 = abap_true.
          ENDIF.
        ENDIF.
        t72 = t77.
      ENDIF.
      IF t72 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t122 TYPE abap_bool.
      DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t124) = t67.
      t123 = t124->resolved.
      t122 = xsdbool( t123 IS BOUND ).
      IF t122 = abap_true.
        DATA t125 TYPE REF TO zcl_lnt_ivariable_reference.
        CLEAR t125.
        DATA(t126) = abap_true.
        IF t126 = abap_true.
          DATA t127 TYPE REF TO zcl_lnt_ivariable_reference.
          DATA t128 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t130) = t67.
          t129 = t130->position_7b94.
          t128 = t129.
          DATA t131 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t132 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t133 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t134) = t67.
          t133 = t134->resolved.
          t132 = t133.
          t131 = t132.
          t127 = NEW zcl_lnt_ivariable_reference( i_position_a3fd = t128 i_resolved = t131 ).
          CREATE OBJECT t127->zlnt_view_ownkeys_b0e8086400eb.
          t127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t135.
          IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t135 ).
          ENDIF.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `resolved` p1 = t136 ).
          ENDIF.
          CREATE OBJECT t127->zlnt_json_ownkeys_70e5fd461788.
          t127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t137) = |position|.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
          ENDIF.
          DATA(t139) = |resolved|.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
          ENDIF.
          t125 = t127.
        ELSE.
          DATA t141 TYPE REF TO zcl_lnt_ivariable_reference.
          CLEAR t141.
          t125 = t141.
        ENDIF.
        t62 = t125.
        EXIT.
      ENDIF.
    ENDDO.
    DATA t142 TYPE REF TO zcl_lnt_ivariable_reference.
    DATA t143 TYPE REF TO zcl_lnt_ivariable_reference.
    CLEAR t143.
    t142 = t143.
    DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t145 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t146) = t1.
    t145 = t146->get_data( ).
    t144 = t145->references.
    DATA t147 TYPE REF TO zcl_lnt_ireference.
    CLEAR t147.
    DATA t148 TYPE REF TO object.
    CLEAR t148.
    DATA(t149) = VALUE i( ).
    DO.
      t144->load( ).
      IF t149 >= lines( t144->items ).
        EXIT.
      ENDIF.
      CLEAR t148.
      READ TABLE t144->items INDEX t149 + 1 INTO t148.
      t149 = t149 + 1.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      CLEAR t147.
      IF t148 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t150 ?= t148.
        DATA t151 TYPE REF TO object.
        t151 = t150->as_ref( ).
        t147 ?= t151.
      ELSE.
        t147 ?= t148.
      ENDIF.
      DATA t152 TYPE abap_bool.
      DATA t153 TYPE abap_bool.
      DATA t154 TYPE string.
      DATA(t155) = t147.
      t154 = t155->reference_type.
      DATA(t156) = |Write To|.
      t153 = xsdbool( t154 <> t156 ).
      t152 = t153.
      IF t153 = abap_false.
        DATA(t157) = VALUE abap_bool( ).
        DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t158.
        DATA t159 TYPE REF TO zcl_lnt_position.
        CLEAR t159.
        DATA t160 TYPE REF TO zcl_lnt_position.
        CLEAR t160.
        DATA t161 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t162 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t163) = t147.
        t162 = t163->resolved.
        t161 = t162.
        DATA t164 TYPE REF TO zcl_lnt_position.
        CLEAR t164.
        DATA(t165) = VALUE abap_bool( ).
        DATA(t166) = t161.
        IF t166 IS INITIAL.
          t165 = abap_true.
        ENDIF.
        IF t165 = abap_true.
          DATA t167 TYPE REF TO zcl_lnt_position.
          CLEAR t167.
          t164 = t167.
        ELSE.
          DATA t168 TYPE REF TO zcl_lnt_position.
          DATA t169 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t170 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t171) = t161.
          t170 = t171.
          t169 = t170.
          DATA t172 TYPE REF TO zcl_lnt_position.
          DATA t173 TYPE REF TO zcl_lnt_abstract_token.
          DATA t174 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t175) = t169.
          t174 = t175->token.
          t173 = t174.
          DATA t176 TYPE REF TO zcl_lnt_position.
          DATA(t177) = t173.
          t176 = t177->start.
          t172 = t176.
          t168 = t172.
          t164 = t168.
        ENDIF.
        t160 = t164.
        t159 = t160.
        DATA t178 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t178.
        DATA(t179) = VALUE abap_bool( ).
        DATA(t180) = t159.
        IF t180 IS INITIAL.
          t179 = abap_true.
        ENDIF.
        IF t179 = abap_true.
          DATA t181 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t181.
          t178 = t181.
        ELSE.
          DATA t182 TYPE abap_bool.
          DATA t183 TYPE REF TO zcl_lnt_position.
          DATA(t184) = t159.
          t183 = t184.
          DATA t185 TYPE REF TO zcl_lnt_position.
          DATA t186 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t187) = t2.
          t186 = t187.
          DATA t188 TYPE REF TO zcl_lnt_position.
          DATA t189 TYPE REF TO zcl_lnt_abstract_token.
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t191) = t186.
          t190 = t191->token.
          t189 = t190.
          DATA t192 TYPE REF TO zcl_lnt_position.
          DATA(t193) = t189.
          t192 = t193->start.
          t188 = t192.
          t185 = t188.
          t182 = t183->equals( i_p = t185 ).
          DATA(t194) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t194->has = abap_true.
          t194->value = t182.
          t178 = t194.
        ENDIF.
        t158 = t178.
        DATA t195 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t195.
        DATA(t196) = abap_true.
        IF t196 = abap_true.
          DATA(t197) = abap_false.
          DATA(t198) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t198->has = abap_true.
          t198->value = t197.
          t195 = t198.
        ELSE.
          DATA t199 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t199.
          t195 = t199.
        ENDIF.
        DATA(t200) = VALUE abap_bool( ).
        DATA(t201) = VALUE abap_bool( ).
        IF t158 IS BOUND.
          t200 = t158->has.
        ENDIF.
        IF t195 IS BOUND.
          t201 = t195->has.
        ENDIF.
        IF t200 = t201.
          IF t200 = abap_false.
            t157 = abap_true.
          ELSEIF t158->value = t195->value.
            t157 = abap_true.
          ENDIF.
        ENDIF.
        t152 = t157.
      ENDIF.
      IF t152 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t202 TYPE abap_bool.
      DATA t203 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t204) = t147.
      t203 = t204->resolved.
      t202 = xsdbool( t203 IS BOUND ).
      IF t202 = abap_true.
        DATA t205 TYPE REF TO zcl_lnt_ivariable_reference.
        CLEAR t205.
        DATA(t206) = abap_true.
        IF t206 = abap_true.
          DATA t207 TYPE REF TO zcl_lnt_ivariable_reference.
          DATA t208 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t209 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t210) = t147.
          t209 = t210->position_7b94.
          t208 = t209.
          DATA t211 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t212 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t213 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t214) = t147.
          t213 = t214->resolved.
          t212 = t213.
          t211 = t212.
          t207 = NEW zcl_lnt_ivariable_reference( i_position_a3fd = t208 i_resolved = t211 ).
          CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
          t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t215.
          IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t215 ).
          ENDIF.
          DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t216.
          IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `resolved` p1 = t216 ).
          ENDIF.
          CREATE OBJECT t207->zlnt_json_ownkeys_70e5fd461788.
          t207->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t217) = |position|.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t217 p1 = t218 ).
          ENDIF.
          DATA(t219) = |resolved|.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t219 p1 = t220 ).
          ENDIF.
          t205 = t207.
        ELSE.
          DATA t221 TYPE REF TO zcl_lnt_ivariable_reference.
          CLEAR t221.
          t205 = t221.
        ENDIF.
        t142 = t205.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t222) = VALUE abap_bool( ).
    DATA t223 TYPE REF TO zcl_lnt_ivariable_reference.
    DATA(t224) = t62.
    t223 = t224.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    t225 = t226.
    DATA(t227) = VALUE abap_bool( ).
    DATA(t228) = t223.
    IF t228 IS INITIAL.
      t227 = abap_true.
    ENDIF.
    t222 = t227.
    IF t222 = abap_true.
      DATA(t229) = t142.
      result = t229.
      RETURN.
    ELSE.
      DATA(t230) = VALUE abap_bool( ).
      DATA t231 TYPE REF TO zcl_lnt_ivariable_reference.
      DATA(t232) = t142.
      t231 = t232.
      DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t234.
      t233 = t234.
      DATA(t235) = VALUE abap_bool( ).
      DATA(t236) = t231.
      IF t236 IS INITIAL.
        t235 = abap_true.
      ENDIF.
      t230 = t235.
      IF t230 = abap_true.
        DATA t237 TYPE REF TO zcl_lnt_ivariable_reference.
        CLEAR t237.
        result = t237.
        RETURN.
      ELSE.
        DATA t238 TYPE abap_bool.
        DATA t239 TYPE f.
        DATA t240 TYPE REF TO zcl_lnt_position.
        DATA t241 TYPE REF TO zcl_lnt_position.
        DATA t242 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t243 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t244 TYPE REF TO zcl_lnt_ivariable_reference.
        DATA(t245) = t142.
        t244 = t245.
        t243 = t244->position_7b94.
        t242 = t243.
        DATA t246 TYPE REF TO zcl_lnt_position.
        DATA t247 TYPE REF TO zcl_lnt_abstract_token.
        DATA t248 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t249) = t242.
        t248 = t249->token.
        t247 = t248.
        DATA t250 TYPE REF TO zcl_lnt_position.
        DATA(t251) = t247.
        t250 = t251->start.
        t246 = t250.
        t241 = t246.
        t240 = t241.
        DATA t252 TYPE f.
        DATA(t253) = t240.
        t252 = t253->row.
        t239 = t252.
        DATA t254 TYPE f.
        DATA t255 TYPE REF TO zcl_lnt_position.
        DATA t256 TYPE REF TO zcl_lnt_position.
        DATA t257 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t258 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t259 TYPE REF TO zcl_lnt_ivariable_reference.
        DATA(t260) = t62.
        t259 = t260.
        t258 = t259->position_7b94.
        t257 = t258.
        DATA t261 TYPE REF TO zcl_lnt_position.
        DATA t262 TYPE REF TO zcl_lnt_abstract_token.
        DATA t263 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t264) = t257.
        t263 = t264->token.
        t262 = t263.
        DATA t265 TYPE REF TO zcl_lnt_position.
        DATA(t266) = t262.
        t265 = t266->start.
        t261 = t265.
        t256 = t261.
        t255 = t256.
        DATA t267 TYPE f.
        DATA(t268) = t255.
        t267 = t268->row.
        t254 = t267.
        t238 = xsdbool( t239 = t254 ).
        IF t238 = abap_true.
          DATA t269 TYPE REF TO zcl_lnt_ivariable_reference.
          CLEAR t269.
          result = t269.
          RETURN.
        ELSE.
          DATA(t270) = VALUE abap_bool( ).
          DATA t271 TYPE REF TO zcl_lnt_position.
          DATA t272 TYPE REF TO zcl_lnt_position.
          DATA t273 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t274 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t275 TYPE REF TO zcl_lnt_ivariable_reference.
          DATA(t276) = t142.
          t275 = t276.
          t274 = t275->position_7b94.
          t273 = t274.
          DATA t277 TYPE REF TO zcl_lnt_position.
          DATA t278 TYPE REF TO zcl_lnt_abstract_token.
          DATA t279 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t280) = t273.
          t279 = t280->token.
          t278 = t279.
          DATA t281 TYPE REF TO zcl_lnt_position.
          DATA(t282) = t278.
          t281 = t282->start.
          t277 = t281.
          t272 = t277.
          t271 = t272.
          DATA t283 TYPE REF TO zcl_lnt_position.
          DATA t284 TYPE REF TO zcl_lnt_position.
          DATA t285 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t286 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t287 TYPE REF TO zcl_lnt_ivariable_reference.
          DATA(t288) = t62.
          t287 = t288.
          t286 = t287->position_7b94.
          t285 = t286.
          DATA t289 TYPE REF TO zcl_lnt_position.
          DATA t290 TYPE REF TO zcl_lnt_abstract_token.
          DATA t291 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t292) = t285.
          t291 = t292->token.
          t290 = t291.
          DATA t293 TYPE REF TO zcl_lnt_position.
          DATA(t294) = t290.
          t293 = t294->start.
          t289 = t293.
          t284 = t289.
          t283 = t284.
          DATA t295 TYPE abap_bool.
          DATA t296 TYPE abap_bool.
          DATA t297 TYPE f.
          DATA(t298) = t271.
          t297 = t298->row.
          DATA t299 TYPE f.
          DATA(t300) = t283.
          t299 = t300->row.
          t296 = xsdbool( t297 < t299 ).
          t295 = t296.
          IF t296 = abap_false.
            DATA t301 TYPE abap_bool.
            DATA t302 TYPE abap_bool.
            DATA t303 TYPE f.
            DATA(t304) = t271.
            t303 = t304->row.
            DATA t305 TYPE f.
            DATA(t306) = t283.
            t305 = t306->row.
            t302 = xsdbool( t303 = t305 ).
            t301 = t302.
            IF t302 = abap_true.
              DATA t307 TYPE abap_bool.
              DATA t308 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t309) = t271.
              t308 = t309->col.
              DATA t310 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t311) = t283.
              t310 = t311->col.
              t307 = zlnt_runtime_numb_290eb04a9758=>compare( left = t308 right = t310 op = `<` ).
              t301 = t307.
            ENDIF.
            t295 = t301.
          ENDIF.
          t270 = t295.
          IF t270 = abap_true.
            DATA t312 TYPE REF TO zcl_lnt_ivariable_reference.
            CLEAR t312.
            DATA(t313) = abap_true.
            IF t313 = abap_true.
              DATA t314 TYPE REF TO zcl_lnt_ivariable_reference.
              DATA(t315) = t142.
              t314 = t315.
              t312 = t314.
            ELSE.
              DATA t316 TYPE REF TO zcl_lnt_ivariable_reference.
              CLEAR t316.
              t312 = t316.
            ENDIF.
            result = t312.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t317 TYPE REF TO zcl_lnt_ivariable_reference.
    CLEAR t317.
    result = t317.

  ENDMETHOD.

  METHOD statement_has_generic_read.
    DATA(t1) = i_node.
    DATA(t2) = i_statement.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t5) = t1.
    t4 = t5->get_data( ).
    t3 = t4->references.
    DATA t6 TYPE REF TO zcl_lnt_ireference.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
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
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE string.
      DATA(t16) = t6.
      t15 = t16->reference_type.
      DATA(t17) = |Read From|.
      t14 = xsdbool( t15 <> t17 ).
      t13 = t14.
      IF t14 = abap_false.
        DATA(t18) = VALUE abap_bool( ).
        DATA t19 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t21) = t6.
        t20 = t21->resolved.
        t19 = t20.
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t23.
        t22 = t23.
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = t19.
        IF t25 IS INITIAL.
          t24 = abap_true.
        ENDIF.
        t18 = t24.
        t13 = t18.
      ENDIF.
      t12 = t13.
      IF t13 = abap_false.
        DATA t26 TYPE abap_bool.
        DATA t27 TYPE abap_bool.
        DATA(t28) = t2.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t32) = t6.
        t31 = t32->position_7b94.
        t30 = t31.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t34) = t30.
        t33 = t34->token.
        t29 = t33.
        t27 = t28->includes_token( i_search_b3ca = t29 ).
        DATA(t35) = abap_false.
        t26 = xsdbool( t27 = t35 ).
        t12 = t26.
      ENDIF.
      t11 = t12.
      IF t12 = abap_false.
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t39) = t6.
        t38 = t39->resolved.
        t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_typed_identifier ).
        t36 = xsdbool( t37 = abap_false ).
        t11 = t36.
      ENDIF.
      IF t11 = abap_true.
        CONTINUE.
      ELSE.
        DATA t40 TYPE abap_bool.
        DATA t41 TYPE abap_bool.
        DATA t42 TYPE abap_bool.
        DATA t43 TYPE REF TO zcl_lnt_abstract_type.
        DATA t44 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t46 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t47) = t6.
        t46 = t47->resolved.
        t45 ?= t46.
        t44 = t45.
        DATA t48 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t49) = t44.
        t48 = t49->type_cba0.
        t43 = t48.
        t42 = t43->is_generic( ).
        DATA(t50) = abap_true.
        t41 = xsdbool( t42 = t50 ).
        t40 = t41.
        IF t41 = abap_false.
          DATA t51 TYPE abap_bool.
          DATA t52 TYPE abap_bool.
          DATA t53 TYPE REF TO zcl_lnt_abstract_type.
          DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t56 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t57) = t6.
          t56 = t57->resolved.
          t55 ?= t56.
          t54 = t55.
          DATA t58 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t59) = t54.
          t58 = t59->type_cba0.
          t53 = t58.
          t52 = t53->contains_void( ).
          DATA(t60) = abap_true.
          t51 = xsdbool( t52 = t60 ).
          t40 = t51.
        ENDIF.
        IF t40 = abap_true.
          DATA(t61) = abap_true.
          result = t61.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t62) = abap_false.
    result = t62.

  ENDMETHOD.

  METHOD is_local_definition.
    DATA(t1) = i_node.
    DATA(t2) = i_identifier.
    DATA t3 TYPE REF TO zcl_lnt_irange.
    DATA t4 TYPE REF TO zcl_lnt_irange.
    DATA(t5) = t1.
    t4 = t5->calc_coverage( ).
    t3 = t4.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_position.
    DATA(t8) = t3.
    t7 = t8->start.
    t6 = t7.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = t3.
    t10 = t11->end.
    t9 = t10.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t16) = t2.
    t15 = t16.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t20) = t15.
    t19 = t20->token.
    t18 = t19.
    DATA t21 TYPE REF TO zcl_lnt_position.
    DATA(t22) = t18.
    t21 = t22->start.
    t17 = t21.
    t14 = t17.
    DATA(t23) = t6.
    t13 = t14->is_after( i_p = t23 ).
    t12 = t13.
    IF t13 = abap_true.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t28) = t2.
      t27 = t28.
      DATA t29 TYPE REF TO zcl_lnt_position.
      DATA t30 TYPE REF TO zcl_lnt_abstract_token.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t32) = t27.
      t31 = t32->token.
      t30 = t31.
      DATA t33 TYPE REF TO zcl_lnt_position.
      DATA(t34) = t30.
      t33 = t34->start.
      t29 = t33.
      t26 = t29.
      t25 = t26.
      DATA t35 TYPE REF TO zcl_lnt_position.
      DATA(t36) = t9.
      t35 = t36.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE f.
      DATA(t40) = t25.
      t39 = t40->row.
      DATA t41 TYPE f.
      DATA(t42) = t35.
      t41 = t42->row.
      t38 = xsdbool( t39 < t41 ).
      t37 = t38.
      IF t38 = abap_false.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE abap_bool.
        DATA t45 TYPE f.
        DATA(t46) = t25.
        t45 = t46->row.
        DATA t47 TYPE f.
        DATA(t48) = t35.
        t47 = t48->row.
        t44 = xsdbool( t45 = t47 ).
        t43 = t44.
        IF t44 = abap_true.
          DATA t49 TYPE abap_bool.
          DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t51) = t25.
          t50 = t51->col.
          DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t53) = t35.
          t52 = t53->col.
          t49 = zlnt_runtime_numb_290eb04a9758=>compare( left = t50 right = t52 op = `<` ).
          t43 = t49.
        ENDIF.
        t37 = t43.
      ENDIF.
      t24 = t37.
      t12 = t24.
    ENDIF.
    IF t12 = abap_true.
      DATA(t54) = abap_true.
      result = t54.
      RETURN.
    ELSE.
      DATA(t55) = abap_false.
      result = t55.

    ENDIF.
  ENDMETHOD.

  METHOD find_scope_candidates.
    DATA(t1) = i_node.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t6) = t1.
    t5 = t6->get_identifier( ).
    t4 = t5->stype.
    DATA(t7) = |form|.
    t3 = xsdbool( t4 = t7 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE string.
      DATA t10 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t11) = t1.
      t10 = t11->get_identifier( ).
      t9 = t10->stype.
      DATA(t12) = |method|.
      t8 = xsdbool( t9 = t12 ).
      t2 = t8.
    ENDIF.
    IF t2 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      t14 = t15.
      DATA(t16) = t14.
      DATA(t17) = t1.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t14.
      t13 = t18.
      result = t13.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t1.
    t21 = t22->get_children( ).
    DATA t23 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    DATA(t25) = VALUE i( ).
    DO.
      t21->load( ).
      IF t25 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t21->items INDEX t25 + 1 INTO t24.
      t25 = t25 + 1.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t23.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t24.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t23 ?= t27.
      ELSE.
        t23 ?= t24.
      ENDIF.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t29) = t19.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = t23.
      t30 = me->find_scope_candidates( i_node = t31 ).
      t28 = t29->concat( p0 = t30 ).
      t19 = t28.
    ENDDO.
    DATA(t32) = t19.
    result = t32.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prefer_inline_conf( me->gt_cn_in_sr_rl_pr_in_ts_pr_inl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prefer_inline_conf( me->gt_cn_in_sr_rl_pr_in_ts_pr_inl( ) ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_prefer_inline.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_prf_inl_ts_prf_inl( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_prefer_inline_conf.
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
        t2 = NEW zcl_lnt_prefer_inline_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_pr_in_ts_pr_inl( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1656_58e558614aad.
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
