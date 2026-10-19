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
    me->conf = NEW zcl_lnt_prefer_inline_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |prefer_inline|.
    DATA t4 TYPE string.
    t4 = |Prefer Inline Declarations|.
    DATA t6 TYPE string.
    t6 = |Prefer inline to up-front declarations.|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |EXPERIMENTAL\n\nActivates if language version is v740sp02 or a|.
    t11 = t11 && |bove.\n\nVariables must be local(METHOD or FORM).\n\nNo generic |.
    t11 = t11 && |or void typed variables. No syntax errors.\n\nFirst position u|.
    t11 = t11 && |sed must be a full/pure write.\n\nMove statment is not a cast(|.
    t11 = t11 && |?=)\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap|.
    t11 = t11 && |/CleanABAP.md#prefer-inline-to-up-front-declarations|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Styleguide|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Upport|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    DATA(t25) = |Experimental|.
    t18->load( ).
    APPEND t25 TO t18->items.
    t18->save( ).
    DATA(t27) = |Quickfix|.
    t18->load( ).
    APPEND t27 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |DATA foo TYPE i.\nfoo = 2.\nDATA percentage TYPE decfloat34.\np|.
    t33 = t33 && |ercentage = ( comment_number / abs_statement_number ) * 100.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t39) = |DATA(foo) = 2.\nDATA(percentage) = CONV decfloat34( comment_n|.
    t39 = t39 && |umber / abs_statement_number ) * 100.|.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = t39.
    t36 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_pr_in_ts_pr_inl.
    result = me->conf.

  ENDMETHOD.

  METHOD in_in_sr_rl_prf_inl_ts_prf_inl.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_pr_in_ts_pr_inl.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE string.
    t3 = t1->get_type( ).
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
    t11 = me->reg->get_config( ).
    t10 = t11->get_release( ).
    DATA t13 TYPE REF TO zcl_lnt_abap_release.
    DATA t14 TYPE REF TO zcl_lnt_abap_release.
    DATA t15 TYPE REF TO zlnt_runtime_map__201f3699a39e.
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
      t19 = me->reg->get_config( ).
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
      t24 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ).
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
    DATA t33 TYPE REF TO object.
    t33 = t1.
    t31 ?= t33.
    t29 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t30 i_object_19cd = t31 ).
    t28 = t29->run( ).
    t27 = t28.
    DATA t34 TYPE abap_bool.
    DATA t35 TYPE i.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t36 = t27->zlnt_view_read_sr_bd188c319c03( ).
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
    t43 = t27->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t42 = t43->get_top( ).
    t41 = me->find_scope_candidates( i_node = t42 ).
    t40 = t41.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t46.
    t45 = t46.
    DATA t48 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t49 TYPE REF TO object.
    DATA(t50) = VALUE i( ).
    DO.
      t40->load( ).
      IF t50 >= lines( t40->items ).
        EXIT.
      ENDIF.
      CLEAR t49.
      READ TABLE t40->items INDEX t50 + 1 INTO t49.
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
      DATA t56 TYPE REF TO zcl_lnt_abap_object.
      DATA t58 TYPE REF TO object.
      t58 = t1.
      t56 ?= t58.
      t54 = me->analyze_scope( i_node = t48 i_obj_1ed0 = t56 ).
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
        t45->load( ).
        APPEND t59 TO t45->items.
        t45->save( ).
      ENDDO.
      DATA t66 TYPE i.
      t45->load( ).
      t66 = lines( t45->items ).
      t53 = t66.
    ENDDO.
    result = t45.

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
    t7 = t1->get_data( ).
    t6 = t7->vars.
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t9 = t5->keys( ).
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
      t14 = t5->get( p0 = t11 ).
      t13 = t14.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
      t23 = t13.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zcl_lnt_irange.
      DATA t28 TYPE REF TO zcl_lnt_irange.
      t28 = t1->calc_coverage( ).
      t27 = t28.
      DATA t31 TYPE REF TO zcl_lnt_position.
      t31 = t27->start.
      DATA t34 TYPE REF TO zcl_lnt_position.
      t34 = t27->end.
      DATA(t36) = VALUE abap_bool( ).
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE REF TO zcl_lnt_position.
      DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
      t40 = t23.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      t44 = t40->token.
      DATA t46 TYPE REF TO zcl_lnt_position.
      t46 = t44->start.
      t39 = t46.
      t38 = t39->is_after( i_p = t31 ).
      t37 = t38.
      IF t38 = abap_true.
        DATA(t49) = VALUE abap_bool( ).
        DATA t50 TYPE REF TO zcl_lnt_position.
        DATA t52 TYPE REF TO zcl_lnt_fi_identifier.
        t52 = t23.
        DATA t56 TYPE REF TO zcl_lnt_abstract_token.
        t56 = t52->token.
        DATA t58 TYPE REF TO zcl_lnt_position.
        t58 = t56->start.
        t50 = t58.
        DATA t60 TYPE REF TO zcl_lnt_position.
        t60 = t34.
        DATA t62 TYPE abap_bool.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE f.
        t64 = t50->row.
        DATA t66 TYPE f.
        t66 = t60->row.
        t63 = xsdbool( t64 < t66 ).
        t62 = t63.
        IF t63 = abap_false.
          DATA t68 TYPE abap_bool.
          DATA t69 TYPE abap_bool.
          DATA t70 TYPE f.
          t70 = t50->row.
          DATA t72 TYPE f.
          t72 = t60->row.
          t69 = xsdbool( t70 = t72 ).
          t68 = t69.
          IF t69 = abap_true.
            DATA t74 TYPE abap_bool.
            DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t75 = t50->col.
            DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t77 = t60->col.
            t74 = zlnt_runtime_numb_290eb04a9758=>compare( left = t75 right = t77 op = `<` ).
            t68 = t74.
          ENDIF.
          t62 = t68.
        ENDIF.
        t49 = t62.
        t37 = t49.
      ENDIF.
      IF t37 = abap_true.
        t36 = abap_true.
      ELSE.
        t36 = abap_false.
      ENDIF.
      t26 = t36.
      t20 = t26.
      t19 = xsdbool( t20 = abap_false ).
      t18 = t19.
      IF t19 = abap_false.
        DATA t82 TYPE abap_bool.
        DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t87 = t13->meta.
        t83 = t87.
        DATA(t89) = |inline|.
        t82 = t83->includes( p0 = t89 ).
        t18 = t82.
      ENDIF.
      t17 = t18.
      IF t18 = abap_false.
        DATA t90 TYPE abap_bool.
        DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t95 = t13->meta.
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
        DATA t104 TYPE REF TO zcl_lnt_abstract_type.
        t104 = t13->type_cba0.
        t100 = t104.
        t99 = t100->is_generic( ).
        t98 = xsdbool( t99 = abap_true ).
        IF t98 = abap_true.
          CONTINUE.
        ELSE.
          DATA t107 TYPE abap_bool.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE REF TO zcl_lnt_abstract_type.
          DATA t113 TYPE REF TO zcl_lnt_abstract_type.
          t113 = t13->type_cba0.
          t109 = t113.
          t108 = t109->contains_void( ).
          t107 = xsdbool( t108 = abap_true ).
          IF t107 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t116 TYPE REF TO zcl_lnt_ivariable_reference.
      DATA t117 TYPE REF TO zcl_lnt_ivariable_reference.
      DATA t119 TYPE REF TO zcl_lnt_typed_identifier.
      t119 = t13.
      t117 = me->first_use_is_write( i_node = t1 i_identifier = t119 ).
      t116 = t117.
      DATA(t121) = VALUE abap_bool( ).
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      t121 = xsdbool( t116 IS INITIAL ).
      IF t121 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t128 TYPE REF TO zcl_lnt_abstract_token.
      DATA t129 TYPE REF TO zcl_lnt_abstract_token.
      DATA t130 TYPE REF TO zcl_lnt_ivariable_reference.
      t130 = t116.
      t129 = me->find_next_token( i_ref = t130 i_obj_1ed0 = t2 ).
      t128 = t129.
      DATA(t133) = VALUE abap_bool( ).
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      t133 = xsdbool( t128 IS INITIAL ).
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
        DATA t146 TYPE REF TO zcl_lnt_abstract_token.
        t146 = t128.
        DATA t149 TYPE REF TO zcl_lnt_position.
        CLEAR t149.
        DATA(t150) = xsdbool( t146 IS INITIAL ).
        IF t150 = abap_true.
          CLEAR t149.
        ELSE.
          DATA t156 TYPE REF TO zcl_lnt_position.
          t156 = t146->start.
          t149 = t156.
        ENDIF.
        t144 = t149.
        DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t158.
        DATA(t159) = xsdbool( t144 IS INITIAL ).
        IF t159 = abap_true.
          CLEAR t158.
        ELSE.
          DATA t162 TYPE abap_bool.
          DATA t163 TYPE REF TO zcl_lnt_position.
          t163 = t144.
          DATA t165 TYPE REF TO zcl_lnt_position.
          DATA t167 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t168 TYPE REF TO zcl_lnt_ivariable_reference.
          t168 = t116.
          t167 = t168->position_7b94.
          DATA t171 TYPE REF TO zcl_lnt_abstract_token.
          DATA t172 TYPE REF TO zcl_lnt_abstract_token.
          t172 = t167->token.
          t171 = t172.
          DATA t174 TYPE REF TO zcl_lnt_position.
          DATA t175 TYPE f.
          DATA t177 TYPE REF TO zcl_lnt_position.
          t177 = t171->start.
          DATA t179 TYPE f.
          t179 = t177->row.
          t175 = t179.
          DATA t181 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t182 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t184 TYPE REF TO zcl_lnt_position.
          t184 = t171->start.
          DATA t186 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t186 = t184->col.
          t182 = t186.
          DATA t188 TYPE f.
          DATA t190 TYPE string.
          t190 = t171->str.
          t188 = strlen( t190 ).
          DATA(t193) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t193->has = abap_true.
          t193->value = t188.
          t181 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t182 right = t193 op = `+` ).
          t174 = NEW zcl_lnt_position( i_row = t175 i_col = t181 ).
          t165 = t174.
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
          DATA t200 TYPE string.
          t200 = t128->str.
          t196 = t200.
          DATA(t202) = |.|.
          t195 = xsdbool( t196 <> t202 ).
          t141 = t195.
        ENDIF.
        t140 = t141.
        IF t141 = abap_true.
          DATA t203 TYPE abap_bool.
          DATA t204 TYPE string.
          DATA t208 TYPE string.
          t208 = t128->str.
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
      DATA t214 TYPE string.
      DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
      t215 = t13.
      DATA t218 TYPE string.
      t218 = t215->filename.
      t214 = t218.
      t212 = t2->get_abap_file_by_name( i_filename = t214 ).
      t211 = t212.
      DATA t220 TYPE REF TO zcl_lnt_statement_node.
      DATA t221 TYPE REF TO zcl_lnt_statement_node.
      DATA t222 TYPE REF TO zcl_lnt_abstract_token.
      t222 = t128.
      t221 = zcl_lnt_edit_helper=>find_statement( i_token = t222 i_file = t211 ).
      t220 = t221.
      DATA(t225) = VALUE abap_bool( ).
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t228.
      t225 = xsdbool( t220 IS INITIAL ).
      IF t225 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t232 TYPE REF TO zif_lnt_statement.
      CLEAR t232.
      DATA t234 TYPE REF TO zcl_lnt_statement_node.
      t234 = t220.
      DATA t237 TYPE REF TO zif_lnt_statement.
      CLEAR t237.
      DATA(t238) = xsdbool( t234 IS INITIAL ).
      IF t238 = abap_true.
        CLEAR t237.
      ELSE.
        DATA t241 TYPE REF TO zif_lnt_statement.
        t241 = t234->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t237 = t241.
      ENDIF.
      t232 = t237.
      DATA(t243) = VALUE abap_bool( ).
      DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t246.
      t243 = xsdbool( t232 IS INITIAL ).
      IF t243 = abap_true.
        CONTINUE.
      ELSE.
        DATA t250 TYPE abap_bool.
        DATA t252 TYPE REF TO zcl_lnt_statement_node.
        t252 = t220.
        t250 = me->statement_has_generic_read( i_node = t1 i_statement = t252 ).
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
      t260 = xsdbool( t232 IS BOUND AND t232 IS INSTANCE OF zcl_lnt_st_move ).
      t259 = t260.
      IF t260 = abap_false.
        DATA t262 TYPE abap_bool.
        t262 = xsdbool( t232 IS BOUND AND t232 IS INSTANCE OF zcl_lnt_st_catch ).
        t259 = t262.
      ENDIF.
      t258 = t259.
      IF t259 = abap_false.
        DATA t264 TYPE abap_bool.
        t264 = xsdbool( t232 IS BOUND AND t232 IS INSTANCE OF zcl_lnt_st_read_table ).
        t258 = t264.
      ENDIF.
      t257 = t258.
      IF t258 = abap_false.
        DATA t266 TYPE abap_bool.
        t266 = xsdbool( t232 IS BOUND AND t232 IS INSTANCE OF zcl_lnt_st_loop ).
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
        DATA t272 TYPE REF TO zcl_lnt_statement_node.
        t272 = t220.
        DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t275.
        DATA(t276) = xsdbool( t272 IS INITIAL ).
        IF t276 = abap_true.
          CLEAR t275.
        ELSE.
          DATA t279 TYPE string.
          t279 = t272->concat_tokens( ).
          DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t281->has = abap_true.
          t281->value = t279.
          t275 = t281.
        ENDIF.
        t270 = t275.
        DATA t282 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t282.
        DATA(t283) = VALUE abap_bool( ).
        IF t270 IS INITIAL.
          t283 = abap_true.
        ELSEIF t270->has = abap_false.
          t283 = abap_true.
        ENDIF.
        IF t283 = abap_true.
          CLEAR t282.
        ELSE.
          DATA(t286) = VALUE abap_bool( ).
          DATA(t287) = VALUE i( ).
          DATA t288 TYPE string.
          t288 = t270->value.
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
        DATA t298 TYPE REF TO zcl_lnt_statement_node.
        t298 = t220.
        DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t301.
        DATA(t302) = xsdbool( t298 IS INITIAL ).
        IF t302 = abap_true.
          CLEAR t301.
        ELSE.
          DATA t305 TYPE string.
          t305 = t298->concat_tokens( ).
          DATA(t307) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t307->has = abap_true.
          t307->value = t305.
          t301 = t307.
        ENDIF.
        t296 = t301.
        DATA t308 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t308.
        DATA(t309) = VALUE abap_bool( ).
        IF t296 IS INITIAL.
          t309 = abap_true.
        ELSEIF t296->has = abap_false.
          t309 = abap_true.
        ENDIF.
        IF t309 = abap_true.
          CLEAR t308.
        ELSE.
          DATA(t312) = VALUE abap_bool( ).
          DATA(t313) = VALUE i( ).
          DATA t314 TYPE string.
          t314 = t296->value.
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
      t323 = t13.
      DATA t326 TYPE REF TO zcl_lnt_abstract_token.
      t326 = t323->token.
      t322 = t326.
      t321 = zcl_lnt_edit_helper=>find_statement( i_token = t322 i_file = t211 ).
      t320 = t321.
      DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t331.
      DATA t333 TYPE REF TO zcl_lnt_statement_node.
      t333 = t320.
      DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t335.
      DATA(t336) = xsdbool( t333 IS INITIAL ).
      IF t336 = abap_true.
        CLEAR t335.
      ELSE.
        DATA t339 TYPE string.
        DATA t340 TYPE REF TO zcl_lnt_statement_node.
        t340 = t333.
        t339 = t340->concat_tokens( ).
        DATA(t342) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t342->has = abap_true.
        t342->value = t339.
        t335 = t342.
      ENDIF.
      t331 = t335.
      DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t343.
      DATA(t344) = VALUE abap_bool( ).
      IF t331 IS INITIAL.
        t344 = abap_true.
      ELSEIF t331->has = abap_false.
        t344 = abap_true.
      ENDIF.
      IF t344 = abap_true.
        CLEAR t343.
      ELSE.
        DATA t347 TYPE string.
        DATA t348 TYPE string.
        t348 = t331->value.
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
      DATA(t352) = VALUE abap_bool( ).
      DATA t353 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t353.
      DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t354 = t343.
      DATA t356 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t356.
      DATA(t357) = VALUE abap_bool( ).
      IF t354 IS INITIAL.
        t357 = abap_true.
      ELSEIF t354->has = abap_false.
        t357 = abap_true.
      ENDIF.
      IF t357 = abap_true.
        CLEAR t356.
      ELSE.
        DATA(t360) = VALUE abap_bool( ).
        DATA(t361) = VALUE i( ).
        DATA t362 TYPE string.
        t362 = t354->value.
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
      CLEAR t368.
      DATA t370 TYPE abap_bool.
      DATA t371 TYPE abap_bool.
      t371 = xsdbool( t211 IS BOUND ).
      t370 = t371.
      IF t371 = abap_true.
        DATA t373 TYPE abap_bool.
        t373 = xsdbool( t320 IS BOUND ).
        t370 = t373.
      ENDIF.
      IF t370 = abap_true.
        DATA t376 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t377 TYPE REF TO zcl_lnt_abap_file.
        t377 = t211.
        DATA t379 TYPE REF TO zcl_lnt_statement_node.
        t379 = t320.
        t376 = zcl_lnt_edit_helper=>delete_statement( i_file = t377 i_statement = t379 ).
        DATA(t381) = VALUE string( ).
        DATA(t382) = VALUE string( ).
        DATA t383 TYPE REF TO zcl_lnt_fi_identifier.
        t383 = t13.
        DATA(t386) = VALUE string( ).
        DATA t387 TYPE string.
        DATA t390 TYPE REF TO zcl_lnt_abstract_token.
        t390 = t383->token.
        DATA t392 TYPE string.
        t392 = t390->str.
        t387 = t392.
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
          t402 = t387.
          DATA(t404) = VALUE string( ).
          DATA(t406) = 1.
          DATA t407 TYPE i.
          t407 = strlen( t402 ).
          DATA(t410) = strlen( t402 ).
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
            t404 = t402+t406(t407).
          ENDIF.
          t401 = t404.
          t387 = t401.
        ENDIF.
        t386 = t387.
        t382 = t386.
        t381 = t382.
        DATA(t412) = VALUE string( ).
        DATA(t413) = VALUE string( ).
        DATA(t414) = VALUE abap_bool( ).
        DATA(t416) = |<|.
        DATA(t417) = strlen( t381 ).
        DATA t418 TYPE i.
        DATA(t419) = VALUE i( ).
        DATA(t420) = VALUE string( ).
        t418 = strlen( t416 ).
        IF t418 = 0.
          t414 = abap_true.
        ELSEIF t418 <= t417.
          t419 = 0.
          t420 = t381+t419(t418).
          IF t420 = t416.
            t414 = abap_true.
          ENDIF.
        ENDIF.
        IF t414 = abap_true.
          DATA t421 TYPE string.
          DATA t422 TYPE string.
          DATA(t423) = |FIELD-SYMBOL(|.
          DATA(t425) = strlen( t423 ).
          t422 = |{ t423 }{ t381 }|.
          DATA(t426) = |)|.
          DATA(t427) = strlen( t422 ).
          t421 = |{ t422 }{ t426 }|.
          t413 = t421.
        ELSE.
          DATA t428 TYPE string.
          DATA t429 TYPE string.
          DATA(t430) = |DATA(|.
          DATA(t432) = strlen( t430 ).
          t429 = |{ t430 }{ t381 }|.
          DATA(t433) = |)|.
          DATA(t434) = strlen( t429 ).
          t428 = |{ t429 }{ t433 }|.
          t413 = t428.
        ENDIF.
        t412 = t413.
        DATA t436 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t437 TYPE REF TO zcl_lnt_abap_file.
        t437 = t211.
        DATA t439 TYPE REF TO zcl_lnt_position.
        DATA t441 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t442 TYPE REF TO zcl_lnt_ivariable_reference.
        t442 = t116.
        t441 = t442->position_7b94.
        DATA t446 TYPE REF TO zcl_lnt_abstract_token.
        t446 = t441->token.
        DATA t448 TYPE REF TO zcl_lnt_position.
        t448 = t446->start.
        t439 = t448.
        DATA t450 TYPE REF TO zcl_lnt_position.
        DATA t452 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t453 TYPE REF TO zcl_lnt_ivariable_reference.
        t453 = t116.
        t452 = t453->position_7b94.
        DATA t456 TYPE REF TO zcl_lnt_abstract_token.
        DATA t457 TYPE REF TO zcl_lnt_abstract_token.
        t457 = t452->token.
        t456 = t457.
        DATA t459 TYPE REF TO zcl_lnt_position.
        DATA t460 TYPE f.
        DATA t462 TYPE REF TO zcl_lnt_position.
        t462 = t456->start.
        DATA t464 TYPE f.
        t464 = t462->row.
        t460 = t464.
        DATA t466 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t467 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t469 TYPE REF TO zcl_lnt_position.
        t469 = t456->start.
        DATA t471 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t471 = t469->col.
        t467 = t471.
        DATA t473 TYPE f.
        DATA t475 TYPE string.
        t475 = t456->str.
        t473 = strlen( t475 ).
        DATA(t478) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t478->has = abap_true.
        t478->value = t473.
        t466 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t467 right = t478 op = `+` ).
        t459 = NEW zcl_lnt_position( i_row = t460 i_col = t466 ).
        t450 = t459.
        t436 = zcl_lnt_edit_helper=>replace_range( i_file = t437 i_start = t439 i_end = t450 i_text = t412 ).
        DATA t482 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t482 = zcl_lnt_edit_helper=>merge( i_fix1 = t376 i_fix2 = t436 ).
        t368 = t482.
      ENDIF.
      DATA(t486) = VALUE string( ).
      DATA(t487) = VALUE string( ).
      DATA(t488) = VALUE string( ).
      DATA(t489) = VALUE string( ).
      DATA t490 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t490.
      DATA t491 TYPE string.
      t491 = |prefer_inline|.
      DATA t493 TYPE string.
      t493 = |Prefer Inline Declarations|.
      DATA t495 TYPE string.
      t495 = |Prefer inline to up-front declarations.|.
      DATA t497 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t497.
      DATA(t500) = |EXPERIMENTAL\n\nActivates if language version is v740sp02 or a|.
      t500 = t500 && |bove.\n\nVariables must be local(METHOD or FORM).\n\nNo generic |.
      t500 = t500 && |or void typed variables. No syntax errors.\n\nFirst position u|.
      t500 = t500 && |sed must be a full/pure write.\n\nMove statment is not a cast(|.
      t500 = t500 && |?=)\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap|.
      t500 = t500 && |/CleanABAP.md#prefer-inline-to-up-front-declarations|.
      DATA(t501) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t501->has = abap_true.
      t501->value = t500.
      t497 = t501.
      DATA t503 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t503.
      DATA t507 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t508 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t508.
      t507 = t508.
      DATA(t510) = |Styleguide|.
      t507->load( ).
      APPEND t510 TO t507->items.
      t507->save( ).
      DATA(t512) = |Upport|.
      t507->load( ).
      APPEND t512 TO t507->items.
      t507->save( ).
      DATA(t514) = |Experimental|.
      t507->load( ).
      APPEND t514 TO t507->items.
      t507->save( ).
      DATA(t516) = |Quickfix|.
      t507->load( ).
      APPEND t516 TO t507->items.
      t507->save( ).
      t503 = t507.
      DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t519.
      DATA(t522) = |DATA foo TYPE i.\nfoo = 2.\nDATA percentage TYPE decfloat34.\np|.
      t522 = t522 && |ercentage = ( comment_number / abs_statement_number ) * 100.|.
      DATA(t523) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t523->has = abap_true.
      t523->value = t522.
      t519 = t523.
      DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t525.
      DATA(t528) = |DATA(foo) = 2.\nDATA(percentage) = CONV decfloat34( comment_n|.
      t528 = t528 && |umber / abs_statement_number ) * 100.|.
      DATA(t529) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t529->has = abap_true.
      t529->value = t528.
      t525 = t529.
      DATA t531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t531.
      DATA t533 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t533.
      t490 = NEW zcl_lnt_irule_metadata( i_key = t491 i_title = t493 i_short_description = t495 i_bad_example = t519 i_good_example = t525 i_extended_information = t497 i_tags = t503 i_pragma = t531 i_pseudo_comment = t533 ).
      CREATE OBJECT t490->zlnt_view_ownkeys_b0e8086400eb.
      t490->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t535.
      t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t535 ).
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
      t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t542 p1 = t543 ).
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
      DATA(t559) = strlen( t488 ).
      t487 = |{ t488 }{ t11 }|.
      t486 = t487.
      DATA t561 TYPE REF TO zcl_lnt_issue.
      CLEAR t561.
      DATA t562 TYPE REF TO zcl_lnt_typed_identifier.
      t562 = t13.
      DATA(t565) = VALUE string( ).
      DATA t566 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t566.
      DATA t567 TYPE string.
      t567 = |prefer_inline|.
      DATA t569 TYPE string.
      t569 = |Prefer Inline Declarations|.
      DATA t571 TYPE string.
      t571 = |Prefer inline to up-front declarations.|.
      DATA t573 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t573.
      DATA(t576) = |EXPERIMENTAL\n\nActivates if language version is v740sp02 or a|.
      t576 = t576 && |bove.\n\nVariables must be local(METHOD or FORM).\n\nNo generic |.
      t576 = t576 && |or void typed variables. No syntax errors.\n\nFirst position u|.
      t576 = t576 && |sed must be a full/pure write.\n\nMove statment is not a cast(|.
      t576 = t576 && |?=)\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap|.
      t576 = t576 && |/CleanABAP.md#prefer-inline-to-up-front-declarations|.
      DATA(t577) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t577->has = abap_true.
      t577->value = t576.
      t573 = t577.
      DATA t579 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t579.
      DATA t583 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t584 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t584.
      t583 = t584.
      DATA(t586) = |Styleguide|.
      t583->load( ).
      APPEND t586 TO t583->items.
      t583->save( ).
      DATA(t588) = |Upport|.
      t583->load( ).
      APPEND t588 TO t583->items.
      t583->save( ).
      DATA(t590) = |Experimental|.
      t583->load( ).
      APPEND t590 TO t583->items.
      t583->save( ).
      DATA(t592) = |Quickfix|.
      t583->load( ).
      APPEND t592 TO t583->items.
      t583->save( ).
      t579 = t583.
      DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t595.
      DATA(t598) = |DATA foo TYPE i.\nfoo = 2.\nDATA percentage TYPE decfloat34.\np|.
      t598 = t598 && |ercentage = ( comment_number / abs_statement_number ) * 100.|.
      DATA(t599) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t599->has = abap_true.
      t599->value = t598.
      t595 = t599.
      DATA t601 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t601.
      DATA(t604) = |DATA(foo) = 2.\nDATA(percentage) = CONV decfloat34( comment_n|.
      t604 = t604 && |umber / abs_statement_number ) * 100.|.
      DATA(t605) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t605->has = abap_true.
      t605->value = t604.
      t601 = t605.
      DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t607.
      DATA t609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t609.
      t566 = NEW zcl_lnt_irule_metadata( i_key = t567 i_title = t569 i_short_description = t571 i_bad_example = t595 i_good_example = t601 i_extended_information = t573 i_tags = t579 i_pragma = t607 i_pseudo_comment = t609 ).
      CREATE OBJECT t566->zlnt_view_ownkeys_b0e8086400eb.
      t566->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t611.
      t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t611 ).
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
      t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = t618 p1 = t619 ).
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
      t632 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      t561 = zcl_lnt_issue=>at_identifier( i_identifier = t562 i_message_26cb = t486 i_key = t565 i_severity = t632 i_fix = t368 ).
      t3->load( ).
      APPEND t561 TO t3->items.
      t3->save( ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD find_next_token.
    DATA(t1) = i_ref.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA t6 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    t8 = t1->resolved.
    DATA t10 TYPE string.
    t10 = t8->filename.
    t6 = t10.
    t4 = i_obj_1ed0->get_abap_file_by_name( i_filename = t6 ).
    t3 = t4.
    DATA(t12) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t12 = xsdbool( t3 IS INITIAL ).
    IF t12 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zcl_lnt_abap_file.
    t21 = t3.
    DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t20 = t21->get_tokens( i_with_pragmas = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    DATA t25 TYPE REF TO object.
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
      DATA t33 TYPE REF TO zcl_lnt_position.
      t33 = t24->start.
      t30 = t33.
      DATA t35 TYPE REF TO zcl_lnt_position.
      DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
      t37 = t1->position_7b94.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      t41 = t37->token.
      t40 = t41.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE f.
      DATA t46 TYPE REF TO zcl_lnt_position.
      t46 = t40->start.
      DATA t48 TYPE f.
      t48 = t46->row.
      t44 = t48.
      DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t53 TYPE REF TO zcl_lnt_position.
      t53 = t40->start.
      DATA t55 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t55 = t53->col.
      t51 = t55.
      DATA t57 TYPE f.
      DATA t59 TYPE string.
      t59 = t40->str.
      t57 = strlen( t59 ).
      DATA(t62) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t62->has = abap_true.
      t62->value = t57.
      t50 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t51 right = t62 op = `+` ).
      t43 = NEW zcl_lnt_position( i_row = t44 i_col = t50 ).
      t35 = t43.
      t29 = t30->is_after( i_p = t35 ).
      IF t29 = abap_true.
        result = t24.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD first_use_is_write.
    DATA(t1) = i_node.
    DATA(t2) = i_identifier.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_iscope_data.
    t4 = t1->get_data( ).
    t3 = t4->references.
    DATA t6 TYPE REF TO zcl_lnt_ireference.
    DATA t7 TYPE REF TO object.
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
      t13 = t6->reference_type.
      DATA(t15) = |Type|.
      t12 = xsdbool( t13 = t15 ).
      t11 = t12.
      IF t12 = abap_true.
        DATA(t16) = VALUE abap_bool( ).
        DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_position.
        CLEAR t18.
        DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        t21 = t6->resolved.
        t20 = t21.
        DATA t23 TYPE REF TO zcl_lnt_position.
        CLEAR t23.
        DATA(t24) = xsdbool( t20 IS INITIAL ).
        IF t24 = abap_true.
          CLEAR t23.
        ELSE.
          DATA t33 TYPE REF TO zcl_lnt_abstract_token.
          t33 = t20->token.
          DATA t35 TYPE REF TO zcl_lnt_position.
          t35 = t33->start.
          t23 = t35.
        ENDIF.
        t18 = t23.
        DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t37.
        DATA(t38) = xsdbool( t18 IS INITIAL ).
        IF t38 = abap_true.
          CLEAR t37.
        ELSE.
          DATA t41 TYPE abap_bool.
          DATA t42 TYPE REF TO zcl_lnt_position.
          t42 = t18.
          DATA t44 TYPE REF TO zcl_lnt_position.
          DATA t45 TYPE REF TO zcl_lnt_fi_identifier.
          t45 = t2.
          DATA t49 TYPE REF TO zcl_lnt_abstract_token.
          t49 = t45->token.
          DATA t51 TYPE REF TO zcl_lnt_position.
          t51 = t49->start.
          t44 = t51.
          t41 = t42->equals( i_p = t44 ).
          DATA(t53) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t53->has = abap_true.
          t53->value = t41.
          t37 = t53.
        ENDIF.
        t17 = t37.
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t54.
        DATA(t57) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t57->has = abap_true.
        t57->value = abap_true.
        t54 = t57.
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
        CLEAR result.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t62 TYPE REF TO zcl_lnt_ivariable_reference.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zcl_lnt_iscope_data.
    t65 = t1->get_data( ).
    t64 = t65->references.
    DATA t67 TYPE REF TO zcl_lnt_ireference.
    DATA t68 TYPE REF TO object.
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
      t74 = t67->reference_type.
      DATA(t76) = |Read From|.
      t73 = xsdbool( t74 <> t76 ).
      t72 = t73.
      IF t73 = abap_false.
        DATA(t77) = VALUE abap_bool( ).
        DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t78.
        DATA t79 TYPE REF TO zcl_lnt_position.
        CLEAR t79.
        DATA t81 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t82 TYPE REF TO zcl_lnt_fi_identifier.
        t82 = t67->resolved.
        t81 = t82.
        DATA t84 TYPE REF TO zcl_lnt_position.
        CLEAR t84.
        DATA(t85) = xsdbool( t81 IS INITIAL ).
        IF t85 = abap_true.
          CLEAR t84.
        ELSE.
          DATA t94 TYPE REF TO zcl_lnt_abstract_token.
          t94 = t81->token.
          DATA t96 TYPE REF TO zcl_lnt_position.
          t96 = t94->start.
          t84 = t96.
        ENDIF.
        t79 = t84.
        DATA t98 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t98.
        DATA(t99) = xsdbool( t79 IS INITIAL ).
        IF t99 = abap_true.
          CLEAR t98.
        ELSE.
          DATA t102 TYPE abap_bool.
          DATA t103 TYPE REF TO zcl_lnt_position.
          t103 = t79.
          DATA t105 TYPE REF TO zcl_lnt_position.
          DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
          t106 = t2.
          DATA t110 TYPE REF TO zcl_lnt_abstract_token.
          t110 = t106->token.
          DATA t112 TYPE REF TO zcl_lnt_position.
          t112 = t110->start.
          t105 = t112.
          t102 = t103->equals( i_p = t105 ).
          DATA(t114) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t114->has = abap_true.
          t114->value = t102.
          t98 = t114.
        ENDIF.
        t78 = t98.
        DATA t115 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t115.
        DATA(t118) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t118->has = abap_true.
        t118->value = abap_false.
        t115 = t118.
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
      t123 = t67->resolved.
      t122 = xsdbool( t123 IS BOUND ).
      IF t122 = abap_true.
        DATA t127 TYPE REF TO zcl_lnt_ivariable_reference.
        DATA t128 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
        t129 = t67->position_7b94.
        t128 = t129.
        DATA t131 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t133 TYPE REF TO zcl_lnt_fi_identifier.
        t133 = t67->resolved.
        t131 = t133.
        t127 = NEW zcl_lnt_ivariable_reference( i_position_a3fd = t128 i_resolved = t131 ).
        CREATE OBJECT t127->zlnt_view_ownkeys_b0e8086400eb.
        t127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t135 ).
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
        t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
        DATA(t139) = |resolved|.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
        ENDIF.
        t62 = t127.
        EXIT.
      ENDIF.
    ENDDO.
    DATA t142 TYPE REF TO zcl_lnt_ivariable_reference.
    DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t145 TYPE REF TO zcl_lnt_iscope_data.
    t145 = t1->get_data( ).
    t144 = t145->references.
    DATA t147 TYPE REF TO zcl_lnt_ireference.
    DATA t148 TYPE REF TO object.
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
      t154 = t147->reference_type.
      DATA(t156) = |Write To|.
      t153 = xsdbool( t154 <> t156 ).
      t152 = t153.
      IF t153 = abap_false.
        DATA(t157) = VALUE abap_bool( ).
        DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t158.
        DATA t159 TYPE REF TO zcl_lnt_position.
        CLEAR t159.
        DATA t161 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t162 TYPE REF TO zcl_lnt_fi_identifier.
        t162 = t147->resolved.
        t161 = t162.
        DATA t164 TYPE REF TO zcl_lnt_position.
        CLEAR t164.
        DATA(t165) = xsdbool( t161 IS INITIAL ).
        IF t165 = abap_true.
          CLEAR t164.
        ELSE.
          DATA t174 TYPE REF TO zcl_lnt_abstract_token.
          t174 = t161->token.
          DATA t176 TYPE REF TO zcl_lnt_position.
          t176 = t174->start.
          t164 = t176.
        ENDIF.
        t159 = t164.
        DATA t178 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t178.
        DATA(t179) = xsdbool( t159 IS INITIAL ).
        IF t179 = abap_true.
          CLEAR t178.
        ELSE.
          DATA t182 TYPE abap_bool.
          DATA t183 TYPE REF TO zcl_lnt_position.
          t183 = t159.
          DATA t185 TYPE REF TO zcl_lnt_position.
          DATA t186 TYPE REF TO zcl_lnt_fi_identifier.
          t186 = t2.
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          t190 = t186->token.
          DATA t192 TYPE REF TO zcl_lnt_position.
          t192 = t190->start.
          t185 = t192.
          t182 = t183->equals( i_p = t185 ).
          DATA(t194) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t194->has = abap_true.
          t194->value = t182.
          t178 = t194.
        ENDIF.
        t158 = t178.
        DATA t195 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t195.
        DATA(t198) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t198->has = abap_true.
        t198->value = abap_false.
        t195 = t198.
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
      t203 = t147->resolved.
      t202 = xsdbool( t203 IS BOUND ).
      IF t202 = abap_true.
        DATA t207 TYPE REF TO zcl_lnt_ivariable_reference.
        DATA t208 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t209 TYPE REF TO zcl_lnt_fi_identifier.
        t209 = t147->position_7b94.
        t208 = t209.
        DATA t211 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t213 TYPE REF TO zcl_lnt_fi_identifier.
        t213 = t147->resolved.
        t211 = t213.
        t207 = NEW zcl_lnt_ivariable_reference( i_position_a3fd = t208 i_resolved = t211 ).
        CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
        t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t215.
        t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t215 ).
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
        t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t217 p1 = t218 ).
        DATA(t219) = |resolved|.
        DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t220.
        IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t219 p1 = t220 ).
        ENDIF.
        t142 = t207.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t222) = VALUE abap_bool( ).
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t222 = xsdbool( t62 IS INITIAL ).
    IF t222 = abap_true.
      result = t142.
      RETURN.
    ELSE.
      DATA(t230) = VALUE abap_bool( ).
      DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t230 = xsdbool( t142 IS INITIAL ).
      IF t230 = abap_true.
        CLEAR result.
        RETURN.
      ELSE.
        DATA t238 TYPE abap_bool.
        DATA t239 TYPE f.
        DATA t243 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t244 TYPE REF TO zcl_lnt_ivariable_reference.
        t244 = t142.
        t243 = t244->position_7b94.
        DATA t248 TYPE REF TO zcl_lnt_abstract_token.
        t248 = t243->token.
        DATA t250 TYPE REF TO zcl_lnt_position.
        t250 = t248->start.
        DATA t252 TYPE f.
        t252 = t250->row.
        t239 = t252.
        DATA t254 TYPE f.
        DATA t258 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t259 TYPE REF TO zcl_lnt_ivariable_reference.
        t259 = t62.
        t258 = t259->position_7b94.
        DATA t263 TYPE REF TO zcl_lnt_abstract_token.
        t263 = t258->token.
        DATA t265 TYPE REF TO zcl_lnt_position.
        t265 = t263->start.
        DATA t267 TYPE f.
        t267 = t265->row.
        t254 = t267.
        t238 = xsdbool( t239 = t254 ).
        IF t238 = abap_true.
          CLEAR result.
          RETURN.
        ELSE.
          DATA(t270) = VALUE abap_bool( ).
          DATA t271 TYPE REF TO zcl_lnt_position.
          DATA t274 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t275 TYPE REF TO zcl_lnt_ivariable_reference.
          t275 = t142.
          t274 = t275->position_7b94.
          DATA t279 TYPE REF TO zcl_lnt_abstract_token.
          t279 = t274->token.
          DATA t281 TYPE REF TO zcl_lnt_position.
          t281 = t279->start.
          t271 = t281.
          DATA t283 TYPE REF TO zcl_lnt_position.
          DATA t286 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t287 TYPE REF TO zcl_lnt_ivariable_reference.
          t287 = t62.
          t286 = t287->position_7b94.
          DATA t291 TYPE REF TO zcl_lnt_abstract_token.
          t291 = t286->token.
          DATA t293 TYPE REF TO zcl_lnt_position.
          t293 = t291->start.
          t283 = t293.
          DATA t295 TYPE abap_bool.
          DATA t296 TYPE abap_bool.
          DATA t297 TYPE f.
          t297 = t271->row.
          DATA t299 TYPE f.
          t299 = t283->row.
          t296 = xsdbool( t297 < t299 ).
          t295 = t296.
          IF t296 = abap_false.
            DATA t301 TYPE abap_bool.
            DATA t302 TYPE abap_bool.
            DATA t303 TYPE f.
            t303 = t271->row.
            DATA t305 TYPE f.
            t305 = t283->row.
            t302 = xsdbool( t303 = t305 ).
            t301 = t302.
            IF t302 = abap_true.
              DATA t307 TYPE abap_bool.
              DATA t308 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t308 = t271->col.
              DATA t310 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t310 = t283->col.
              t307 = zlnt_runtime_numb_290eb04a9758=>compare( left = t308 right = t310 op = `<` ).
              t301 = t307.
            ENDIF.
            t295 = t301.
          ENDIF.
          t270 = t295.
          IF t270 = abap_true.
            result = t142.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD statement_has_generic_read.
    DATA(t2) = i_statement.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_iscope_data.
    t4 = i_node->get_data( ).
    t3 = t4->references.
    DATA t6 TYPE REF TO zcl_lnt_ireference.
    DATA t7 TYPE REF TO object.
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
      t15 = t6->reference_type.
      DATA(t17) = |Read From|.
      t14 = xsdbool( t15 <> t17 ).
      t13 = t14.
      IF t14 = abap_false.
        DATA(t18) = VALUE abap_bool( ).
        DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
        t20 = t6->resolved.
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t22.
        t18 = xsdbool( t20 IS INITIAL ).
        t13 = t18.
      ENDIF.
      t12 = t13.
      IF t13 = abap_false.
        DATA t26 TYPE abap_bool.
        DATA t27 TYPE abap_bool.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
        t31 = t6->position_7b94.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        t33 = t31->token.
        t29 = t33.
        t27 = t2->includes_token( i_search_b3ca = t29 ).
        t26 = xsdbool( t27 = abap_false ).
        t12 = t26.
      ENDIF.
      t11 = t12.
      IF t12 = abap_false.
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        t38 = t6->resolved.
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
        DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t46 TYPE REF TO zcl_lnt_fi_identifier.
        t46 = t6->resolved.
        t45 ?= t46.
        DATA t48 TYPE REF TO zcl_lnt_abstract_type.
        t48 = t45->type_cba0.
        t43 = t48.
        t42 = t43->is_generic( ).
        t41 = xsdbool( t42 = abap_true ).
        t40 = t41.
        IF t41 = abap_false.
          DATA t51 TYPE abap_bool.
          DATA t52 TYPE abap_bool.
          DATA t53 TYPE REF TO zcl_lnt_abstract_type.
          DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t56 TYPE REF TO zcl_lnt_fi_identifier.
          t56 = t6->resolved.
          t55 ?= t56.
          DATA t58 TYPE REF TO zcl_lnt_abstract_type.
          t58 = t55->type_cba0.
          t53 = t58.
          t52 = t53->contains_void( ).
          t51 = xsdbool( t52 = abap_true ).
          t40 = t51.
        ENDIF.
        IF t40 = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD is_local_definition.
    DATA(t2) = i_identifier.
    DATA t3 TYPE REF TO zcl_lnt_irange.
    DATA t4 TYPE REF TO zcl_lnt_irange.
    t4 = i_node->calc_coverage( ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_position.
    t7 = t3->start.
    DATA t10 TYPE REF TO zcl_lnt_position.
    t10 = t3->end.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
    t15 = t2.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    t19 = t15->token.
    DATA t21 TYPE REF TO zcl_lnt_position.
    t21 = t19->start.
    t14 = t21.
    t13 = t14->is_after( i_p = t7 ).
    t12 = t13.
    IF t13 = abap_true.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
      t27 = t2.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      t31 = t27->token.
      DATA t33 TYPE REF TO zcl_lnt_position.
      t33 = t31->start.
      t25 = t33.
      DATA t35 TYPE REF TO zcl_lnt_position.
      t35 = t10.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE f.
      t39 = t25->row.
      DATA t41 TYPE f.
      t41 = t35->row.
      t38 = xsdbool( t39 < t41 ).
      t37 = t38.
      IF t38 = abap_false.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE abap_bool.
        DATA t45 TYPE f.
        t45 = t25->row.
        DATA t47 TYPE f.
        t47 = t35->row.
        t44 = xsdbool( t45 = t47 ).
        t43 = t44.
        IF t44 = abap_true.
          DATA t49 TYPE abap_bool.
          DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t50 = t25->col.
          DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t52 = t35->col.
          t49 = zlnt_runtime_numb_290eb04a9758=>compare( left = t50 right = t52 op = `<` ).
          t43 = t49.
        ENDIF.
        t37 = t43.
      ENDIF.
      t24 = t37.
      t12 = t24.
    ENDIF.
    IF t12 = abap_true.
      result = abap_true.
      RETURN.
    ELSE.
      result = abap_false.

    ENDIF.
  ENDMETHOD.

  METHOD find_scope_candidates.
    DATA(t1) = i_node.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zcl_lnt_iscope_identifier.
    t5 = t1->get_identifier( ).
    t4 = t5->stype.
    DATA(t7) = |form|.
    t3 = xsdbool( t4 = t7 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE string.
      DATA t10 TYPE REF TO zcl_lnt_iscope_identifier.
      t10 = t1->get_identifier( ).
      t9 = t10->stype.
      DATA(t12) = |method|.
      t8 = xsdbool( t9 = t12 ).
      t2 = t8.
    ENDIF.
    IF t2 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      t14 = t15.
      t14->load( ).
      APPEND t1 TO t14->items.
      t14->save( ).
      result = t14.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = t1->get_children( ).
    DATA t23 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t24 TYPE REF TO object.
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
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t30 = me->find_scope_candidates( i_node = t23 ).
      t28 = t19->concat( p0 = t30 ).
      t19 = t28.
    ENDDO.
    result = t19.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prefer_inline_conf( me->gt_cn_in_sr_rl_pr_in_ts_pr_inl( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prefer_inline_conf( me->gt_cn_in_sr_rl_pr_in_ts_pr_inl( ) ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_prefer_inline.
    DATA(t3) = i_reg_f149.
    t2 = me->in_in_sr_rl_prf_inl_ts_prf_inl( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_prefer_inline_conf.
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
        t2 = NEW zcl_lnt_prefer_inline_conf( view_source = t1 ).
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
