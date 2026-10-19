* TS: src/rules/use_class_based_exceptions.ts:11:1 UseClassBasedExceptions
CLASS zcl_lnt_us_clss_bsd_excptns DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_us_clss_bsd_excptn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_u_c_b_e_t_u_cl_bs_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_us_clss_bsd_excptn_cnf.
    METHODS s_c_i_s_r_u_c_b_e_t_u_cl_bs_ex IMPORTING i_conf TYPE REF TO zcl_lnt_us_clss_bsd_excptn_cnf.
    METHODS r_p_i_s_r_u_c_b_e_t_u_cl_bs_ex IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_us_clss_bsd_excptns IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_us_clss_bsd_excptn_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Use class based exceptions, checks interface and class defin|.
    t7 = t7 && |itions|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#use-class-based-exceptions|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |INTERFACE lif.\n  METHODS load_data\n    EXCEPTIONS\n      inva|.
    t29 = t29 && |lid_parameter.\nENDINTERFACE.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA(t35) = |INTERFACE lif.\n  METHODS load_data\n    RAISING\n      cx_some|.
    t35 = t35 && |thing.\nENDINTERFACE.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |use_class_based_exceptions| i_title = |Use class based exceptions| i_short_description = t6 i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Use class based exceptions|.

  ENDMETHOD.

  METHOD g_c_i_s_r_u_c_b_e_t_u_cl_bs_ex.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_u_c_b_e_t_u_cl_bs_ex.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_u_c_b_e_t_u_cl_bs_ex.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    t7 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_structure_node.
      t18 = t7.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
      t13 = t18->find_all_statements( i_type_9913 = t20 ).
    ENDIF.
    t5 = t13.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t5 IS BOUND ) = abap_true.
      t21 = t5.
    ELSE.
      CREATE OBJECT t21.
    ENDIF.
    t4 = t21.
    DATA t27 TYPE REF TO zcl_lnt_statement_node.
    DATA t28 TYPE REF TO object.
    DATA(t29) = VALUE i( ).
    DO.
      t4->load( ).
      IF t29 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t28.
      READ TABLE t4->items INDEX t29 + 1 INTO t28.
      t29 = t29 + 1.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      CLEAR t27.
      IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t30 ?= t28.
        DATA t31 TYPE REF TO object.
        t31 = t30->as_ref( ).
        t27 ?= t31.
      ELSE.
        t27 ?= t28.
      ENDIF.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d229_3a5c1215c384.
      t32 = t27->find_direct_expression( i_type_9913 = t35 ).
      IF xsdbool( t32 IS BOUND ) = abap_true.
        DATA t39 TYPE REF TO zcl_lnt_issue.
        CLEAR t39.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        t41 = t32->get_first_token( ).
        DATA(t45) = VALUE string( ).
        DATA t46 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t46.
        DATA t51 TYPE string.
        DATA(t52) = |Use class based exceptions, checks interface and class defin|.
        t52 = t52 && |itions|.
        t51 = t52.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA(t56) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t56 = t56 && |nABAP.md#use-class-based-exceptions|.
        DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t57->has = abap_true.
        t57->value = t56.
        t53 = t57.
        DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t59.
        DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t63.
        t63->load( ).
        APPEND |Styleguide| TO t63->items.
        t63->save( ).
        t63->load( ).
        APPEND |SingleFile| TO t63->items.
        t63->save( ).
        t59 = t63.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA(t74) = |INTERFACE lif.\n  METHODS load_data\n    EXCEPTIONS\n      inva|.
        t74 = t74 && |lid_parameter.\nENDINTERFACE.|.
        DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t75->has = abap_true.
        t75->value = t74.
        t71 = t75.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA(t80) = |INTERFACE lif.\n  METHODS load_data\n    RAISING\n      cx_some|.
        t80 = t80 && |thing.\nENDINTERFACE.|.
        DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t81->has = abap_true.
        t81->value = t80.
        t77 = t81.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        t46 = NEW zcl_lnt_irule_metadata( i_key = |use_class_based_exceptions| i_title = |Use class based exceptions| i_short_description = t51 i_bad_example = t71 i_good_example = t77 i_extended_information = t53 i_tags = t59 i_pragma = t83 i_pseudo_comment = t85 ).
        CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
        t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t87 ).
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t88 ).
        ENDIF.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t89 ).
        ENDIF.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t91 ).
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t92 ).
        ENDIF.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t93 ).
        ENDIF.
        CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
        t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t95 ).
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t97 ).
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t99 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t101 ).
        ENDIF.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t103 ).
        ENDIF.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t105 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t107 ).
        ENDIF.
        t45 = t46->key.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t109.
        t39 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t41 i_message_26cb = |Use class based exceptions| i_key = t45 i_severity = t108 i_fix = t109 ).
        t2->load( ).
        APPEND t39 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_us_clss_bsd_excptn_cnf( me->g_c_i_s_r_u_c_b_e_t_u_cl_bs_ex( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_us_clss_bsd_excptn_cnf( me->g_c_i_s_r_u_c_b_e_t_u_cl_bs_ex( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_us_clss_bsd_excptn_cnf.
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
        t1 = NEW zcl_lnt_us_clss_bsd_excptn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_u_c_b_e_t_u_cl_bs_ex( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_u_c_b_e_t_u_cl_bs_ex( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1767_38064ac4390b.
  ENDMETHOD.
ENDCLASS.
