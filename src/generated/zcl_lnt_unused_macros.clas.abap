* TS: src/rules/unused_macros.ts:16:1 UnusedMacros
CLASS zcl_lnt_unused_macros DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_unused_macros_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_un_mc_ts_un_mcr RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_macros_conf.
    METHODS st_cn_in_sr_rl_un_mc_ts_un_mcr IMPORTING i_conf TYPE REF TO zcl_lnt_unused_macros_conf.
    METHODS in_in_sr_rl_uns_mcr_ts_uns_mcr IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_macros.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unused_macros IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_unused_macros_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |unused_macros|.
    DATA t4 TYPE string.
    t4 = |Unused macros|.
    DATA t6 TYPE string.
    t6 = |Checks for unused macro definitions definitions|.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |Quickfix|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t21) = |DEFINE foobar1.\n  WRITE 'hello'.\nEND-OF-DEFINITION.|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    t18 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |DEFINE foobar2.\n  WRITE 'hello'.\nEND-OF-DEFINITION.\n\nfoobar2|.
    t27 = t27 && |.|.
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

  METHOD gt_cn_in_sr_rl_un_mc_ts_un_mcr.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_mc_ts_un_mcr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_d5719c35156a( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t5 IS INITIAL ).
    IF t3 = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t14.
      t12 = t14.
      t11->zlnt_view_write_s_091d2d7d0c4b( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD in_in_sr_rl_uns_mcr_ts_uns_mcr.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zif_lnt_macro_references.
    DATA t9 TYPE REF TO zif_lnt_macro_references.
    t9 = me->reg->get_macro_references( ).
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zcl_lnt_abap_object.
    DATA t15 TYPE REF TO object.
    t15 = t1.
    t13 ?= t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t16 = t13->parsed.
    t11 = t16.
    DATA t18 TYPE REF TO zcl_lnt_abap_file.
    DATA t19 TYPE REF TO object.
    DATA(t20) = VALUE i( ).
    DO.
      t11->load( ).
      IF t20 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t11->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE string.
      DATA t26 TYPE REF TO zcl_lnt_abstract_file.
      t26 = t18.
      DATA t28 TYPE string.
      t28 = t26->filename.
      t25 = t28.
      t23 = t8->list_definitions_by_file( i_filename = t25 ).
      DATA t30 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      DATA(t32) = VALUE i( ).
      DO.
        t23->load( ).
        IF t32 >= lines( t23->items ).
          EXIT.
        ENDIF.
        CLEAR t31.
        READ TABLE t23->items INDEX t32 + 1 INTO t31.
        t32 = t32 + 1.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        CLEAR t30.
        IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t33 ?= t31.
          DATA t34 TYPE REF TO object.
          t34 = t33->as_ref( ).
          t30 ?= t34.
        ELSE.
          t30 ?= t31.
        ENDIF.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t38 TYPE string.
        DATA t39 TYPE REF TO zcl_lnt_abstract_file.
        t39 = t18.
        DATA t41 TYPE string.
        t41 = t39->filename.
        t38 = t41.
        t36 = t8->list_usagesby_macro( i_filename = t38 i_token = t30 ).
        t35 = t36.
        DATA t44 TYPE abap_bool.
        DATA t45 TYPE abap_bool.
        DATA t46 TYPE i.
        t35->load( ).
        t46 = lines( t35->items ).
        DATA(t48) = 0.
        t45 = xsdbool( t46 = t48 ).
        t44 = t45.
        IF t45 = abap_true.
          DATA(t49) = VALUE abap_bool( ).
          DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t50.
          DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t52 = me->conf->zlnt_view_read_sr_d5719c35156a( ).
          t51 = t52.
          DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t54.
          DATA(t55) = xsdbool( t51 IS INITIAL ).
          IF t55 = abap_true.
            CLEAR t54.
          ELSE.
            DATA(t58) = VALUE abap_bool( ).
            DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            t59 = t51.
            DATA t61 TYPE string.
            DATA t62 TYPE string.
            DATA t65 TYPE string.
            t65 = t30->str.
            t62 = t65.
            DATA(t67) = strlen( t62 ).
            t61 = t62.
            IF t61 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t61 TO UPPER CASE.
            ELSE.
              t61 = zlnt_runtime_uppe_91169605024d=>full( t61 ).
            ENDIF.
            t58 = t59->includes( p0 = t61 ).
            DATA(t68) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t68->has = abap_true.
            t68->value = t58.
            t54 = t68.
          ENDIF.
          t50 = t54.
          DATA t69 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t69.
          DATA(t72) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t72->has = abap_true.
          t72->value = abap_false.
          t69 = t72.
          DATA(t74) = VALUE abap_bool( ).
          DATA(t75) = VALUE abap_bool( ).
          IF t50 IS BOUND.
            t74 = t50->has.
          ENDIF.
          IF t69 IS BOUND.
            t75 = t69->has.
          ENDIF.
          IF t74 = t75.
            IF t74 = abap_false.
              t49 = abap_true.
            ELSEIF t50->value = t69->value.
              t49 = abap_true.
            ENDIF.
          ENDIF.
          t44 = t49.
        ENDIF.
        IF t44 = abap_true.
          DATA t77 TYPE string.
          DATA(t78) = |Unused macro definition: |.
          DATA t79 TYPE string.
          DATA t82 TYPE string.
          t82 = t30->str.
          t79 = t82.
          DATA(t84) = strlen( t78 ).
          t77 = |{ t78 }{ t79 }|.
          DATA t85 TYPE REF TO zcl_lnt_irange.
          DATA t86 TYPE REF TO zcl_lnt_irange.
          DATA t88 TYPE string.
          DATA t89 TYPE REF TO zcl_lnt_abstract_file.
          t89 = t18.
          DATA t91 TYPE string.
          t91 = t89->filename.
          t88 = t91.
          t86 = t8->get_definition_range( i_filename = t88 i_token = t30 ).
          t85 = t86.
          DATA t95 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t97 TYPE REF TO zcl_lnt_position.
          DATA t98 TYPE REF TO zcl_lnt_irange.
          t98 = t85.
          t97 = t98->start.
          DATA t100 TYPE REF TO zcl_lnt_position.
          DATA t101 TYPE REF TO zcl_lnt_irange.
          t101 = t85.
          t100 = t101->end.
          t95 = zcl_lnt_edit_helper=>delete_range( i_file = t18 i_start = t97 i_end = t100 ).
          DATA t104 TYPE REF TO zcl_lnt_issue.
          CLEAR t104.
          DATA(t108) = VALUE string( ).
          DATA t109 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t109.
          DATA t110 TYPE string.
          t110 = |unused_macros|.
          DATA t112 TYPE string.
          t112 = |Unused macros|.
          DATA t114 TYPE string.
          t114 = |Checks for unused macro definitions definitions|.
          DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t116.
          DATA t120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t121.
          t120 = t121.
          DATA(t123) = |Quickfix|.
          t120->load( ).
          APPEND t123 TO t120->items.
          t120->save( ).
          t116 = t120.
          DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t126.
          DATA(t129) = |DEFINE foobar1.\n  WRITE 'hello'.\nEND-OF-DEFINITION.|.
          DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t130->has = abap_true.
          t130->value = t129.
          t126 = t130.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          DATA(t135) = |DEFINE foobar2.\n  WRITE 'hello'.\nEND-OF-DEFINITION.\n\nfoobar2|.
          t135 = t135 && |.|.
          DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t136->has = abap_true.
          t136->value = t135.
          t132 = t136.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t140.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t142.
          t109 = NEW zcl_lnt_irule_metadata( i_key = t110 i_title = t112 i_short_description = t114 i_bad_example = t126 i_good_example = t132 i_extended_information = t138 i_tags = t116 i_pragma = t140 i_pseudo_comment = t142 ).
          CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
          t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t144 ).
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t145 ).
          ENDIF.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t146 ).
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t147 ).
          ENDIF.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t148 ).
          ENDIF.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t149 ).
          ENDIF.
          CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
          t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t150) = |key|.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
          DATA(t152) = |title|.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
          ENDIF.
          DATA(t154) = |shortDescription|.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
          ENDIF.
          DATA(t156) = |tags|.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
          ENDIF.
          DATA(t158) = |badExample|.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
          ENDIF.
          DATA(t160) = |goodExample|.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
          ENDIF.
          t108 = t109->key.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t162 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t164.
          t164 = t95.
          t104 = zcl_lnt_issue=>at_token( i_file = t18 i_token = t30 i_message_26cb = t77 i_key = t108 i_severity = t162 i_fix = t164 ).
          t2->load( ).
          APPEND t104 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_unused_macros_conf( me->gt_cn_in_sr_rl_un_mc_ts_un_mcr( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unused_macros_conf( me->gt_cn_in_sr_rl_un_mc_ts_un_mcr( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unused_macros_conf.
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
        t2 = NEW zcl_lnt_unused_macros_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_mc_ts_un_mcr( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_unused_macros.
    DATA(t3) = i_reg_f149.
    t2 = me->in_in_sr_rl_uns_mcr_ts_uns_mcr( i_reg_f149 = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1754_6207378efc89.
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
