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
    DATA(t1) = NEW zcl_lnt_line_length_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |line_length|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Line length|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detects lines exceeding the provided maximum length.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#stick-to-a-reasonable-line-length\nhttps://docs.abap|.
      t11 = t11 && |openchecks.org/checks/04/|.
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
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |DATA long_text TYPE string VALUE 'this line keeps going unti|.
      t29 = t29 && |l it is longer than the configured maximum'.|.
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
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |DATA long_text TYPE string.\nlong_text = 'split long expressi|.
      t35 = t35 && |ons across multiple lines'.|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ln_ln_ts_ln_lng.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ln_ln_ts_ln_lng.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ln_ln_ts_ln_lng.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE i.
    DATA(t5) = 255.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t7 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t8) = CAST zcl_lnt_line_length_conf( me->gt_cn_in_sr_rl_ln_ln_ts_ln_lng( ) ).
    t7 = t8->zlnt_view_read_sr_0ff31ace7837( ).
    t6 = t7.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t12) = t6.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ELSEIF t16->has = abap_false.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    t9 = t10.
    IF t10 = abap_false.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE f( ).
      DATA(t19) = t6.
      IF t19->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t18 = t19->value.
      DATA(t20) = CONV f( 1 ).
      t17 = xsdbool( t18 < t20 ).
      t9 = t17.
    ENDIF.
    IF t9 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t21.
      DATA(t22) = abap_true.
      IF t22 = abap_true.
        DATA(t23) = CONV f( 10 ).
        DATA(t24) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t24->has = abap_true.
        t24->value = t23.
        t21 = t24.
      ELSE.
        DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t25.
        t21 = t25.
      ENDIF.
      t6 = t21.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t28 TYPE REF TO zcl_lnt_abap_file.
    DATA(t29) = t1.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t31 TYPE REF TO zif_lnt_file.
    DATA(t32) = t28.
    t31 = t32->file.
    t30 = t31->get_raw_rows( ).
    t27 = t30.
    t26 = t27.
    DATA t33 TYPE i.
    DATA(t34) = 0.
    t33 = t34.
    DO.
      DATA t35 TYPE abap_bool.
      DATA(t36) = t33.
      DATA t37 TYPE i.
      DATA(t38) = t26.
      t38->load( ).
      t37 = lines( t38->items ).
      t35 = xsdbool( t36 < t37 ).
      IF t35 = abap_false.
        EXIT.
      ENDIF.
      DATA(t39) = VALUE string( ).
      DATA(t40) = VALUE string( ).
      DATA(t41) = VALUE string( ).
      DATA(t42) = t26.
      DATA(t43) = t33.
      t43 = t43 + 1.
      IF t42->has( t43 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t42->load( ).
      CLEAR t41.
      READ TABLE t42->items INDEX t43 INTO t41.
      DATA(t44) = |\r|.
      DATA(t45) = ||.
      DATA(t46) = strlen( t41 ).
      t40 = t41.
      REPLACE ALL OCCURRENCES OF t44 IN t40 WITH t45.
      t39 = t40.
      DATA t47 TYPE abap_bool.
      DATA t48 TYPE i.
      DATA(t49) = t39.
      DATA(t50) = strlen( t49 ).
      t48 = t50.
      DATA(t51) = t4.
      t47 = xsdbool( t48 > t51 ).
      IF t47 = abap_true.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        DATA t54 TYPE string.
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        DATA(t57) = |Maximum allowed line length of |.
        DATA t58 TYPE string.
        DATA(t59) = t4.
        t58 = |{ t59 }|.
        DATA(t60) = strlen( t57 ).
        t56 = |{ t57 }{ t58 }|.
        DATA(t61) = | exceeded, currently |.
        DATA(t62) = strlen( t56 ).
        t55 = |{ t56 }{ t61 }|.
        DATA t63 TYPE string.
        DATA t64 TYPE i.
        DATA(t65) = t39.
        DATA(t66) = strlen( t65 ).
        t64 = t66.
        t63 = |{ t64 }|.
        DATA(t67) = strlen( t55 ).
        t54 = |{ t55 }{ t63 }|.
        DATA(t68) = ||.
        DATA(t69) = strlen( t54 ).
        t53 = |{ t54 }{ t68 }|.
        t52 = t53.
        DATA(t70) = t2.
        DATA t71 TYPE REF TO zcl_lnt_issue.
        CLEAR t71.
        DATA(t72) = t1.
        DATA t73 TYPE f.
        DATA t74 TYPE i.
        DATA(t75) = t33.
        DATA(t76) = 1.
        t74 = t75 + t76.
        t73 = t74.
        DATA(t77) = t52.
        DATA(t78) = VALUE string( ).
        DATA t79 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t79.
        DATA t80 TYPE string.
        DATA(t81) = |line_length|.
        t80 = t81.
        DATA t82 TYPE string.
        DATA(t83) = |Line length|.
        t82 = t83.
        DATA t84 TYPE string.
        DATA(t85) = |Detects lines exceeding the provided maximum length.|.
        t84 = t85.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        DATA(t88) = abap_true.
        IF t88 = abap_true.
          DATA(t89) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t89 = t89 && |nABAP.md#stick-to-a-reasonable-line-length\nhttps://docs.abap|.
          t89 = t89 && |openchecks.org/checks/04/|.
          DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t90->has = abap_true.
          t90->value = t89.
          t87 = t90.
        ELSE.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          t87 = t91.
        ENDIF.
        t86 = t87.
        DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t92.
        DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t93.
        DATA(t94) = abap_true.
        IF t94 = abap_true.
          DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t97.
          t96 = t97.
          DATA(t98) = t96.
          DATA(t99) = |Styleguide|.
          t98->load( ).
          APPEND t99 TO t98->items.
          t98->save( ).
          DATA(t100) = t96.
          DATA(t101) = |SingleFile|.
          t100->load( ).
          APPEND t101 TO t100->items.
          t100->save( ).
          DATA(t102) = t96.
          t95 = t102.
          t93 = t95.
        ELSE.
          DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t103.
          t93 = t103.
        ENDIF.
        t92 = t93.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA(t106) = abap_true.
        IF t106 = abap_true.
          DATA(t107) = |DATA long_text TYPE string VALUE 'this line keeps going unti|.
          t107 = t107 && |l it is longer than the configured maximum'.|.
          DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t108->has = abap_true.
          t108->value = t107.
          t105 = t108.
        ELSE.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          t105 = t109.
        ENDIF.
        t104 = t105.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t110.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA(t112) = abap_true.
        IF t112 = abap_true.
          DATA(t113) = |DATA long_text TYPE string.\nlong_text = 'split long expressi|.
          t113 = t113 && |ons across multiple lines'.|.
          DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t114->has = abap_true.
          t114->value = t113.
          t111 = t114.
        ELSE.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          t111 = t115.
        ENDIF.
        t110 = t111.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        t116 = t117.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        t118 = t119.
        t79 = NEW zcl_lnt_irule_metadata( i_key = t80 i_title = t82 i_short_description = t84 i_bad_example = t104 i_good_example = t110 i_extended_information = t86 i_tags = t92 i_pragma = t116 i_pseudo_comment = t118 ).
        CREATE OBJECT t79->zlnt_view_ownkeys_b0e8086400eb.
        t79->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        IF t79->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t79->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t120 ).
        ENDIF.
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
        DATA(t127) = |key|.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
        ENDIF.
        DATA(t129) = |title|.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
        ENDIF.
        DATA(t131) = |shortDescription|.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
        ENDIF.
        DATA(t133) = |extendedInformation|.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        ENDIF.
        DATA(t135) = |tags|.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
        ENDIF.
        DATA(t137) = |badExample|.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
        ENDIF.
        DATA(t139) = |goodExample|.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t79->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t79->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
        ENDIF.
        t78 = t79->key.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t142) = me->conf.
        t141 = t142->zlnt_view_read_sr_15c06369f827( ).
        t71 = zcl_lnt_issue=>at_row( i_file = t72 i_row = t73 i_message_26cb = t77 i_key = t78 i_severity = t141 ).
        t70->load( ).
        APPEND t71 TO t70->items.
        t70->save( ).
      ELSE.
        DATA(t143) = VALUE abap_bool( ).
        DATA t144 TYPE i.
        DATA t145 TYPE i.
        DATA(t146) = t39.
        DATA(t147) = strlen( t146 ).
        t145 = t147.
        t144 = t145.
        DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t149 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t150) = me->conf.
        t149 = t150->zlnt_view_read_sr_42fec9ccf3fa( ).
        t148 = t149.
        DATA(t151) = VALUE abap_bool( ).
        DATA(t152) = VALUE abap_bool( ).
        DATA(t153) = VALUE abap_bool( ).
        DATA(t154) = t148.
        IF t154 IS INITIAL.
          t153 = abap_true.
        ELSEIF t154->has = abap_false.
          t153 = abap_true.
        ENDIF.
        t152 = xsdbool( t153 = abap_false ).
        t151 = t152.
        IF t152 = abap_true.
          DATA(t155) = VALUE abap_bool( ).
          DATA t156 TYPE f.
          DATA(t157) = t144.
          t156 = t157.
          DATA(t158) = VALUE f( ).
          DATA(t159) = t148.
          IF t159->number_special <> 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t158 = t159->value.
          t155 = xsdbool( t156 > t158 ).
          t151 = t155.
        ENDIF.
        t143 = t151.
        IF t143 = abap_true.
          DATA(t160) = VALUE string( ).
          DATA(t161) = VALUE string( ).
          DATA(t162) = VALUE string( ).
          DATA(t163) = VALUE string( ).
          DATA(t164) = VALUE string( ).
          DATA(t165) = |Reduce line length to max |.
          DATA(t166) = VALUE string( ).
          DATA t167 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t168 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t169) = me->conf.
          t168 = t169->zlnt_view_read_sr_42fec9ccf3fa( ).
          t167 = t168.
          DATA(t170) = VALUE string( ).
          DATA(t171) = VALUE abap_bool( ).
          DATA(t172) = t167.
          IF t172 IS INITIAL.
            t171 = abap_true.
          ELSEIF t172->has = abap_false.
            t171 = abap_true.
          ENDIF.
          IF t171 = abap_true.
            DATA(t173) = |undefined|.
            t170 = t173.
          ELSE.
            DATA(t174) = VALUE string( ).
            DATA(t175) = VALUE f( ).
            DATA(t176) = t167.
            IF t176->number_special <> 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t175 = t176->value.
            IF t175 <> trunc( t175 ) OR t175 > range_safe_integer OR t175 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t177) = CONV int8( t175 ).
            t174 = |{ t177 }|.
            t170 = t174.
          ENDIF.
          t166 = t170.
          DATA(t178) = strlen( t165 ).
          t164 = |{ t165 }{ t166 }|.
          DATA(t179) = |, currently |.
          DATA(t180) = strlen( t164 ).
          t163 = |{ t164 }{ t179 }|.
          DATA t181 TYPE string.
          DATA t182 TYPE i.
          DATA(t183) = t39.
          DATA(t184) = strlen( t183 ).
          t182 = t184.
          t181 = |{ t182 }|.
          DATA(t185) = strlen( t163 ).
          t162 = |{ t163 }{ t181 }|.
          DATA(t186) = ||.
          DATA(t187) = strlen( t162 ).
          t161 = |{ t162 }{ t186 }|.
          t160 = t161.
          DATA(t188) = t2.
          DATA t189 TYPE REF TO zcl_lnt_issue.
          CLEAR t189.
          DATA(t190) = t1.
          DATA t191 TYPE f.
          DATA t192 TYPE i.
          DATA(t193) = t33.
          DATA(t194) = 1.
          t192 = t193 + t194.
          t191 = t192.
          DATA(t195) = t160.
          DATA(t196) = VALUE string( ).
          DATA t197 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t197.
          DATA t198 TYPE string.
          DATA(t199) = |line_length|.
          t198 = t199.
          DATA t200 TYPE string.
          DATA(t201) = |Line length|.
          t200 = t201.
          DATA t202 TYPE string.
          DATA(t203) = |Detects lines exceeding the provided maximum length.|.
          t202 = t203.
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t204.
          DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t205.
          DATA(t206) = abap_true.
          IF t206 = abap_true.
            DATA(t207) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t207 = t207 && |nABAP.md#stick-to-a-reasonable-line-length\nhttps://docs.abap|.
            t207 = t207 && |openchecks.org/checks/04/|.
            DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t208->has = abap_true.
            t208->value = t207.
            t205 = t208.
          ELSE.
            DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t209.
            t205 = t209.
          ENDIF.
          t204 = t205.
          DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t210.
          DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t211.
          DATA(t212) = abap_true.
          IF t212 = abap_true.
            DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t215 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t215.
            t214 = t215.
            DATA(t216) = t214.
            DATA(t217) = |Styleguide|.
            t216->load( ).
            APPEND t217 TO t216->items.
            t216->save( ).
            DATA(t218) = t214.
            DATA(t219) = |SingleFile|.
            t218->load( ).
            APPEND t219 TO t218->items.
            t218->save( ).
            DATA(t220) = t214.
            t213 = t220.
            t211 = t213.
          ELSE.
            DATA t221 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t221.
            t211 = t221.
          ENDIF.
          t210 = t211.
          DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t222.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t223.
          DATA(t224) = abap_true.
          IF t224 = abap_true.
            DATA(t225) = |DATA long_text TYPE string VALUE 'this line keeps going unti|.
            t225 = t225 && |l it is longer than the configured maximum'.|.
            DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t226->has = abap_true.
            t226->value = t225.
            t223 = t226.
          ELSE.
            DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t227.
            t223 = t227.
          ENDIF.
          t222 = t223.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t229.
          DATA(t230) = abap_true.
          IF t230 = abap_true.
            DATA(t231) = |DATA long_text TYPE string.\nlong_text = 'split long expressi|.
            t231 = t231 && |ons across multiple lines'.|.
            DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t232->has = abap_true.
            t232->value = t231.
            t229 = t232.
          ELSE.
            DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t233.
            t229 = t233.
          ENDIF.
          t228 = t229.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t235.
          t234 = t235.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t237.
          t236 = t237.
          t197 = NEW zcl_lnt_irule_metadata( i_key = t198 i_title = t200 i_short_description = t202 i_bad_example = t222 i_good_example = t228 i_extended_information = t204 i_tags = t210 i_pragma = t234 i_pseudo_comment = t236 ).
          CREATE OBJECT t197->zlnt_view_ownkeys_b0e8086400eb.
          t197->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t238.
          IF t197->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t238 ).
          ENDIF.
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
          DATA(t245) = |key|.
          DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t246.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
          ENDIF.
          DATA(t247) = |title|.
          DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t248.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
          ENDIF.
          DATA(t249) = |shortDescription|.
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t249 p1 = t250 ).
          ENDIF.
          DATA(t251) = |extendedInformation|.
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t252.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t251 p1 = t252 ).
          ENDIF.
          DATA(t253) = |tags|.
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t254.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t253 p1 = t254 ).
          ENDIF.
          DATA(t255) = |badExample|.
          DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t256.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t255 p1 = t256 ).
          ENDIF.
          DATA(t257) = |goodExample|.
          DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t258.
          IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t257 p1 = t258 ).
          ENDIF.
          t196 = t197->key.
          DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t260) = me->conf.
          t259 = t260->zlnt_view_read_sr_15c06369f827( ).
          t189 = zcl_lnt_issue=>at_row( i_file = t190 i_row = t191 i_message_26cb = t195 i_key = t196 i_severity = t259 ).
          t188->load( ).
          APPEND t189 TO t188->items.
          t188->save( ).
        ENDIF.
      ENDIF.
      DATA(t261) = VALUE abap_bool( ).
      DATA t262 TYPE f.
      DATA t263 TYPE i.
      DATA(t264) = t2.
      t264->load( ).
      t263 = lines( t264->items ).
      t262 = t263.
      DATA(t265) = VALUE f( ).
      DATA(t266) = t6.
      IF t266->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t265 = t266->value.
      t261 = xsdbool( t262 >= t265 ).
      IF t261 = abap_true.
        EXIT.
      ENDIF.
      DATA t267 TYPE i.
      DATA(t268) = t33.
      DATA(t269) = 1.
      t267 = t268 + t269.
      t33 = t267.
    ENDDO.
    DATA(t270) = t2.
    result = t270.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_line_length_conf( me->gt_cn_in_sr_rl_ln_ln_ts_ln_lng( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_line_length_conf( me->gt_cn_in_sr_rl_ln_ln_ts_ln_lng( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_line_length_conf.
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
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND i_conf->tag <>
        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t1 = NEW zcl_lnt_line_length_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ln_ln_ts_ln_lng( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ln_ln_ts_ln_lng( i_file = i_file ) ).
    result = t1.

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
