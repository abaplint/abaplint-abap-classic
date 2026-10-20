* TS: src/rules/line_length.ts:13:1 LineLength
CLASS zcl_lnt_line_length DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_line_length_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_ln_ln_ts_ln_lng RETURNING VALUE(result) TYPE REF TO zcl_lnt_line_length_conf.
    METHODS st_cn_in_sr_rl_ln_ln_ts_ln_lng IMPORTING i_conf TYPE REF TO zcl_lnt_line_length_conf.
    METHODS rn_pr_in_sr_rl_ln_ln_ts_ln_lng IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_line_length IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_line_length_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#stick-to-a-reasonable-line-length\nhttps://docs.abap|.
    t11 = t11 && |openchecks.org/checks/04/|.
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
    DATA(t29) = |DATA long_text TYPE string VALUE 'this line keeps going unti|.
    t29 = t29 && |l it is longer than the configured maximum'.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA(t35) = |DATA long_text TYPE string.\nlong_text = 'split long expressi|.
    t35 = t35 && |ons across multiple lines'.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |line_length| i_title = |Line length| i_short_description = |Detects lines exceeding the provided maximum length.| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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

  METHOD gt_cn_in_sr_rl_ln_ln_ts_ln_lng.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ln_ln_ts_ln_lng.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ln_ln_ts_ln_lng.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE i.
    t4 = 255.
    DATA t6 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t6 = CAST zcl_lnt_line_length_conf( me->gt_cn_in_sr_rl_ln_ln_ts_ln_lng( ) )->zlnt_view_read_sr_0ff31ace7837( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t11 = t6.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = VALUE abap_bool( ).
    IF t11 IS INITIAL.
      t15 = abap_true.
    ELSEIF t11->has = abap_false.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    t9 = t10.
    IF t10 = abap_false.
      DATA(t19) = t6.
      IF t19->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t9 = xsdbool( t19->value < CONV f( 1 ) ).
    ENDIF.
    IF t9 = abap_true.
      DATA(t24) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t24->has = abap_true.
      t24->value = CONV f( 10 ).
      t6 = t24.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t26 = t1->file->get_raw_rows( ).
    DATA t33 TYPE i.
    t33 = 0.
    DO.
      t26->load( ).
      IF xsdbool( t33 < lines( t26->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t39) = VALUE string( ).
      DATA(t40) = VALUE string( ).
      DATA(t41) = VALUE string( ).
      DATA(t43) = t33.
      t43 = t43 + 1.
      IF t26->has( t43 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t26->load( ).
      READ TABLE t26->items INDEX t43 INTO t41.
      DATA(t44) = |\r|.
      DATA(t45) = ||.
      DATA(t46) = strlen( t41 ).
      t40 = t41.
      REPLACE ALL OCCURRENCES OF t44 IN t40 WITH t45.
      t39 = t40.
      IF xsdbool( strlen( t39 ) > t4 ) = abap_true.
        DATA t53 TYPE string.
        DATA t54 TYPE string.
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        DATA(t57) = |Maximum allowed line length of |.
        DATA t58 TYPE string.
        t58 = |{ t4 }|.
        DATA(t60) = strlen( t57 ).
        t56 = |{ t57 }{ t58 }|.
        DATA(t62) = strlen( t56 ).
        t55 = |{ t56 }{ | exceeded, currently | }|.
        DATA t63 TYPE string.
        t63 = |{ strlen( t39 ) }|.
        DATA(t67) = strlen( t55 ).
        t54 = |{ t55 }{ t63 }|.
        DATA(t69) = strlen( t54 ).
        t53 = |{ t54 }{ || }|.
        DATA t71 TYPE REF TO zcl_lnt_issue.
        CLEAR t71.
        DATA t73 TYPE f.
        DATA t74 TYPE i.
        DATA(t76) = 1.
        t74 = t33 + t76.
        t73 = t74.
        DATA(t78) = VALUE string( ).
        DATA t79 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA(t89) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t89 = t89 && |nABAP.md#stick-to-a-reasonable-line-length\nhttps://docs.abap|.
        t89 = t89 && |openchecks.org/checks/04/|.
        DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t90->has = abap_true.
        t90->value = t89.
        t86 = t90.
        DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t92.
        DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t96.
        t96->load( ).
        APPEND |Styleguide| TO t96->items.
        t96->save( ).
        t96->load( ).
        APPEND |SingleFile| TO t96->items.
        t96->save( ).
        t92 = t96.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        DATA(t107) = |DATA long_text TYPE string VALUE 'this line keeps going unti|.
        t107 = t107 && |l it is longer than the configured maximum'.|.
        DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t108->has = abap_true.
        t108->value = t107.
        t104 = t108.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t110.
        DATA(t113) = |DATA long_text TYPE string.\nlong_text = 'split long expressi|.
        t113 = t113 && |ons across multiple lines'.|.
        DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t114->has = abap_true.
        t114->value = t113.
        t110 = t114.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        t79 = NEW zcl_lnt_irule_metadata( i_key = |line_length| i_title = |Line length| i_short_description = |Detects lines exceeding the provided maximum length.| i_bad_example = t104 i_good_example = t110 i_extended_information = t86 i_tags = t92 i_pragma = t116 i_pseudo_comment = t118 ).
        CREATE OBJECT t79->zlnt_view_ownkeys_b0e8086400eb.
        t79->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t120 ).
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t121 ).
        ENDIF.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t122 ).
        ENDIF.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t123 ).
        ENDIF.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t124 ).
        ENDIF.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t125 ).
        ENDIF.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t126 ).
        ENDIF.
        CREATE OBJECT t79->zlnt_json_ownkeys_70e5fd461788.
        t79->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t128 ).
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t130 ).
        ENDIF.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t132 ).
        ENDIF.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t134 ).
        ENDIF.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t136 ).
        ENDIF.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t138 ).
        ENDIF.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t140 ).
        ENDIF.
        t78 = t79->key.
        t71 = zcl_lnt_issue=>at_row( i_file = t1 i_row = t73 i_message_26cb = t53 i_key = t78 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) ).
        t2->load( ).
        APPEND t71 TO t2->items.
        t2->save( ).
      ELSE.
        DATA(t147) = strlen( t39 ).
        DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t148 = me->conf->zlnt_view_read_sr_42fec9ccf3fa( ).
        DATA(t151) = VALUE abap_bool( ).
        DATA(t152) = VALUE abap_bool( ).
        DATA(t153) = VALUE abap_bool( ).
        IF t148 IS INITIAL.
          t153 = abap_true.
        ELSEIF t148->has = abap_false.
          t153 = abap_true.
        ENDIF.
        t152 = xsdbool( t153 = abap_false ).
        t151 = t152.
        IF t152 = abap_true.
          DATA t156 TYPE f.
          t156 = t147.
          IF t148->number_special <> 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t151 = xsdbool( t156 > t148->value ).
        ENDIF.
        IF t151 = abap_true.
          DATA(t160) = VALUE string( ).
          DATA(t162) = VALUE string( ).
          DATA(t163) = VALUE string( ).
          DATA(t164) = VALUE string( ).
          DATA(t165) = |Reduce line length to max |.
          DATA(t166) = VALUE string( ).
          DATA t167 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t167 = me->conf->zlnt_view_read_sr_42fec9ccf3fa( ).
          DATA(t170) = VALUE string( ).
          DATA(t171) = VALUE abap_bool( ).
          IF t167 IS INITIAL.
            t171 = abap_true.
          ELSEIF t167->has = abap_false.
            t171 = abap_true.
          ENDIF.
          IF t171 = abap_true.
            t170 = |undefined|.
          ELSE.
            DATA(t175) = VALUE f( ).
            IF t167->number_special <> 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t175 = t167->value.
            IF t175 <> trunc( t175 ) OR t175 > range_safe_integer OR t175 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t177) = CONV int8( t175 ).
            t170 = |{ t177 }|.
          ENDIF.
          t166 = t170.
          DATA(t178) = strlen( t165 ).
          t164 = |{ t165 }{ t166 }|.
          DATA(t180) = strlen( t164 ).
          t163 = |{ t164 }{ |, currently | }|.
          DATA t181 TYPE string.
          t181 = |{ strlen( t39 ) }|.
          DATA(t185) = strlen( t163 ).
          t162 = |{ t163 }{ t181 }|.
          DATA(t187) = strlen( t162 ).
          t160 = |{ t162 }{ || }|.
          DATA t189 TYPE REF TO zcl_lnt_issue.
          CLEAR t189.
          DATA t191 TYPE f.
          DATA t192 TYPE i.
          DATA(t194) = 1.
          t192 = t33 + t194.
          t191 = t192.
          DATA(t196) = VALUE string( ).
          DATA t197 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t204.
          DATA(t207) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t207 = t207 && |nABAP.md#stick-to-a-reasonable-line-length\nhttps://docs.abap|.
          t207 = t207 && |openchecks.org/checks/04/|.
          DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t208->has = abap_true.
          t208->value = t207.
          t204 = t208.
          DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t210.
          DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t214.
          t214->load( ).
          APPEND |Styleguide| TO t214->items.
          t214->save( ).
          t214->load( ).
          APPEND |SingleFile| TO t214->items.
          t214->save( ).
          t210 = t214.
          DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t222.
          DATA(t225) = |DATA long_text TYPE string VALUE 'this line keeps going unti|.
          t225 = t225 && |l it is longer than the configured maximum'.|.
          DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t226->has = abap_true.
          t226->value = t225.
          t222 = t226.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          DATA(t231) = |DATA long_text TYPE string.\nlong_text = 'split long expressi|.
          t231 = t231 && |ons across multiple lines'.|.
          DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t232->has = abap_true.
          t232->value = t231.
          t228 = t232.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t234.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t236.
          t197 = NEW zcl_lnt_irule_metadata( i_key = |line_length| i_title = |Line length| i_short_description = |Detects lines exceeding the provided maximum length.| i_bad_example = t222 i_good_example = t228 i_extended_information = t204 i_tags = t210 i_pragma = t234 i_pseudo_comment = t236 ).
          CREATE OBJECT t197->zlnt_view_ownkeys_b0e8086400eb.
          t197->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t238.
          t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t238 ).
          DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t239.
          IF t197->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t239 ).
          ENDIF.
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t240.
          IF t197->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t240 ).
          ENDIF.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t241.
          IF t197->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t241 ).
          ENDIF.
          DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t242.
          IF t197->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t242 ).
          ENDIF.
          DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t243.
          IF t197->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t243 ).
          ENDIF.
          DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t244.
          IF t197->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t244 ).
          ENDIF.
          CREATE OBJECT t197->zlnt_json_ownkeys_70e5fd461788.
          t197->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t246.
          t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t246 ).
          DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t248.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t248 ).
          ENDIF.
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t250 ).
          ENDIF.
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t252.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t252 ).
          ENDIF.
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t254.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t254 ).
          ENDIF.
          DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t256.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t256 ).
          ENDIF.
          DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t258.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t258 ).
          ENDIF.
          t196 = t197->key.
          t189 = zcl_lnt_issue=>at_row( i_file = t1 i_row = t191 i_message_26cb = t160 i_key = t196 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) ).
          t2->load( ).
          APPEND t189 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA t262 TYPE f.
      t2->load( ).
      t262 = lines( t2->items ).
      IF t6->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      IF xsdbool( t262 >= t6->value ) = abap_true.
        EXIT.
      ENDIF.
      DATA(t269) = 1.
      t33 = t33 + t269.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_line_length_conf( me->gt_cn_in_sr_rl_ln_ln_ts_ln_lng( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_line_length_conf( me->gt_cn_in_sr_rl_ln_ln_ts_ln_lng( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_line_length_conf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND i_conf->tag <>
        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t1 = NEW zcl_lnt_line_length_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ln_ln_ts_ln_lng( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ln_ln_ts_ln_lng( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1563_cf964766f322.
  ENDMETHOD.
ENDCLASS.
