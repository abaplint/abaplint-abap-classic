* TS: src/rules/types_naming.ts:17:1 TypesNaming
CLASS zcl_lnt_types_naming DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_types_naming_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_ty_nm_ts_ty_nmn RETURNING VALUE(result) TYPE REF TO zcl_lnt_types_naming_conf.
    METHODS st_cn_in_sr_rl_ty_nm_ts_ty_nmn IMPORTING i_conf TYPE REF TO zcl_lnt_types_naming_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_types_naming IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_types_naming_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |Does not run for TYPE POOLS|.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Naming| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |TYPES foo TYPE i.|.
    t26 = t30.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = |TYPES ty_foo TYPE i.|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |types_naming| i_title = |TYPES naming conventions| i_short_description = |Allows you to enforce a pattern for TYPES definitions| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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

  METHOD gt_cn_in_sr_rl_ty_nm_ts_ty_nmn.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ty_nm_ts_ty_nmn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = me->conf->zlnt_view_read_sr_b69864e1414b( ) flags = |i|.
    DATA t10 TYPE f.
    t10 = CONV f( 0 ).
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_type_pool ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t15 = t1->statements.
    DATA t20 TYPE REF TO zcl_lnt_statement_node.
    DATA t21 TYPE REF TO object.
    DATA(t22) = VALUE i( ).
    DO.
      t15->load( ).
      IF t22 >= lines( t15->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t15->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t20 ?= t24.
      ELSE.
        t20 ?= t21.
      ENDIF.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t25.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE REF TO zif_lnt_statement.
      t29 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_st_statem_type ).
      t27 = t28.
      IF t28 = abap_true.
        t27 = xsdbool( t10 = CONV f( 0 ) ).
      ENDIF.
      IF t27 = abap_true.
        DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
        t25 = t20->find_first_expression( i_type_9913 = t36 ).
      ELSE.
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE abap_bool.
        DATA t39 TYPE REF TO zif_lnt_statement.
        t39 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_type_begin ).
        t37 = t38.
        IF t38 = abap_false.
          DATA t42 TYPE REF TO zif_lnt_statement.
          t42 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t37 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_type_enum_begin ).
        ENDIF.
        IF t37 = abap_true.
          IF xsdbool( t10 = CONV f( 0 ) ) = abap_true.
            DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
            t25 = t20->find_first_expression( i_type_9913 = t49 ).
          ENDIF.
          DATA(t52) = CONV f( 1 ).
          t10 = t10 + t52.
        ELSE.
          DATA t53 TYPE abap_bool.
          DATA t54 TYPE abap_bool.
          DATA t55 TYPE REF TO zif_lnt_statement.
          t55 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_type_end ).
          t53 = t54.
          IF t54 = abap_false.
            DATA t58 TYPE REF TO zif_lnt_statement.
            t58 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t53 = xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_type_enum_end ).
          ENDIF.
          IF t53 = abap_true.
            DATA(t62) = CONV f( 1 ).
            t10 = t10 - t62.
            CONTINUE.
          ELSE.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      IF xsdbool( t25 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      t70 = t25->get_first_token( ).
      DATA t76 TYPE string.
      t76 = t70->str.
      IF t5->test( p0 = t76 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t82 TYPE string.
      DATA t83 TYPE string.
      DATA t84 TYPE string.
      DATA t85 TYPE string.
      DATA(t86) = |Bad TYPES naming, expected "|.
      DATA t87 TYPE string.
      t87 = me->conf->zlnt_view_read_sr_b69864e1414b( ).
      DATA(t89) = strlen( t86 ).
      t85 = |{ t86 }{ t87 }|.
      DATA(t91) = strlen( t85 ).
      t84 = |{ t85 }{ |", got "| }|.
      DATA t92 TYPE string.
      t92 = t70->str.
      DATA(t97) = strlen( t84 ).
      t83 = |{ t84 }{ t92 }|.
      DATA(t99) = strlen( t83 ).
      t82 = |{ t83 }{ |"| }|.
      DATA t101 TYPE REF TO zcl_lnt_issue.
      CLEAR t101.
      DATA(t105) = VALUE string( ).
      DATA t106 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t113.
      DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t117->has = abap_true.
      t117->value = |Does not run for TYPE POOLS|.
      t113 = t117.
      DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t119.
      DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t123.
      t123->load( ).
      APPEND |Naming| TO t123->items.
      t123->save( ).
      t123->load( ).
      APPEND |SingleFile| TO t123->items.
      t123->save( ).
      t119 = t123.
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t131.
      DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t135->has = abap_true.
      t135->value = |TYPES foo TYPE i.|.
      t131 = t135.
      DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t137.
      DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t141->has = abap_true.
      t141->value = |TYPES ty_foo TYPE i.|.
      t137 = t141.
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t143.
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t145.
      t106 = NEW zcl_lnt_irule_metadata( i_key = |types_naming| i_title = |TYPES naming conventions| i_short_description = |Allows you to enforce a pattern for TYPES definitions| i_bad_example = t131 i_good_example = t137 i_extended_information = t113 i_tags = t119 i_pragma = t143 i_pseudo_comment = t145 ).
      CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
      t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t147 ).
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t148 ).
      ENDIF.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t149 ).
      ENDIF.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t150 ).
      ENDIF.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t151 ).
      ENDIF.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t152 ).
      ENDIF.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t153 ).
      ENDIF.
      CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
      t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t155 ).
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t157 ).
      ENDIF.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t159 ).
      ENDIF.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t161 ).
      ENDIF.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t163.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t163 ).
      ENDIF.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t165 ).
      ENDIF.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t167 ).
      ENDIF.
      t105 = t106->key.
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t168 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t170 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t170.
      t101 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t70 i_message_26cb = t82 i_key = t105 i_severity = t168 i_fix = t170 ).
      t3->load( ).
      APPEND t101 TO t3->items.
      t3->save( ).

    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_types_naming_conf( me->gt_cn_in_sr_rl_ty_nm_ts_ty_nmn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_types_naming_conf( me->gt_cn_in_sr_rl_ty_nm_ts_ty_nmn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_types_naming_conf.
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
        t1 = NEW zcl_lnt_types_naming_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ty_nm_ts_ty_nmn( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1736_af47d7445473.
  ENDMETHOD.
ENDCLASS.
