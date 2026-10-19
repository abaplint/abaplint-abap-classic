* TS: src/rules/no_aliases.ts:14:1 NoAliases
CLASS zcl_lnt_no_aliases DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_no_aliases_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rls_n_als_ts_n_als RETURNING VALUE(result) TYPE REF TO zcl_lnt_no_aliases_conf.
    METHODS st_cn_in_sr_rls_n_als_ts_n_als IMPORTING i_conf TYPE REF TO zcl_lnt_no_aliases_conf.
    METHODS rn_pr_in_sr_rls_n_als_ts_n_als IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS skip_alias IMPORTING i_alias TYPE REF TO zcl_lnt_info_alias RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_aliases IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_no_aliases_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |no_aliases|.
    DATA t4 TYPE string.
    t4 = |No ALIASES|.
    DATA t6 TYPE string.
    t6 = |Detects use of the ALIAS statement|.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |SingleFile|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t21) = |INTERFACE lif_foo.\n  METHODS long_method_name.\n  ALIASES sho|.
    t21 = t21 && |rt FOR long_method_name.\nENDINTERFACE.|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    t18 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |INTERFACE lif_foo.\n  METHODS long_method_name.\nENDINTERFACE.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t24 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |key|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    DATA(t44) = |title|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |shortDescription|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |tags|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |badExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |goodExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rls_n_als_ts_n_als.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rls_n_als_ts_n_als.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rls_n_als_ts_n_als.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE string.
    t4 = |Do not use ALIASES|.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zif_lnt_abap_file_information.
    DATA t10 TYPE REF TO zif_lnt_abap_file_information.
    t10 = t1->info.
    t7 = t10.
    t6 = t7->list_class_definitions( ).
    DATA t12 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t6->load( ).
      IF t14 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t6->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t17 = t12->aliases_62bb.
      DATA t19 TYPE REF TO zcl_lnt_info_alias.
      CLEAR t19.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      DATA(t21) = VALUE i( ).
      DO.
        t17->load( ).
        IF t21 >= lines( t17->items ).
          EXIT.
        ENDIF.
        CLEAR t20.
        READ TABLE t17->items INDEX t21 + 1 INTO t20.
        t21 = t21 + 1.
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t22.
        CLEAR t19.
        IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t22 ?= t20.
          DATA t23 TYPE REF TO object.
          t23 = t22->as_ref( ).
          t19 ?= t23.
        ELSE.
          t19 ?= t20.
        ENDIF.
        DATA(t24) = VALUE abap_bool( ).
        DATA t27 TYPE abap_bool.
        DATA t28 TYPE abap_bool.
        DATA t29 TYPE abap_bool.
        t29 = me->conf->zlnt_view_read_sr_02b7ebd900c2( ).
        t28 = xsdbool( t29 = abap_true ).
        t27 = t28.
        IF t28 = abap_true.
          DATA t32 TYPE abap_bool.
          DATA t33 TYPE f.
          t33 = t19->visibility.
          DATA(t35) = CONV f( 1 ).
          t32 = xsdbool( t33 = t35 ).
          t27 = t32.
        ENDIF.
        t24 = t27.
        IF t24 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t37 TYPE REF TO zcl_lnt_issue.
        CLEAR t37.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        t38 = t19->identifier.
        DATA(t41) = VALUE string( ).
        DATA t42 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t42.
        DATA t43 TYPE string.
        t43 = |no_aliases|.
        DATA t45 TYPE string.
        t45 = |No ALIASES|.
        DATA t47 TYPE string.
        t47 = |Detects use of the ALIAS statement|.
        DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t49.
        DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t54.
        t53 = t54.
        DATA(t56) = |SingleFile|.
        t53->load( ).
        APPEND t56 TO t53->items.
        t53->save( ).
        t49 = t53.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA(t62) = |INTERFACE lif_foo.\n  METHODS long_method_name.\n  ALIASES sho|.
        t62 = t62 && |rt FOR long_method_name.\nENDINTERFACE.|.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t62.
        t59 = t63.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        DATA(t68) = |INTERFACE lif_foo.\n  METHODS long_method_name.\nENDINTERFACE.|.
        DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t69->has = abap_true.
        t69->value = t68.
        t65 = t69.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        t42 = NEW zcl_lnt_irule_metadata( i_key = t43 i_title = t45 i_short_description = t47 i_bad_example = t59 i_good_example = t65 i_extended_information = t71 i_tags = t49 i_pragma = t73 i_pseudo_comment = t75 ).
        CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
        t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t77 ).
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t78 ).
        ENDIF.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t79 ).
        ENDIF.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t80 ).
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t81 ).
        ENDIF.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t82 ).
        ENDIF.
        CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
        t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t83) = |key|.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
        DATA(t85) = |title|.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
        ENDIF.
        DATA(t87) = |shortDescription|.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
        ENDIF.
        DATA(t89) = |tags|.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
        ENDIF.
        DATA(t91) = |badExample|.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
        ENDIF.
        DATA(t93) = |goodExample|.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
        ENDIF.
        t41 = t42->key.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t95 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t97 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t97.
        t37 = zcl_lnt_issue=>at_identifier( i_identifier = t38 i_message_26cb = t4 i_key = t41 i_severity = t95 i_fix = t97 ).
        t2->load( ).
        APPEND t37 TO t2->items.
        t2->save( ).
      ENDDO.
    ENDDO.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t99 TYPE REF TO zif_lnt_abap_file_information.
    DATA t102 TYPE REF TO zif_lnt_abap_file_information.
    t102 = t1->info.
    t99 = t102.
    t98 = t99->list_interface_definitions( ).
    DATA t104 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t105 TYPE REF TO object.
    DATA(t106) = VALUE i( ).
    DO.
      t98->load( ).
      IF t106 >= lines( t98->items ).
        EXIT.
      ENDIF.
      CLEAR t105.
      READ TABLE t98->items INDEX t106 + 1 INTO t105.
      t106 = t106 + 1.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      CLEAR t104.
      IF t105 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t107 ?= t105.
        DATA t108 TYPE REF TO object.
        t108 = t107->as_ref( ).
        t104 ?= t108.
      ELSE.
        t104 ?= t105.
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t109 = t104->aliases_62bb.
      DATA t111 TYPE REF TO zcl_lnt_info_alias.
      CLEAR t111.
      DATA t112 TYPE REF TO object.
      CLEAR t112.
      DATA(t113) = VALUE i( ).
      DO.
        t109->load( ).
        IF t113 >= lines( t109->items ).
          EXIT.
        ENDIF.
        CLEAR t112.
        READ TABLE t109->items INDEX t113 + 1 INTO t112.
        t113 = t113 + 1.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        CLEAR t111.
        IF t112 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t114 ?= t112.
          DATA t115 TYPE REF TO object.
          t115 = t114->as_ref( ).
          t111 ?= t115.
        ELSE.
          t111 ?= t112.
        ENDIF.
        DATA t117 TYPE REF TO zcl_lnt_issue.
        CLEAR t117.
        DATA t118 TYPE REF TO zcl_lnt_fi_identifier.
        t118 = t111->identifier.
        DATA(t121) = VALUE string( ).
        DATA t122 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t122.
        DATA t123 TYPE string.
        t123 = |no_aliases|.
        DATA t125 TYPE string.
        t125 = |No ALIASES|.
        DATA t127 TYPE string.
        t127 = |Detects use of the ALIAS statement|.
        DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t129.
        DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t134.
        t133 = t134.
        DATA(t136) = |SingleFile|.
        t133->load( ).
        APPEND t136 TO t133->items.
        t133->save( ).
        t129 = t133.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        DATA(t142) = |INTERFACE lif_foo.\n  METHODS long_method_name.\n  ALIASES sho|.
        t142 = t142 && |rt FOR long_method_name.\nENDINTERFACE.|.
        DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t143->has = abap_true.
        t143->value = t142.
        t139 = t143.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        DATA(t148) = |INTERFACE lif_foo.\n  METHODS long_method_name.\nENDINTERFACE.|.
        DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t149->has = abap_true.
        t149->value = t148.
        t145 = t149.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        t122 = NEW zcl_lnt_irule_metadata( i_key = t123 i_title = t125 i_short_description = t127 i_bad_example = t139 i_good_example = t145 i_extended_information = t151 i_tags = t129 i_pragma = t153 i_pseudo_comment = t155 ).
        CREATE OBJECT t122->zlnt_view_ownkeys_b0e8086400eb.
        t122->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t157 ).
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t158 ).
        ENDIF.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t159 ).
        ENDIF.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t160 ).
        ENDIF.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t161 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t162 ).
        ENDIF.
        CREATE OBJECT t122->zlnt_json_ownkeys_70e5fd461788.
        t122->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t163) = |key|.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
        DATA(t165) = |title|.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
        ENDIF.
        DATA(t167) = |shortDescription|.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
        ENDIF.
        DATA(t169) = |tags|.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
        ENDIF.
        DATA(t171) = |badExample|.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
        ENDIF.
        DATA(t173) = |goodExample|.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
        ENDIF.
        t121 = t122->key.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t175 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t177 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t177.
        t117 = zcl_lnt_issue=>at_identifier( i_identifier = t118 i_message_26cb = t4 i_key = t121 i_severity = t175 i_fix = t177 ).
        t2->load( ).
        APPEND t117 TO t2->items.
        t2->save( ).
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD skip_alias.
    DATA(t1) = i_alias.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    t4 = me->conf->zlnt_view_read_sr_02b7ebd900c2( ).
    t3 = xsdbool( t4 = abap_true ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE f.
      t8 = t1->visibility.
      DATA(t10) = CONV f( 1 ).
      t7 = xsdbool( t8 = t10 ).
      t2 = t7.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_no_aliases_conf( me->gt_cn_in_sr_rls_n_als_ts_n_als( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_no_aliases_conf( me->gt_cn_in_sr_rls_n_als_ts_n_als( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_no_aliases_conf.
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
        t1 = NEW zcl_lnt_no_aliases_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rls_n_als_ts_n_als( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rls_n_als_ts_n_als( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1605_0c9379b11bae.
  ENDMETHOD.
ENDCLASS.
