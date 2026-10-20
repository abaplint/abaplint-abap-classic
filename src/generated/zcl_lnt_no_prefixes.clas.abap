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
    me->conf = NEW zcl_lnt_no_prefixes_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |DATA lv_foo TYPE i.|.
    t26 = t30.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = |DATA foo TYPE i.|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |no_prefixes| i_title = |No Prefixes| i_short_description = |Dont use hungarian notation| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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

  METHOD gt_cn_in_sr_rls_n_prf_ts_n_prf.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rls_n_prf_ts_n_prf.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rls_n_prf_ts_n_prf.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_no_prefixes_conf.
    t4 = CAST zcl_lnt_no_prefixes_conf( me->gt_cn_in_sr_rls_n_prf_ts_n_prf( ) ).
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    t6 = t1->structure.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t20 = t4->zlnt_view_read_sr_4bba148eaed3( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t25 = t20.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = VALUE abap_bool( ).
    IF t25 IS INITIAL.
      t29 = abap_true.
    ELSEIF t25->has = abap_false.
      t29 = abap_true.
    ENDIF.
    t24 = t29.
    t23 = t24.
    IF t24 = abap_false.
      DATA(t33) = t20.
      IF t33->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t23 = xsdbool( t33->value < CONV f( 1 ) ).
    ENDIF.
    IF t23 = abap_true.
      DATA(t38) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t38->has = abap_true.
      t38->value = CONV f( 10 ).
      t20 = t38.
    ENDIF.
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t42 = t4->zlnt_view_read_sr_06cb01c28737( ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = VALUE abap_bool( ).
    IF t42 IS INITIAL.
      t48 = abap_true.
    ELSEIF t42->has = abap_false.
      t48 = abap_true.
    ENDIF.
    t41 = xsdbool( t48 = abap_false ).
    t40 = t41.
    IF t41 = abap_true.
      DATA(t50) = VALUE abap_bool( ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t51 = t4->zlnt_view_read_sr_06cb01c28737( ).
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t56->has = abap_true.
      t56->value = ||.
      t53 = t56.
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
      t62 = t6.
      DATA t64 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t65 TYPE string.
      t65 = t4->zlnt_view_read_sr_06cb01c28737( )->value.
      CREATE OBJECT t64 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t65 flags = |i|.
      t61 = me->check_data( i_top_node = t62 i_regex = t64 i_file = t1 ).
      DATA t70 TYPE REF TO zcl_lnt_issue.
      DATA t71 TYPE REF TO object.
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
        t2->load( ).
        APPEND t70 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t60 = lines( t2->items ).
    ENDIF.
    DATA t80 TYPE f.
    t2->load( ).
    t80 = lines( t2->items ).
    IF t20->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF xsdbool( t80 >= t20->value ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA(t86) = VALUE abap_bool( ).
    DATA(t87) = VALUE abap_bool( ).
    DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t88 = t4->zlnt_view_read_sr_6379ec097892( ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = VALUE abap_bool( ).
    IF t88 IS INITIAL.
      t94 = abap_true.
    ELSEIF t88->has = abap_false.
      t94 = abap_true.
    ENDIF.
    t87 = xsdbool( t94 = abap_false ).
    t86 = t87.
    IF t87 = abap_true.
      DATA(t96) = VALUE abap_bool( ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t97 = t4->zlnt_view_read_sr_6379ec097892( ).
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t102->has = abap_true.
      t102->value = ||.
      t99 = t102.
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
      t108 = t6.
      DATA t110 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t111 TYPE string.
      t111 = t4->zlnt_view_read_sr_6379ec097892( )->value.
      CREATE OBJECT t110 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t111 flags = |i|.
      t107 = me->check_statics( i_top_node = t108 i_regex = t110 i_file = t1 ).
      DATA t116 TYPE REF TO zcl_lnt_issue.
      DATA t117 TYPE REF TO object.
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
        t2->load( ).
        APPEND t116 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t106 = lines( t2->items ).
    ENDIF.
    DATA t126 TYPE f.
    t2->load( ).
    t126 = lines( t2->items ).
    IF t20->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF xsdbool( t126 >= t20->value ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA(t132) = VALUE abap_bool( ).
    DATA(t133) = VALUE abap_bool( ).
    DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t134 = t4->zlnt_view_read_sr_a1ec6091a9fa( ).
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t140) = VALUE abap_bool( ).
    IF t134 IS INITIAL.
      t140 = abap_true.
    ELSEIF t134->has = abap_false.
      t140 = abap_true.
    ENDIF.
    t133 = xsdbool( t140 = abap_false ).
    t132 = t133.
    IF t133 = abap_true.
      DATA(t142) = VALUE abap_bool( ).
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t143 = t4->zlnt_view_read_sr_a1ec6091a9fa( ).
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t148->has = abap_true.
      t148->value = ||.
      t145 = t148.
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
      t154 = t6.
      DATA t156 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t157 TYPE string.
      t157 = t4->zlnt_view_read_sr_a1ec6091a9fa( )->value.
      CREATE OBJECT t156 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t157 flags = |i|.
      t153 = me->check_field_symbols( i_top_node = t154 i_regex = t156 i_file = t1 ).
      DATA t162 TYPE REF TO zcl_lnt_issue.
      DATA t163 TYPE REF TO object.
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
        t2->load( ).
        APPEND t162 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t152 = lines( t2->items ).
    ENDIF.
    DATA t172 TYPE f.
    t2->load( ).
    t172 = lines( t2->items ).
    IF t20->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF xsdbool( t172 >= t20->value ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA(t178) = VALUE abap_bool( ).
    DATA(t179) = VALUE abap_bool( ).
    DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t180 = t4->zlnt_view_read_sr_82452d880166( ).
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t186) = VALUE abap_bool( ).
    IF t180 IS INITIAL.
      t186 = abap_true.
    ELSEIF t180->has = abap_false.
      t186 = abap_true.
    ENDIF.
    t179 = xsdbool( t186 = abap_false ).
    t178 = t179.
    IF t179 = abap_true.
      DATA(t188) = VALUE abap_bool( ).
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t189 = t4->zlnt_view_read_sr_82452d880166( ).
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t194->has = abap_true.
      t194->value = ||.
      t191 = t194.
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
      t200 = t6.
      DATA t202 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t203 TYPE string.
      t203 = t4->zlnt_view_read_sr_82452d880166( )->value.
      CREATE OBJECT t202 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t203 flags = |i|.
      t199 = me->check_constants( i_top_node = t200 i_regex = t202 i_file = t1 ).
      DATA t208 TYPE REF TO zcl_lnt_issue.
      DATA t209 TYPE REF TO object.
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
        t2->load( ).
        APPEND t208 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t198 = lines( t2->items ).
    ENDIF.
    DATA t218 TYPE f.
    t2->load( ).
    t218 = lines( t2->items ).
    IF t20->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF xsdbool( t218 >= t20->value ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA(t224) = VALUE abap_bool( ).
    DATA(t225) = VALUE abap_bool( ).
    DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t226 = t4->zlnt_view_read_sr_cf93ad140284( ).
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t232) = VALUE abap_bool( ).
    IF t226 IS INITIAL.
      t232 = abap_true.
    ELSEIF t226->has = abap_false.
      t232 = abap_true.
    ENDIF.
    t225 = xsdbool( t232 = abap_false ).
    t224 = t225.
    IF t225 = abap_true.
      DATA(t234) = VALUE abap_bool( ).
      DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t235 = t4->zlnt_view_read_sr_cf93ad140284( ).
      DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t240->has = abap_true.
      t240->value = ||.
      t237 = t240.
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
      t246 = t6.
      DATA t248 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t249 TYPE string.
      t249 = t4->zlnt_view_read_sr_cf93ad140284( )->value.
      CREATE OBJECT t248 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t249 flags = |i|.
      t245 = me->check_types( i_top_node = t246 i_regex = t248 i_file = t1 ).
      DATA t254 TYPE REF TO zcl_lnt_issue.
      DATA t255 TYPE REF TO object.
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
        t2->load( ).
        APPEND t254 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t244 = lines( t2->items ).
    ENDIF.
    DATA t264 TYPE f.
    t2->load( ).
    t264 = lines( t2->items ).
    IF t20->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF xsdbool( t264 >= t20->value ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA(t270) = VALUE abap_bool( ).
    DATA(t271) = VALUE abap_bool( ).
    DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t272 = t4->zlnt_view_read_sr_ecc5144d9e37( ).
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t278) = VALUE abap_bool( ).
    IF t272 IS INITIAL.
      t278 = abap_true.
    ELSEIF t272->has = abap_false.
      t278 = abap_true.
    ENDIF.
    t271 = xsdbool( t278 = abap_false ).
    t270 = t271.
    IF t271 = abap_true.
      DATA(t280) = VALUE abap_bool( ).
      DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t281 = t4->zlnt_view_read_sr_ecc5144d9e37( ).
      DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t286) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t286->has = abap_true.
      t286->value = ||.
      t283 = t286.
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
      t292 = t6.
      DATA t294 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t295 TYPE string.
      t295 = t4->zlnt_view_read_sr_ecc5144d9e37( )->value.
      CREATE OBJECT t294 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t295 flags = |i|.
      t291 = me->check_method_parameters( i_top_node = t292 i_regex = t294 i_file = t1 ).
      DATA t300 TYPE REF TO zcl_lnt_issue.
      DATA t301 TYPE REF TO object.
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
        t2->load( ).
        APPEND t300 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t290 = lines( t2->items ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD check_data.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d437_1e504b4be960.
    t9 = t1->find_all_statements( i_type_9913 = t11 ).
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c.
    t8 = t9->concat( p0 = t1->find_all_statements( i_type_9913 = t14 ) ).
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d408_ad3db4ea5b7e.
    t7 = t8->concat( p0 = t1->find_all_statements( i_type_9913 = t17 ) ).
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d407_dfd1462d93da.
    t6 = t7->concat( p0 = t1->find_all_statements( i_type_9913 = t20 ) ).
    DATA t21 TYPE REF TO zcl_lnt_statement_node.
    DATA t22 TYPE REF TO object.
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
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t28 = t21->find_first_expression( i_type_9913 = t31 ).
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t32.
      IF xsdbool( t28 IS BOUND ) = abap_true.
        t32 = t28.
      ELSE.
        DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
        t32 = t21->find_first_expression( i_type_9913 = t38 ).
      ENDIF.
      t26 = t32.
      DATA(t39) = VALUE string( ).
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      t43 = t26.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      IF xsdbool( t43 IS INITIAL ) = abap_true.
        CLEAR t45.
      ELSE.
        DATA t49 TYPE string.
        t49 = t43->concat_tokens( ).
        DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t52->has = abap_true.
        t52->value = t49.
        t45 = t52.
      ENDIF.
      t41 = t45.
      DATA(t53) = VALUE string( ).
      DATA(t54) = VALUE abap_bool( ).
      IF t41 IS BOUND.
        IF t41->has = abap_true.
          t54 = xsdbool( strlen( t41->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t54 = abap_true.
        t53 = t41->value.
      ELSE.
        t53 = ||.
      ENDIF.
      t39 = t53.
      DATA(t59) = VALUE abap_bool( ).
      DATA t60 TYPE abap_bool.
      DATA t61 TYPE abap_bool.
      t61 = xsdbool( t39 <> || ).
      t60 = t61.
      IF t61 = abap_true.
        t60 = xsdbool( t26 IS BOUND ).
      ENDIF.
      t59 = t60.
      IF t60 = abap_true.
        DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t67 = t2->match( t39 ).
        t59 = xsdbool( t67 IS BOUND ).
      ENDIF.
      IF t59 = abap_true.
        DATA t74 TYPE REF TO zcl_lnt_issue.
        CLEAR t74.
        DATA t76 TYPE REF TO zcl_lnt_abstract_token.
        t76 = t26->get_first_token( ).
        DATA(t79) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t80) = VALUE string( ).
        DATA t81 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
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
        t88 = t92.
        DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t94.
        DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t98.
        t98->load( ).
        APPEND |SingleFile| TO t98->items.
        t98->save( ).
        t98->load( ).
        APPEND |Styleguide| TO t98->items.
        t98->save( ).
        t94 = t98.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t110->has = abap_true.
        t110->value = |DATA lv_foo TYPE i.|.
        t106 = t110.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t116->has = abap_true.
        t116->value = |DATA foo TYPE i.|.
        t112 = t116.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        t81 = NEW zcl_lnt_irule_metadata( i_key = |no_prefixes| i_title = |No Prefixes| i_short_description = |Dont use hungarian notation| i_bad_example = t106 i_good_example = t112 i_extended_information = t88 i_tags = t94 i_pragma = t118 i_pseudo_comment = t120 ).
        CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
        t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t122 ).
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
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t130 ).
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t132 ).
        ENDIF.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t134 ).
        ENDIF.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t136 ).
        ENDIF.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t138 ).
        ENDIF.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t140 ).
        ENDIF.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t142 ).
        ENDIF.
        t80 = t81->key.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t143 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t145 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t145.
        t74 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t76 i_message_26cb = t79 i_key = t80 i_severity = t143 i_fix = t145 ).
        t4->load( ).
        APPEND t74 TO t4->items.
        t4->save( ).
      ENDIF.
    ENDDO.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
    t148 = t1->find_all_expressions( i_type_9913 = t150 ).
    DATA t151 TYPE REF TO zcl_lnt_expression_node.
    DATA t152 TYPE REF TO object.
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
      DATA(t159) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
      t156 = t151->find_first_expression( i_type_9913 = t159 ).
      DATA(t160) = VALUE string( ).
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t162.
      DATA t164 TYPE REF TO zcl_lnt_expression_node.
      t164 = t156.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t166.
      IF xsdbool( t164 IS INITIAL ) = abap_true.
        CLEAR t166.
      ELSE.
        DATA t170 TYPE string.
        t170 = t164->concat_tokens( ).
        DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t173->has = abap_true.
        t173->value = t170.
        t166 = t173.
      ENDIF.
      t162 = t166.
      DATA(t174) = VALUE string( ).
      DATA(t175) = VALUE abap_bool( ).
      IF t162 IS BOUND.
        IF t162->has = abap_true.
          t175 = xsdbool( strlen( t162->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t175 = abap_true.
        t174 = t162->value.
      ELSE.
        t174 = ||.
      ENDIF.
      t160 = t174.
      DATA(t180) = VALUE abap_bool( ).
      DATA t181 TYPE abap_bool.
      DATA t182 TYPE abap_bool.
      t182 = xsdbool( t160 <> || ).
      t181 = t182.
      IF t182 = abap_true.
        t181 = xsdbool( t156 IS BOUND ).
      ENDIF.
      t180 = t181.
      IF t181 = abap_true.
        DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t188 = t2->match( t160 ).
        t180 = xsdbool( t188 IS BOUND ).
      ENDIF.
      IF t180 = abap_true.
        DATA t195 TYPE REF TO zcl_lnt_issue.
        CLEAR t195.
        DATA t197 TYPE REF TO zcl_lnt_abstract_token.
        t197 = t156->get_first_token( ).
        DATA(t200) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t201) = VALUE string( ).
        DATA t202 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t209.
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
        t209 = t213.
        DATA t215 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t215.
        DATA t219 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t219.
        t219->load( ).
        APPEND |SingleFile| TO t219->items.
        t219->save( ).
        t219->load( ).
        APPEND |Styleguide| TO t219->items.
        t219->save( ).
        t215 = t219.
        DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t227.
        DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t231->has = abap_true.
        t231->value = |DATA lv_foo TYPE i.|.
        t227 = t231.
        DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t233.
        DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t237->has = abap_true.
        t237->value = |DATA foo TYPE i.|.
        t233 = t237.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t239.
        DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t241.
        t202 = NEW zcl_lnt_irule_metadata( i_key = |no_prefixes| i_title = |No Prefixes| i_short_description = |Dont use hungarian notation| i_bad_example = t227 i_good_example = t233 i_extended_information = t209 i_tags = t215 i_pragma = t239 i_pseudo_comment = t241 ).
        CREATE OBJECT t202->zlnt_view_ownkeys_b0e8086400eb.
        t202->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t243 ).
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
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t251.
        t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t251 ).
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t253.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t253 ).
        ENDIF.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t255.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t255 ).
        ENDIF.
        DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t257.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t257 ).
        ENDIF.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t259.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t259 ).
        ENDIF.
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t261.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t261 ).
        ENDIF.
        DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t263.
        IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t263 ).
        ENDIF.
        t201 = t202->key.
        DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t264 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t266 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t266.
        t195 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t197 i_message_26cb = t200 i_key = t201 i_severity = t264 i_fix = t266 ).
        t4->load( ).
        APPEND t195 TO t4->items.
        t4->save( ).
      ENDIF.
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD check_statics.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d641_00cf48ea9524.
    t7 = t1->find_all_statements( i_type_9913 = t9 ).
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d642_c7115fecf92d.
    t6 = t7->concat( p0 = t1->find_all_statements( i_type_9913 = t12 ) ).
    DATA t13 TYPE REF TO zcl_lnt_statement_node.
    DATA t14 TYPE REF TO object.
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
      DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t18 = t13->find_first_expression( i_type_9913 = t21 ).
      DATA(t22) = VALUE string( ).
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      t26 = t18.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      IF xsdbool( t26 IS INITIAL ) = abap_true.
        CLEAR t28.
      ELSE.
        DATA t32 TYPE string.
        t32 = t26->concat_tokens( ).
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t32.
        t28 = t35.
      ENDIF.
      t24 = t28.
      DATA(t36) = VALUE string( ).
      DATA(t37) = VALUE abap_bool( ).
      IF t24 IS BOUND.
        IF t24->has = abap_true.
          t37 = xsdbool( strlen( t24->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t37 = abap_true.
        t36 = t24->value.
      ELSE.
        t36 = ||.
      ENDIF.
      t22 = t36.
      DATA(t42) = VALUE abap_bool( ).
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE abap_bool.
      t44 = xsdbool( t22 <> || ).
      t43 = t44.
      IF t44 = abap_true.
        t43 = xsdbool( t18 IS BOUND ).
      ENDIF.
      t42 = t43.
      IF t43 = abap_true.
        DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t50 = t2->match( t22 ).
        t42 = xsdbool( t50 IS BOUND ).
      ENDIF.
      IF t42 = abap_true.
        DATA t57 TYPE REF TO zcl_lnt_issue.
        CLEAR t57.
        DATA t59 TYPE REF TO zcl_lnt_abstract_token.
        t59 = t18->get_first_token( ).
        DATA(t62) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t63) = VALUE string( ).
        DATA t64 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
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
        t71 = t75.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t77.
        DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t81.
        t81->load( ).
        APPEND |SingleFile| TO t81->items.
        t81->save( ).
        t81->load( ).
        APPEND |Styleguide| TO t81->items.
        t81->save( ).
        t77 = t81.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = |DATA lv_foo TYPE i.|.
        t89 = t93.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t99->has = abap_true.
        t99->value = |DATA foo TYPE i.|.
        t95 = t99.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t103.
        t64 = NEW zcl_lnt_irule_metadata( i_key = |no_prefixes| i_title = |No Prefixes| i_short_description = |Dont use hungarian notation| i_bad_example = t89 i_good_example = t95 i_extended_information = t71 i_tags = t77 i_pragma = t101 i_pseudo_comment = t103 ).
        CREATE OBJECT t64->zlnt_view_ownkeys_b0e8086400eb.
        t64->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t105 ).
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
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t113 ).
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t115 ).
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t117 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t119 ).
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t121 ).
        ENDIF.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t123 ).
        ENDIF.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t125 ).
        ENDIF.
        t63 = t64->key.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t126 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t128 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t128.
        t57 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t59 i_message_26cb = t62 i_key = t63 i_severity = t126 i_fix = t128 ).
        t4->load( ).
        APPEND t57 TO t4->items.
        t4->save( ).
      ENDIF.
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD check_field_symbols.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d498_bacf37b32951.
    t6 = t1->find_all_statements( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
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
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
      t14 = t9->find_first_expression( i_type_9913 = t17 ).
      DATA(t18) = VALUE string( ).
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      t22 = t14.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      IF xsdbool( t22 IS INITIAL ) = abap_true.
        CLEAR t24.
      ELSE.
        DATA t28 TYPE string.
        t28 = t22->concat_tokens( ).
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t28.
        t24 = t31.
      ENDIF.
      t20 = t24.
      DATA(t32) = VALUE string( ).
      DATA(t33) = VALUE abap_bool( ).
      IF t20 IS BOUND.
        IF t20->has = abap_true.
          t33 = xsdbool( strlen( t20->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t33 = abap_true.
        t32 = t20->value.
      ELSE.
        t32 = ||.
      ENDIF.
      t18 = t32.
      DATA(t38) = VALUE abap_bool( ).
      DATA t39 TYPE abap_bool.
      DATA t40 TYPE abap_bool.
      t40 = xsdbool( t18 <> || ).
      t39 = t40.
      IF t40 = abap_true.
        t39 = xsdbool( t14 IS BOUND ).
      ENDIF.
      t38 = t39.
      IF t39 = abap_true.
        DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t46 = t2->match( t18 ).
        t38 = xsdbool( t46 IS BOUND ).
      ENDIF.
      IF t38 = abap_true.
        DATA t53 TYPE REF TO zcl_lnt_issue.
        CLEAR t53.
        DATA t55 TYPE REF TO zcl_lnt_abstract_token.
        t55 = t14->get_first_token( ).
        DATA(t58) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t59) = VALUE string( ).
        DATA t60 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
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
        t67 = t71.
        DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t73.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t77.
        t77->load( ).
        APPEND |SingleFile| TO t77->items.
        t77->save( ).
        t77->load( ).
        APPEND |Styleguide| TO t77->items.
        t77->save( ).
        t73 = t77.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t89->has = abap_true.
        t89->value = |DATA lv_foo TYPE i.|.
        t85 = t89.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t95->has = abap_true.
        t95->value = |DATA foo TYPE i.|.
        t91 = t95.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        t60 = NEW zcl_lnt_irule_metadata( i_key = |no_prefixes| i_title = |No Prefixes| i_short_description = |Dont use hungarian notation| i_bad_example = t85 i_good_example = t91 i_extended_information = t67 i_tags = t73 i_pragma = t97 i_pseudo_comment = t99 ).
        CREATE OBJECT t60->zlnt_view_ownkeys_b0e8086400eb.
        t60->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t101 ).
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
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t109 ).
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t111 ).
        ENDIF.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t113 ).
        ENDIF.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t115 ).
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t117 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t119 ).
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t121 ).
        ENDIF.
        t59 = t60->key.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t122 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t124 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t124.
        t53 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t55 i_message_26cb = t58 i_key = t59 i_severity = t122 i_fix = t124 ).
        t4->load( ).
        APPEND t53 TO t4->items.
        t4->save( ).
      ENDIF.
    ENDDO.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a.
    t127 = t1->find_all_expressions( i_type_9913 = t129 ).
    DATA t130 TYPE REF TO zcl_lnt_expression_node.
    DATA t131 TYPE REF TO object.
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
      DATA(t138) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
      t135 = t130->find_first_expression( i_type_9913 = t138 ).
      DATA(t139) = VALUE string( ).
      DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t141.
      DATA t143 TYPE REF TO zcl_lnt_expression_node.
      t143 = t135.
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t145.
      IF xsdbool( t143 IS INITIAL ) = abap_true.
        CLEAR t145.
      ELSE.
        DATA t149 TYPE string.
        t149 = t143->concat_tokens( ).
        DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t152->has = abap_true.
        t152->value = t149.
        t145 = t152.
      ENDIF.
      t141 = t145.
      DATA(t153) = VALUE string( ).
      DATA(t154) = VALUE abap_bool( ).
      IF t141 IS BOUND.
        IF t141->has = abap_true.
          t154 = xsdbool( strlen( t141->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t154 = abap_true.
        t153 = t141->value.
      ELSE.
        t153 = ||.
      ENDIF.
      t139 = t153.
      DATA(t159) = VALUE abap_bool( ).
      DATA t160 TYPE abap_bool.
      DATA t161 TYPE abap_bool.
      t161 = xsdbool( t139 <> || ).
      t160 = t161.
      IF t161 = abap_true.
        t160 = xsdbool( t135 IS BOUND ).
      ENDIF.
      t159 = t160.
      IF t160 = abap_true.
        DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t167 = t2->match( t139 ).
        t159 = xsdbool( t167 IS BOUND ).
      ENDIF.
      IF t159 = abap_true.
        DATA t174 TYPE REF TO zcl_lnt_issue.
        CLEAR t174.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        t176 = t135->get_first_token( ).
        DATA(t179) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t180) = VALUE string( ).
        DATA t181 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
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
        t188 = t192.
        DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t194.
        DATA t198 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t198.
        t198->load( ).
        APPEND |SingleFile| TO t198->items.
        t198->save( ).
        t198->load( ).
        APPEND |Styleguide| TO t198->items.
        t198->save( ).
        t194 = t198.
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t210->has = abap_true.
        t210->value = |DATA lv_foo TYPE i.|.
        t206 = t210.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t212.
        DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t216->has = abap_true.
        t216->value = |DATA foo TYPE i.|.
        t212 = t216.
        DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t218.
        DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t220.
        t181 = NEW zcl_lnt_irule_metadata( i_key = |no_prefixes| i_title = |No Prefixes| i_short_description = |Dont use hungarian notation| i_bad_example = t206 i_good_example = t212 i_extended_information = t188 i_tags = t194 i_pragma = t218 i_pseudo_comment = t220 ).
        CREATE OBJECT t181->zlnt_view_ownkeys_b0e8086400eb.
        t181->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t222.
        t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t222 ).
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
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t230 ).
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t232 ).
        ENDIF.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t234 ).
        ENDIF.
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t236.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t236 ).
        ENDIF.
        DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t238.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t238 ).
        ENDIF.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t240 ).
        ENDIF.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t242 ).
        ENDIF.
        t180 = t181->key.
        DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t243 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t245 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t245.
        t174 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t176 i_message_26cb = t179 i_key = t180 i_severity = t243 i_fix = t245 ).
        t4->load( ).
        APPEND t174 TO t4->items.
        t4->save( ).
      ENDIF.
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD check_constants.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
    t7 = t1->find_all_statements( i_type_9913 = t9 ).
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d427_175d0fe40287.
    t6 = t7->concat( p0 = t1->find_all_statements( i_type_9913 = t12 ) ).
    DATA t13 TYPE REF TO zcl_lnt_statement_node.
    DATA t14 TYPE REF TO object.
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
      DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t18 = t13->find_first_expression( i_type_9913 = t21 ).
      DATA(t22) = VALUE string( ).
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      t26 = t18.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      IF xsdbool( t26 IS INITIAL ) = abap_true.
        CLEAR t28.
      ELSE.
        DATA t32 TYPE string.
        t32 = t26->concat_tokens( ).
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t32.
        t28 = t35.
      ENDIF.
      t24 = t28.
      DATA(t36) = VALUE string( ).
      DATA(t37) = VALUE abap_bool( ).
      IF t24 IS BOUND.
        IF t24->has = abap_true.
          t37 = xsdbool( strlen( t24->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t37 = abap_true.
        t36 = t24->value.
      ELSE.
        t36 = ||.
      ENDIF.
      t22 = t36.
      DATA(t42) = VALUE abap_bool( ).
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE abap_bool.
      t44 = xsdbool( t22 <> || ).
      t43 = t44.
      IF t44 = abap_true.
        t43 = xsdbool( t18 IS BOUND ).
      ENDIF.
      t42 = t43.
      IF t43 = abap_true.
        DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t50 = t2->match( t22 ).
        t42 = xsdbool( t50 IS BOUND ).
      ENDIF.
      IF t42 = abap_true.
        DATA t57 TYPE REF TO zcl_lnt_issue.
        CLEAR t57.
        DATA t59 TYPE REF TO zcl_lnt_abstract_token.
        t59 = t18->get_first_token( ).
        DATA(t62) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t63) = VALUE string( ).
        DATA t64 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
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
        t71 = t75.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t77.
        DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t81.
        t81->load( ).
        APPEND |SingleFile| TO t81->items.
        t81->save( ).
        t81->load( ).
        APPEND |Styleguide| TO t81->items.
        t81->save( ).
        t77 = t81.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = |DATA lv_foo TYPE i.|.
        t89 = t93.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t99->has = abap_true.
        t99->value = |DATA foo TYPE i.|.
        t95 = t99.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t103.
        t64 = NEW zcl_lnt_irule_metadata( i_key = |no_prefixes| i_title = |No Prefixes| i_short_description = |Dont use hungarian notation| i_bad_example = t89 i_good_example = t95 i_extended_information = t71 i_tags = t77 i_pragma = t101 i_pseudo_comment = t103 ).
        CREATE OBJECT t64->zlnt_view_ownkeys_b0e8086400eb.
        t64->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t105 ).
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
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t113 ).
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t115 ).
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t117 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t119 ).
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t121 ).
        ENDIF.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t123 ).
        ENDIF.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t125 ).
        ENDIF.
        t63 = t64->key.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t126 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t128 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t128.
        t57 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t59 i_message_26cb = t62 i_key = t63 i_severity = t126 i_fix = t128 ).
        t4->load( ).
        APPEND t57 TO t4->items.
        t4->save( ).
      ENDIF.
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD check_types.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
    t11 = t1->find_all_statements( i_type_9913 = t13 ).
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d665_f295bf63bcfe.
    t10 = t11->concat( p0 = t1->find_all_statements( i_type_9913 = t16 ) ).
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d666_0f34aaf902de.
    t9 = t10->concat( p0 = t1->find_all_statements( i_type_9913 = t19 ) ).
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d668_56ce6b8c1453.
    t8 = t9->concat( p0 = t1->find_all_statements( i_type_9913 = t22 ) ).
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d669_a69ba8d8f8a6.
    t7 = t8->concat( p0 = t1->find_all_statements( i_type_9913 = t25 ) ).
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d663_aa8d5c614796.
    t6 = t7->concat( p0 = t1->find_all_statements( i_type_9913 = t28 ) ).
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    DATA t30 TYPE REF TO object.
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
      DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t34 = t29->find_first_expression( i_type_9913 = t37 ).
      DATA(t38) = VALUE string( ).
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      t42 = t34.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      IF xsdbool( t42 IS INITIAL ) = abap_true.
        CLEAR t44.
      ELSE.
        DATA t48 TYPE string.
        t48 = t42->concat_tokens( ).
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t48.
        t44 = t51.
      ENDIF.
      t40 = t44.
      DATA(t52) = VALUE string( ).
      DATA(t53) = VALUE abap_bool( ).
      IF t40 IS BOUND.
        IF t40->has = abap_true.
          t53 = xsdbool( strlen( t40->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t53 = abap_true.
        t52 = t40->value.
      ELSE.
        t52 = ||.
      ENDIF.
      t38 = t52.
      DATA(t58) = VALUE abap_bool( ).
      DATA t59 TYPE abap_bool.
      DATA t60 TYPE abap_bool.
      t60 = xsdbool( t38 <> || ).
      t59 = t60.
      IF t60 = abap_true.
        t59 = xsdbool( t34 IS BOUND ).
      ENDIF.
      t58 = t59.
      IF t59 = abap_true.
        DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t66 = t2->match( t38 ).
        t58 = xsdbool( t66 IS BOUND ).
      ENDIF.
      IF t58 = abap_true.
        DATA t73 TYPE REF TO zcl_lnt_issue.
        CLEAR t73.
        DATA t75 TYPE REF TO zcl_lnt_abstract_token.
        t75 = t34->get_first_token( ).
        DATA(t78) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
        DATA(t79) = VALUE string( ).
        DATA t80 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
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
        t87 = t91.
        DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t93.
        DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t97.
        t97->load( ).
        APPEND |SingleFile| TO t97->items.
        t97->save( ).
        t97->load( ).
        APPEND |Styleguide| TO t97->items.
        t97->save( ).
        t93 = t97.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t109->has = abap_true.
        t109->value = |DATA lv_foo TYPE i.|.
        t105 = t109.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t115->has = abap_true.
        t115->value = |DATA foo TYPE i.|.
        t111 = t115.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        t80 = NEW zcl_lnt_irule_metadata( i_key = |no_prefixes| i_title = |No Prefixes| i_short_description = |Dont use hungarian notation| i_bad_example = t105 i_good_example = t111 i_extended_information = t87 i_tags = t93 i_pragma = t117 i_pseudo_comment = t119 ).
        CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
        t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t121 ).
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
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t129 ).
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t131 ).
        ENDIF.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t133 ).
        ENDIF.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t135 ).
        ENDIF.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t137 ).
        ENDIF.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t139 ).
        ENDIF.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t141 ).
        ENDIF.
        t79 = t80->key.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t142 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t144.
        t73 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t75 i_message_26cb = t78 i_key = t79 i_severity = t142 i_fix = t144 ).
        t4->load( ).
        APPEND t73 TO t4->items.
        t4->save( ).
      ENDIF.
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD check_method_parameters.
    DATA(t1) = i_top_node.
    DATA(t2) = i_regex.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
    t6 = t1->find_all_statements( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
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
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
      t17->load( ).
      APPEND t20 TO t17->items.
      t17->save( ).
      DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t17->load( ).
      APPEND t22 TO t17->items.
      t17->save( ).
      t16 = t17.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      t14 = t9->find_all_expressions_multi( i_type_9913 = t16 i_recursive = t24 ).
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
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        t32 = t25.
        DATA t34 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t34.
        IF xsdbool( t32 IS INITIAL ) = abap_true.
          CLEAR t34.
        ELSE.
          DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
          t34 = t32->find_first_expression( i_type_9913 = t40 ).
        ENDIF.
        t30 = t34.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t45.
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t47.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        t49 = t25.
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t51.
        IF xsdbool( t49 IS INITIAL ) = abap_true.
          CLEAR t51.
        ELSE.
          DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
          t51 = t49->find_first_expression( i_type_9913 = t57 ).
        ENDIF.
        t47 = t51.
        DATA t58 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t58.
        IF xsdbool( t47 IS INITIAL ) = abap_true.
          CLEAR t58.
        ELSE.
          DATA t63 TYPE REF TO zcl_lnt_expression_node.
          t63 = t47.
          DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
          t58 = t63->find_first_expression( i_type_9913 = t65 ).
        ENDIF.
        t45 = t58.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        IF xsdbool( t45 IS INITIAL ) = abap_true.
          CLEAR t66.
        ELSE.
          DATA t70 TYPE string.
          t70 = t45->concat_tokens( ).
          DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t73->has = abap_true.
          t73->value = t70.
          t66 = t73.
        ENDIF.
        t43 = t66.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA(t75) = VALUE abap_bool( ).
        IF t43 IS INITIAL.
          t75 = abap_true.
        ELSEIF t43->has = abap_false.
          t75 = abap_true.
        ENDIF.
        IF t75 = abap_true.
          CLEAR t74.
        ELSE.
          DATA t78 TYPE string.
          DATA t79 TYPE string.
          t79 = t43->value.
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
        t41 = t74.
        DATA t83 TYPE abap_bool.
        DATA t84 TYPE abap_bool.
        DATA(t86) = CAST zcl_lnt_no_prefixes_conf( me->gt_cn_in_sr_rls_n_prf_ts_n_prf( ) ).
        t84 = xsdbool( t86->zlnt_view_read_sr_c67116829635( ) = abap_true ).
        t83 = t84.
        IF t84 = abap_true.
          DATA(t88) = VALUE abap_bool( ).
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t93->has = abap_true.
          t93->value = |ABAP_BOOL|.
          t90 = t93.
          DATA(t95) = VALUE abap_bool( ).
          DATA(t96) = VALUE abap_bool( ).
          IF t41 IS BOUND.
            t95 = t41->has.
          ENDIF.
          IF t90 IS BOUND.
            t96 = t90->has.
          ENDIF.
          IF t95 = t96.
            IF t95 = abap_false.
              t88 = abap_true.
            ELSEIF t41->value = t90->value.
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
        DATA t99 TYPE REF TO zcl_lnt_expression_node.
        t99 = t30.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        IF xsdbool( t99 IS INITIAL ) = abap_true.
          CLEAR t101.
        ELSE.
          DATA t105 TYPE string.
          t105 = t99->concat_tokens( ).
          DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t108->has = abap_true.
          t108->value = t105.
          t101 = t108.
        ENDIF.
        t97 = t101.
        DATA(t109) = VALUE abap_bool( ).
        DATA(t110) = VALUE abap_bool( ).
        DATA t111 TYPE abap_bool.
        DATA t112 TYPE abap_bool.
        t112 = xsdbool( t30 IS BOUND ).
        t111 = t112.
        IF t112 = abap_true.
          DATA(t114) = VALUE abap_bool( ).
          IF t97 IS BOUND.
            IF t97->has = abap_true.
              t114 = xsdbool( strlen( t97->value ) > 0 ).
            ENDIF.
          ENDIF.
          t111 = t114.
        ENDIF.
        t110 = t111.
        IF t111 = abap_true.
          t110 = xsdbool( t97->value <> || ).
        ENDIF.
        t109 = t110.
        IF t110 = abap_true.
          DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t123 TYPE string.
          t123 = t97->value.
          t121 = t2->match( t123 ).
          t109 = xsdbool( t121 IS BOUND ).
        ENDIF.
        IF t109 = abap_true.
          DATA t129 TYPE REF TO zcl_lnt_issue.
          CLEAR t129.
          DATA t131 TYPE REF TO zcl_lnt_abstract_token.
          t131 = t30->get_first_token( ).
          DATA(t134) = CONV string( zcl_lnt_no_prefixes_module=>message_23c9 ).
          DATA(t135) = VALUE string( ).
          DATA t136 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
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
          t143 = t147.
          DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t149.
          DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t153.
          t153->load( ).
          APPEND |SingleFile| TO t153->items.
          t153->save( ).
          t153->load( ).
          APPEND |Styleguide| TO t153->items.
          t153->save( ).
          t149 = t153.
          DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t161.
          DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t165->has = abap_true.
          t165->value = |DATA lv_foo TYPE i.|.
          t161 = t165.
          DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t167.
          DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t171->has = abap_true.
          t171->value = |DATA foo TYPE i.|.
          t167 = t171.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t173.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          t136 = NEW zcl_lnt_irule_metadata( i_key = |no_prefixes| i_title = |No Prefixes| i_short_description = |Dont use hungarian notation| i_bad_example = t161 i_good_example = t167 i_extended_information = t143 i_tags = t149 i_pragma = t173 i_pseudo_comment = t175 ).
          CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
          t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t177 ).
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
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t185 ).
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t187.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t187 ).
          ENDIF.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t189.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t189 ).
          ENDIF.
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t191.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t191 ).
          ENDIF.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t193 ).
          ENDIF.
          DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t195.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t195 ).
          ENDIF.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t197.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t197 ).
          ENDIF.
          t135 = t136->key.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t198 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t200 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t200.
          t129 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t131 i_message_26cb = t134 i_key = t135 i_severity = t198 i_fix = t200 ).
          t4->load( ).
          APPEND t129 TO t4->items.
          t4->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_no_prefixes_conf( me->gt_cn_in_sr_rls_n_prf_ts_n_prf( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_no_prefixes_conf( me->gt_cn_in_sr_rls_n_prf_ts_n_prf( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_no_prefixes_conf.
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
        t1 = NEW zcl_lnt_no_prefixes_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rls_n_prf_ts_n_prf( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rls_n_prf_ts_n_prf( i_file = i_file ) ).

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
