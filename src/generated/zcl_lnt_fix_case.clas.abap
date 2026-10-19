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
    me->keyword_case = NEW zcl_lnt_keyword_case( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `keywordCase`.
    DATA(t4) = me->keyword_case.
    DATA t5 TYPE REF TO zcl_lnt_keyword_case_conf.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = VALUE string( ).
    DATA t10 TYPE REF TO zcl_lnt_keyword_case.
    t10 = me->keyword_case.
    DATA t12 TYPE REF TO zcl_lnt_irule_metadata.
    DATA(t17) = VALUE string( ).
    DATA(t18) = |Checks that keywords have the same case. Non-keywords must b|.
    t18 = t18 && |e lower case.|.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t22) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t22 = t22 && |nABAP.md#use-your-teams-abap-formatter-settings|.
    DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t23->has = abap_true.
    t23->value = t22.
    t19 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t29.
    t29->load( ).
    APPEND |Styleguide| TO t29->items.
    t29->save( ).
    t29->load( ).
    APPEND |SingleFile| TO t29->items.
    t29->save( ).
    t29->load( ).
    APPEND |Quickfix| TO t29->items.
    t29->save( ).
    t25 = t29.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t43->has = abap_true.
    t43->value = |write 'hello world'.|.
    t39 = t43.
    DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t49->has = abap_true.
    t49->value = |WRITE 'hello world'.|.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t12 = NEW zcl_lnt_irule_metadata( i_key = |keyword_case| i_title = |Keyword case| i_short_description = t17 i_bad_example = t39 i_good_example = t49 i_extended_information = t19 i_tags = t25 i_pragma = t51 i_pseudo_comment = t53 ).
    CREATE OBJECT t12->zlnt_view_ownkeys_b0e8086400eb.
    t12->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t55 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t56 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t57 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t58 ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t59 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t60 ).
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t61 ).
    ENDIF.
    CREATE OBJECT t12->zlnt_json_ownkeys_70e5fd461788.
    t12->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t63 ).
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t65 ).
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t67 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t69 ).
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t71 ).
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t73 ).
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t75 ).
    ENDIF.
    t8 = t12->key.
    t6 = t2->read_by_rule( i_rule = t8 ).
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
    me->file_contents = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fileContents`.
    me->config = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `config`.
  ENDMETHOD.

  METHOD execute.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = i_statement->get_children( ).
    t2 ?= t3.
    DATA t5 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t6 TYPE REF TO object.
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
      IF xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_token_node_regex ) = abap_true.
        DATA t12 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t12.
        DATA t13 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t13.
        DATA t14 TYPE REF TO object.
        CLEAR t14.
        DATA t15 TYPE REF TO zcl_lnt_token_node_regex.
        CLEAR t15.
        DATA t17 TYPE REF TO object.
        CLEAR t17.
        t17 = t5.
        t15 ?= t17.
        t14 = t15->get_db65( ).
        t13 ?= t14.
        t12 = t13.
        IF xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_string_token ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t20 TYPE REF TO zcl_lnt_position.
        CLEAR t20.
        t20 = t12->start.
        DATA(t26) = VALUE string( ).
        DATA(t28) = VALUE string( ).
        t28 = t12->str.
        DATA(t34) = VALUE string( ).
        DATA(t36) = strlen( t28 ).
        t34 = t28.
        TRANSLATE t34 TO LOWER CASE.
        t26 = t34.
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
        DATA(t50) = VALUE i( ).
        DATA(t51) = VALUE f( ).
        DATA(t52) = VALUE f( ).
        t52 = t20->row.
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
        IF t37->has( t50 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t37->load( ).
        READ TABLE t37->items INDEX t50 INTO t48.
        t47 = t48.
        DATA(t59) = VALUE i( ).
        DATA(t60) = VALUE f( ).
        DATA(t61) = VALUE f( ).
        t61 = t20->row.
        DATA(t66) = CONV f( 1 ).
        t60 = t61 - t66.
        IF t60 > range_i32_upper.
          t59 = range_i32_upper.
        ELSEIF t60 < range_i32_lower.
          t59 = range_i32_lower.
        ELSE.
          t59 = trunc( t60 ).
        ENDIF.
        DATA(t68) = VALUE string( ).
        DATA(t69) = VALUE string( ).
        DATA(t71) = 0.
        DATA(t72) = VALUE i( ).
        DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t74.
        t74 = t20->col.
        DATA(t80) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t80->has = abap_true.
        t80->value = CONV f( 1 ).
        t72 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t74 right = t80 op = `-` ) ).
        DATA(t81) = strlen( t47 ).
        IF t71 < 0.
          t71 = t71 + t81.
          IF t71 < 0.
            t71 = 0.
          ENDIF.
        ENDIF.
        IF t71 > t81 OR t72 <= 0.
        ELSE.
          IF t72 > t81 - t71.
            t72 = t81 - t71.
          ENDIF.
          t69 = t47+t71(t72).
        ENDIF.
        DATA(t83) = strlen( t69 ).
        t68 = |{ t69 }{ t26 }|.
        DATA(t84) = VALUE string( ).
        DATA(t85) = VALUE string( ).
        t85 = t47.
        DATA(t87) = VALUE string( ).
        DATA(t89) = VALUE i( ).
        DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t91.
        DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t92.
        t92 = t20->col.
        DATA(t97) = VALUE f( ).
        t97 = strlen( t26 ).
        DATA(t101) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t101->has = abap_true.
        t101->value = t97.
        t91 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t92 right = t101 op = `+` ).
        DATA(t103) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t103->has = abap_true.
        t103->value = CONV f( 1 ).
        t89 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t91 right = t103 op = `-` ) ).
        DATA(t104) = VALUE i( ).
        t104 = strlen( t85 ).
        DATA(t107) = strlen( t85 ).
        IF t89 < 0.
          t89 = t89 + t107.
          IF t89 < 0.
            t89 = 0.
          ENDIF.
        ENDIF.
        IF t89 > t107 OR t104 <= 0.
        ELSE.
          IF t104 > t107 - t89.
            t104 = t107 - t89.
          ENDIF.
          t87 = t85+t89(t104).
        ENDIF.
        t84 = t87.
        DATA(t108) = strlen( t68 ).
        t37->put( p0 = t59 p1 = |{ t68 }{ t84 }| ).
        DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t112->has = abap_true.
        t112->value = |\n|.
        me->file_contents = t37->join( p0 = t112 ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fileContents`.
        CONTINUE.
      ELSE.
        IF xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
          DATA t115 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t115.
          DATA t117 TYPE REF TO zcl_lnt_token_node.
          CLEAR t117.
          DATA t119 TYPE REF TO object.
          CLEAR t119.
          t119 = t5.
          t117 ?= t119.
          t115 = t117->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
          DATA(t120) = VALUE string( ).
          t120 = t115->str.
          DATA(t126) = VALUE abap_bool( ).
          DATA(t127) = VALUE abap_bool( ).
          t127 = me->keyword_case->violates_rule( i_keyword = t120 ).
          t126 = t127.
          IF t127 = abap_true.
            t126 = xsdbool( t115 IS BOUND AND t115 IS INSTANCE OF zcl_lnt_lx_identifier ).
          ENDIF.
          IF t126 = abap_true.
            DATA t132 TYPE REF TO zcl_lnt_position.
            CLEAR t132.
            DATA t134 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t134.
            DATA t135 TYPE REF TO zcl_lnt_lx_identifier.
            CLEAR t135.
            t135 ?= t115.
            t134 = t135.
            t132 = t134->start.
            DATA(t139) = VALUE string( ).
            DATA(t141) = VALUE string( ).
            t141 = t120.
            DATA(t144) = VALUE string( ).
            DATA t147 TYPE REF TO zcl_lnt_keyword_case.
            CLEAR t147.
            t147 = me->keyword_case.
            DATA t149 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t149.
            DATA(t154) = VALUE string( ).
            DATA(t155) = |Checks that keywords have the same case. Non-keywords must b|.
            t155 = t155 && |e lower case.|.
            t154 = t155.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            DATA(t159) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t159 = t159 && |nABAP.md#use-your-teams-abap-formatter-settings|.
            DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t160->has = abap_true.
            t160->value = t159.
            t156 = t160.
            DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t162.
            DATA t166 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t166.
            DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t167.
            CREATE OBJECT t167.
            t166 = t167.
            t166->load( ).
            APPEND |Styleguide| TO t166->items.
            t166->save( ).
            t166->load( ).
            APPEND |SingleFile| TO t166->items.
            t166->save( ).
            t166->load( ).
            APPEND |Quickfix| TO t166->items.
            t166->save( ).
            t162 = t166.
            DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t176.
            DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t180->has = abap_true.
            t180->value = |write 'hello world'.|.
            t176 = t180.
            DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t182.
            DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t186->has = abap_true.
            t186->value = |WRITE 'hello world'.|.
            t182 = t186.
            DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t188.
            CLEAR t188.
            DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t190.
            CLEAR t190.
            t149 = NEW zcl_lnt_irule_metadata( i_key = |keyword_case| i_title = |Keyword case| i_short_description = t154 i_bad_example = t176 i_good_example = t182 i_extended_information = t156 i_tags = t162 i_pragma = t188 i_pseudo_comment = t190 ).
            CREATE OBJECT t149->zlnt_view_ownkeys_b0e8086400eb.
            t149->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t192.
            t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t192 ).
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
            DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t200.
            t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t200 ).
            DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t202.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t202 ).
            ENDIF.
            DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t204.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t204 ).
            ENDIF.
            DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t206.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t206 ).
            ENDIF.
            DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t208.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t208 ).
            ENDIF.
            DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t210.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t210 ).
            ENDIF.
            DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t212.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t212 ).
            ENDIF.
            t144 = t149->key.
            DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t213.
            t213 = me->config->read_by_rule( i_rule = t144 ).
            DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t217.
            DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t218.
            DATA(t219) = VALUE abap_bool( ).
            IF t213 IS BOUND.
              t219 = t213->truth( ).
            ENDIF.
            IF t219 = abap_true.
              DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t222.
              t222 = t213->get( p0 = |style| ).
              DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t226.
              IF xsdbool( t222 IS INITIAL ) = abap_true.
                CLEAR t226.
              ELSE.
                DATA(t230) = VALUE string( ).
                t230 = t222->as_string( ).
                DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t232->has = abap_true.
                t232->value = t230.
                t226 = t232.
              ENDIF.
              t218 = t226.
            ELSE.
              DATA(t236) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t236->has = abap_true.
              t236->value = |upper|.
              t218 = t236.
            ENDIF.
            t217 = t218.
            DATA(t238) = VALUE string( ).
            DATA(t239) = VALUE abap_bool( ).
            DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t241.
            DATA(t244) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t244->has = abap_true.
            t244->value = |lower|.
            t241 = t244.
            DATA(t246) = VALUE abap_bool( ).
            DATA(t247) = VALUE abap_bool( ).
            IF t217 IS BOUND.
              t246 = t217->has.
            ENDIF.
            IF t241 IS BOUND.
              t247 = t241->has.
            ENDIF.
            IF t246 = t247.
              IF t246 = abap_false.
                t239 = abap_true.
              ELSEIF t217->value = t241->value.
                t239 = abap_true.
              ENDIF.
            ENDIF.
            IF t239 = abap_true.
              DATA(t248) = VALUE string( ).
              DATA(t250) = strlen( t141 ).
              t248 = t141.
              TRANSLATE t248 TO LOWER CASE.
              t238 = t248.
            ELSE.
              DATA(t251) = VALUE string( ).
              DATA(t253) = strlen( t141 ).
              t251 = t141.
              IF t251 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t251 TO UPPER CASE.
              ELSE.
                t251 = zlnt_runtime_uppe_91169605024d=>full( t251 ).
              ENDIF.
              t238 = t251.
            ENDIF.
            t139 = t238.
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
            DATA(t267) = VALUE i( ).
            DATA(t268) = VALUE f( ).
            DATA(t269) = VALUE f( ).
            t269 = t132->row.
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
            IF t254->has( t267 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t254->load( ).
            READ TABLE t254->items INDEX t267 INTO t265.
            t264 = t265.
            DATA(t276) = VALUE i( ).
            DATA(t277) = VALUE f( ).
            DATA(t278) = VALUE f( ).
            t278 = t132->row.
            DATA(t283) = CONV f( 1 ).
            t277 = t278 - t283.
            IF t277 > range_i32_upper.
              t276 = range_i32_upper.
            ELSEIF t277 < range_i32_lower.
              t276 = range_i32_lower.
            ELSE.
              t276 = trunc( t277 ).
            ENDIF.
            DATA(t285) = VALUE string( ).
            DATA(t286) = VALUE string( ).
            DATA(t288) = 0.
            DATA(t289) = VALUE i( ).
            DATA t291 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t291.
            t291 = t132->col.
            DATA(t297) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t297->has = abap_true.
            t297->value = CONV f( 1 ).
            t289 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t291 right = t297 op = `-` ) ).
            DATA(t298) = strlen( t264 ).
            IF t288 < 0.
              t288 = t288 + t298.
              IF t288 < 0.
                t288 = 0.
              ENDIF.
            ENDIF.
            IF t288 > t298 OR t289 <= 0.
            ELSE.
              IF t289 > t298 - t288.
                t289 = t298 - t288.
              ENDIF.
              t286 = t264+t288(t289).
            ENDIF.
            DATA(t300) = strlen( t286 ).
            t285 = |{ t286 }{ t139 }|.
            DATA(t301) = VALUE string( ).
            DATA(t302) = VALUE string( ).
            t302 = t264.
            DATA(t304) = VALUE string( ).
            DATA(t306) = VALUE i( ).
            DATA t308 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t308.
            DATA t309 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t309.
            t309 = t132->col.
            DATA(t314) = VALUE f( ).
            t314 = strlen( t139 ).
            DATA(t318) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t318->has = abap_true.
            t318->value = t314.
            t308 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t309 right = t318 op = `+` ).
            DATA(t320) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t320->has = abap_true.
            t320->value = CONV f( 1 ).
            t306 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t308 right = t320 op = `-` ) ).
            DATA(t321) = VALUE i( ).
            t321 = strlen( t302 ).
            DATA(t324) = strlen( t302 ).
            IF t306 < 0.
              t306 = t306 + t324.
              IF t306 < 0.
                t306 = 0.
              ENDIF.
            ENDIF.
            IF t306 > t324 OR t321 <= 0.
            ELSE.
              IF t321 > t324 - t306.
                t321 = t324 - t306.
              ENDIF.
              t304 = t302+t306(t321).
            ENDIF.
            t301 = t304.
            DATA(t325) = strlen( t285 ).
            t254->put( p0 = t276 p1 = |{ t285 }{ t301 }| ).
            DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t329->has = abap_true.
            t329->value = |\n|.
            me->file_contents = t254->join( p0 = t329 ).
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fileContents`.
          ENDIF.
        ELSE.
          IF xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_expression_node ) = abap_true.
            DATA(t332) = VALUE string( ).
            DATA t333 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t333.
            DATA t335 TYPE REF TO object.
            CLEAR t335.
            t335 = t5.
            t333 ?= t335.
            t332 = me->execute( i_statement = t333 ).
          ELSE.
            DATA t336 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
            CLEAR t336.
            DATA t337 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
            CLEAR t337.
            DATA(t341) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t341->has = abap_true.
            t341->value = |pretty printer, traverse, unexpected node type|.
            t337 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t341 ).
            t336 = NEW #( ).
            t336->payload = t337.
            CLEAR t336->source_value.
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
    DATA(t4) = strlen( t1 ).
    t2 = t1.
    TRANSLATE t2 TO LOWER CASE.
    result = t2.

  ENDMETHOD.

  METHOD format_keyword.
    DATA(t1) = i_keyword.
    DATA(t3) = VALUE string( ).
    DATA t5 TYPE REF TO zcl_lnt_keyword_case.
    t5 = me->keyword_case.
    DATA t7 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t12 TYPE string.
    DATA(t13) = |Checks that keywords have the same case. Non-keywords must b|.
    t13 = t13 && |e lower case.|.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t17) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t17 = t17 && |nABAP.md#use-your-teams-abap-formatter-settings|.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = t17.
    t14 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t24.
    t24->load( ).
    APPEND |Styleguide| TO t24->items.
    t24->save( ).
    t24->load( ).
    APPEND |SingleFile| TO t24->items.
    t24->save( ).
    t24->load( ).
    APPEND |Quickfix| TO t24->items.
    t24->save( ).
    t20 = t24.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |write 'hello world'.|.
    t34 = t38.
    DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t44->has = abap_true.
    t44->value = |WRITE 'hello world'.|.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t7 = NEW zcl_lnt_irule_metadata( i_key = |keyword_case| i_title = |Keyword case| i_short_description = t12 i_bad_example = t34 i_good_example = t44 i_extended_information = t14 i_tags = t20 i_pragma = t46 i_pseudo_comment = t48 ).
    CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
    t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t50 ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t56 ).
    ENDIF.
    CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
    t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t58 ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t66 ).
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t68 ).
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t70 ).
    ENDIF.
    t3 = t7->key.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t71 = me->config->read_by_rule( i_rule = t3 ).
    DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t77) = VALUE abap_bool( ).
    IF t71 IS BOUND.
      t77 = t71->truth( ).
    ENDIF.
    IF t77 = abap_true.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t80 = t71->get( p0 = |style| ).
      DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t80 IS INITIAL ) = abap_true.
      ELSE.
        DATA t88 TYPE string.
        t88 = t80->as_string( ).
        DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t90->has = abap_true.
        t90->value = t88.
        t84 = t90.
      ENDIF.
      t76 = t84.
    ELSE.
      DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t94->has = abap_true.
      t94->value = |upper|.
      t76 = t94.
    ENDIF.
    t75 = t76.
    DATA(t96) = VALUE string( ).
    DATA(t97) = VALUE abap_bool( ).
    DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t102->has = abap_true.
    t102->value = |lower|.
    t99 = t102.
    DATA(t104) = VALUE abap_bool( ).
    DATA(t105) = VALUE abap_bool( ).
    IF t75 IS BOUND.
      t104 = t75->has.
    ENDIF.
    IF t99 IS BOUND.
      t105 = t99->has.
    ENDIF.
    IF t104 = t105.
      IF t104 = abap_false.
        t97 = abap_true.
      ELSEIF t75->value = t99->value.
        t97 = abap_true.
      ENDIF.
    ENDIF.
    IF t97 = abap_true.
      DATA t106 TYPE string.
      DATA(t108) = strlen( t1 ).
      t106 = t1.
      TRANSLATE t106 TO LOWER CASE.
      t96 = t106.
    ELSE.
      DATA t109 TYPE string.
      DATA(t111) = strlen( t1 ).
      t109 = t1.
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
    DATA(t16) = VALUE i( ).
    DATA t17 TYPE f.
    DATA t18 TYPE f.
    t18 = t1->row.
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
    IF t3->has( t16 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t3->load( ).
    READ TABLE t3->items INDEX t16 INTO t14.
    t13 = t14.
    DATA(t25) = VALUE i( ).
    DATA t26 TYPE f.
    DATA t27 TYPE f.
    t27 = t1->row.
    DATA(t32) = CONV f( 1 ).
    t26 = t27 - t32.
    IF t26 > range_i32_upper.
      t25 = range_i32_upper.
    ELSEIF t26 < range_i32_lower.
      t25 = range_i32_lower.
    ELSE.
      t25 = trunc( t26 ).
    ENDIF.
    DATA(t34) = VALUE string( ).
    DATA(t35) = VALUE string( ).
    DATA(t37) = 0.
    DATA t38 TYPE i.
    DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t40 = t1->col.
    DATA(t46) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t46->has = abap_true.
    t46->value = CONV f( 1 ).
    t38 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t40 right = t46 op = `-` ) ).
    DATA(t47) = strlen( t13 ).
    IF t37 < 0.
      t37 = t37 + t47.
      IF t37 < 0.
        t37 = 0.
      ENDIF.
    ENDIF.
    IF t37 > t47 OR t38 <= 0.
    ELSE.
      IF t38 > t47 - t37.
        t38 = t47 - t37.
      ENDIF.
      t35 = t13+t37(t38).
    ENDIF.
    DATA(t49) = strlen( t35 ).
    t34 = |{ t35 }{ t2 }|.
    DATA(t50) = VALUE string( ).
    DATA t51 TYPE string.
    t51 = t13.
    DATA(t53) = VALUE string( ).
    DATA t55 TYPE i.
    DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t58 = t1->col.
    DATA t63 TYPE f.
    t63 = strlen( t2 ).
    DATA(t67) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t67->has = abap_true.
    t67->value = t63.
    t57 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t58 right = t67 op = `+` ).
    DATA(t69) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t69->has = abap_true.
    t69->value = CONV f( 1 ).
    t55 = zlnt_runtime_numb_290eb04a9758=>index( zlnt_runtime_numb_290eb04a9758=>calculate( left = t57 right = t69 op = `-` ) ).
    DATA t70 TYPE i.
    t70 = strlen( t51 ).
    DATA(t73) = strlen( t51 ).
    IF t55 < 0.
      t55 = t55 + t73.
      IF t55 < 0.
        t55 = 0.
      ENDIF.
    ENDIF.
    IF t55 > t73 OR t70 <= 0.
    ELSE.
      IF t70 > t73 - t55.
        t70 = t73 - t55.
      ENDIF.
      t53 = t51+t55(t70).
    ENDIF.
    t50 = t53.
    DATA(t74) = strlen( t34 ).
    t3->put( p0 = t25 p1 = |{ t34 }{ t50 }| ).
    DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t78->has = abap_true.
    t78->value = |\n|.
    me->file_contents = t3->join( p0 = t78 ).
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
