* TS: src/pretty_printer/fix_keyword_case.ts:8:1 FixCase
CLASS zcl_lnt_fix_case DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA file_contents TYPE string.
    DATA config TYPE REF TO zif_lnt_configuration.
    DATA keyword_case TYPE REF TO zcl_lnt_keyword_case.
    METHODS constructor IMPORTING i_file_contents TYPE string i_config TYPE REF TO zif_lnt_configuration.
    METHODS execute IMPORTING i_statement TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE string.
    METHODS format_non_keyword IMPORTING i_str TYPE string RETURNING VALUE(result) TYPE string.
    METHODS format_keyword IMPORTING i_keyword TYPE string RETURNING VALUE(result) TYPE string.
    METHODS replace_string IMPORTING i_pos TYPE REF TO zcl_lnt_position i_str TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fix_case IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_file_contents.
    DATA(t2) = i_config.
    DATA(t3) = NEW zcl_lnt_keyword_case( ).
    me->keyword_case = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `keywordCase`.
    DATA(t4) = me->keyword_case.
    DATA t5 TYPE REF TO zcl_lnt_keyword_case_conf.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA(t7) = t2.
    DATA(t8) = VALUE string( ).
    DATA t9 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_keyword_case.
    CLEAR t10.
    DATA(t11) = me->keyword_case.
    t10 = t11.
    DATA t12 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t12.
    DATA(t13) = VALUE string( ).
    DATA(t14) = |keyword_case|.
    t13 = t14.
    DATA(t15) = VALUE string( ).
    DATA(t16) = |Keyword case|.
    t15 = t16.
    DATA(t17) = VALUE string( ).
    DATA(t18) = |Checks that keywords have the same case. Non-keywords must b|.
    t18 = t18 && |e lower case.|.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA(t22) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t22 = t22 && |nABAP.md#use-your-teams-abap-formatter-settings|.
      DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t23->has = abap_true.
      t23->value = t22.
      t20 = t23.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      t20 = t24.
    ENDIF.
    t19 = t20.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t30.
      CREATE OBJECT t30.
      t29 = t30.
      DATA(t31) = t29.
      DATA(t32) = |Styleguide|.
      t31->load( ).
      APPEND t32 TO t31->items.
      t31->save( ).
      DATA(t33) = t29.
      DATA(t34) = |SingleFile|.
      t33->load( ).
      APPEND t34 TO t33->items.
      t33->save( ).
      DATA(t35) = t29.
      DATA(t36) = |Quickfix|.
      t35->load( ).
      APPEND t36 TO t35->items.
      t35->save( ).
      DATA(t37) = t29.
      t28 = t37.
      t26 = t28.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t38.
      t26 = t38.
    ENDIF.
    t25 = t26.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA(t41) = abap_true.
    IF t41 = abap_true.
      DATA(t42) = |write 'hello world'.|.
      DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t43->has = abap_true.
      t43->value = t42.
      t40 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t40 = t44.
    ENDIF.
    t39 = t40.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t46.
    DATA(t47) = abap_true.
    IF t47 = abap_true.
      DATA(t48) = |WRITE 'hello world'.|.
      DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t49->has = abap_true.
      t49->value = t48.
      t46 = t49.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      t46 = t50.
    ENDIF.
    t45 = t46.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t52.
    t51 = t52.
    DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t54.
    t53 = t54.
    t12 = NEW zcl_lnt_irule_metadata( i_key = t13 i_title = t15 i_short_description = t17 i_bad_example = t39 i_good_example = t45 i_extended_information = t19 i_tags = t25 i_pragma = t51 i_pseudo_comment = t53 ).
    CREATE OBJECT t12->zlnt_view_ownkeys_b0e8086400eb.
    t12->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t56 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t57 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t58 ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t59 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t60 ).
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t61 ).
    ENDIF.
    CREATE OBJECT t12->zlnt_json_ownkeys_70e5fd461788.
    t12->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t62) = |key|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t62 p1 = t63 ).
    ENDIF.
    DATA(t64) = |title|.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t64 p1 = t65 ).
    ENDIF.
    DATA(t66) = |shortDescription|.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
    ENDIF.
    DATA(t68) = |extendedInformation|.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t68 p1 = t69 ).
    ENDIF.
    DATA(t70) = |tags|.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
    ENDIF.
    DATA(t72) = |badExample|.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
    ENDIF.
    DATA(t74) = |goodExample|.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
    ENDIF.
    t9 = t12.
    t8 = t9->key.
    t6 = t7->read_by_rule( i_rule = t8 ).
    CLEAR t5.
    IF t6 IS BOUND.
      IF t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t5 ?= t6->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t5 IS NOT BOUND.
        IF t6->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t6->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t6->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t6->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t76.
          IF t6->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t76 ?= t6->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t76->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t5 = NEW zcl_lnt_keyword_case_conf( view_source = t6 ).
      ENDIF.
    ENDIF.
    t4->st_cn_in_sr_rl_ky_cs_ts_kyw_cs( i_conf = t5 ).
    DATA(t77) = t1.
    me->file_contents = t77.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fileContents`.
    DATA(t78) = t2.
    me->config = t78.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `config`.
  ENDMETHOD.

  METHOD execute.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4->get_children( ).
    t2 ?= t3.
    DATA t5 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        CLEAR t9.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t5.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_token_node_regex ).
      IF t10 = abap_true.
        DATA t12 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t12.
        DATA t13 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t13.
        DATA t14 TYPE REF TO object.
        CLEAR t14.
        DATA t15 TYPE REF TO zcl_lnt_token_node_regex.
        CLEAR t15.
        DATA(t16) = t5.
        DATA t17 TYPE REF TO object.
        CLEAR t17.
        t17 = t16.
        t15 ?= t17.
        t14 = t15->get_db65( ).
        t13 ?= t14.
        t12 = t13.
        DATA(t18) = VALUE abap_bool( ).
        DATA(t19) = t12.
        t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_string_token ).
        IF t18 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t20 TYPE REF TO zcl_lnt_position.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_position.
        CLEAR t21.
        DATA t22 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t22.
        DATA(t23) = t12.
        t22 = t23.
        DATA t24 TYPE REF TO zcl_lnt_position.
        CLEAR t24.
        DATA(t25) = t22.
        t24 = t25->start.
        t21 = t24.
        t20 = t21.
        DATA(t26) = VALUE string( ).
        DATA(t27) = VALUE string( ).
        DATA(t28) = VALUE string( ).
        DATA(t29) = VALUE string( ).
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t30.
        DATA(t31) = t12.
        t30 = t31.
        DATA(t32) = VALUE string( ).
        DATA(t33) = t30.
        t32 = t33->str.
        t29 = t32.
        t28 = t29.
        DATA(t34) = VALUE string( ).
        DATA(t35) = t28.
        DATA(t36) = strlen( t35 ).
        t34 = t35.
        TRANSLATE t34 TO LOWER CASE.
        t27 = t34.
        t26 = t27.
        DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t37.
        DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t38.
        DATA(t39) = CONV string( me->file_contents ).
        DATA(t40) = |\n|.
        DATA(t41) = strlen( t39 ).
        DATA(t42) = VALUE i( ).
        DATA(t43) = VALUE i( ).
        DATA(t44) = VALUE i( ).
        DATA(t45) = VALUE i( ).
        DATA(t46) = VALUE string( ).
        CREATE OBJECT t38.
        t45 = strlen( t40 ).
        t42 = 0.
        IF t45 = 0.
          WHILE t42 < t41.
            t46 = t39+t42(1).
            APPEND t46 TO t38->items.
            t42 = t42 + 1.
          ENDWHILE.
        ELSE.
          WHILE t42 <= t41.
            FIND FIRST OCCURRENCE OF t40 IN SECTION OFFSET t42 OF t39 MATCH OFFSET t43.
            IF sy-subrc = 0.
              t44 = t43 - t42.
            ELSE.
              t43 = -1.
              t44 = t41 - t42.
            ENDIF.
            CLEAR t46.
            IF t44 > 0.
              t46 = t39+t42(t44).
            ENDIF.
            APPEND t46 TO t38->items.
            IF t43 < 0.
              EXIT.
            ENDIF.
            t42 = t43 + t45.
          ENDWHILE.
        ENDIF.
        t37 = t38.
        DATA(t47) = VALUE string( ).
        DATA(t48) = VALUE string( ).
        DATA(t49) = t37.
        DATA(t50) = VALUE i( ).
        DATA(t51) = VALUE f( ).
        DATA(t52) = VALUE f( ).
        DATA t53 TYPE REF TO zcl_lnt_position.
        CLEAR t53.
        DATA(t54) = t20.
        t53 = t54.
        DATA(t55) = VALUE f( ).
        DATA(t56) = t53.
        t55 = t56->row.
        t52 = t55.
        DATA(t57) = CONV f( 1 ).
        t51 = t52 - t57.
        IF t51 > range_i32_upper.
          t50 = range_i32_upper.
        ELSEIF t51 < range_i32_lower.
          t50 = range_i32_lower.
        ELSE.
          t50 = trunc( t51 ).
        ENDIF.
        t50 = t50 + 1.
        IF t49->has( t50 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t49->load( ).
        CLEAR t48.
        READ TABLE t49->items INDEX t50 INTO t48.
        t47 = t48.
        DATA(t58) = t37.
        DATA(t59) = VALUE i( ).
        DATA(t60) = VALUE f( ).
        DATA(t61) = VALUE f( ).
        DATA t62 TYPE REF TO zcl_lnt_position.
        CLEAR t62.
        DATA(t63) = t20.
        t62 = t63.
        DATA(t64) = VALUE f( ).
        DATA(t65) = t62.
        t64 = t65->row.
        t61 = t64.
        DATA(t66) = CONV f( 1 ).
        t60 = t61 - t66.
        IF t60 > range_i32_upper.
          t59 = range_i32_upper.
        ELSEIF t60 < range_i32_lower.
          t59 = range_i32_lower.
        ELSE.
          t59 = trunc( t60 ).
        ENDIF.
        DATA(t67) = VALUE string( ).
        DATA(t68) = VALUE string( ).
        DATA(t69) = VALUE string( ).
        DATA(t70) = t47.
        DATA(t71) = 0.
        DATA(t72) = VALUE i( ).
        DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t73.
        DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t74.
        DATA t75 TYPE REF TO zcl_lnt_position.
        CLEAR t75.
        DATA(t76) = t20.
        t75 = t76.
        DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t77.
        DATA(t78) = t75.
        t77 = t78->col.
        t74 = t77.
        DATA(t79) = CONV f( 1 ).
        DATA(t80) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t80->has = abap_true.
        t80->value = t79.
        t73 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t74 right = t80 op = `-` ).
        t72 = zlnt_runtime_numb_290eb04a9758=>index( t73 ).
        DATA(t81) = strlen( t70 ).
        IF t71 < 0.
          t71 = t71 + t81.
          IF t71 < 0.
            t71 = 0.
          ENDIF.
        ENDIF.
        IF t71 > t81 OR t72 <= 0.
          CLEAR t69.
        ELSE.
          IF t72 > t81 - t71.
            t72 = t81 - t71.
          ENDIF.
          t69 = t70+t71(t72).
        ENDIF.
        DATA(t82) = t26.
        DATA(t83) = strlen( t69 ).
        t68 = |{ t69 }{ t82 }|.
        DATA(t84) = VALUE string( ).
        DATA(t85) = VALUE string( ).
        DATA(t86) = t47.
        t85 = t86.
        DATA(t87) = VALUE string( ).
        DATA(t88) = t85.
        DATA(t89) = VALUE i( ).
        DATA t90 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t91.
        DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t92.
        DATA t93 TYPE REF TO zcl_lnt_position.
        CLEAR t93.
        DATA(t94) = t20.
        t93 = t94.
        DATA t95 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t95.
        DATA(t96) = t93.
        t95 = t96->col.
        t92 = t95.
        DATA(t97) = VALUE f( ).
        DATA(t98) = VALUE i( ).
        DATA(t99) = t26.
        DATA(t100) = strlen( t99 ).
        t98 = t100.
        t97 = t98.
        DATA(t101) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t101->has = abap_true.
        t101->value = t97.
        t91 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t92 right = t101 op = `+` ).
        DATA(t102) = CONV f( 1 ).
        DATA(t103) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t103->has = abap_true.
        t103->value = t102.
        t90 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t91 right = t103 op = `-` ).
        t89 = zlnt_runtime_numb_290eb04a9758=>index( t90 ).
        DATA(t104) = VALUE i( ).
        DATA(t105) = t85.
        DATA(t106) = strlen( t105 ).
        t104 = t106.
        DATA(t107) = strlen( t88 ).
        IF t89 < 0.
          t89 = t89 + t107.
          IF t89 < 0.
            t89 = 0.
          ENDIF.
        ENDIF.
        IF t89 > t107 OR t104 <= 0.
          CLEAR t87.
        ELSE.
          IF t104 > t107 - t89.
            t104 = t107 - t89.
          ENDIF.
          t87 = t88+t89(t104).
        ENDIF.
        t84 = t87.
        DATA(t108) = strlen( t68 ).
        t67 = |{ t68 }{ t84 }|.
        t58->put( p0 = t59 p1 = t67 ).
        DATA(t109) = VALUE string( ).
        DATA(t110) = t37.
        DATA(t111) = |\n|.
        DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t112->has = abap_true.
        t112->value = t111.
        t109 = t110->join( p0 = t112 ).
        me->file_contents = t109.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fileContents`.
        CONTINUE.
      ELSE.
        DATA(t113) = VALUE abap_bool( ).
        DATA(t114) = t5.
        t113 = xsdbool( t114 IS BOUND AND t114 IS INSTANCE OF zcl_lnt_token_node ).
        IF t113 = abap_true.
          DATA t115 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t115.
          DATA t116 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t116.
          DATA t117 TYPE REF TO zcl_lnt_token_node.
          CLEAR t117.
          DATA(t118) = t5.
          DATA t119 TYPE REF TO object.
          CLEAR t119.
          t119 = t118.
          t117 ?= t119.
          t116 = t117->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
          t115 = t116.
          DATA(t120) = VALUE string( ).
          DATA(t121) = VALUE string( ).
          DATA t122 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t122.
          DATA(t123) = t115.
          t122 = t123.
          DATA(t124) = VALUE string( ).
          DATA(t125) = t122.
          t124 = t125->str.
          t121 = t124.
          t120 = t121.
          DATA(t126) = VALUE abap_bool( ).
          DATA(t127) = VALUE abap_bool( ).
          DATA(t128) = me->keyword_case.
          DATA(t129) = t120.
          t127 = t128->violates_rule( i_keyword = t129 ).
          t126 = t127.
          IF t127 = abap_true.
            DATA(t130) = VALUE abap_bool( ).
            DATA(t131) = t115.
            t130 = xsdbool( t131 IS BOUND AND t131 IS INSTANCE OF zcl_lnt_lx_identifier ).
            t126 = t130.
          ENDIF.
          IF t126 = abap_true.
            DATA t132 TYPE REF TO zcl_lnt_position.
            CLEAR t132.
            DATA t133 TYPE REF TO zcl_lnt_position.
            CLEAR t133.
            DATA t134 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t134.
            DATA t135 TYPE REF TO zcl_lnt_lx_identifier.
            CLEAR t135.
            DATA(t136) = t115.
            t135 ?= t136.
            t134 = t135.
            DATA t137 TYPE REF TO zcl_lnt_position.
            CLEAR t137.
            DATA(t138) = t134.
            t137 = t138->start.
            t133 = t137.
            t132 = t133.
            DATA(t139) = VALUE string( ).
            DATA(t140) = VALUE string( ).
            DATA(t141) = VALUE string( ).
            DATA(t142) = t120.
            t141 = t142.
            DATA(t143) = VALUE string( ).
            DATA(t144) = VALUE string( ).
            DATA(t145) = VALUE string( ).
            DATA t146 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t146.
            DATA t147 TYPE REF TO zcl_lnt_keyword_case.
            CLEAR t147.
            DATA(t148) = me->keyword_case.
            t147 = t148.
            DATA t149 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t149.
            DATA(t150) = VALUE string( ).
            DATA(t151) = |keyword_case|.
            t150 = t151.
            DATA(t152) = VALUE string( ).
            DATA(t153) = |Keyword case|.
            t152 = t153.
            DATA(t154) = VALUE string( ).
            DATA(t155) = |Checks that keywords have the same case. Non-keywords must b|.
            t155 = t155 && |e lower case.|.
            t154 = t155.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t157.
            DATA(t158) = abap_true.
            IF t158 = abap_true.
              DATA(t159) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
              t159 = t159 && |nABAP.md#use-your-teams-abap-formatter-settings|.
              DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t160->has = abap_true.
              t160->value = t159.
              t157 = t160.
            ELSE.
              DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t161.
              t157 = t161.
            ENDIF.
            t156 = t157.
            DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t162.
            DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t163.
            DATA(t164) = abap_true.
            IF t164 = abap_true.
              DATA t165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t165.
              DATA t166 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t166.
              DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t167.
              CREATE OBJECT t167.
              t166 = t167.
              DATA(t168) = t166.
              DATA(t169) = |Styleguide|.
              t168->load( ).
              APPEND t169 TO t168->items.
              t168->save( ).
              DATA(t170) = t166.
              DATA(t171) = |SingleFile|.
              t170->load( ).
              APPEND t171 TO t170->items.
              t170->save( ).
              DATA(t172) = t166.
              DATA(t173) = |Quickfix|.
              t172->load( ).
              APPEND t173 TO t172->items.
              t172->save( ).
              DATA(t174) = t166.
              t165 = t174.
              t163 = t165.
            ELSE.
              DATA t175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t175.
              t163 = t175.
            ENDIF.
            t162 = t163.
            DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t176.
            DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t177.
            DATA(t178) = abap_true.
            IF t178 = abap_true.
              DATA(t179) = |write 'hello world'.|.
              DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t180->has = abap_true.
              t180->value = t179.
              t177 = t180.
            ELSE.
              DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t181.
              t177 = t181.
            ENDIF.
            t176 = t177.
            DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t182.
            DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t183.
            DATA(t184) = abap_true.
            IF t184 = abap_true.
              DATA(t185) = |WRITE 'hello world'.|.
              DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t186->has = abap_true.
              t186->value = t185.
              t183 = t186.
            ELSE.
              DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t187.
              t183 = t187.
            ENDIF.
            t182 = t183.
            DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t188.
            DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t189.
            t188 = t189.
            DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t190.
            DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t191.
            t190 = t191.
            t149 = NEW zcl_lnt_irule_metadata( i_key = t150 i_title = t152 i_short_description = t154 i_bad_example = t176 i_good_example = t182 i_extended_information = t156 i_tags = t162 i_pragma = t188 i_pseudo_comment = t190 ).
            CREATE OBJECT t149->zlnt_view_ownkeys_b0e8086400eb.
            t149->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t192.
            IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t192 ).
            ENDIF.
            DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t193.
            IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t193 ).
            ENDIF.
            DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t194.
            IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t194 ).
            ENDIF.
            DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t195.
            IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t195 ).
            ENDIF.
            DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t196.
            IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t196 ).
            ENDIF.
            DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t197.
            IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t197 ).
            ENDIF.
            DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t198.
            IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t198 ).
            ENDIF.
            CREATE OBJECT t149->zlnt_json_ownkeys_70e5fd461788.
            t149->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t199) = |key|.
            DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t200.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
            ENDIF.
            DATA(t201) = |title|.
            DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t202.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
            ENDIF.
            DATA(t203) = |shortDescription|.
            DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t204.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
            ENDIF.
            DATA(t205) = |extendedInformation|.
            DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t206.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
            ENDIF.
            DATA(t207) = |tags|.
            DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t208.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
            ENDIF.
            DATA(t209) = |badExample|.
            DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t210.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
            ENDIF.
            DATA(t211) = |goodExample|.
            DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t212.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
            ENDIF.
            t146 = t149.
            t145 = t146->key.
            t144 = t145.
            DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t213.
            DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t214.
            DATA(t215) = me->config.
            DATA(t216) = t144.
            t214 = t215->read_by_rule( i_rule = t216 ).
            t213 = t214.
            DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t217.
            DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t218.
            DATA(t219) = VALUE abap_bool( ).
            DATA(t220) = t213.
            IF t220 IS BOUND.
              t219 = t220->truth( ).
            ENDIF.
            IF t219 = abap_true.
              DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t221.
              DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t222.
              DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t223.
              DATA(t224) = t213.
              DATA(t225) = |style|.
              t223 = t224->get( p0 = t225 ).
              t222 = t223.
              DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t226.
              DATA(t227) = VALUE abap_bool( ).
              DATA(t228) = t222.
              IF t228 IS INITIAL.
                t227 = abap_true.
              ENDIF.
              IF t227 = abap_true.
                DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t229.
                t226 = t229.
              ELSE.
                DATA(t230) = VALUE string( ).
                DATA(t231) = t222.
                t230 = t231->as_string( ).
                DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t232->has = abap_true.
                t232->value = t230.
                t226 = t232.
              ENDIF.
              t221 = t226.
              t218 = t221.
            ELSE.
              DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t233.
              DATA(t234) = abap_true.
              IF t234 = abap_true.
                DATA(t235) = |upper|.
                DATA(t236) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t236->has = abap_true.
                t236->value = t235.
                t233 = t236.
              ELSE.
                DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t237.
                t233 = t237.
              ENDIF.
              t218 = t233.
            ENDIF.
            t217 = t218.
            DATA(t238) = VALUE string( ).
            DATA(t239) = VALUE abap_bool( ).
            DATA(t240) = t217.
            DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t241.
            DATA(t242) = abap_true.
            IF t242 = abap_true.
              DATA(t243) = |lower|.
              DATA(t244) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t244->has = abap_true.
              t244->value = t243.
              t241 = t244.
            ELSE.
              DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t245.
              t241 = t245.
            ENDIF.
            DATA(t246) = VALUE abap_bool( ).
            DATA(t247) = VALUE abap_bool( ).
            IF t240 IS BOUND.
              t246 = t240->has.
            ENDIF.
            IF t241 IS BOUND.
              t247 = t241->has.
            ENDIF.
            IF t246 = t247.
              IF t246 = abap_false.
                t239 = abap_true.
              ELSEIF t240->value = t241->value.
                t239 = abap_true.
              ENDIF.
            ENDIF.
            IF t239 = abap_true.
              DATA(t248) = VALUE string( ).
              DATA(t249) = t141.
              DATA(t250) = strlen( t249 ).
              t248 = t249.
              TRANSLATE t248 TO LOWER CASE.
              t238 = t248.
            ELSE.
              DATA(t251) = VALUE string( ).
              DATA(t252) = t141.
              DATA(t253) = strlen( t252 ).
              t251 = t252.
              IF t251 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t251 TO UPPER CASE.
              ELSE.
                t251 = zlnt_runtime_uppe_91169605024d=>full( t251 ).
              ENDIF.
              t238 = t251.
            ENDIF.
            t143 = t238.
            t140 = t143.
            t139 = t140.
            DATA t254 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t254.
            DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t255.
            DATA(t256) = CONV string( me->file_contents ).
            DATA(t257) = |\n|.
            DATA(t258) = strlen( t256 ).
            DATA(t259) = VALUE i( ).
            DATA(t260) = VALUE i( ).
            DATA(t261) = VALUE i( ).
            DATA(t262) = VALUE i( ).
            DATA(t263) = VALUE string( ).
            CREATE OBJECT t255.
            t262 = strlen( t257 ).
            t259 = 0.
            IF t262 = 0.
              WHILE t259 < t258.
                t263 = t256+t259(1).
                APPEND t263 TO t255->items.
                t259 = t259 + 1.
              ENDWHILE.
            ELSE.
              WHILE t259 <= t258.
                FIND FIRST OCCURRENCE OF t257 IN SECTION OFFSET t259 OF t256 MATCH OFFSET t260.
                IF sy-subrc = 0.
                  t261 = t260 - t259.
                ELSE.
                  t260 = -1.
                  t261 = t258 - t259.
                ENDIF.
                CLEAR t263.
                IF t261 > 0.
                  t263 = t256+t259(t261).
                ENDIF.
                APPEND t263 TO t255->items.
                IF t260 < 0.
                  EXIT.
                ENDIF.
                t259 = t260 + t262.
              ENDWHILE.
            ENDIF.
            t254 = t255.
            DATA(t264) = VALUE string( ).
            DATA(t265) = VALUE string( ).
            DATA(t266) = t254.
            DATA(t267) = VALUE i( ).
            DATA(t268) = VALUE f( ).
            DATA(t269) = VALUE f( ).
            DATA t270 TYPE REF TO zcl_lnt_position.
            CLEAR t270.
            DATA(t271) = t132.
            t270 = t271.
            DATA(t272) = VALUE f( ).
            DATA(t273) = t270.
            t272 = t273->row.
            t269 = t272.
            DATA(t274) = CONV f( 1 ).
            t268 = t269 - t274.
            IF t268 > range_i32_upper.
              t267 = range_i32_upper.
            ELSEIF t268 < range_i32_lower.
              t267 = range_i32_lower.
            ELSE.
              t267 = trunc( t268 ).
            ENDIF.
            t267 = t267 + 1.
            IF t266->has( t267 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t266->load( ).
            CLEAR t265.
            READ TABLE t266->items INDEX t267 INTO t265.
            t264 = t265.
            DATA(t275) = t254.
            DATA(t276) = VALUE i( ).
            DATA(t277) = VALUE f( ).
            DATA(t278) = VALUE f( ).
            DATA t279 TYPE REF TO zcl_lnt_position.
            CLEAR t279.
            DATA(t280) = t132.
            t279 = t280.
            DATA(t281) = VALUE f( ).
            DATA(t282) = t279.
            t281 = t282->row.
            t278 = t281.
            DATA(t283) = CONV f( 1 ).
            t277 = t278 - t283.
            IF t277 > range_i32_upper.
              t276 = range_i32_upper.
            ELSEIF t277 < range_i32_lower.
              t276 = range_i32_lower.
            ELSE.
              t276 = trunc( t277 ).
            ENDIF.
            DATA(t284) = VALUE string( ).
            DATA(t285) = VALUE string( ).
            DATA(t286) = VALUE string( ).
            DATA(t287) = t264.
            DATA(t288) = 0.
            DATA(t289) = VALUE i( ).
            DATA t290 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t290.
            DATA t291 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t291.
            DATA t292 TYPE REF TO zcl_lnt_position.
            CLEAR t292.
            DATA(t293) = t132.
            t292 = t293.
            DATA t294 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t294.
            DATA(t295) = t292.
            t294 = t295->col.
            t291 = t294.
            DATA(t296) = CONV f( 1 ).
            DATA(t297) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t297->has = abap_true.
            t297->value = t296.
            t290 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t291 right = t297 op = `-` ).
            t289 = zlnt_runtime_numb_290eb04a9758=>index( t290 ).
            DATA(t298) = strlen( t287 ).
            IF t288 < 0.
              t288 = t288 + t298.
              IF t288 < 0.
                t288 = 0.
              ENDIF.
            ENDIF.
            IF t288 > t298 OR t289 <= 0.
              CLEAR t286.
            ELSE.
              IF t289 > t298 - t288.
                t289 = t298 - t288.
              ENDIF.
              t286 = t287+t288(t289).
            ENDIF.
            DATA(t299) = t139.
            DATA(t300) = strlen( t286 ).
            t285 = |{ t286 }{ t299 }|.
            DATA(t301) = VALUE string( ).
            DATA(t302) = VALUE string( ).
            DATA(t303) = t264.
            t302 = t303.
            DATA(t304) = VALUE string( ).
            DATA(t305) = t302.
            DATA(t306) = VALUE i( ).
            DATA t307 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t307.
            DATA t308 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t308.
            DATA t309 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t309.
            DATA t310 TYPE REF TO zcl_lnt_position.
            CLEAR t310.
            DATA(t311) = t132.
            t310 = t311.
            DATA t312 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t312.
            DATA(t313) = t310.
            t312 = t313->col.
            t309 = t312.
            DATA(t314) = VALUE f( ).
            DATA(t315) = VALUE i( ).
            DATA(t316) = t139.
            DATA(t317) = strlen( t316 ).
            t315 = t317.
            t314 = t315.
            DATA(t318) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t318->has = abap_true.
            t318->value = t314.
            t308 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t309 right = t318 op = `+` ).
            DATA(t319) = CONV f( 1 ).
            DATA(t320) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t320->has = abap_true.
            t320->value = t319.
            t307 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t308 right = t320 op = `-` ).
            t306 = zlnt_runtime_numb_290eb04a9758=>index( t307 ).
            DATA(t321) = VALUE i( ).
            DATA(t322) = t302.
            DATA(t323) = strlen( t322 ).
            t321 = t323.
            DATA(t324) = strlen( t305 ).
            IF t306 < 0.
              t306 = t306 + t324.
              IF t306 < 0.
                t306 = 0.
              ENDIF.
            ENDIF.
            IF t306 > t324 OR t321 <= 0.
              CLEAR t304.
            ELSE.
              IF t321 > t324 - t306.
                t321 = t324 - t306.
              ENDIF.
              t304 = t305+t306(t321).
            ENDIF.
            t301 = t304.
            DATA(t325) = strlen( t285 ).
            t284 = |{ t285 }{ t301 }|.
            t275->put( p0 = t276 p1 = t284 ).
            DATA(t326) = VALUE string( ).
            DATA(t327) = t254.
            DATA(t328) = |\n|.
            DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t329->has = abap_true.
            t329->value = t328.
            t326 = t327->join( p0 = t329 ).
            me->file_contents = t326.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fileContents`.
          ENDIF.
        ELSE.
          DATA(t330) = VALUE abap_bool( ).
          DATA(t331) = t5.
          t330 = xsdbool( t331 IS BOUND AND t331 IS INSTANCE OF zcl_lnt_expression_node ).
          IF t330 = abap_true.
            DATA(t332) = VALUE string( ).
            DATA t333 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t333.
            DATA(t334) = t5.
            DATA t335 TYPE REF TO object.
            CLEAR t335.
            t335 = t334.
            t333 ?= t335.
            t332 = me->execute( i_statement = t333 ).
          ELSE.
            DATA t336 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
            CLEAR t336.
            DATA t337 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
            CLEAR t337.
            DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t338.
            DATA(t339) = abap_true.
            IF t339 = abap_true.
              DATA(t340) = |pretty printer, traverse, unexpected node type|.
              DATA(t341) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t341->has = abap_true.
              t341->value = t340.
              t338 = t341.
            ELSE.
              DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t342.
              t338 = t342.
            ENDIF.
            t337 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t338 ).
            t336 = NEW #( ).
            t336->payload = t337.
            CLEAR t336->source_value.
            IF t337 IS BOUND.
              DATA t343 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t343.
              DATA t344 TYPE REF TO object.
              CLEAR t344.
              CLEAR t343.
              t344 = t337.
              TRY.
                  t336->source_value ?= t344.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t336->source_value IS NOT BOUND.
                TRY.
                    t343 ?= t337.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t343 IS BOUND.
                  t336->source_value = t343->source( ).
                ENDIF.
                IF t336->source_value IS NOT BOUND.
                  CREATE OBJECT t336->source_value.
                  t336->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t336->source_value->oval = t337.
                ENDIF.
              ENDIF.
            ENDIF.
            RAISE EXCEPTION t336.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t345) = CONV string( me->file_contents ).
    result = t345.

  ENDMETHOD.

  METHOD format_non_keyword.
    DATA(t1) = i_str.
    DATA t2 TYPE string.
    DATA(t3) = t1.
    DATA(t4) = strlen( t3 ).
    t2 = t3.
    TRANSLATE t2 TO LOWER CASE.
    result = t2.

  ENDMETHOD.

  METHOD format_keyword.
    DATA(t1) = i_keyword.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA t4 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_keyword_case.
    DATA(t6) = me->keyword_case.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t7.
    DATA t8 TYPE string.
    DATA(t9) = |keyword_case|.
    t8 = t9.
    DATA t10 TYPE string.
    DATA(t11) = |Keyword case|.
    t10 = t11.
    DATA t12 TYPE string.
    DATA(t13) = |Checks that keywords have the same case. Non-keywords must b|.
    t13 = t13 && |e lower case.|.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t17 = t17 && |nABAP.md#use-your-teams-abap-formatter-settings|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    t14 = t15.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t25.
      t24 = t25.
      DATA(t26) = t24.
      DATA(t27) = |Styleguide|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t24.
      DATA(t29) = |SingleFile|.
      t28->load( ).
      APPEND t29 TO t28->items.
      t28->save( ).
      DATA(t30) = t24.
      DATA(t31) = |Quickfix|.
      t30->load( ).
      APPEND t31 TO t30->items.
      t30->save( ).
      DATA(t32) = t24.
      t23 = t32.
      t21 = t23.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t33.
      t21 = t33.
    ENDIF.
    t20 = t21.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA(t37) = |write 'hello world'.|.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t37.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t35 = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA(t42) = abap_true.
    IF t42 = abap_true.
      DATA(t43) = |WRITE 'hello world'.|.
      DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t44->has = abap_true.
      t44->value = t43.
      t41 = t44.
    ELSE.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      t41 = t45.
    ENDIF.
    t40 = t41.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    t46 = t47.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t49.
    t48 = t49.
    t7 = NEW zcl_lnt_irule_metadata( i_key = t8 i_title = t10 i_short_description = t12 i_bad_example = t34 i_good_example = t40 i_extended_information = t14 i_tags = t20 i_pragma = t46 i_pseudo_comment = t48 ).
    CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
    t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t56 ).
    ENDIF.
    CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
    t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t57) = |key|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |title|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |shortDescription|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |extendedInformation|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |tags|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    DATA(t67) = |badExample|.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
    ENDIF.
    DATA(t69) = |goodExample|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
    ENDIF.
    t4 = t7.
    t3 = t4->key.
    t2 = t3.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t73) = me->config.
    DATA(t74) = t2.
    t72 = t73->read_by_rule( i_rule = t74 ).
    t71 = t72.
    DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA(t78) = t71.
    IF t78 IS BOUND.
      t77 = t78->truth( ).
    ENDIF.
    IF t77 = abap_true.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t79.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t82) = t71.
      DATA(t83) = |style|.
      t81 = t82->get( p0 = t83 ).
      t80 = t81.
      DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t84.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = t80.
      IF t86 IS INITIAL.
        t85 = abap_true.
      ENDIF.
      IF t85 = abap_true.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        t84 = t87.
      ELSE.
        DATA t88 TYPE string.
        DATA(t89) = t80.
        t88 = t89->as_string( ).
        DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t90->has = abap_true.
        t90->value = t88.
        t84 = t90.
      ENDIF.
      t79 = t84.
      t76 = t79.
    ELSE.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t91.
      DATA(t92) = abap_true.
      IF t92 = abap_true.
        DATA(t93) = |upper|.
        DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t94->has = abap_true.
        t94->value = t93.
        t91 = t94.
      ELSE.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        t91 = t95.
      ENDIF.
      t76 = t91.
    ENDIF.
    t75 = t76.
    DATA(t96) = VALUE string( ).
    DATA(t97) = VALUE abap_bool( ).
    DATA(t98) = t75.
    DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t99.
    DATA(t100) = abap_true.
    IF t100 = abap_true.
      DATA(t101) = |lower|.
      DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t102->has = abap_true.
      t102->value = t101.
      t99 = t102.
    ELSE.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t103.
      t99 = t103.
    ENDIF.
    DATA(t104) = VALUE abap_bool( ).
    DATA(t105) = VALUE abap_bool( ).
    IF t98 IS BOUND.
      t104 = t98->has.
    ENDIF.
    IF t99 IS BOUND.
      t105 = t99->has.
    ENDIF.
    IF t104 = t105.
      IF t104 = abap_false.
        t97 = abap_true.
      ELSEIF t98->value = t99->value.
        t97 = abap_true.
      ENDIF.
    ENDIF.
    IF t97 = abap_true.
      DATA t106 TYPE string.
      DATA(t107) = t1.
      DATA(t108) = strlen( t107 ).
      t106 = t107.
      TRANSLATE t106 TO LOWER CASE.
      t96 = t106.
    ELSE.
      DATA t109 TYPE string.
      DATA(t110) = t1.
      DATA(t111) = strlen( t110 ).
      t109 = t110.
      IF t109 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t109 TO UPPER CASE.
      ELSE.
        t109 = zlnt_runtime_uppe_91169605024d=>full( t109 ).
      ENDIF.
      t96 = t109.
    ENDIF.
    result = t96.

  ENDMETHOD.

  METHOD replace_string.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_pos.
    DATA(t2) = i_str.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t5) = CONV string( me->file_contents ).
    DATA(t6) = |\n|.
    DATA(t7) = strlen( t5 ).
    DATA t8 TYPE i.
    DATA(t9) = VALUE i( ).
    DATA(t10) = VALUE i( ).
    DATA t11 TYPE i.
    DATA(t12) = VALUE string( ).
    CREATE OBJECT t4.
    t11 = strlen( t6 ).
    t8 = 0.
    IF t11 = 0.
      WHILE t8 < t7.
        t12 = t5+t8(1).
        APPEND t12 TO t4->items.
        t8 = t8 + 1.
      ENDWHILE.
    ELSE.
      WHILE t8 <= t7.
        FIND FIRST OCCURRENCE OF t6 IN SECTION OFFSET t8 OF t5 MATCH OFFSET t9.
        IF sy-subrc = 0.
          t10 = t9 - t8.
        ELSE.
          t9 = -1.
          t10 = t7 - t8.
        ENDIF.
        CLEAR t12.
        IF t10 > 0.
          t12 = t5+t8(t10).
        ENDIF.
        APPEND t12 TO t4->items.
        IF t9 < 0.
          EXIT.
        ENDIF.
        t8 = t9 + t11.
      ENDWHILE.
    ENDIF.
    t3 = t4.
    DATA(t13) = VALUE string( ).
    DATA(t14) = VALUE string( ).
    DATA(t15) = t3.
    DATA(t16) = VALUE i( ).
    DATA t17 TYPE f.
    DATA t18 TYPE f.
    DATA t19 TYPE REF TO zcl_lnt_position.
    DATA(t20) = t1.
    t19 = t20.
    DATA t21 TYPE f.
    DATA(t22) = t19.
    t21 = t22->row.
    t18 = t21.
    DATA(t23) = CONV f( 1 ).
    t17 = t18 - t23.
    IF t17 > range_i32_upper.
      t16 = range_i32_upper.
    ELSEIF t17 < range_i32_lower.
      t16 = range_i32_lower.
    ELSE.
      t16 = trunc( t17 ).
    ENDIF.
    t16 = t16 + 1.
    IF t15->has( t16 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t15->load( ).
    CLEAR t14.
    READ TABLE t15->items INDEX t16 INTO t14.
    t13 = t14.
    DATA(t24) = t3.
    DATA(t25) = VALUE i( ).
    DATA t26 TYPE f.
    DATA t27 TYPE f.
    DATA t28 TYPE REF TO zcl_lnt_position.
    DATA(t29) = t1.
    t28 = t29.
    DATA t30 TYPE f.
    DATA(t31) = t28.
    t30 = t31->row.
    t27 = t30.
    DATA(t32) = CONV f( 1 ).
    t26 = t27 - t32.
    IF t26 > range_i32_upper.
      t25 = range_i32_upper.
    ELSEIF t26 < range_i32_lower.
      t25 = range_i32_lower.
    ELSE.
      t25 = trunc( t26 ).
    ENDIF.
    DATA(t33) = VALUE string( ).
    DATA(t34) = VALUE string( ).
    DATA(t35) = VALUE string( ).
    DATA(t36) = t13.
    DATA(t37) = 0.
    DATA t38 TYPE i.
    DATA t39 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t41 TYPE REF TO zcl_lnt_position.
    DATA(t42) = t1.
    t41 = t42.
    DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t44) = t41.
    t43 = t44->col.
    t40 = t43.
    DATA(t45) = CONV f( 1 ).
    DATA(t46) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t46->has = abap_true.
    t46->value = t45.
    t39 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t40 right = t46 op = `-` ).
    t38 = zlnt_runtime_numb_290eb04a9758=>index( t39 ).
    DATA(t47) = strlen( t36 ).
    IF t37 < 0.
      t37 = t37 + t47.
      IF t37 < 0.
        t37 = 0.
      ENDIF.
    ENDIF.
    IF t37 > t47 OR t38 <= 0.
      CLEAR t35.
    ELSE.
      IF t38 > t47 - t37.
        t38 = t47 - t37.
      ENDIF.
      t35 = t36+t37(t38).
    ENDIF.
    DATA(t48) = t2.
    DATA(t49) = strlen( t35 ).
    t34 = |{ t35 }{ t48 }|.
    DATA(t50) = VALUE string( ).
    DATA t51 TYPE string.
    DATA(t52) = t13.
    t51 = t52.
    DATA(t53) = VALUE string( ).
    DATA(t54) = t51.
    DATA t55 TYPE i.
    DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t59 TYPE REF TO zcl_lnt_position.
    DATA(t60) = t1.
    t59 = t60.
    DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t62) = t59.
    t61 = t62->col.
    t58 = t61.
    DATA t63 TYPE f.
    DATA t64 TYPE i.
    DATA(t65) = t2.
    DATA(t66) = strlen( t65 ).
    t64 = t66.
    t63 = t64.
    DATA(t67) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t67->has = abap_true.
    t67->value = t63.
    t57 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t58 right = t67 op = `+` ).
    DATA(t68) = CONV f( 1 ).
    DATA(t69) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t69->has = abap_true.
    t69->value = t68.
    t56 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t57 right = t69 op = `-` ).
    t55 = zlnt_runtime_numb_290eb04a9758=>index( t56 ).
    DATA t70 TYPE i.
    DATA(t71) = t51.
    DATA(t72) = strlen( t71 ).
    t70 = t72.
    DATA(t73) = strlen( t54 ).
    IF t55 < 0.
      t55 = t55 + t73.
      IF t55 < 0.
        t55 = 0.
      ENDIF.
    ENDIF.
    IF t55 > t73 OR t70 <= 0.
      CLEAR t53.
    ELSE.
      IF t70 > t73 - t55.
        t70 = t73 - t55.
      ENDIF.
      t53 = t54+t55(t70).
    ENDIF.
    t50 = t53.
    DATA(t74) = strlen( t34 ).
    t33 = |{ t34 }{ t50 }|.
    t24->put( p0 = t25 p1 = t33 ).
    DATA t75 TYPE string.
    DATA(t76) = t3.
    DATA(t77) = |\n|.
    DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t78->has = abap_true.
    t78->value = t77.
    t75 = t76->join( p0 = t78 ).
    me->file_contents = t75.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fileContents`.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1372_5d288eaa2650.
  ENDMETHOD.
ENDCLASS.
