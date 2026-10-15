* TS: src/rules/no_prefixes.ts:36:1 NoPrefixes
CLASS zcl_lnt_no_prefixes DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_no_prefixes_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rls_n_prf_ts_n_prf RETURNING VALUE(result) TYPE REF TO zcl_lnt_no_prefixes_conf.
    METHODS st_cn_in_sr_rls_n_prf_ts_n_prf IMPORTING i_conf TYPE REF TO zcl_lnt_no_prefixes_conf.
    METHODS rn_pr_in_sr_rls_n_prf_ts_n_prf IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_data IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_statics IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_field_symbols IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_constants IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_types IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_method_parameters IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_prefixes IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_no_prefixes_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |no_prefixes|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |No Prefixes|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Dont use hungarian notation|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\nNote: not prefixing TYPES will require changing the errorNa|.
      t11 = t11 && |mespace in the abaplint configuration,\nallowing all types to|.
      t11 = t11 && | become voided, abaplint will then provide less precise synt|.
      t11 = t11 && |ax errors.\n\nhttps://github.com/SAP/styleguides/blob/main/cle|.
      t11 = t11 && |an-abap/CleanABAP.md#avoid-encodings-esp-hungarian-notation-|.
      t11 = t11 && |and-prefixes\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
      t11 = t11 && |lean-abap/sub-sections/AvoidEncodings.md|.
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
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Styleguide|.
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
      DATA(t29) = |DATA lv_foo TYPE i.|.
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
      DATA(t35) = |DATA foo TYPE i.|.
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

  METHOD gt_cn_in_sr_rls_n_prf_ts_n_prf.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rls_n_prf_ts_n_prf.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rls_n_prf_ts_n_prf.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_no_prefixes_conf.
    DATA(t5) = CAST zcl_lnt_no_prefixes_conf( me->gt_cn_in_sr_rls_n_prf_ts_n_prf( ) ).
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_structure_node.
    DATA(t11) = t8.
    t10 = t11->structure.
    t7 = t10.
    t6 = t7.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_structure_node.
    DATA(t14) = t6.
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
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t19.
      result = t19.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t22) = t4.
    t21 = t22->zlnt_view_read_sr_4bba148eaed3( ).
    t20 = t21.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t26) = t20.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    t27 = t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t25.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ELSEIF t30->has = abap_false.
      t29 = abap_true.
    ENDIF.
    t24 = t29.
    t23 = t24.
    IF t24 = abap_false.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE f( ).
      DATA(t33) = t20.
      IF t33->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t32 = t33->value.
      DATA(t34) = CONV f( 1 ).
      t31 = xsdbool( t32 < t34 ).
      t23 = t31.
    ENDIF.
    IF t23 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t35.
      DATA(t36) = abap_true.
      IF t36 = abap_true.
        DATA(t37) = CONV f( 10 ).
        DATA(t38) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t38->has = abap_true.
        t38->value = t37.
        t35 = t38.
      ELSE.
        DATA t39 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t39.
        t35 = t39.
      ENDIF.
      t20 = t35.
    ENDIF.
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t44) = t4.
    t43 = t44->zlnt_view_read_sr_06cb01c28737( ).
    t42 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    t45 = t46.
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = VALUE abap_bool( ).
    DATA(t49) = t42.
    IF t49 IS INITIAL.
      t48 = abap_true.
    ELSEIF t49->has = abap_false.
      t48 = abap_true.
    ENDIF.
    t47 = xsdbool( t48 = abap_false ).
    t41 = t47.
    t40 = t41.
    IF t41 = abap_true.
      DATA(t50) = VALUE abap_bool( ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t52) = t4.
      t51 = t52->zlnt_view_read_sr_06cb01c28737( ).
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      DATA(t54) = abap_true.
      IF t54 = abap_true.
        DATA(t55) = ||.
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = t55.
        t53 = t56.
      ELSE.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        t53 = t57.
      ENDIF.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = VALUE abap_bool( ).
      IF t51 IS BOUND.
        t58 = t51->has.
      ENDIF.
      IF t53 IS BOUND.
        t59 = t53->has.
      ENDIF.
      IF t58 = t59.
        IF t58 = abap_false.
          t50 = abap_true.
        ELSEIF t51->value = t53->value.
          t50 = abap_true.
        ENDIF.
      ENDIF.
      IF t50 = abap_true.
        t50 = abap_false.
      ELSE.
        t50 = abap_true.
      ENDIF.
      t40 = t50.
    ENDIF.
    IF t40 = abap_true.
      DATA(t60) = VALUE i( ).
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t62 TYPE REF TO zcl_lnt_structure_node.
      DATA(t63) = t6.
      t62 = t63.
      DATA t64 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t64.
      DATA t65 TYPE string.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t67) = t4.
      t66 = t67->zlnt_view_read_sr_06cb01c28737( ).
      t65 = t66->value.
      DATA(t68) = |i|.
      CREATE OBJECT t64 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t65 flags = t68.
      DATA(t69) = t1.
      t61 = me->check_data( i_top_node = t62 i_regex = t64 i_file = t69 ).
      DATA t70 TYPE REF TO zcl_lnt_issue.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      DATA(t72) = VALUE i( ).
      DO.
        t61->load( ).
        IF t72 >= lines( t61->items ).
          EXIT.
        ENDIF.
        CLEAR t71.
        READ TABLE t61->items INDEX t72 + 1 INTO t71.
        t72 = t72 + 1.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        CLEAR t70.
        IF t71 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t73 ?= t71.
          DATA t74 TYPE REF TO object.
          t74 = t73->as_ref( ).
          t70 ?= t74.
        ELSE.
          t70 ?= t71.
        ENDIF.
        DATA(t75) = t2.
        DATA(t76) = t70.
        t75->load( ).
        APPEND t76 TO t75->items.
        t75->save( ).
      ENDDO.
      DATA t77 TYPE i.
      DATA(t78) = t2.
      t78->load( ).
      t77 = lines( t78->items ).
      t60 = t77.
    ENDIF.
    DATA(t79) = VALUE abap_bool( ).
    DATA t80 TYPE f.
    DATA t81 TYPE i.
    DATA(t82) = t2.
    t82->load( ).
    t81 = lines( t82->items ).
    t80 = t81.
    DATA(t83) = VALUE f( ).
    DATA(t84) = t20.
    IF t84->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t83 = t84->value.
    t79 = xsdbool( t80 >= t83 ).
    IF t79 = abap_true.
      DATA(t85) = t2.
      result = t85.
      RETURN.
    ENDIF.
    DATA(t86) = VALUE abap_bool( ).
    DATA(t87) = VALUE abap_bool( ).
    DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t90) = t4.
    t89 = t90->zlnt_view_read_sr_6379ec097892( ).
    t88 = t89.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    t91 = t92.
    DATA(t93) = VALUE abap_bool( ).
    DATA(t94) = VALUE abap_bool( ).
    DATA(t95) = t88.
    IF t95 IS INITIAL.
      t94 = abap_true.
    ELSEIF t95->has = abap_false.
      t94 = abap_true.
    ENDIF.
    t93 = xsdbool( t94 = abap_false ).
    t87 = t93.
    t86 = t87.
    IF t87 = abap_true.
      DATA(t96) = VALUE abap_bool( ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t98) = t4.
      t97 = t98->zlnt_view_read_sr_6379ec097892( ).
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      DATA(t100) = abap_true.
      IF t100 = abap_true.
        DATA(t101) = ||.
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
      IF t97 IS BOUND.
        t104 = t97->has.
      ENDIF.
      IF t99 IS BOUND.
        t105 = t99->has.
      ENDIF.
      IF t104 = t105.
        IF t104 = abap_false.
          t96 = abap_true.
        ELSEIF t97->value = t99->value.
          t96 = abap_true.
        ENDIF.
      ENDIF.
      IF t96 = abap_true.
        t96 = abap_false.
      ELSE.
        t96 = abap_true.
      ENDIF.
      t86 = t96.
    ENDIF.
    IF t86 = abap_true.
      DATA(t106) = VALUE i( ).
      DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t108 TYPE REF TO zcl_lnt_structure_node.
      DATA(t109) = t6.
      t108 = t109.
      DATA t110 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t110.
      DATA t111 TYPE string.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t113) = t4.
      t112 = t113->zlnt_view_read_sr_6379ec097892( ).
      t111 = t112->value.
      DATA(t114) = |i|.
      CREATE OBJECT t110 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t111 flags = t114.
      DATA(t115) = t1.
      t107 = me->check_statics( i_top_node = t108 i_regex = t110 i_file = t115 ).
      DATA t116 TYPE REF TO zcl_lnt_issue.
      CLEAR t116.
      DATA t117 TYPE REF TO object.
      CLEAR t117.
      DATA(t118) = VALUE i( ).
      DO.
        t107->load( ).
        IF t118 >= lines( t107->items ).
          EXIT.
        ENDIF.
        CLEAR t117.
        READ TABLE t107->items INDEX t118 + 1 INTO t117.
        t118 = t118 + 1.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        CLEAR t116.
        IF t117 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t119 ?= t117.
          DATA t120 TYPE REF TO object.
          t120 = t119->as_ref( ).
          t116 ?= t120.
        ELSE.
          t116 ?= t117.
        ENDIF.
        DATA(t121) = t2.
        DATA(t122) = t116.
        t121->load( ).
        APPEND t122 TO t121->items.
        t121->save( ).
      ENDDO.
      DATA t123 TYPE i.
      DATA(t124) = t2.
      t124->load( ).
      t123 = lines( t124->items ).
      t106 = t123.
    ENDIF.
    DATA(t125) = VALUE abap_bool( ).
    DATA t126 TYPE f.
    DATA t127 TYPE i.
    DATA(t128) = t2.
    t128->load( ).
    t127 = lines( t128->items ).
    t126 = t127.
    DATA(t129) = VALUE f( ).
    DATA(t130) = t20.
    IF t130->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t129 = t130->value.
    t125 = xsdbool( t126 >= t129 ).
    IF t125 = abap_true.
      DATA(t131) = t2.
      result = t131.
      RETURN.
    ENDIF.
    DATA(t132) = VALUE abap_bool( ).
    DATA(t133) = VALUE abap_bool( ).
    DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t136) = t4.
    t135 = t136->zlnt_view_read_sr_a1ec6091a9fa( ).
    t134 = t135.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    t137 = t138.
    DATA(t139) = VALUE abap_bool( ).
    DATA(t140) = VALUE abap_bool( ).
    DATA(t141) = t134.
    IF t141 IS INITIAL.
      t140 = abap_true.
    ELSEIF t141->has = abap_false.
      t140 = abap_true.
    ENDIF.
    t139 = xsdbool( t140 = abap_false ).
    t133 = t139.
    t132 = t133.
    IF t133 = abap_true.
      DATA(t142) = VALUE abap_bool( ).
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t144) = t4.
      t143 = t144->zlnt_view_read_sr_a1ec6091a9fa( ).
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t145.
      DATA(t146) = abap_true.
      IF t146 = abap_true.
        DATA(t147) = ||.
        DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t148->has = abap_true.
        t148->value = t147.
        t145 = t148.
      ELSE.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        t145 = t149.
      ENDIF.
      DATA(t150) = VALUE abap_bool( ).
      DATA(t151) = VALUE abap_bool( ).
      IF t143 IS BOUND.
        t150 = t143->has.
      ENDIF.
      IF t145 IS BOUND.
        t151 = t145->has.
      ENDIF.
      IF t150 = t151.
        IF t150 = abap_false.
          t142 = abap_true.
        ELSEIF t143->value = t145->value.
          t142 = abap_true.
        ENDIF.
      ENDIF.
      IF t142 = abap_true.
        t142 = abap_false.
      ELSE.
        t142 = abap_true.
      ENDIF.
      t132 = t142.
    ENDIF.
    IF t132 = abap_true.
      DATA(t152) = VALUE i( ).
      DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t154 TYPE REF TO zcl_lnt_structure_node.
      DATA(t155) = t6.
      t154 = t155.
      DATA t156 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t156.
      DATA t157 TYPE string.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t159) = t4.
      t158 = t159->zlnt_view_read_sr_a1ec6091a9fa( ).
      t157 = t158->value.
      DATA(t160) = |i|.
      CREATE OBJECT t156 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t157 flags = t160.
      DATA(t161) = t1.
      t153 = me->check_field_symbols( i_top_node = t154 i_regex = t156 i_file = t161 ).
      DATA t162 TYPE REF TO zcl_lnt_issue.
      CLEAR t162.
      DATA t163 TYPE REF TO object.
      CLEAR t163.
      DATA(t164) = VALUE i( ).
      DO.
        t153->load( ).
        IF t164 >= lines( t153->items ).
          EXIT.
        ENDIF.
        CLEAR t163.
        READ TABLE t153->items INDEX t164 + 1 INTO t163.
        t164 = t164 + 1.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        CLEAR t162.
        IF t163 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t165 ?= t163.
          DATA t166 TYPE REF TO object.
          t166 = t165->as_ref( ).
          t162 ?= t166.
        ELSE.
          t162 ?= t163.
        ENDIF.
        DATA(t167) = t2.
        DATA(t168) = t162.
        t167->load( ).
        APPEND t168 TO t167->items.
        t167->save( ).
      ENDDO.
      DATA t169 TYPE i.
      DATA(t170) = t2.
      t170->load( ).
      t169 = lines( t170->items ).
      t152 = t169.
    ENDIF.
    DATA(t171) = VALUE abap_bool( ).
    DATA t172 TYPE f.
    DATA t173 TYPE i.
    DATA(t174) = t2.
    t174->load( ).
    t173 = lines( t174->items ).
    t172 = t173.
    DATA(t175) = VALUE f( ).
    DATA(t176) = t20.
    IF t176->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t175 = t176->value.
    t171 = xsdbool( t172 >= t175 ).
    IF t171 = abap_true.
      DATA(t177) = t2.
      result = t177.
      RETURN.
    ENDIF.
    DATA(t178) = VALUE abap_bool( ).
    DATA(t179) = VALUE abap_bool( ).
    DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t182) = t4.
    t181 = t182->zlnt_view_read_sr_82452d880166( ).
    t180 = t181.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    t183 = t184.
    DATA(t185) = VALUE abap_bool( ).
    DATA(t186) = VALUE abap_bool( ).
    DATA(t187) = t180.
    IF t187 IS INITIAL.
      t186 = abap_true.
    ELSEIF t187->has = abap_false.
      t186 = abap_true.
    ENDIF.
    t185 = xsdbool( t186 = abap_false ).
    t179 = t185.
    t178 = t179.
    IF t179 = abap_true.
      DATA(t188) = VALUE abap_bool( ).
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t190) = t4.
      t189 = t190->zlnt_view_read_sr_82452d880166( ).
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t191.
      DATA(t192) = abap_true.
      IF t192 = abap_true.
        DATA(t193) = ||.
        DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t194->has = abap_true.
        t194->value = t193.
        t191 = t194.
      ELSE.
        DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t195.
        t191 = t195.
      ENDIF.
      DATA(t196) = VALUE abap_bool( ).
      DATA(t197) = VALUE abap_bool( ).
      IF t189 IS BOUND.
        t196 = t189->has.
      ENDIF.
      IF t191 IS BOUND.
        t197 = t191->has.
      ENDIF.
      IF t196 = t197.
        IF t196 = abap_false.
          t188 = abap_true.
        ELSEIF t189->value = t191->value.
          t188 = abap_true.
        ENDIF.
      ENDIF.
      IF t188 = abap_true.
        t188 = abap_false.
      ELSE.
        t188 = abap_true.
      ENDIF.
      t178 = t188.
    ENDIF.
    IF t178 = abap_true.
      DATA(t198) = VALUE i( ).
      DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t200 TYPE REF TO zcl_lnt_structure_node.
      DATA(t201) = t6.
      t200 = t201.
      DATA t202 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t202.
      DATA t203 TYPE string.
      DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t205) = t4.
      t204 = t205->zlnt_view_read_sr_82452d880166( ).
      t203 = t204->value.
      DATA(t206) = |i|.
      CREATE OBJECT t202 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t203 flags = t206.
      DATA(t207) = t1.
      t199 = me->check_constants( i_top_node = t200 i_regex = t202 i_file = t207 ).
      DATA t208 TYPE REF TO zcl_lnt_issue.
      CLEAR t208.
      DATA t209 TYPE REF TO object.
      CLEAR t209.
      DATA(t210) = VALUE i( ).
      DO.
        t199->load( ).
        IF t210 >= lines( t199->items ).
          EXIT.
        ENDIF.
        CLEAR t209.
        READ TABLE t199->items INDEX t210 + 1 INTO t209.
        t210 = t210 + 1.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t211.
        CLEAR t208.
        IF t209 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t211 ?= t209.
          DATA t212 TYPE REF TO object.
          t212 = t211->as_ref( ).
          t208 ?= t212.
        ELSE.
          t208 ?= t209.
        ENDIF.
        DATA(t213) = t2.
        DATA(t214) = t208.
        t213->load( ).
        APPEND t214 TO t213->items.
        t213->save( ).
      ENDDO.
      DATA t215 TYPE i.
      DATA(t216) = t2.
      t216->load( ).
      t215 = lines( t216->items ).
      t198 = t215.
    ENDIF.
    DATA(t217) = VALUE abap_bool( ).
    DATA t218 TYPE f.
    DATA t219 TYPE i.
    DATA(t220) = t2.
    t220->load( ).
    t219 = lines( t220->items ).
    t218 = t219.
    DATA(t221) = VALUE f( ).
    DATA(t222) = t20.
    IF t222->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t221 = t222->value.
    t217 = xsdbool( t218 >= t221 ).
    IF t217 = abap_true.
      DATA(t223) = t2.
      result = t223.
      RETURN.
    ENDIF.
    DATA(t224) = VALUE abap_bool( ).
    DATA(t225) = VALUE abap_bool( ).
    DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t228) = t4.
    t227 = t228->zlnt_view_read_sr_cf93ad140284( ).
    t226 = t227.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    t229 = t230.
    DATA(t231) = VALUE abap_bool( ).
    DATA(t232) = VALUE abap_bool( ).
    DATA(t233) = t226.
    IF t233 IS INITIAL.
      t232 = abap_true.
    ELSEIF t233->has = abap_false.
      t232 = abap_true.
    ENDIF.
    t231 = xsdbool( t232 = abap_false ).
    t225 = t231.
    t224 = t225.
    IF t225 = abap_true.
      DATA(t234) = VALUE abap_bool( ).
      DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t236) = t4.
      t235 = t236->zlnt_view_read_sr_cf93ad140284( ).
      DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t237.
      DATA(t238) = abap_true.
      IF t238 = abap_true.
        DATA(t239) = ||.
        DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t240->has = abap_true.
        t240->value = t239.
        t237 = t240.
      ELSE.
        DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t241.
        t237 = t241.
      ENDIF.
      DATA(t242) = VALUE abap_bool( ).
      DATA(t243) = VALUE abap_bool( ).
      IF t235 IS BOUND.
        t242 = t235->has.
      ENDIF.
      IF t237 IS BOUND.
        t243 = t237->has.
      ENDIF.
      IF t242 = t243.
        IF t242 = abap_false.
          t234 = abap_true.
        ELSEIF t235->value = t237->value.
          t234 = abap_true.
        ENDIF.
      ENDIF.
      IF t234 = abap_true.
        t234 = abap_false.
      ELSE.
        t234 = abap_true.
      ENDIF.
      t224 = t234.
    ENDIF.
    IF t224 = abap_true.
      DATA(t244) = VALUE i( ).
      DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t246 TYPE REF TO zcl_lnt_structure_node.
      DATA(t247) = t6.
      t246 = t247.
      DATA t248 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t248.
      DATA t249 TYPE string.
      DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t251) = t4.
      t250 = t251->zlnt_view_read_sr_cf93ad140284( ).
      t249 = t250->value.
      DATA(t252) = |i|.
      CREATE OBJECT t248 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t249 flags = t252.
      DATA(t253) = t1.
      t245 = me->check_types( i_top_node = t246 i_regex = t248 i_file = t253 ).
      DATA t254 TYPE REF TO zcl_lnt_issue.
      CLEAR t254.
      DATA t255 TYPE REF TO object.
      CLEAR t255.
      DATA(t256) = VALUE i( ).
      DO.
        t245->load( ).
        IF t256 >= lines( t245->items ).
          EXIT.
        ENDIF.
        CLEAR t255.
        READ TABLE t245->items INDEX t256 + 1 INTO t255.
        t256 = t256 + 1.
        DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t257.
        CLEAR t254.
        IF t255 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t257 ?= t255.
          DATA t258 TYPE REF TO object.
          t258 = t257->as_ref( ).
          t254 ?= t258.
        ELSE.
          t254 ?= t255.
        ENDIF.
        DATA(t259) = t2.
        DATA(t260) = t254.
        t259->load( ).
        APPEND t260 TO t259->items.
        t259->save( ).
      ENDDO.
      DATA t261 TYPE i.
      DATA(t262) = t2.
      t262->load( ).
      t261 = lines( t262->items ).
      t244 = t261.
    ENDIF.
    DATA(t263) = VALUE abap_bool( ).
    DATA t264 TYPE f.
    DATA t265 TYPE i.
    DATA(t266) = t2.
    t266->load( ).
    t265 = lines( t266->items ).
    t264 = t265.
    DATA(t267) = VALUE f( ).
    DATA(t268) = t20.
    IF t268->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t267 = t268->value.
    t263 = xsdbool( t264 >= t267 ).
    IF t263 = abap_true.
      DATA(t269) = t2.
      result = t269.
      RETURN.
    ENDIF.
    DATA(t270) = VALUE abap_bool( ).
    DATA(t271) = VALUE abap_bool( ).
    DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t274) = t4.
    t273 = t274->zlnt_view_read_sr_ecc5144d9e37( ).
    t272 = t273.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    t275 = t276.
    DATA(t277) = VALUE abap_bool( ).
    DATA(t278) = VALUE abap_bool( ).
    DATA(t279) = t272.
    IF t279 IS INITIAL.
      t278 = abap_true.
    ELSEIF t279->has = abap_false.
      t278 = abap_true.
    ENDIF.
    t277 = xsdbool( t278 = abap_false ).
    t271 = t277.
    t270 = t271.
    IF t271 = abap_true.
      DATA(t280) = VALUE abap_bool( ).
      DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t282) = t4.
      t281 = t282->zlnt_view_read_sr_ecc5144d9e37( ).
      DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t283.
      DATA(t284) = abap_true.
      IF t284 = abap_true.
        DATA(t285) = ||.
        DATA(t286) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t286->has = abap_true.
        t286->value = t285.
        t283 = t286.
      ELSE.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t287.
        t283 = t287.
      ENDIF.
      DATA(t288) = VALUE abap_bool( ).
      DATA(t289) = VALUE abap_bool( ).
      IF t281 IS BOUND.
        t288 = t281->has.
      ENDIF.
      IF t283 IS BOUND.
        t289 = t283->has.
      ENDIF.
      IF t288 = t289.
        IF t288 = abap_false.
          t280 = abap_true.
        ELSEIF t281->value = t283->value.
          t280 = abap_true.
        ENDIF.
      ENDIF.
      IF t280 = abap_true.
        t280 = abap_false.
      ELSE.
        t280 = abap_true.
      ENDIF.
      t270 = t280.
    ENDIF.
    IF t270 = abap_true.
      DATA(t290) = VALUE i( ).
      DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t292 TYPE REF TO zcl_lnt_structure_node.
      DATA(t293) = t6.
      t292 = t293.
      DATA t294 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t294.
      DATA t295 TYPE string.
      DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t297) = t4.
      t296 = t297->zlnt_view_read_sr_ecc5144d9e37( ).
      t295 = t296->value.
      DATA(t298) = |i|.
      CREATE OBJECT t294 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t295 flags = t298.
      DATA(t299) = t1.
      t291 = me->check_method_parameters( i_top_node = t292 i_regex = t294 i_file = t299 ).
      DATA t300 TYPE REF TO zcl_lnt_issue.
      CLEAR t300.
      DATA t301 TYPE REF TO object.
      CLEAR t301.
      DATA(t302) = VALUE i( ).
      DO.
        t291->load( ).
        IF t302 >= lines( t291->items ).
          EXIT.
        ENDIF.
        CLEAR t301.
        READ TABLE t291->items INDEX t302 + 1 INTO t301.
        t302 = t302 + 1.
        DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t303.
        CLEAR t300.
        IF t301 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t303 ?= t301.
          DATA t304 TYPE REF TO object.
          t304 = t303->as_ref( ).
          t300 ?= t304.
        ELSE.
          t300 ?= t301.
        ENDIF.
        DATA(t305) = t2.
        DATA(t306) = t300.
        t305->load( ).
        APPEND t306 TO t305->items.
        t305->save( ).
      ENDDO.
      DATA t307 TYPE i.
      DATA(t308) = t2.
      t308->load( ).
      t307 = lines( t308->items ).
      t290 = t307.
    ENDIF.
    DATA(t309) = t2.
    result = t309.

  ENDMETHOD.

  METHOD check_data.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t1.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d437_1e504b4be960.
    t9 = t10->find_all_statements( i_type_9913 = t11 ).
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = t1.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c.
    t12 = t13->find_all_statements( i_type_9913 = t14 ).
    t8 = t9->concat( p0 = t12 ).
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t1.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d408_ad3db4ea5b7e.
    t15 = t16->find_all_statements( i_type_9913 = t17 ).
    t7 = t8->concat( p0 = t15 ).
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = t1.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d407_dfd1462d93da.
    t18 = t19->find_all_statements( i_type_9913 = t20 ).
    t6 = t7->concat( p0 = t18 ).
    DATA t21 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    DATA(t23) = VALUE i( ).
    DO.
      t6->load( ).
      IF t23 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t6->items INDEX t23 + 1 INTO t22.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t21.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t22.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t21 ?= t25.
      ELSE.
        t21 ?= t22.
      ENDIF.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      DATA(t30) = t21.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t29 = t30->find_first_expression( i_type_9913 = t31 ).
      t28 = t29.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t32.
      DATA t33 TYPE abap_bool.
      DATA(t34) = t28.
      t33 = xsdbool( t34 IS BOUND ).
      IF t33 = abap_true.
        DATA(t35) = t28.
        t32 = t35.
      ELSE.
        DATA t36 TYPE REF TO zcl_lnt_expression_node.
        DATA(t37) = t21.
        DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
        t36 = t37->find_first_expression( i_type_9913 = t38 ).
        t32 = t36.
      ENDIF.
      t27 = t32.
      t26 = t27.
      DATA(t39) = VALUE string( ).
      DATA(t40) = VALUE string( ).
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA(t44) = t26.
      t43 = t44.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = t43.
      IF t47 IS INITIAL.
        t46 = abap_true.
      ENDIF.
      IF t46 = abap_true.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        t45 = t48.
      ELSE.
        DATA t49 TYPE string.
        DATA t50 TYPE REF TO zcl_lnt_expression_node.
        DATA(t51) = t43.
        t50 = t51.
        t49 = t50->concat_tokens( ).
        DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t52->has = abap_true.
        t52->value = t49.
        t45 = t52.
      ENDIF.
      t42 = t45.
      t41 = t42.
      DATA(t53) = VALUE string( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = t41.
      IF t55 IS BOUND.
        IF t55->has = abap_true.
          t54 = xsdbool( strlen( t55->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t54 = abap_true.
        DATA t56 TYPE string.
        DATA(t57) = t41.
        t56 = t57->value.
        t53 = t56.
      ELSE.
        DATA(t58) = ||.
        t53 = t58.
      ENDIF.
      t40 = t53.
      t39 = t40.
      DATA(t59) = VALUE abap_bool( ).
      DATA t60 TYPE abap_bool.
      DATA t61 TYPE abap_bool.
      DATA(t62) = t39.
      DATA(t63) = ||.
      t61 = xsdbool( t62 <> t63 ).
      t60 = t61.
      IF t61 = abap_true.
        DATA t64 TYPE abap_bool.
        DATA(t65) = t26.
        t64 = xsdbool( t65 IS BOUND ).
        t60 = t64.
      ENDIF.
      t59 = t60.
      IF t60 = abap_true.
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t68 TYPE string.
        DATA(t69) = t39.
        t68 = t69.
        DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t71) = t68.
        DATA(t72) = t2.
        t70 = t72->match( t71 ).
        t67 = t70.
        t66 = xsdbool( t67 IS BOUND ).
        t59 = t66.
      ENDIF.
      IF t59 = abap_true.
        DATA t73 TYPE REF TO zcl_lnt_issue.
        CLEAR t73.
        DATA t74 TYPE REF TO zcl_lnt_issue.
        CLEAR t74.
        DATA(t75) = t3.
        DATA t76 TYPE REF TO zcl_lnt_abstract_token.
        DATA t77 TYPE REF TO zcl_lnt_expression_node.
        DATA(t78) = t26.
        t77 = t78.
        t76 = t77->get_first_token( ).
        DATA(t79) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t80) = VALUE string( ).
        DATA t81 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t81.
        DATA t82 TYPE string.
        DATA(t83) = |no_prefixes|.
        t82 = t83.
        DATA t84 TYPE string.
        DATA(t85) = |No Prefixes|.
        t84 = t85.
        DATA t86 TYPE string.
        DATA(t87) = |Dont use hungarian notation|.
        t86 = t87.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA(t90) = abap_true.
        IF t90 = abap_true.
          DATA(t91) = |\nNote: not prefixing TYPES will require changing the errorNa|.
          t91 = t91 && |mespace in the abaplint configuration,\nallowing all types to|.
          t91 = t91 && | become voided, abaplint will then provide less precise synt|.
          t91 = t91 && |ax errors.\n\nhttps://github.com/SAP/styleguides/blob/main/cle|.
          t91 = t91 && |an-abap/CleanABAP.md#avoid-encodings-esp-hungarian-notation-|.
          t91 = t91 && |and-prefixes\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t91 = t91 && |lean-abap/sub-sections/AvoidEncodings.md|.
          DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t92->has = abap_true.
          t92->value = t91.
          t89 = t92.
        ELSE.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          t89 = t93.
        ENDIF.
        t88 = t89.
        DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t94.
        DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t95.
        DATA(t96) = abap_true.
        IF t96 = abap_true.
          DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t99.
          t98 = t99.
          DATA(t100) = t98.
          DATA(t101) = |SingleFile|.
          t100->load( ).
          APPEND t101 TO t100->items.
          t100->save( ).
          DATA(t102) = t98.
          DATA(t103) = |Styleguide|.
          t102->load( ).
          APPEND t103 TO t102->items.
          t102->save( ).
          DATA(t104) = t98.
          t97 = t104.
          t95 = t97.
        ELSE.
          DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t105.
          t95 = t105.
        ENDIF.
        t94 = t95.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        DATA(t108) = abap_true.
        IF t108 = abap_true.
          DATA(t109) = |DATA lv_foo TYPE i.|.
          DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t110->has = abap_true.
          t110->value = t109.
          t107 = t110.
        ELSE.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          t107 = t111.
        ENDIF.
        t106 = t107.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        DATA(t114) = abap_true.
        IF t114 = abap_true.
          DATA(t115) = |DATA foo TYPE i.|.
          DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t116->has = abap_true.
          t116->value = t115.
          t113 = t116.
        ELSE.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          t113 = t117.
        ENDIF.
        t112 = t113.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        t118 = t119.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        t120 = t121.
        t81 = NEW zcl_lnt_irule_metadata( i_key = t82 i_title = t84 i_short_description = t86 i_bad_example = t106 i_good_example = t112 i_extended_information = t88 i_tags = t94 i_pragma = t118 i_pseudo_comment = t120 ).
        CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
        t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t122 ).
        ENDIF.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t123 ).
        ENDIF.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t124 ).
        ENDIF.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t125 ).
        ENDIF.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t126 ).
        ENDIF.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t127 ).
        ENDIF.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t128 ).
        ENDIF.
        CREATE OBJECT t81->zlnt_json_ownkeys_70e5fd461788.
        t81->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t129) = |key|.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
        ENDIF.
        DATA(t131) = |title|.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
        ENDIF.
        DATA(t133) = |shortDescription|.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        ENDIF.
        DATA(t135) = |extendedInformation|.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
        ENDIF.
        DATA(t137) = |tags|.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
        ENDIF.
        DATA(t139) = |badExample|.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
        ENDIF.
        DATA(t141) = |goodExample|.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
        ENDIF.
        t80 = t81->key.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t144) = me->conf.
        t143 = t144->zlnt_view_read_sr_15c06369f827( ).
        DATA t145 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t145.
        t74 = zcl_lnt_issue=>at_token( i_file = t75 i_token = t76 i_message_26cb = t79 i_key = t80 i_severity = t143 i_fix = t145 ).
        t73 = t74.
        DATA(t146) = t4.
        DATA(t147) = t73.
        t146->load( ).
        APPEND t147 TO t146->items.
        t146->save( ).
      ENDIF.
    ENDDO.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t149) = t1.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
    t148 = t149->find_all_expressions( i_type_9913 = t150 ).
    DATA t151 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t151.
    DATA t152 TYPE REF TO object.
    CLEAR t152.
    DATA(t153) = VALUE i( ).
    DO.
      t148->load( ).
      IF t153 >= lines( t148->items ).
        EXIT.
      ENDIF.
      CLEAR t152.
      READ TABLE t148->items INDEX t153 + 1 INTO t152.
      t153 = t153 + 1.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      CLEAR t151.
      IF t152 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t154 ?= t152.
        DATA t155 TYPE REF TO object.
        t155 = t154->as_ref( ).
        t151 ?= t155.
      ELSE.
        t151 ?= t152.
      ENDIF.
      DATA t156 TYPE REF TO zcl_lnt_expression_node.
      DATA t157 TYPE REF TO zcl_lnt_expression_node.
      DATA(t158) = t151.
      DATA(t159) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
      t157 = t158->find_first_expression( i_type_9913 = t159 ).
      t156 = t157.
      DATA(t160) = VALUE string( ).
      DATA(t161) = VALUE string( ).
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t162.
      DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t163.
      DATA t164 TYPE REF TO zcl_lnt_expression_node.
      DATA(t165) = t156.
      t164 = t165.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t166.
      DATA(t167) = VALUE abap_bool( ).
      DATA(t168) = t164.
      IF t168 IS INITIAL.
        t167 = abap_true.
      ENDIF.
      IF t167 = abap_true.
        DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t169.
        t166 = t169.
      ELSE.
        DATA t170 TYPE string.
        DATA t171 TYPE REF TO zcl_lnt_expression_node.
        DATA(t172) = t164.
        t171 = t172.
        t170 = t171->concat_tokens( ).
        DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t173->has = abap_true.
        t173->value = t170.
        t166 = t173.
      ENDIF.
      t163 = t166.
      t162 = t163.
      DATA(t174) = VALUE string( ).
      DATA(t175) = VALUE abap_bool( ).
      DATA(t176) = t162.
      IF t176 IS BOUND.
        IF t176->has = abap_true.
          t175 = xsdbool( strlen( t176->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t175 = abap_true.
        DATA t177 TYPE string.
        DATA(t178) = t162.
        t177 = t178->value.
        t174 = t177.
      ELSE.
        DATA(t179) = ||.
        t174 = t179.
      ENDIF.
      t161 = t174.
      t160 = t161.
      DATA(t180) = VALUE abap_bool( ).
      DATA t181 TYPE abap_bool.
      DATA t182 TYPE abap_bool.
      DATA(t183) = t160.
      DATA(t184) = ||.
      t182 = xsdbool( t183 <> t184 ).
      t181 = t182.
      IF t182 = abap_true.
        DATA t185 TYPE abap_bool.
        DATA(t186) = t156.
        t185 = xsdbool( t186 IS BOUND ).
        t181 = t185.
      ENDIF.
      t180 = t181.
      IF t181 = abap_true.
        DATA t187 TYPE abap_bool.
        DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t189 TYPE string.
        DATA(t190) = t160.
        t189 = t190.
        DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t192) = t189.
        DATA(t193) = t2.
        t191 = t193->match( t192 ).
        t188 = t191.
        t187 = xsdbool( t188 IS BOUND ).
        t180 = t187.
      ENDIF.
      IF t180 = abap_true.
        DATA t194 TYPE REF TO zcl_lnt_issue.
        CLEAR t194.
        DATA t195 TYPE REF TO zcl_lnt_issue.
        CLEAR t195.
        DATA(t196) = t3.
        DATA t197 TYPE REF TO zcl_lnt_abstract_token.
        DATA t198 TYPE REF TO zcl_lnt_expression_node.
        DATA(t199) = t156.
        t198 = t199.
        t197 = t198->get_first_token( ).
        DATA(t200) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t201) = VALUE string( ).
        DATA t202 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t202.
        DATA t203 TYPE string.
        DATA(t204) = |no_prefixes|.
        t203 = t204.
        DATA t205 TYPE string.
        DATA(t206) = |No Prefixes|.
        t205 = t206.
        DATA t207 TYPE string.
        DATA(t208) = |Dont use hungarian notation|.
        t207 = t208.
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t209.
        DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t210.
        DATA(t211) = abap_true.
        IF t211 = abap_true.
          DATA(t212) = |\nNote: not prefixing TYPES will require changing the errorNa|.
          t212 = t212 && |mespace in the abaplint configuration,\nallowing all types to|.
          t212 = t212 && | become voided, abaplint will then provide less precise synt|.
          t212 = t212 && |ax errors.\n\nhttps://github.com/SAP/styleguides/blob/main/cle|.
          t212 = t212 && |an-abap/CleanABAP.md#avoid-encodings-esp-hungarian-notation-|.
          t212 = t212 && |and-prefixes\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t212 = t212 && |lean-abap/sub-sections/AvoidEncodings.md|.
          DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t213->has = abap_true.
          t213->value = t212.
          t210 = t213.
        ELSE.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t214.
          t210 = t214.
        ENDIF.
        t209 = t210.
        DATA t215 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t215.
        DATA t216 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t216.
        DATA(t217) = abap_true.
        IF t217 = abap_true.
          DATA t218 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t219 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t220 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t220.
          t219 = t220.
          DATA(t221) = t219.
          DATA(t222) = |SingleFile|.
          t221->load( ).
          APPEND t222 TO t221->items.
          t221->save( ).
          DATA(t223) = t219.
          DATA(t224) = |Styleguide|.
          t223->load( ).
          APPEND t224 TO t223->items.
          t223->save( ).
          DATA(t225) = t219.
          t218 = t225.
          t216 = t218.
        ELSE.
          DATA t226 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t226.
          t216 = t226.
        ENDIF.
        t215 = t216.
        DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t227.
        DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t228.
        DATA(t229) = abap_true.
        IF t229 = abap_true.
          DATA(t230) = |DATA lv_foo TYPE i.|.
          DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t231->has = abap_true.
          t231->value = t230.
          t228 = t231.
        ELSE.
          DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t232.
          t228 = t232.
        ENDIF.
        t227 = t228.
        DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t233.
        DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t234.
        DATA(t235) = abap_true.
        IF t235 = abap_true.
          DATA(t236) = |DATA foo TYPE i.|.
          DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t237->has = abap_true.
          t237->value = t236.
          t234 = t237.
        ELSE.
          DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t238.
          t234 = t238.
        ENDIF.
        t233 = t234.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t240.
        t239 = t240.
        DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t242.
        t241 = t242.
        t202 = NEW zcl_lnt_irule_metadata( i_key = t203 i_title = t205 i_short_description = t207 i_bad_example = t227 i_good_example = t233 i_extended_information = t209 i_tags = t215 i_pragma = t239 i_pseudo_comment = t241 ).
        CREATE OBJECT t202->zlnt_view_ownkeys_b0e8086400eb.
        t202->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t243 ).
        ENDIF.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t244 ).
        ENDIF.
        DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t245.
        IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t245 ).
        ENDIF.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t246 ).
        ENDIF.
        DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t247.
        IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t247 ).
        ENDIF.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t248 ).
        ENDIF.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t249.
        IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t249 ).
        ENDIF.
        CREATE OBJECT t202->zlnt_json_ownkeys_70e5fd461788.
        t202->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t250) = |key|.
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t251.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t250 p1 = t251 ).
        ENDIF.
        DATA(t252) = |title|.
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t253.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
        ENDIF.
        DATA(t254) = |shortDescription|.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t255.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
        ENDIF.
        DATA(t256) = |extendedInformation|.
        DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t257.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
        ENDIF.
        DATA(t258) = |tags|.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t259.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
        ENDIF.
        DATA(t260) = |badExample|.
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t261.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t260 p1 = t261 ).
        ENDIF.
        DATA(t262) = |goodExample|.
        DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t263.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = t262 p1 = t263 ).
        ENDIF.
        t201 = t202->key.
        DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t265) = me->conf.
        t264 = t265->zlnt_view_read_sr_15c06369f827( ).
        DATA t266 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t266.
        t195 = zcl_lnt_issue=>at_token( i_file = t196 i_token = t197 i_message_26cb = t200 i_key = t201 i_severity = t264 i_fix = t266 ).
        t194 = t195.
        DATA(t267) = t4.
        DATA(t268) = t194.
        t267->load( ).
        APPEND t268 TO t267->items.
        t267->save( ).
      ENDIF.
    ENDDO.
    DATA(t269) = t4.
    result = t269.

  ENDMETHOD.

  METHOD check_statics.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t1.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d641_00cf48ea9524.
    t7 = t8->find_all_statements( i_type_9913 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t1.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d642_c7115fecf92d.
    t10 = t11->find_all_statements( i_type_9913 = t12 ).
    t6 = t7->concat( p0 = t10 ).
    DATA t13 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t13.
    DATA t14 TYPE REF TO object.
    CLEAR t14.
    DATA(t15) = VALUE i( ).
    DO.
      t6->load( ).
      IF t15 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t6->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = t13.
      DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t19 = t20->find_first_expression( i_type_9913 = t21 ).
      t18 = t19.
      DATA(t22) = VALUE string( ).
      DATA(t23) = VALUE string( ).
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = t18.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t26.
      IF t30 IS INITIAL.
        t29 = abap_true.
      ENDIF.
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t28 = t31.
      ELSE.
        DATA t32 TYPE string.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        DATA(t34) = t26.
        t33 = t34.
        t32 = t33->concat_tokens( ).
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t32.
        t28 = t35.
      ENDIF.
      t25 = t28.
      t24 = t25.
      DATA(t36) = VALUE string( ).
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t24.
      IF t38 IS BOUND.
        IF t38->has = abap_true.
          t37 = xsdbool( strlen( t38->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t37 = abap_true.
        DATA t39 TYPE string.
        DATA(t40) = t24.
        t39 = t40->value.
        t36 = t39.
      ELSE.
        DATA(t41) = ||.
        t36 = t41.
      ENDIF.
      t23 = t36.
      t22 = t23.
      DATA(t42) = VALUE abap_bool( ).
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE abap_bool.
      DATA(t45) = t22.
      DATA(t46) = ||.
      t44 = xsdbool( t45 <> t46 ).
      t43 = t44.
      IF t44 = abap_true.
        DATA t47 TYPE abap_bool.
        DATA(t48) = t18.
        t47 = xsdbool( t48 IS BOUND ).
        t43 = t47.
      ENDIF.
      t42 = t43.
      IF t43 = abap_true.
        DATA t49 TYPE abap_bool.
        DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t51 TYPE string.
        DATA(t52) = t22.
        t51 = t52.
        DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t54) = t51.
        DATA(t55) = t2.
        t53 = t55->match( t54 ).
        t50 = t53.
        t49 = xsdbool( t50 IS BOUND ).
        t42 = t49.
      ENDIF.
      IF t42 = abap_true.
        DATA t56 TYPE REF TO zcl_lnt_issue.
        CLEAR t56.
        DATA t57 TYPE REF TO zcl_lnt_issue.
        CLEAR t57.
        DATA(t58) = t3.
        DATA t59 TYPE REF TO zcl_lnt_abstract_token.
        DATA t60 TYPE REF TO zcl_lnt_expression_node.
        DATA(t61) = t18.
        t60 = t61.
        t59 = t60->get_first_token( ).
        DATA(t62) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t63) = VALUE string( ).
        DATA t64 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t64.
        DATA t65 TYPE string.
        DATA(t66) = |no_prefixes|.
        t65 = t66.
        DATA t67 TYPE string.
        DATA(t68) = |No Prefixes|.
        t67 = t68.
        DATA t69 TYPE string.
        DATA(t70) = |Dont use hungarian notation|.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA(t73) = abap_true.
        IF t73 = abap_true.
          DATA(t74) = |\nNote: not prefixing TYPES will require changing the errorNa|.
          t74 = t74 && |mespace in the abaplint configuration,\nallowing all types to|.
          t74 = t74 && | become voided, abaplint will then provide less precise synt|.
          t74 = t74 && |ax errors.\n\nhttps://github.com/SAP/styleguides/blob/main/cle|.
          t74 = t74 && |an-abap/CleanABAP.md#avoid-encodings-esp-hungarian-notation-|.
          t74 = t74 && |and-prefixes\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t74 = t74 && |lean-abap/sub-sections/AvoidEncodings.md|.
          DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t75->has = abap_true.
          t75->value = t74.
          t72 = t75.
        ELSE.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          t72 = t76.
        ENDIF.
        t71 = t72.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t77.
        DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t82.
          t81 = t82.
          DATA(t83) = t81.
          DATA(t84) = |SingleFile|.
          t83->load( ).
          APPEND t84 TO t83->items.
          t83->save( ).
          DATA(t85) = t81.
          DATA(t86) = |Styleguide|.
          t85->load( ).
          APPEND t86 TO t85->items.
          t85->save( ).
          DATA(t87) = t81.
          t80 = t87.
          t78 = t80.
        ELSE.
          DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t88.
          t78 = t88.
        ENDIF.
        t77 = t78.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        DATA(t91) = abap_true.
        IF t91 = abap_true.
          DATA(t92) = |DATA lv_foo TYPE i.|.
          DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t93->has = abap_true.
          t93->value = t92.
          t90 = t93.
        ELSE.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          t90 = t94.
        ENDIF.
        t89 = t90.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        DATA(t97) = abap_true.
        IF t97 = abap_true.
          DATA(t98) = |DATA foo TYPE i.|.
          DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t99->has = abap_true.
          t99->value = t98.
          t96 = t99.
        ELSE.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          t96 = t100.
        ENDIF.
        t95 = t96.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        t101 = t102.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        t103 = t104.
        t64 = NEW zcl_lnt_irule_metadata( i_key = t65 i_title = t67 i_short_description = t69 i_bad_example = t89 i_good_example = t95 i_extended_information = t71 i_tags = t77 i_pragma = t101 i_pseudo_comment = t103 ).
        CREATE OBJECT t64->zlnt_view_ownkeys_b0e8086400eb.
        t64->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t105 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t106 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t107 ).
        ENDIF.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t108 ).
        ENDIF.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t109 ).
        ENDIF.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t110 ).
        ENDIF.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t111 ).
        ENDIF.
        CREATE OBJECT t64->zlnt_json_ownkeys_70e5fd461788.
        t64->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t112) = |key|.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
        ENDIF.
        DATA(t114) = |title|.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
        ENDIF.
        DATA(t116) = |shortDescription|.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
        ENDIF.
        DATA(t118) = |extendedInformation|.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
        ENDIF.
        DATA(t120) = |tags|.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
        ENDIF.
        DATA(t122) = |badExample|.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
        ENDIF.
        DATA(t124) = |goodExample|.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
        ENDIF.
        t63 = t64->key.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t127) = me->conf.
        t126 = t127->zlnt_view_read_sr_15c06369f827( ).
        DATA t128 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t128.
        t57 = zcl_lnt_issue=>at_token( i_file = t58 i_token = t59 i_message_26cb = t62 i_key = t63 i_severity = t126 i_fix = t128 ).
        t56 = t57.
        DATA(t129) = t4.
        DATA(t130) = t56.
        t129->load( ).
        APPEND t130 TO t129->items.
        t129->save( ).
      ENDIF.
    ENDDO.
    DATA(t131) = t4.
    result = t131.

  ENDMETHOD.

  METHOD check_field_symbols.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d498_bacf37b32951.
    t6 = t7->find_all_statements( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t6->load( ).
      IF t11 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t6->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = t9.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
      t15 = t16->find_first_expression( i_type_9913 = t17 ).
      t14 = t15.
      DATA(t18) = VALUE string( ).
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA(t23) = t14.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = t22.
      IF t26 IS INITIAL.
        t25 = abap_true.
      ENDIF.
      IF t25 = abap_true.
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t27.
        t24 = t27.
      ELSE.
        DATA t28 TYPE string.
        DATA t29 TYPE REF TO zcl_lnt_expression_node.
        DATA(t30) = t22.
        t29 = t30.
        t28 = t29->concat_tokens( ).
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t28.
        t24 = t31.
      ENDIF.
      t21 = t24.
      t20 = t21.
      DATA(t32) = VALUE string( ).
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = t20.
      IF t34 IS BOUND.
        IF t34->has = abap_true.
          t33 = xsdbool( strlen( t34->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t33 = abap_true.
        DATA t35 TYPE string.
        DATA(t36) = t20.
        t35 = t36->value.
        t32 = t35.
      ELSE.
        DATA(t37) = ||.
        t32 = t37.
      ENDIF.
      t19 = t32.
      t18 = t19.
      DATA(t38) = VALUE abap_bool( ).
      DATA t39 TYPE abap_bool.
      DATA t40 TYPE abap_bool.
      DATA(t41) = t18.
      DATA(t42) = ||.
      t40 = xsdbool( t41 <> t42 ).
      t39 = t40.
      IF t40 = abap_true.
        DATA t43 TYPE abap_bool.
        DATA(t44) = t14.
        t43 = xsdbool( t44 IS BOUND ).
        t39 = t43.
      ENDIF.
      t38 = t39.
      IF t39 = abap_true.
        DATA t45 TYPE abap_bool.
        DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t47 TYPE string.
        DATA(t48) = t18.
        t47 = t48.
        DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t50) = t47.
        DATA(t51) = t2.
        t49 = t51->match( t50 ).
        t46 = t49.
        t45 = xsdbool( t46 IS BOUND ).
        t38 = t45.
      ENDIF.
      IF t38 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_issue.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_issue.
        CLEAR t53.
        DATA(t54) = t3.
        DATA t55 TYPE REF TO zcl_lnt_abstract_token.
        DATA t56 TYPE REF TO zcl_lnt_expression_node.
        DATA(t57) = t14.
        t56 = t57.
        t55 = t56->get_first_token( ).
        DATA(t58) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t59) = VALUE string( ).
        DATA t60 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t60.
        DATA t61 TYPE string.
        DATA(t62) = |no_prefixes|.
        t61 = t62.
        DATA t63 TYPE string.
        DATA(t64) = |No Prefixes|.
        t63 = t64.
        DATA t65 TYPE string.
        DATA(t66) = |Dont use hungarian notation|.
        t65 = t66.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA(t69) = abap_true.
        IF t69 = abap_true.
          DATA(t70) = |\nNote: not prefixing TYPES will require changing the errorNa|.
          t70 = t70 && |mespace in the abaplint configuration,\nallowing all types to|.
          t70 = t70 && | become voided, abaplint will then provide less precise synt|.
          t70 = t70 && |ax errors.\n\nhttps://github.com/SAP/styleguides/blob/main/cle|.
          t70 = t70 && |an-abap/CleanABAP.md#avoid-encodings-esp-hungarian-notation-|.
          t70 = t70 && |and-prefixes\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t70 = t70 && |lean-abap/sub-sections/AvoidEncodings.md|.
          DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t71->has = abap_true.
          t71->value = t70.
          t68 = t71.
        ELSE.
          DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t72.
          t68 = t72.
        ENDIF.
        t67 = t68.
        DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t73.
        DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t74.
        DATA(t75) = abap_true.
        IF t75 = abap_true.
          DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t78.
          t77 = t78.
          DATA(t79) = t77.
          DATA(t80) = |SingleFile|.
          t79->load( ).
          APPEND t80 TO t79->items.
          t79->save( ).
          DATA(t81) = t77.
          DATA(t82) = |Styleguide|.
          t81->load( ).
          APPEND t82 TO t81->items.
          t81->save( ).
          DATA(t83) = t77.
          t76 = t83.
          t74 = t76.
        ELSE.
          DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t84.
          t74 = t84.
        ENDIF.
        t73 = t74.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA(t87) = abap_true.
        IF t87 = abap_true.
          DATA(t88) = |DATA lv_foo TYPE i.|.
          DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t89->has = abap_true.
          t89->value = t88.
          t86 = t89.
        ELSE.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t90.
          t86 = t90.
        ENDIF.
        t85 = t86.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t92.
        DATA(t93) = abap_true.
        IF t93 = abap_true.
          DATA(t94) = |DATA foo TYPE i.|.
          DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t95->has = abap_true.
          t95->value = t94.
          t92 = t95.
        ELSE.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          t92 = t96.
        ENDIF.
        t91 = t92.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t97 = t98.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        t99 = t100.
        t60 = NEW zcl_lnt_irule_metadata( i_key = t61 i_title = t63 i_short_description = t65 i_bad_example = t85 i_good_example = t91 i_extended_information = t67 i_tags = t73 i_pragma = t97 i_pseudo_comment = t99 ).
        CREATE OBJECT t60->zlnt_view_ownkeys_b0e8086400eb.
        t60->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t101 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t102 ).
        ENDIF.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t103 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t104 ).
        ENDIF.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t105 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t106 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t107 ).
        ENDIF.
        CREATE OBJECT t60->zlnt_json_ownkeys_70e5fd461788.
        t60->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t108) = |key|.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
        ENDIF.
        DATA(t110) = |title|.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
        ENDIF.
        DATA(t112) = |shortDescription|.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
        ENDIF.
        DATA(t114) = |extendedInformation|.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
        ENDIF.
        DATA(t116) = |tags|.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
        ENDIF.
        DATA(t118) = |badExample|.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
        ENDIF.
        DATA(t120) = |goodExample|.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
        ENDIF.
        t59 = t60->key.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t123) = me->conf.
        t122 = t123->zlnt_view_read_sr_15c06369f827( ).
        DATA t124 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t124.
        t53 = zcl_lnt_issue=>at_token( i_file = t54 i_token = t55 i_message_26cb = t58 i_key = t59 i_severity = t122 i_fix = t124 ).
        t52 = t53.
        DATA(t125) = t4.
        DATA(t126) = t52.
        t125->load( ).
        APPEND t126 TO t125->items.
        t125->save( ).
      ENDIF.
    ENDDO.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t128) = t1.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a.
    t127 = t128->find_all_expressions( i_type_9913 = t129 ).
    DATA t130 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t130.
    DATA t131 TYPE REF TO object.
    CLEAR t131.
    DATA(t132) = VALUE i( ).
    DO.
      t127->load( ).
      IF t132 >= lines( t127->items ).
        EXIT.
      ENDIF.
      CLEAR t131.
      READ TABLE t127->items INDEX t132 + 1 INTO t131.
      t132 = t132 + 1.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      CLEAR t130.
      IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t133 ?= t131.
        DATA t134 TYPE REF TO object.
        t134 = t133->as_ref( ).
        t130 ?= t134.
      ELSE.
        t130 ?= t131.
      ENDIF.
      DATA t135 TYPE REF TO zcl_lnt_expression_node.
      DATA t136 TYPE REF TO zcl_lnt_expression_node.
      DATA(t137) = t130.
      DATA(t138) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
      t136 = t137->find_first_expression( i_type_9913 = t138 ).
      t135 = t136.
      DATA(t139) = VALUE string( ).
      DATA(t140) = VALUE string( ).
      DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t141.
      DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t142.
      DATA t143 TYPE REF TO zcl_lnt_expression_node.
      DATA(t144) = t135.
      t143 = t144.
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t145.
      DATA(t146) = VALUE abap_bool( ).
      DATA(t147) = t143.
      IF t147 IS INITIAL.
        t146 = abap_true.
      ENDIF.
      IF t146 = abap_true.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        t145 = t148.
      ELSE.
        DATA t149 TYPE string.
        DATA t150 TYPE REF TO zcl_lnt_expression_node.
        DATA(t151) = t143.
        t150 = t151.
        t149 = t150->concat_tokens( ).
        DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t152->has = abap_true.
        t152->value = t149.
        t145 = t152.
      ENDIF.
      t142 = t145.
      t141 = t142.
      DATA(t153) = VALUE string( ).
      DATA(t154) = VALUE abap_bool( ).
      DATA(t155) = t141.
      IF t155 IS BOUND.
        IF t155->has = abap_true.
          t154 = xsdbool( strlen( t155->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t154 = abap_true.
        DATA t156 TYPE string.
        DATA(t157) = t141.
        t156 = t157->value.
        t153 = t156.
      ELSE.
        DATA(t158) = ||.
        t153 = t158.
      ENDIF.
      t140 = t153.
      t139 = t140.
      DATA(t159) = VALUE abap_bool( ).
      DATA t160 TYPE abap_bool.
      DATA t161 TYPE abap_bool.
      DATA(t162) = t139.
      DATA(t163) = ||.
      t161 = xsdbool( t162 <> t163 ).
      t160 = t161.
      IF t161 = abap_true.
        DATA t164 TYPE abap_bool.
        DATA(t165) = t135.
        t164 = xsdbool( t165 IS BOUND ).
        t160 = t164.
      ENDIF.
      t159 = t160.
      IF t160 = abap_true.
        DATA t166 TYPE abap_bool.
        DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t168 TYPE string.
        DATA(t169) = t139.
        t168 = t169.
        DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t171) = t168.
        DATA(t172) = t2.
        t170 = t172->match( t171 ).
        t167 = t170.
        t166 = xsdbool( t167 IS BOUND ).
        t159 = t166.
      ENDIF.
      IF t159 = abap_true.
        DATA t173 TYPE REF TO zcl_lnt_issue.
        CLEAR t173.
        DATA t174 TYPE REF TO zcl_lnt_issue.
        CLEAR t174.
        DATA(t175) = t3.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        DATA t177 TYPE REF TO zcl_lnt_expression_node.
        DATA(t178) = t135.
        t177 = t178.
        t176 = t177->get_first_token( ).
        DATA(t179) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t180) = VALUE string( ).
        DATA t181 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t181.
        DATA t182 TYPE string.
        DATA(t183) = |no_prefixes|.
        t182 = t183.
        DATA t184 TYPE string.
        DATA(t185) = |No Prefixes|.
        t184 = t185.
        DATA t186 TYPE string.
        DATA(t187) = |Dont use hungarian notation|.
        t186 = t187.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        DATA(t190) = abap_true.
        IF t190 = abap_true.
          DATA(t191) = |\nNote: not prefixing TYPES will require changing the errorNa|.
          t191 = t191 && |mespace in the abaplint configuration,\nallowing all types to|.
          t191 = t191 && | become voided, abaplint will then provide less precise synt|.
          t191 = t191 && |ax errors.\n\nhttps://github.com/SAP/styleguides/blob/main/cle|.
          t191 = t191 && |an-abap/CleanABAP.md#avoid-encodings-esp-hungarian-notation-|.
          t191 = t191 && |and-prefixes\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t191 = t191 && |lean-abap/sub-sections/AvoidEncodings.md|.
          DATA(t192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t192->has = abap_true.
          t192->value = t191.
          t189 = t192.
        ELSE.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t193.
          t189 = t193.
        ENDIF.
        t188 = t189.
        DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t194.
        DATA t195 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t195.
        DATA(t196) = abap_true.
        IF t196 = abap_true.
          DATA t197 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t198 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t199 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t199.
          t198 = t199.
          DATA(t200) = t198.
          DATA(t201) = |SingleFile|.
          t200->load( ).
          APPEND t201 TO t200->items.
          t200->save( ).
          DATA(t202) = t198.
          DATA(t203) = |Styleguide|.
          t202->load( ).
          APPEND t203 TO t202->items.
          t202->save( ).
          DATA(t204) = t198.
          t197 = t204.
          t195 = t197.
        ELSE.
          DATA t205 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t205.
          t195 = t205.
        ENDIF.
        t194 = t195.
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t207.
        DATA(t208) = abap_true.
        IF t208 = abap_true.
          DATA(t209) = |DATA lv_foo TYPE i.|.
          DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t210->has = abap_true.
          t210->value = t209.
          t207 = t210.
        ELSE.
          DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t211.
          t207 = t211.
        ENDIF.
        t206 = t207.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t212.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t213.
        DATA(t214) = abap_true.
        IF t214 = abap_true.
          DATA(t215) = |DATA foo TYPE i.|.
          DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t216->has = abap_true.
          t216->value = t215.
          t213 = t216.
        ELSE.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t217.
          t213 = t217.
        ENDIF.
        t212 = t213.
        DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t219.
        t218 = t219.
        DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t221.
        t220 = t221.
        t181 = NEW zcl_lnt_irule_metadata( i_key = t182 i_title = t184 i_short_description = t186 i_bad_example = t206 i_good_example = t212 i_extended_information = t188 i_tags = t194 i_pragma = t218 i_pseudo_comment = t220 ).
        CREATE OBJECT t181->zlnt_view_ownkeys_b0e8086400eb.
        t181->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t222.
        IF t181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t222 ).
        ENDIF.
        DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t223.
        IF t181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t223 ).
        ENDIF.
        DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t224.
        IF t181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t224 ).
        ENDIF.
        DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t225.
        IF t181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t225 ).
        ENDIF.
        DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t226.
        IF t181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t226 ).
        ENDIF.
        DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t227.
        IF t181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t227 ).
        ENDIF.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t228.
        IF t181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t228 ).
        ENDIF.
        CREATE OBJECT t181->zlnt_json_ownkeys_70e5fd461788.
        t181->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t229) = |key|.
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t229 p1 = t230 ).
        ENDIF.
        DATA(t231) = |title|.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t231 p1 = t232 ).
        ENDIF.
        DATA(t233) = |shortDescription|.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t233 p1 = t234 ).
        ENDIF.
        DATA(t235) = |extendedInformation|.
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t236.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t235 p1 = t236 ).
        ENDIF.
        DATA(t237) = |tags|.
        DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t238.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
        ENDIF.
        DATA(t239) = |badExample|.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t239 p1 = t240 ).
        ENDIF.
        DATA(t241) = |goodExample|.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t241 p1 = t242 ).
        ENDIF.
        t180 = t181->key.
        DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t244) = me->conf.
        t243 = t244->zlnt_view_read_sr_15c06369f827( ).
        DATA t245 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t245.
        t174 = zcl_lnt_issue=>at_token( i_file = t175 i_token = t176 i_message_26cb = t179 i_key = t180 i_severity = t243 i_fix = t245 ).
        t173 = t174.
        DATA(t246) = t4.
        DATA(t247) = t173.
        t246->load( ).
        APPEND t247 TO t246->items.
        t246->save( ).
      ENDIF.
    ENDDO.
    DATA(t248) = t4.
    result = t248.

  ENDMETHOD.

  METHOD check_constants.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t1.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
    t7 = t8->find_all_statements( i_type_9913 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t1.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d427_175d0fe40287.
    t10 = t11->find_all_statements( i_type_9913 = t12 ).
    t6 = t7->concat( p0 = t10 ).
    DATA t13 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t13.
    DATA t14 TYPE REF TO object.
    CLEAR t14.
    DATA(t15) = VALUE i( ).
    DO.
      t6->load( ).
      IF t15 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t6->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = t13.
      DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t19 = t20->find_first_expression( i_type_9913 = t21 ).
      t18 = t19.
      DATA(t22) = VALUE string( ).
      DATA(t23) = VALUE string( ).
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = t18.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t26.
      IF t30 IS INITIAL.
        t29 = abap_true.
      ENDIF.
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t28 = t31.
      ELSE.
        DATA t32 TYPE string.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        DATA(t34) = t26.
        t33 = t34.
        t32 = t33->concat_tokens( ).
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t32.
        t28 = t35.
      ENDIF.
      t25 = t28.
      t24 = t25.
      DATA(t36) = VALUE string( ).
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t24.
      IF t38 IS BOUND.
        IF t38->has = abap_true.
          t37 = xsdbool( strlen( t38->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t37 = abap_true.
        DATA t39 TYPE string.
        DATA(t40) = t24.
        t39 = t40->value.
        t36 = t39.
      ELSE.
        DATA(t41) = ||.
        t36 = t41.
      ENDIF.
      t23 = t36.
      t22 = t23.
      DATA(t42) = VALUE abap_bool( ).
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE abap_bool.
      DATA(t45) = t22.
      DATA(t46) = ||.
      t44 = xsdbool( t45 <> t46 ).
      t43 = t44.
      IF t44 = abap_true.
        DATA t47 TYPE abap_bool.
        DATA(t48) = t18.
        t47 = xsdbool( t48 IS BOUND ).
        t43 = t47.
      ENDIF.
      t42 = t43.
      IF t43 = abap_true.
        DATA t49 TYPE abap_bool.
        DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t51 TYPE string.
        DATA(t52) = t22.
        t51 = t52.
        DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t54) = t51.
        DATA(t55) = t2.
        t53 = t55->match( t54 ).
        t50 = t53.
        t49 = xsdbool( t50 IS BOUND ).
        t42 = t49.
      ENDIF.
      IF t42 = abap_true.
        DATA t56 TYPE REF TO zcl_lnt_issue.
        CLEAR t56.
        DATA t57 TYPE REF TO zcl_lnt_issue.
        CLEAR t57.
        DATA(t58) = t3.
        DATA t59 TYPE REF TO zcl_lnt_abstract_token.
        DATA t60 TYPE REF TO zcl_lnt_expression_node.
        DATA(t61) = t18.
        t60 = t61.
        t59 = t60->get_first_token( ).
        DATA(t62) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t63) = VALUE string( ).
        DATA t64 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t64.
        DATA t65 TYPE string.
        DATA(t66) = |no_prefixes|.
        t65 = t66.
        DATA t67 TYPE string.
        DATA(t68) = |No Prefixes|.
        t67 = t68.
        DATA t69 TYPE string.
        DATA(t70) = |Dont use hungarian notation|.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA(t73) = abap_true.
        IF t73 = abap_true.
          DATA(t74) = |\nNote: not prefixing TYPES will require changing the errorNa|.
          t74 = t74 && |mespace in the abaplint configuration,\nallowing all types to|.
          t74 = t74 && | become voided, abaplint will then provide less precise synt|.
          t74 = t74 && |ax errors.\n\nhttps://github.com/SAP/styleguides/blob/main/cle|.
          t74 = t74 && |an-abap/CleanABAP.md#avoid-encodings-esp-hungarian-notation-|.
          t74 = t74 && |and-prefixes\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t74 = t74 && |lean-abap/sub-sections/AvoidEncodings.md|.
          DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t75->has = abap_true.
          t75->value = t74.
          t72 = t75.
        ELSE.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          t72 = t76.
        ENDIF.
        t71 = t72.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t77.
        DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t82.
          t81 = t82.
          DATA(t83) = t81.
          DATA(t84) = |SingleFile|.
          t83->load( ).
          APPEND t84 TO t83->items.
          t83->save( ).
          DATA(t85) = t81.
          DATA(t86) = |Styleguide|.
          t85->load( ).
          APPEND t86 TO t85->items.
          t85->save( ).
          DATA(t87) = t81.
          t80 = t87.
          t78 = t80.
        ELSE.
          DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t88.
          t78 = t88.
        ENDIF.
        t77 = t78.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        DATA(t91) = abap_true.
        IF t91 = abap_true.
          DATA(t92) = |DATA lv_foo TYPE i.|.
          DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t93->has = abap_true.
          t93->value = t92.
          t90 = t93.
        ELSE.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          t90 = t94.
        ENDIF.
        t89 = t90.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        DATA(t97) = abap_true.
        IF t97 = abap_true.
          DATA(t98) = |DATA foo TYPE i.|.
          DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t99->has = abap_true.
          t99->value = t98.
          t96 = t99.
        ELSE.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          t96 = t100.
        ENDIF.
        t95 = t96.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        t101 = t102.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        t103 = t104.
        t64 = NEW zcl_lnt_irule_metadata( i_key = t65 i_title = t67 i_short_description = t69 i_bad_example = t89 i_good_example = t95 i_extended_information = t71 i_tags = t77 i_pragma = t101 i_pseudo_comment = t103 ).
        CREATE OBJECT t64->zlnt_view_ownkeys_b0e8086400eb.
        t64->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t105 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t106 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t107 ).
        ENDIF.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t108 ).
        ENDIF.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t109 ).
        ENDIF.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t110 ).
        ENDIF.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t111 ).
        ENDIF.
        CREATE OBJECT t64->zlnt_json_ownkeys_70e5fd461788.
        t64->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t112) = |key|.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
        ENDIF.
        DATA(t114) = |title|.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
        ENDIF.
        DATA(t116) = |shortDescription|.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
        ENDIF.
        DATA(t118) = |extendedInformation|.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
        ENDIF.
        DATA(t120) = |tags|.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
        ENDIF.
        DATA(t122) = |badExample|.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
        ENDIF.
        DATA(t124) = |goodExample|.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
        ENDIF.
        t63 = t64->key.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t127) = me->conf.
        t126 = t127->zlnt_view_read_sr_15c06369f827( ).
        DATA t128 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t128.
        t57 = zcl_lnt_issue=>at_token( i_file = t58 i_token = t59 i_message_26cb = t62 i_key = t63 i_severity = t126 i_fix = t128 ).
        t56 = t57.
        DATA(t129) = t4.
        DATA(t130) = t56.
        t129->load( ).
        APPEND t130 TO t129->items.
        t129->save( ).
      ENDIF.
    ENDDO.
    DATA(t131) = t4.
    result = t131.

  ENDMETHOD.

  METHOD check_types.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = t1.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
    t11 = t12->find_all_statements( i_type_9913 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t1.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d665_f295bf63bcfe.
    t14 = t15->find_all_statements( i_type_9913 = t16 ).
    t10 = t11->concat( p0 = t14 ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = t1.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d666_0f34aaf902de.
    t17 = t18->find_all_statements( i_type_9913 = t19 ).
    t9 = t10->concat( p0 = t17 ).
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t21) = t1.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d668_56ce6b8c1453.
    t20 = t21->find_all_statements( i_type_9913 = t22 ).
    t8 = t9->concat( p0 = t20 ).
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t24) = t1.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d669_a69ba8d8f8a6.
    t23 = t24->find_all_statements( i_type_9913 = t25 ).
    t7 = t8->concat( p0 = t23 ).
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = t1.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d663_aa8d5c614796.
    t26 = t27->find_all_statements( i_type_9913 = t28 ).
    t6 = t7->concat( p0 = t26 ).
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    DATA(t31) = VALUE i( ).
    DO.
      t6->load( ).
      IF t31 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t6->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA(t36) = t29.
      DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t35 = t36->find_first_expression( i_type_9913 = t37 ).
      t34 = t35.
      DATA(t38) = VALUE string( ).
      DATA(t39) = VALUE string( ).
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      DATA(t43) = t34.
      t42 = t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = t42.
      IF t46 IS INITIAL.
        t45 = abap_true.
      ENDIF.
      IF t45 = abap_true.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        t44 = t47.
      ELSE.
        DATA t48 TYPE string.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        DATA(t50) = t42.
        t49 = t50.
        t48 = t49->concat_tokens( ).
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t48.
        t44 = t51.
      ENDIF.
      t41 = t44.
      t40 = t41.
      DATA(t52) = VALUE string( ).
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = t40.
      IF t54 IS BOUND.
        IF t54->has = abap_true.
          t53 = xsdbool( strlen( t54->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t53 = abap_true.
        DATA t55 TYPE string.
        DATA(t56) = t40.
        t55 = t56->value.
        t52 = t55.
      ELSE.
        DATA(t57) = ||.
        t52 = t57.
      ENDIF.
      t39 = t52.
      t38 = t39.
      DATA(t58) = VALUE abap_bool( ).
      DATA t59 TYPE abap_bool.
      DATA t60 TYPE abap_bool.
      DATA(t61) = t38.
      DATA(t62) = ||.
      t60 = xsdbool( t61 <> t62 ).
      t59 = t60.
      IF t60 = abap_true.
        DATA t63 TYPE abap_bool.
        DATA(t64) = t34.
        t63 = xsdbool( t64 IS BOUND ).
        t59 = t63.
      ENDIF.
      t58 = t59.
      IF t59 = abap_true.
        DATA t65 TYPE abap_bool.
        DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t67 TYPE string.
        DATA(t68) = t38.
        t67 = t68.
        DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t70) = t67.
        DATA(t71) = t2.
        t69 = t71->match( t70 ).
        t66 = t69.
        t65 = xsdbool( t66 IS BOUND ).
        t58 = t65.
      ENDIF.
      IF t58 = abap_true.
        DATA t72 TYPE REF TO zcl_lnt_issue.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_issue.
        CLEAR t73.
        DATA(t74) = t3.
        DATA t75 TYPE REF TO zcl_lnt_abstract_token.
        DATA t76 TYPE REF TO zcl_lnt_expression_node.
        DATA(t77) = t34.
        t76 = t77.
        t75 = t76->get_first_token( ).
        DATA(t78) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t79) = VALUE string( ).
        DATA t80 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t80.
        DATA t81 TYPE string.
        DATA(t82) = |no_prefixes|.
        t81 = t82.
        DATA t83 TYPE string.
        DATA(t84) = |No Prefixes|.
        t83 = t84.
        DATA t85 TYPE string.
        DATA(t86) = |Dont use hungarian notation|.
        t85 = t86.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA(t89) = abap_true.
        IF t89 = abap_true.
          DATA(t90) = |\nNote: not prefixing TYPES will require changing the errorNa|.
          t90 = t90 && |mespace in the abaplint configuration,\nallowing all types to|.
          t90 = t90 && | become voided, abaplint will then provide less precise synt|.
          t90 = t90 && |ax errors.\n\nhttps://github.com/SAP/styleguides/blob/main/cle|.
          t90 = t90 && |an-abap/CleanABAP.md#avoid-encodings-esp-hungarian-notation-|.
          t90 = t90 && |and-prefixes\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t90 = t90 && |lean-abap/sub-sections/AvoidEncodings.md|.
          DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t91->has = abap_true.
          t91->value = t90.
          t88 = t91.
        ELSE.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          t88 = t92.
        ENDIF.
        t87 = t88.
        DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t93.
        DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t94.
        DATA(t95) = abap_true.
        IF t95 = abap_true.
          DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t98.
          t97 = t98.
          DATA(t99) = t97.
          DATA(t100) = |SingleFile|.
          t99->load( ).
          APPEND t100 TO t99->items.
          t99->save( ).
          DATA(t101) = t97.
          DATA(t102) = |Styleguide|.
          t101->load( ).
          APPEND t102 TO t101->items.
          t101->save( ).
          DATA(t103) = t97.
          t96 = t103.
          t94 = t96.
        ELSE.
          DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t104.
          t94 = t104.
        ENDIF.
        t93 = t94.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA(t107) = abap_true.
        IF t107 = abap_true.
          DATA(t108) = |DATA lv_foo TYPE i.|.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t108.
          t106 = t109.
        ELSE.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t110.
          t106 = t110.
        ENDIF.
        t105 = t106.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t113) = abap_true.
        IF t113 = abap_true.
          DATA(t114) = |DATA foo TYPE i.|.
          DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t115->has = abap_true.
          t115->value = t114.
          t112 = t115.
        ELSE.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          t112 = t116.
        ENDIF.
        t111 = t112.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        t117 = t118.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        t119 = t120.
        t80 = NEW zcl_lnt_irule_metadata( i_key = t81 i_title = t83 i_short_description = t85 i_bad_example = t105 i_good_example = t111 i_extended_information = t87 i_tags = t93 i_pragma = t117 i_pseudo_comment = t119 ).
        CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
        t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t121 ).
        ENDIF.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t122 ).
        ENDIF.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t123 ).
        ENDIF.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t124 ).
        ENDIF.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t125 ).
        ENDIF.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t126 ).
        ENDIF.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t127 ).
        ENDIF.
        CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
        t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t128) = |key|.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
        ENDIF.
        DATA(t130) = |title|.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
        ENDIF.
        DATA(t132) = |shortDescription|.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
        ENDIF.
        DATA(t134) = |extendedInformation|.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
        ENDIF.
        DATA(t136) = |tags|.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
        ENDIF.
        DATA(t138) = |badExample|.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
        ENDIF.
        DATA(t140) = |goodExample|.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
        ENDIF.
        t79 = t80->key.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t143) = me->conf.
        t142 = t143->zlnt_view_read_sr_15c06369f827( ).
        DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t144.
        t73 = zcl_lnt_issue=>at_token( i_file = t74 i_token = t75 i_message_26cb = t78 i_key = t79 i_severity = t142 i_fix = t144 ).
        t72 = t73.
        DATA(t145) = t4.
        DATA(t146) = t72.
        t145->load( ).
        APPEND t146 TO t145->items.
        t145->save( ).
      ENDIF.
    ENDDO.
    DATA(t147) = t4.
    result = t147.

  ENDMETHOD.

  METHOD check_method_parameters.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
    t6 = t7->find_all_statements( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t6->load( ).
      IF t11 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t6->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t15) = t9.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t18.
      t17 = t18.
      DATA(t19) = t17.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
      t19->load( ).
      APPEND t20 TO t19->items.
      t19->save( ).
      DATA(t21) = t17.
      DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t21->load( ).
      APPEND t22 TO t21->items.
      t21->save( ).
      DATA(t23) = t17.
      t16 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      t14 = t15->find_all_expressions_multi( i_type_9913 = t16 i_recursive = t24 ).
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      DATA(t27) = VALUE i( ).
      DO.
        t14->load( ).
        IF t27 >= lines( t14->items ).
          EXIT.
        ENDIF.
        CLEAR t26.
        READ TABLE t14->items INDEX t27 + 1 INTO t26.
        t27 = t27 + 1.
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t28.
        CLEAR t25.
        IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t28 ?= t26.
          DATA t29 TYPE REF TO object.
          t29 = t28->as_ref( ).
          t25 ?= t29.
        ELSE.
          t25 ?= t26.
        ENDIF.
        DATA t30 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t30.
        DATA t31 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t31.
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        DATA(t33) = t25.
        t32 = t33.
        DATA t34 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t34.
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = t32.
        IF t36 IS INITIAL.
          t35 = abap_true.
        ENDIF.
        IF t35 = abap_true.
          DATA t37 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t37.
          t34 = t37.
        ELSE.
          DATA t38 TYPE REF TO zcl_lnt_expression_node.
          DATA(t39) = t32.
          DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
          t38 = t39->find_first_expression( i_type_9913 = t40 ).
          t34 = t38.
        ENDIF.
        t31 = t34.
        t30 = t31.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t45.
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        DATA(t50) = t25.
        t49 = t50.
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t51.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = t49.
        IF t53 IS INITIAL.
          t52 = abap_true.
        ENDIF.
        IF t52 = abap_true.
          DATA t54 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t54.
          t51 = t54.
        ELSE.
          DATA t55 TYPE REF TO zcl_lnt_expression_node.
          DATA(t56) = t49.
          DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
          t55 = t56->find_first_expression( i_type_9913 = t57 ).
          t51 = t55.
        ENDIF.
        t48 = t51.
        t47 = t48.
        DATA t58 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t58.
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = t47.
        IF t60 IS INITIAL.
          t59 = abap_true.
        ENDIF.
        IF t59 = abap_true.
          DATA t61 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t61.
          t58 = t61.
        ELSE.
          DATA t62 TYPE REF TO zcl_lnt_expression_node.
          DATA t63 TYPE REF TO zcl_lnt_expression_node.
          DATA(t64) = t47.
          t63 = t64.
          DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
          t62 = t63->find_first_expression( i_type_9913 = t65 ).
          t58 = t62.
        ENDIF.
        t46 = t58.
        t45 = t46.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = t45.
        IF t68 IS INITIAL.
          t67 = abap_true.
        ENDIF.
        IF t67 = abap_true.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t69.
          t66 = t69.
        ELSE.
          DATA t70 TYPE string.
          DATA t71 TYPE REF TO zcl_lnt_expression_node.
          DATA(t72) = t45.
          t71 = t72.
          t70 = t71->concat_tokens( ).
          DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t73->has = abap_true.
          t73->value = t70.
          t66 = t73.
        ENDIF.
        t44 = t66.
        t43 = t44.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = t43.
        IF t76 IS INITIAL.
          t75 = abap_true.
        ELSEIF t76->has = abap_false.
          t75 = abap_true.
        ENDIF.
        IF t75 = abap_true.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          t74 = t77.
        ELSE.
          DATA t78 TYPE string.
          DATA t79 TYPE string.
          DATA(t80) = t43.
          t79 = t80->value.
          DATA(t81) = strlen( t79 ).
          t78 = t79.
          IF t78 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t78 TO UPPER CASE.
          ELSE.
            t78 = zlnt_runtime_uppe_91169605024d=>full( t78 ).
          ENDIF.
          DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t82->has = abap_true.
          t82->value = t78.
          t74 = t82.
        ENDIF.
        t42 = t74.
        t41 = t42.
        DATA t83 TYPE abap_bool.
        DATA t84 TYPE abap_bool.
        DATA t85 TYPE abap_bool.
        DATA(t86) = CAST zcl_lnt_no_prefixes_conf( me->gt_cn_in_sr_rls_n_prf_ts_n_prf( ) ).
        t85 = t86->zlnt_view_read_sr_c67116829635( ).
        DATA(t87) = abap_true.
        t84 = xsdbool( t85 = t87 ).
        t83 = t84.
        IF t84 = abap_true.
          DATA(t88) = VALUE abap_bool( ).
          DATA(t89) = t41.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t90.
          DATA(t91) = abap_true.
          IF t91 = abap_true.
            DATA(t92) = |ABAP_BOOL|.
            DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t93->has = abap_true.
            t93->value = t92.
            t90 = t93.
          ELSE.
            DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t94.
            t90 = t94.
          ENDIF.
          DATA(t95) = VALUE abap_bool( ).
          DATA(t96) = VALUE abap_bool( ).
          IF t89 IS BOUND.
            t95 = t89->has.
          ENDIF.
          IF t90 IS BOUND.
            t96 = t90->has.
          ENDIF.
          IF t95 = t96.
            IF t95 = abap_false.
              t88 = abap_true.
            ELSEIF t89->value = t90->value.
              t88 = abap_true.
            ENDIF.
          ENDIF.
          t83 = t88.
        ENDIF.
        IF t83 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA t99 TYPE REF TO zcl_lnt_expression_node.
        DATA(t100) = t30.
        t99 = t100.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = t99.
        IF t103 IS INITIAL.
          t102 = abap_true.
        ENDIF.
        IF t102 = abap_true.
          DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t104.
          t101 = t104.
        ELSE.
          DATA t105 TYPE string.
          DATA t106 TYPE REF TO zcl_lnt_expression_node.
          DATA(t107) = t99.
          t106 = t107.
          t105 = t106->concat_tokens( ).
          DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t108->has = abap_true.
          t108->value = t105.
          t101 = t108.
        ENDIF.
        t98 = t101.
        t97 = t98.
        DATA(t109) = VALUE abap_bool( ).
        DATA(t110) = VALUE abap_bool( ).
        DATA t111 TYPE abap_bool.
        DATA t112 TYPE abap_bool.
        DATA(t113) = t30.
        t112 = xsdbool( t113 IS BOUND ).
        t111 = t112.
        IF t112 = abap_true.
          DATA(t114) = VALUE abap_bool( ).
          DATA(t115) = t97.
          IF t115 IS BOUND.
            IF t115->has = abap_true.
              t114 = xsdbool( strlen( t115->value ) > 0 ).
            ENDIF.
          ENDIF.
          t111 = t114.
        ENDIF.
        t110 = t111.
        IF t111 = abap_true.
          DATA t116 TYPE abap_bool.
          DATA t117 TYPE string.
          DATA(t118) = t97.
          t117 = t118->value.
          DATA(t119) = ||.
          t116 = xsdbool( t117 <> t119 ).
          t110 = t116.
        ENDIF.
        t109 = t110.
        IF t110 = abap_true.
          DATA t120 TYPE abap_bool.
          DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t122 TYPE string.
          DATA t123 TYPE string.
          DATA(t124) = t97.
          t123 = t124->value.
          t122 = t123.
          DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t126) = t122.
          DATA(t127) = t2.
          t125 = t127->match( t126 ).
          t121 = t125.
          t120 = xsdbool( t121 IS BOUND ).
          t109 = t120.
        ENDIF.
        IF t109 = abap_true.
          DATA t128 TYPE REF TO zcl_lnt_issue.
          CLEAR t128.
          DATA t129 TYPE REF TO zcl_lnt_issue.
          CLEAR t129.
          DATA(t130) = t3.
          DATA t131 TYPE REF TO zcl_lnt_abstract_token.
          DATA t132 TYPE REF TO zcl_lnt_expression_node.
          DATA(t133) = t30.
          t132 = t133.
          t131 = t132->get_first_token( ).
          DATA(t134) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
          DATA(t135) = VALUE string( ).
          DATA t136 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t136.
          DATA t137 TYPE string.
          DATA(t138) = |no_prefixes|.
          t137 = t138.
          DATA t139 TYPE string.
          DATA(t140) = |No Prefixes|.
          t139 = t140.
          DATA t141 TYPE string.
          DATA(t142) = |Dont use hungarian notation|.
          t141 = t142.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          DATA(t145) = abap_true.
          IF t145 = abap_true.
            DATA(t146) = |\nNote: not prefixing TYPES will require changing the errorNa|.
            t146 = t146 && |mespace in the abaplint configuration,\nallowing all types to|.
            t146 = t146 && | become voided, abaplint will then provide less precise synt|.
            t146 = t146 && |ax errors.\n\nhttps://github.com/SAP/styleguides/blob/main/cle|.
            t146 = t146 && |an-abap/CleanABAP.md#avoid-encodings-esp-hungarian-notation-|.
            t146 = t146 && |and-prefixes\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
            t146 = t146 && |lean-abap/sub-sections/AvoidEncodings.md|.
            DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t147->has = abap_true.
            t147->value = t146.
            t144 = t147.
          ELSE.
            DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t148.
            t144 = t148.
          ENDIF.
          t143 = t144.
          DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t149.
          DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t150.
          DATA(t151) = abap_true.
          IF t151 = abap_true.
            DATA t152 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t154.
            t153 = t154.
            DATA(t155) = t153.
            DATA(t156) = |SingleFile|.
            t155->load( ).
            APPEND t156 TO t155->items.
            t155->save( ).
            DATA(t157) = t153.
            DATA(t158) = |Styleguide|.
            t157->load( ).
            APPEND t158 TO t157->items.
            t157->save( ).
            DATA(t159) = t153.
            t152 = t159.
            t150 = t152.
          ELSE.
            DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t160.
            t150 = t160.
          ENDIF.
          t149 = t150.
          DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t161.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t162.
          DATA(t163) = abap_true.
          IF t163 = abap_true.
            DATA(t164) = |DATA lv_foo TYPE i.|.
            DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t165->has = abap_true.
            t165->value = t164.
            t162 = t165.
          ELSE.
            DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t166.
            t162 = t166.
          ENDIF.
          t161 = t162.
          DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t167.
          DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t168.
          DATA(t169) = abap_true.
          IF t169 = abap_true.
            DATA(t170) = |DATA foo TYPE i.|.
            DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t171->has = abap_true.
            t171->value = t170.
            t168 = t171.
          ELSE.
            DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t172.
            t168 = t172.
          ENDIF.
          t167 = t168.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          t173 = t174.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t176.
          t175 = t176.
          t136 = NEW zcl_lnt_irule_metadata( i_key = t137 i_title = t139 i_short_description = t141 i_bad_example = t161 i_good_example = t167 i_extended_information = t143 i_tags = t149 i_pragma = t173 i_pseudo_comment = t175 ).
          CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
          t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t177 ).
          ENDIF.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t178 ).
          ENDIF.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t179 ).
          ENDIF.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t180 ).
          ENDIF.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t181 ).
          ENDIF.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t182 ).
          ENDIF.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t183 ).
          ENDIF.
          CREATE OBJECT t136->zlnt_json_ownkeys_70e5fd461788.
          t136->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t184) = |key|.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
          ENDIF.
          DATA(t186) = |title|.
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t187.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t186 p1 = t187 ).
          ENDIF.
          DATA(t188) = |shortDescription|.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t189.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
          ENDIF.
          DATA(t190) = |extendedInformation|.
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t191.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
          ENDIF.
          DATA(t192) = |tags|.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t192 p1 = t193 ).
          ENDIF.
          DATA(t194) = |badExample|.
          DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t195.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t194 p1 = t195 ).
          ENDIF.
          DATA(t196) = |goodExample|.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t197.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
          ENDIF.
          t135 = t136->key.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t199) = me->conf.
          t198 = t199->zlnt_view_read_sr_15c06369f827( ).
          DATA t200 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t200.
          t129 = zcl_lnt_issue=>at_token( i_file = t130 i_token = t131 i_message_26cb = t134 i_key = t135 i_severity = t198 i_fix = t200 ).
          t128 = t129.
          DATA(t201) = t4.
          DATA(t202) = t128.
          t201->load( ).
          APPEND t202 TO t201->items.
          t201->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t203) = t4.
    result = t203.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_no_prefixes_conf( me->gt_cn_in_sr_rls_n_prf_ts_n_prf( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_no_prefixes_conf( me->gt_cn_in_sr_rls_n_prf_ts_n_prf( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_no_prefixes_conf.
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
        t1 = NEW zcl_lnt_no_prefixes_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rls_n_prf_ts_n_prf( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rls_n_prf_ts_n_prf( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1623_b446c729d03e.
  ENDMETHOD.
ENDCLASS.
