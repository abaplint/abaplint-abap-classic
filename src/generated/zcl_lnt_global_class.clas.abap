* TS: src/rules/global_class.ts:13:1 GlobalClass
CLASS zcl_lnt_global_class DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_global_class_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_gl_cl_ts_gl_cls RETURNING VALUE(result) TYPE REF TO zcl_lnt_global_class_conf.
    METHODS st_cn_in_sr_rl_gl_cl_ts_gl_cls IMPORTING i_conf TYPE REF TO zcl_lnt_global_class_conf.
    METHODS rn_pr_in_sr_rl_gl_cl_ts_gl_cls IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_global_class IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_global_class_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |global_class|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Global class checks|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks related to global classes|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |* global classes must be in own files\n\n* file names must mat|.
      t11 = t11 && |ch class name\n\n* file names must match interface name\n\n* glo|.
      t11 = t11 && |bal classes must be global definitions\n\n* global interfaces |.
      t11 = t11 && |must be global definitions\n\n* global FOR TESTING, must have |.
      t11 = t11 && |CATEGORY = 05 in the XML|.
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
      DATA(t21) = |Syntax|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |extendedInformation|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_gl_cl_ts_gl_cls.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_gl_cl_ts_gl_cls.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_gl_cl_ts_gl_cls.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zif_lnt_abap_file_information.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t10) = t7.
    t9 = t10->info.
    t6 = t9.
    t5 = t6->list_class_definitions( ).
    DATA t11 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    DATA(t13) = VALUE i( ).
    DO.
      t5->load( ).
      IF t13 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t5->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t20) = t11.
      t19 = t20->is_local.
      IF t19 IS BOUND.
        IF t19->has = abap_true.
          t18 = xsdbool( t19->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t17 = t18.
      IF t18 = abap_true.
        DATA t21 TYPE abap_bool.
        DATA(t22) = t2.
        t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_class ).
        t17 = t21.
      ENDIF.
      t16 = t17.
      IF t17 = abap_true.
        DATA t23 TYPE abap_bool.
        DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t25 TYPE string.
        DATA t26 TYPE string.
        DATA t27 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t28) = t1.
        t27 = t28.
        DATA t29 TYPE string.
        DATA(t30) = t27.
        t29 = t30->filename.
        t26 = t29.
        t25 = t26.
        DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t32) = t25.
        DATA t33 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t33.
        DATA(t34) = `\.clas\.abap$`.
        DATA(t35) = ||.
        CREATE OBJECT t33 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t34 flags = t35.
        t31 = t33->match( t32 ).
        t24 = t31.
        t23 = xsdbool( t24 IS BOUND ).
        t16 = t23.
      ENDIF.
      IF t16 = abap_true.
        DATA t36 TYPE REF TO zcl_lnt_issue.
        CLEAR t36.
        DATA t37 TYPE REF TO zcl_lnt_issue.
        CLEAR t37.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t39) = t11.
        t38 = t39->identifier.
        DATA(t40) = |Global classes must be global|.
        DATA(t41) = VALUE string( ).
        DATA t42 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t42.
        DATA t43 TYPE string.
        DATA(t44) = |global_class|.
        t43 = t44.
        DATA t45 TYPE string.
        DATA(t46) = |Global class checks|.
        t45 = t46.
        DATA t47 TYPE string.
        DATA(t48) = |Checks related to global classes|.
        t47 = t48.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA(t52) = |* global classes must be in own files\n\n* file names must mat|.
          t52 = t52 && |ch class name\n\n* file names must match interface name\n\n* glo|.
          t52 = t52 && |bal classes must be global definitions\n\n* global interfaces |.
          t52 = t52 && |must be global definitions\n\n* global FOR TESTING, must have |.
          t52 = t52 && |CATEGORY = 05 in the XML|.
          DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t53->has = abap_true.
          t53->value = t52.
          t50 = t53.
        ELSE.
          DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t54.
          t50 = t54.
        ENDIF.
        t49 = t50.
        DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t60.
          t59 = t60.
          DATA(t61) = t59.
          DATA(t62) = |Syntax|.
          t61->load( ).
          APPEND t62 TO t61->items.
          t61->save( ).
          DATA(t63) = t59.
          t58 = t63.
          t56 = t58.
        ELSE.
          DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t64.
          t56 = t64.
        ENDIF.
        t55 = t56.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        t65 = t66.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t67 = t68.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        t71 = t72.
        t42 = NEW zcl_lnt_irule_metadata( i_key = t43 i_title = t45 i_short_description = t47 i_bad_example = t65 i_good_example = t67 i_extended_information = t49 i_tags = t55 i_pragma = t69 i_pseudo_comment = t71 ).
        CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
        t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t73 ).
        ENDIF.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t74 ).
        ENDIF.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t75 ).
        ENDIF.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t76 ).
        ENDIF.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t77 ).
        ENDIF.
        CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
        t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t78) = |key|.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
        ENDIF.
        DATA(t80) = |title|.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
        ENDIF.
        DATA(t82) = |shortDescription|.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
        ENDIF.
        DATA(t84) = |extendedInformation|.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
        ENDIF.
        DATA(t86) = |tags|.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
        ENDIF.
        t41 = t42->key.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t89) = me->conf.
        t88 = t89->zlnt_view_read_sr_15c06369f827( ).
        DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t90.
        t37 = zcl_lnt_issue=>at_identifier( i_identifier = t38 i_message_26cb = t40 i_key = t41 i_severity = t88 i_fix = t90 ).
        t36 = t37.
        DATA(t91) = t3.
        DATA(t92) = t36.
        t91->load( ).
        APPEND t92 TO t91->items.
        t91->save( ).
      ENDIF.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = VALUE abap_bool( ).
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t97) = t11.
      t96 = t97->is_global.
      IF t96 IS BOUND.
        IF t96->has = abap_true.
          t95 = xsdbool( t96->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t94 = t95.
      IF t95 = abap_true.
        DATA t98 TYPE abap_bool.
        DATA(t99) = t2.
        t98 = xsdbool( t99 IS BOUND AND t99 IS INSTANCE OF zcl_lnt_class ).
        t94 = t98.
      ENDIF.
      t93 = t94.
      IF t94 = abap_true.
        DATA(t100) = VALUE abap_bool( ).
        DATA t101 TYPE string.
        DATA t102 TYPE string.
        DATA(t103) = t11.
        t102 = t103->name.
        DATA(t104) = strlen( t102 ).
        t101 = t102.
        IF t101 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t101 TO UPPER CASE.
        ELSE.
          t101 = zlnt_runtime_uppe_91169605024d=>full( t101 ).
        ENDIF.
        DATA t105 TYPE string.
        DATA t106 TYPE string.
        DATA t107 TYPE REF TO zcl_lnt_abstract_object.
        DATA t108 TYPE REF TO zcl_lnt_class.
        DATA(t109) = t2.
        DATA t110 TYPE REF TO object.
        t110 = t109.
        t108 ?= t110.
        t107 = t108.
        DATA t111 TYPE string.
        DATA(t112) = t107.
        t111 = t112->name.
        t106 = t111.
        DATA(t113) = strlen( t106 ).
        t105 = t106.
        IF t105 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t105 TO UPPER CASE.
        ELSE.
          t105 = zlnt_runtime_uppe_91169605024d=>full( t105 ).
        ENDIF.
        t100 = xsdbool( t101 <> t105 ).
        t93 = t100.
      ENDIF.
      IF t93 = abap_true.
        DATA t114 TYPE REF TO zcl_lnt_issue.
        CLEAR t114.
        DATA t115 TYPE REF TO zcl_lnt_issue.
        CLEAR t115.
        DATA t116 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t117) = t11.
        t116 = t117->identifier.
        DATA(t118) = |Class definition name must match filename|.
        DATA(t119) = VALUE string( ).
        DATA t120 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t120.
        DATA t121 TYPE string.
        DATA(t122) = |global_class|.
        t121 = t122.
        DATA t123 TYPE string.
        DATA(t124) = |Global class checks|.
        t123 = t124.
        DATA t125 TYPE string.
        DATA(t126) = |Checks related to global classes|.
        t125 = t126.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA(t130) = |* global classes must be in own files\n\n* file names must mat|.
          t130 = t130 && |ch class name\n\n* file names must match interface name\n\n* glo|.
          t130 = t130 && |bal classes must be global definitions\n\n* global interfaces |.
          t130 = t130 && |must be global definitions\n\n* global FOR TESTING, must have |.
          t130 = t130 && |CATEGORY = 05 in the XML|.
          DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t131->has = abap_true.
          t131->value = t130.
          t128 = t131.
        ELSE.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          t128 = t132.
        ENDIF.
        t127 = t128.
        DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t133.
        DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t134.
        DATA(t135) = abap_true.
        IF t135 = abap_true.
          DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t138.
          t137 = t138.
          DATA(t139) = t137.
          DATA(t140) = |Syntax|.
          t139->load( ).
          APPEND t140 TO t139->items.
          t139->save( ).
          DATA(t141) = t137.
          t136 = t141.
          t134 = t136.
        ELSE.
          DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t142.
          t134 = t142.
        ENDIF.
        t133 = t134.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        t143 = t144.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t146.
        t145 = t146.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        t147 = t148.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        t149 = t150.
        t120 = NEW zcl_lnt_irule_metadata( i_key = t121 i_title = t123 i_short_description = t125 i_bad_example = t143 i_good_example = t145 i_extended_information = t127 i_tags = t133 i_pragma = t147 i_pseudo_comment = t149 ).
        CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
        t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t151 ).
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t152 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t153 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t154 ).
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t155 ).
        ENDIF.
        CREATE OBJECT t120->zlnt_json_ownkeys_70e5fd461788.
        t120->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t156) = |key|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        ENDIF.
        DATA(t158) = |title|.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
        ENDIF.
        DATA(t160) = |shortDescription|.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
        ENDIF.
        DATA(t162) = |extendedInformation|.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
        ENDIF.
        DATA(t164) = |tags|.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
        ENDIF.
        t119 = t120->key.
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t167) = me->conf.
        t166 = t167->zlnt_view_read_sr_15c06369f827( ).
        DATA t168 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t168.
        t115 = zcl_lnt_issue=>at_identifier( i_identifier = t116 i_message_26cb = t118 i_key = t119 i_severity = t166 i_fix = t168 ).
        t114 = t115.
        DATA(t169) = t3.
        DATA(t170) = t114.
        t169->load( ).
        APPEND t170 TO t169->items.
        t169->save( ).
      ENDIF.
      DATA(t171) = VALUE abap_bool( ).
      DATA(t172) = VALUE abap_bool( ).
      DATA t173 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t174) = t11.
      t173 = t174->is_global.
      IF t173 IS BOUND.
        IF t173->has = abap_true.
          t172 = xsdbool( t173->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t171 = t172.
      IF t172 = abap_true.
        DATA t175 TYPE abap_bool.
        DATA t176 TYPE abap_bool.
        DATA(t177) = t2.
        t176 = xsdbool( t177 IS BOUND AND t177 IS INSTANCE OF zcl_lnt_class ).
        t175 = xsdbool( t176 = abap_false ).
        t171 = t175.
      ENDIF.
      IF t171 = abap_true.
        DATA t178 TYPE REF TO zcl_lnt_issue.
        CLEAR t178.
        DATA t179 TYPE REF TO zcl_lnt_issue.
        CLEAR t179.
        DATA t180 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t181) = t11.
        t180 = t181->identifier.
        DATA(t182) = |Class must be local|.
        DATA(t183) = VALUE string( ).
        DATA t184 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t184.
        DATA t185 TYPE string.
        DATA(t186) = |global_class|.
        t185 = t186.
        DATA t187 TYPE string.
        DATA(t188) = |Global class checks|.
        t187 = t188.
        DATA t189 TYPE string.
        DATA(t190) = |Checks related to global classes|.
        t189 = t190.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t192.
        DATA(t193) = abap_true.
        IF t193 = abap_true.
          DATA(t194) = |* global classes must be in own files\n\n* file names must mat|.
          t194 = t194 && |ch class name\n\n* file names must match interface name\n\n* glo|.
          t194 = t194 && |bal classes must be global definitions\n\n* global interfaces |.
          t194 = t194 && |must be global definitions\n\n* global FOR TESTING, must have |.
          t194 = t194 && |CATEGORY = 05 in the XML|.
          DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t195->has = abap_true.
          t195->value = t194.
          t192 = t195.
        ELSE.
          DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t196.
          t192 = t196.
        ENDIF.
        t191 = t192.
        DATA t197 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t197.
        DATA t198 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t198.
        DATA(t199) = abap_true.
        IF t199 = abap_true.
          DATA t200 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t202 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t202.
          t201 = t202.
          DATA(t203) = t201.
          DATA(t204) = |Syntax|.
          t203->load( ).
          APPEND t204 TO t203->items.
          t203->save( ).
          DATA(t205) = t201.
          t200 = t205.
          t198 = t200.
        ELSE.
          DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t206.
          t198 = t206.
        ENDIF.
        t197 = t198.
        DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t208.
        t207 = t208.
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t210.
        t209 = t210.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t212.
        t211 = t212.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t214.
        t213 = t214.
        t184 = NEW zcl_lnt_irule_metadata( i_key = t185 i_title = t187 i_short_description = t189 i_bad_example = t207 i_good_example = t209 i_extended_information = t191 i_tags = t197 i_pragma = t211 i_pseudo_comment = t213 ).
        CREATE OBJECT t184->zlnt_view_ownkeys_b0e8086400eb.
        t184->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t215.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t215 ).
        ENDIF.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t216.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t216 ).
        ENDIF.
        DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t217.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t217 ).
        ENDIF.
        DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t218.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t218 ).
        ENDIF.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t219.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t219 ).
        ENDIF.
        CREATE OBJECT t184->zlnt_json_ownkeys_70e5fd461788.
        t184->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t220) = |key|.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t221.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
        ENDIF.
        DATA(t222) = |title|.
        DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t223.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
        ENDIF.
        DATA(t224) = |shortDescription|.
        DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t225.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
        ENDIF.
        DATA(t226) = |extendedInformation|.
        DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t227.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
        ENDIF.
        DATA(t228) = |tags|.
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t229.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t228 p1 = t229 ).
        ENDIF.
        t183 = t184->key.
        DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t231) = me->conf.
        t230 = t231->zlnt_view_read_sr_15c06369f827( ).
        DATA t232 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t232.
        t179 = zcl_lnt_issue=>at_identifier( i_identifier = t180 i_message_26cb = t182 i_key = t183 i_severity = t230 i_fix = t232 ).
        t178 = t179.
        DATA(t233) = t3.
        DATA(t234) = t178.
        t233->load( ).
        APPEND t234 TO t233->items.
        t233->save( ).
      ENDIF.
      DATA(t235) = VALUE abap_bool( ).
      DATA(t236) = VALUE abap_bool( ).
      DATA t237 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t238) = t11.
      t237 = t238->is_global.
      IF t237 IS BOUND.
        IF t237->has = abap_true.
          t236 = xsdbool( t237->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t235 = t236.
      IF t236 = abap_true.
        DATA t239 TYPE abap_bool.
        DATA(t240) = t2.
        t239 = xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_class ).
        t235 = t239.
      ENDIF.
      IF t235 = abap_true.
        DATA(t241) = VALUE abap_bool( ).
        DATA(t242) = VALUE abap_bool( ).
        DATA(t243) = VALUE abap_bool( ).
        DATA t244 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t245) = t11.
        t244 = t245->is_for_testing.
        DATA t246 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t246.
        DATA(t247) = abap_true.
        IF t247 = abap_true.
          DATA(t248) = abap_true.
          DATA(t249) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t249->has = abap_true.
          t249->value = t248.
          t246 = t249.
        ELSE.
          DATA t250 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t250.
          t246 = t250.
        ENDIF.
        DATA(t251) = VALUE abap_bool( ).
        DATA(t252) = VALUE abap_bool( ).
        IF t244 IS BOUND.
          t251 = t244->has.
        ENDIF.
        IF t246 IS BOUND.
          t252 = t246->has.
        ENDIF.
        IF t251 = t252.
          IF t251 = abap_false.
            t243 = abap_true.
          ELSEIF t244->value = t246->value.
            t243 = abap_true.
          ENDIF.
        ENDIF.
        t242 = t243.
        IF t243 = abap_true.
          DATA t253 TYPE abap_bool.
          DATA(t254) = t2.
          t253 = xsdbool( t254 IS BOUND AND t254 IS INSTANCE OF zcl_lnt_class ).
          t242 = t253.
        ENDIF.
        t241 = t242.
        IF t242 = abap_true.
          DATA(t255) = VALUE abap_bool( ).
          DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t256.
          DATA t257 TYPE REF TO zcl_lnt_class.
          DATA t258 TYPE REF TO zcl_lnt_class.
          DATA(t259) = t2.
          DATA t260 TYPE REF TO object.
          t260 = t259.
          t258 ?= t260.
          t257 = t258.
          DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t261.
          DATA(t262) = t257.
          t262->parse_xml( ).
          DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t263.
          DATA t264 TYPE REF TO zcl_lnt_shape_e272b380.
          DATA t265 TYPE REF TO zcl_lnt_shape_e272b380.
          DATA(t266) = t257.
          t265 = t266->parsed_xml.
          t264 = t265.
          DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t267.
          DATA(t268) = VALUE abap_bool( ).
          DATA(t269) = t264.
          IF t269 IS INITIAL.
            t268 = abap_true.
          ENDIF.
          IF t268 = abap_true.
            DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t270.
            t267 = t270.
          ELSE.
            DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t272 TYPE REF TO zcl_lnt_shape_e272b380.
            DATA(t273) = t264.
            t272 = t273.
            t271 = t272->category.
            t267 = t271.
          ENDIF.
          t263 = t267.
          t261 = t263.
          t256 = t261.
          DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t274.
          DATA(t275) = abap_true.
          IF t275 = abap_true.
            DATA(t276) = |05|.
            DATA(t277) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t277->has = abap_true.
            t277->value = t276.
            t274 = t277.
          ELSE.
            DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t278.
            t274 = t278.
          ENDIF.
          DATA(t279) = VALUE abap_bool( ).
          DATA(t280) = VALUE abap_bool( ).
          IF t256 IS BOUND.
            t279 = t256->has.
          ENDIF.
          IF t274 IS BOUND.
            t280 = t274->has.
          ENDIF.
          IF t279 = t280.
            IF t279 = abap_false.
              t255 = abap_true.
            ELSEIF t256->value = t274->value.
              t255 = abap_true.
            ENDIF.
          ENDIF.
          IF t255 = abap_true.
            t255 = abap_false.
          ELSE.
            t255 = abap_true.
          ENDIF.
          t241 = t255.
        ENDIF.
        IF t241 = abap_true.
          DATA t281 TYPE string.
          DATA(t282) = |Class is marked as FOR TESTING, but CATEGORY is not 05 in th|.
          t282 = t282 && |e XML|.
          t281 = t282.
          DATA t283 TYPE REF TO zcl_lnt_issue.
          CLEAR t283.
          DATA t284 TYPE REF TO zcl_lnt_issue.
          CLEAR t284.
          DATA t285 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t286) = t11.
          t285 = t286->identifier.
          DATA(t287) = t281.
          DATA(t288) = VALUE string( ).
          DATA t289 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t289.
          DATA t290 TYPE string.
          DATA(t291) = |global_class|.
          t290 = t291.
          DATA t292 TYPE string.
          DATA(t293) = |Global class checks|.
          t292 = t293.
          DATA t294 TYPE string.
          DATA(t295) = |Checks related to global classes|.
          t294 = t295.
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t296.
          DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t297.
          DATA(t298) = abap_true.
          IF t298 = abap_true.
            DATA(t299) = |* global classes must be in own files\n\n* file names must mat|.
            t299 = t299 && |ch class name\n\n* file names must match interface name\n\n* glo|.
            t299 = t299 && |bal classes must be global definitions\n\n* global interfaces |.
            t299 = t299 && |must be global definitions\n\n* global FOR TESTING, must have |.
            t299 = t299 && |CATEGORY = 05 in the XML|.
            DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t300->has = abap_true.
            t300->value = t299.
            t297 = t300.
          ELSE.
            DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t301.
            t297 = t301.
          ENDIF.
          t296 = t297.
          DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t302.
          DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t303.
          DATA(t304) = abap_true.
          IF t304 = abap_true.
            DATA t305 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t306 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t307 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t307.
            t306 = t307.
            DATA(t308) = t306.
            DATA(t309) = |Syntax|.
            t308->load( ).
            APPEND t309 TO t308->items.
            t308->save( ).
            DATA(t310) = t306.
            t305 = t310.
            t303 = t305.
          ELSE.
            DATA t311 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t311.
            t303 = t311.
          ENDIF.
          t302 = t303.
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t313.
          t312 = t313.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t315.
          t314 = t315.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t317.
          t316 = t317.
          DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t319.
          t318 = t319.
          t289 = NEW zcl_lnt_irule_metadata( i_key = t290 i_title = t292 i_short_description = t294 i_bad_example = t312 i_good_example = t314 i_extended_information = t296 i_tags = t302 i_pragma = t316 i_pseudo_comment = t318 ).
          CREATE OBJECT t289->zlnt_view_ownkeys_b0e8086400eb.
          t289->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t320.
          IF t289->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t320 ).
          ENDIF.
          DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t321.
          IF t289->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t321 ).
          ENDIF.
          DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t322.
          IF t289->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t322 ).
          ENDIF.
          DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t323.
          IF t289->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t323 ).
          ENDIF.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t324.
          IF t289->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t324 ).
          ENDIF.
          CREATE OBJECT t289->zlnt_json_ownkeys_70e5fd461788.
          t289->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t325) = |key|.
          DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t326.
          IF t289->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t325 p1 = t326 ).
          ENDIF.
          DATA(t327) = |title|.
          DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t328.
          IF t289->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t327 p1 = t328 ).
          ENDIF.
          DATA(t329) = |shortDescription|.
          DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t330.
          IF t289->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t329 p1 = t330 ).
          ENDIF.
          DATA(t331) = |extendedInformation|.
          DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t332.
          IF t289->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t331 p1 = t332 ).
          ENDIF.
          DATA(t333) = |tags|.
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t334.
          IF t289->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t333 p1 = t334 ).
          ENDIF.
          t288 = t289->key.
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t336) = me->conf.
          t335 = t336->zlnt_view_read_sr_15c06369f827( ).
          DATA t337 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t337.
          t284 = zcl_lnt_issue=>at_identifier( i_identifier = t285 i_message_26cb = t287 i_key = t288 i_severity = t335 i_fix = t337 ).
          t283 = t284.
          DATA(t338) = t3.
          DATA(t339) = t283.
          t338->load( ).
          APPEND t339 TO t338->items.
          t338->save( ).
        ELSE.
          DATA(t340) = VALUE abap_bool( ).
          DATA(t341) = VALUE abap_bool( ).
          DATA(t342) = VALUE abap_bool( ).
          DATA t343 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t344) = t11.
          t343 = t344->is_for_testing.
          DATA t345 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t345.
          DATA(t346) = abap_true.
          IF t346 = abap_true.
            DATA(t347) = abap_false.
            DATA(t348) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t348->has = abap_true.
            t348->value = t347.
            t345 = t348.
          ELSE.
            DATA t349 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t349.
            t345 = t349.
          ENDIF.
          DATA(t350) = VALUE abap_bool( ).
          DATA(t351) = VALUE abap_bool( ).
          IF t343 IS BOUND.
            t350 = t343->has.
          ENDIF.
          IF t345 IS BOUND.
            t351 = t345->has.
          ENDIF.
          IF t350 = t351.
            IF t350 = abap_false.
              t342 = abap_true.
            ELSEIF t343->value = t345->value.
              t342 = abap_true.
            ENDIF.
          ENDIF.
          t341 = t342.
          IF t342 = abap_true.
            DATA t352 TYPE abap_bool.
            DATA(t353) = t2.
            t352 = xsdbool( t353 IS BOUND AND t353 IS INSTANCE OF zcl_lnt_class ).
            t341 = t352.
          ENDIF.
          t340 = t341.
          IF t341 = abap_true.
            DATA(t354) = VALUE abap_bool( ).
            DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t355.
            DATA t356 TYPE REF TO zcl_lnt_class.
            DATA t357 TYPE REF TO zcl_lnt_class.
            DATA(t358) = t2.
            DATA t359 TYPE REF TO object.
            t359 = t358.
            t357 ?= t359.
            t356 = t357.
            DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t360.
            DATA(t361) = t356.
            t361->parse_xml( ).
            DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t362.
            DATA t363 TYPE REF TO zcl_lnt_shape_e272b380.
            DATA t364 TYPE REF TO zcl_lnt_shape_e272b380.
            DATA(t365) = t356.
            t364 = t365->parsed_xml.
            t363 = t364.
            DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t366.
            DATA(t367) = VALUE abap_bool( ).
            DATA(t368) = t363.
            IF t368 IS INITIAL.
              t367 = abap_true.
            ENDIF.
            IF t367 = abap_true.
              DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t369.
              t366 = t369.
            ELSE.
              DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t371 TYPE REF TO zcl_lnt_shape_e272b380.
              DATA(t372) = t363.
              t371 = t372.
              t370 = t371->category.
              t366 = t370.
            ENDIF.
            t362 = t366.
            t360 = t362.
            t355 = t360.
            DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t373.
            DATA(t374) = abap_true.
            IF t374 = abap_true.
              DATA(t375) = |05|.
              DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t376->has = abap_true.
              t376->value = t375.
              t373 = t376.
            ELSE.
              DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t377.
              t373 = t377.
            ENDIF.
            DATA(t378) = VALUE abap_bool( ).
            DATA(t379) = VALUE abap_bool( ).
            IF t355 IS BOUND.
              t378 = t355->has.
            ENDIF.
            IF t373 IS BOUND.
              t379 = t373->has.
            ENDIF.
            IF t378 = t379.
              IF t378 = abap_false.
                t354 = abap_true.
              ELSEIF t355->value = t373->value.
                t354 = abap_true.
              ENDIF.
            ENDIF.
            t340 = t354.
          ENDIF.
          IF t340 = abap_true.
            DATA t380 TYPE string.
            DATA(t381) = |Class has CATEGORY 05 in the XML, but is not marked as FOR T|.
            t381 = t381 && |ESTING|.
            t380 = t381.
            DATA t382 TYPE REF TO zcl_lnt_issue.
            CLEAR t382.
            DATA t383 TYPE REF TO zcl_lnt_issue.
            CLEAR t383.
            DATA t384 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t385) = t11.
            t384 = t385->identifier.
            DATA(t386) = t380.
            DATA(t387) = VALUE string( ).
            DATA t388 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t388.
            DATA t389 TYPE string.
            DATA(t390) = |global_class|.
            t389 = t390.
            DATA t391 TYPE string.
            DATA(t392) = |Global class checks|.
            t391 = t392.
            DATA t393 TYPE string.
            DATA(t394) = |Checks related to global classes|.
            t393 = t394.
            DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t395.
            DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t396.
            DATA(t397) = abap_true.
            IF t397 = abap_true.
              DATA(t398) = |* global classes must be in own files\n\n* file names must mat|.
              t398 = t398 && |ch class name\n\n* file names must match interface name\n\n* glo|.
              t398 = t398 && |bal classes must be global definitions\n\n* global interfaces |.
              t398 = t398 && |must be global definitions\n\n* global FOR TESTING, must have |.
              t398 = t398 && |CATEGORY = 05 in the XML|.
              DATA(t399) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t399->has = abap_true.
              t399->value = t398.
              t396 = t399.
            ELSE.
              DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t400.
              t396 = t400.
            ENDIF.
            t395 = t396.
            DATA t401 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t401.
            DATA t402 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t402.
            DATA(t403) = abap_true.
            IF t403 = abap_true.
              DATA t404 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t405 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t406 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t406.
              t405 = t406.
              DATA(t407) = t405.
              DATA(t408) = |Syntax|.
              t407->load( ).
              APPEND t408 TO t407->items.
              t407->save( ).
              DATA(t409) = t405.
              t404 = t409.
              t402 = t404.
            ELSE.
              DATA t410 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t410.
              t402 = t410.
            ENDIF.
            t401 = t402.
            DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t412.
            t411 = t412.
            DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t414.
            t413 = t414.
            DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t416.
            t415 = t416.
            DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t418.
            t417 = t418.
            t388 = NEW zcl_lnt_irule_metadata( i_key = t389 i_title = t391 i_short_description = t393 i_bad_example = t411 i_good_example = t413 i_extended_information = t395 i_tags = t401 i_pragma = t415 i_pseudo_comment = t417 ).
            CREATE OBJECT t388->zlnt_view_ownkeys_b0e8086400eb.
            t388->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t419.
            IF t388->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t388->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t419 ).
            ENDIF.
            DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t420.
            IF t388->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t388->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t420 ).
            ENDIF.
            DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t421.
            IF t388->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t388->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t421 ).
            ENDIF.
            DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t422.
            IF t388->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t388->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t422 ).
            ENDIF.
            DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t423.
            IF t388->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t388->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t423 ).
            ENDIF.
            CREATE OBJECT t388->zlnt_json_ownkeys_70e5fd461788.
            t388->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t424) = |key|.
            DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t425.
            IF t388->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t388->zlnt_json_ownkeys_70e5fd461788->put( p0 = t424 p1 = t425 ).
            ENDIF.
            DATA(t426) = |title|.
            DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t427.
            IF t388->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t388->zlnt_json_ownkeys_70e5fd461788->put( p0 = t426 p1 = t427 ).
            ENDIF.
            DATA(t428) = |shortDescription|.
            DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t429.
            IF t388->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t388->zlnt_json_ownkeys_70e5fd461788->put( p0 = t428 p1 = t429 ).
            ENDIF.
            DATA(t430) = |extendedInformation|.
            DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t431.
            IF t388->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t388->zlnt_json_ownkeys_70e5fd461788->put( p0 = t430 p1 = t431 ).
            ENDIF.
            DATA(t432) = |tags|.
            DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t433.
            IF t388->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t388->zlnt_json_ownkeys_70e5fd461788->put( p0 = t432 p1 = t433 ).
            ENDIF.
            t387 = t388->key.
            DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t435) = me->conf.
            t434 = t435->zlnt_view_read_sr_15c06369f827( ).
            DATA t436 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t436.
            t383 = zcl_lnt_issue=>at_identifier( i_identifier = t384 i_message_26cb = t386 i_key = t387 i_severity = t434 i_fix = t436 ).
            t382 = t383.
            DATA(t437) = t3.
            DATA(t438) = t382.
            t437->load( ).
            APPEND t438 TO t437->items.
            t437->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t439 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t440 TYPE REF TO zif_lnt_abap_file_information.
    DATA t441 TYPE REF TO zcl_lnt_abap_file.
    DATA(t442) = t1.
    t441 = t442.
    DATA t443 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t444) = t441.
    t443 = t444->info.
    t440 = t443.
    t439 = t440->list_class_implementations( ).
    DATA t445 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    CLEAR t445.
    DATA t446 TYPE REF TO object.
    CLEAR t446.
    DATA(t447) = VALUE i( ).
    DO.
      t439->load( ).
      IF t447 >= lines( t439->items ).
        EXIT.
      ENDIF.
      CLEAR t446.
      READ TABLE t439->items INDEX t447 + 1 INTO t446.
      t447 = t447 + 1.
      DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t448.
      CLEAR t445.
      IF t446 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t448 ?= t446.
        DATA t449 TYPE REF TO object.
        t449 = t448->as_ref( ).
        t445 ?= t449.
      ELSE.
        t445 ?= t446.
      ENDIF.
      DATA(t450) = VALUE abap_bool( ).
      DATA t451 TYPE abap_bool.
      DATA t452 TYPE abap_bool.
      DATA t453 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t454 TYPE string.
      DATA t455 TYPE string.
      DATA t456 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t457) = t1.
      t456 = t457.
      DATA t458 TYPE string.
      DATA(t459) = t456.
      t458 = t459->filename.
      t455 = t458.
      t454 = t455.
      DATA t460 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t461) = t454.
      DATA t462 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t462.
      DATA(t463) = `\.clas\.abap$`.
      DATA(t464) = ||.
      CREATE OBJECT t462 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t463 flags = t464.
      t460 = t462->match( t461 ).
      t453 = t460.
      t452 = xsdbool( t453 IS BOUND ).
      t451 = t452.
      IF t452 = abap_true.
        DATA t465 TYPE abap_bool.
        DATA(t466) = t2.
        t465 = xsdbool( t466 IS BOUND AND t466 IS INSTANCE OF zcl_lnt_class ).
        t451 = t465.
      ENDIF.
      t450 = t451.
      IF t451 = abap_true.
        DATA(t467) = VALUE abap_bool( ).
        DATA(t468) = VALUE string( ).
        DATA(t469) = VALUE string( ).
        DATA t470 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t471 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t472) = t445.
        t471 = t472->identifier.
        t470 = t471.
        DATA(t473) = VALUE string( ).
        DATA t474 TYPE string.
        DATA t475 TYPE string.
        DATA t476 TYPE REF TO zcl_lnt_abstract_token.
        DATA t477 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t478) = t470.
        t477 = t478->token.
        t476 = t477.
        DATA t479 TYPE string.
        DATA(t480) = t476.
        t479 = t480->str.
        t475 = t479.
        t474 = t475.
        DATA(t481) = VALUE abap_bool( ).
        DATA(t482) = VALUE string( ).
        DATA(t483) = t474.
        DATA(t484) = 0.
        DATA(t485) = 1.
        DATA(t486) = strlen( t483 ).
        IF t484 < 0.
          t484 = t484 + t486.
          IF t484 < 0.
            t484 = 0.
          ENDIF.
        ENDIF.
        IF t484 > t486 OR t485 <= 0.
          CLEAR t482.
        ELSE.
          IF t485 > t486 - t484.
            t485 = t486 - t484.
          ENDIF.
          t482 = t483+t484(t485).
        ENDIF.
        DATA(t487) = |!|.
        t481 = xsdbool( t482 = t487 ).
        IF t481 = abap_true.
          DATA(t488) = VALUE string( ).
          DATA t489 TYPE string.
          DATA(t490) = t474.
          t489 = t490.
          DATA(t491) = VALUE string( ).
          DATA(t492) = t489.
          DATA(t493) = 1.
          DATA t494 TYPE i.
          DATA(t495) = t489.
          DATA(t496) = strlen( t495 ).
          t494 = t496.
          DATA(t497) = strlen( t492 ).
          IF t493 < 0.
            t493 = t493 + t497.
            IF t493 < 0.
              t493 = 0.
            ENDIF.
          ENDIF.
          IF t493 > t497 OR t494 <= 0.
            CLEAR t491.
          ELSE.
            IF t494 > t497 - t493.
              t494 = t497 - t493.
            ENDIF.
            t491 = t492+t493(t494).
          ENDIF.
          t488 = t491.
          t474 = t488.
        ENDIF.
        DATA(t498) = t474.
        t473 = t498.
        t469 = t473.
        DATA(t499) = strlen( t469 ).
        t468 = t469.
        IF t468 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t468 TO UPPER CASE.
        ELSE.
          t468 = zlnt_runtime_uppe_91169605024d=>full( t468 ).
        ENDIF.
        DATA t500 TYPE string.
        DATA t501 TYPE string.
        DATA t502 TYPE REF TO zcl_lnt_abstract_object.
        DATA t503 TYPE REF TO zcl_lnt_class.
        DATA(t504) = t2.
        DATA t505 TYPE REF TO object.
        t505 = t504.
        t503 ?= t505.
        t502 = t503.
        DATA t506 TYPE string.
        DATA(t507) = t502.
        t506 = t507->name.
        t501 = t506.
        DATA(t508) = strlen( t501 ).
        t500 = t501.
        IF t500 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t500 TO UPPER CASE.
        ELSE.
          t500 = zlnt_runtime_uppe_91169605024d=>full( t500 ).
        ENDIF.
        t467 = xsdbool( t468 <> t500 ).
        t450 = t467.
      ENDIF.
      IF t450 = abap_true.
        DATA t509 TYPE REF TO zcl_lnt_issue.
        CLEAR t509.
        DATA t510 TYPE REF TO zcl_lnt_issue.
        CLEAR t510.
        DATA t511 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t512) = t445.
        t511 = t512->identifier.
        DATA(t513) = |Class implementation name must match filename|.
        DATA(t514) = VALUE string( ).
        DATA t515 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t515.
        DATA t516 TYPE string.
        DATA(t517) = |global_class|.
        t516 = t517.
        DATA t518 TYPE string.
        DATA(t519) = |Global class checks|.
        t518 = t519.
        DATA t520 TYPE string.
        DATA(t521) = |Checks related to global classes|.
        t520 = t521.
        DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t522.
        DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t523.
        DATA(t524) = abap_true.
        IF t524 = abap_true.
          DATA(t525) = |* global classes must be in own files\n\n* file names must mat|.
          t525 = t525 && |ch class name\n\n* file names must match interface name\n\n* glo|.
          t525 = t525 && |bal classes must be global definitions\n\n* global interfaces |.
          t525 = t525 && |must be global definitions\n\n* global FOR TESTING, must have |.
          t525 = t525 && |CATEGORY = 05 in the XML|.
          DATA(t526) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t526->has = abap_true.
          t526->value = t525.
          t523 = t526.
        ELSE.
          DATA t527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t527.
          t523 = t527.
        ENDIF.
        t522 = t523.
        DATA t528 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t528.
        DATA t529 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t529.
        DATA(t530) = abap_true.
        IF t530 = abap_true.
          DATA t531 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t532 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t533 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t533.
          t532 = t533.
          DATA(t534) = t532.
          DATA(t535) = |Syntax|.
          t534->load( ).
          APPEND t535 TO t534->items.
          t534->save( ).
          DATA(t536) = t532.
          t531 = t536.
          t529 = t531.
        ELSE.
          DATA t537 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t537.
          t529 = t537.
        ENDIF.
        t528 = t529.
        DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t539.
        t538 = t539.
        DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t541.
        t540 = t541.
        DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t543.
        t542 = t543.
        DATA t544 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t545.
        t544 = t545.
        t515 = NEW zcl_lnt_irule_metadata( i_key = t516 i_title = t518 i_short_description = t520 i_bad_example = t538 i_good_example = t540 i_extended_information = t522 i_tags = t528 i_pragma = t542 i_pseudo_comment = t544 ).
        CREATE OBJECT t515->zlnt_view_ownkeys_b0e8086400eb.
        t515->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t546.
        IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t546 ).
        ENDIF.
        DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t547.
        IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t547 ).
        ENDIF.
        DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t548.
        IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t548 ).
        ENDIF.
        DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t549.
        IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t549 ).
        ENDIF.
        DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t550.
        IF t515->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t550 ).
        ENDIF.
        CREATE OBJECT t515->zlnt_json_ownkeys_70e5fd461788.
        t515->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t551) = |key|.
        DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t552.
        IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t551 p1 = t552 ).
        ENDIF.
        DATA(t553) = |title|.
        DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t554.
        IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t553 p1 = t554 ).
        ENDIF.
        DATA(t555) = |shortDescription|.
        DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t556.
        IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t555 p1 = t556 ).
        ENDIF.
        DATA(t557) = |extendedInformation|.
        DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t558.
        IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t557 p1 = t558 ).
        ENDIF.
        DATA(t559) = |tags|.
        DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t560.
        IF t515->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t559 p1 = t560 ).
        ENDIF.
        t514 = t515->key.
        DATA t561 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t562) = me->conf.
        t561 = t562->zlnt_view_read_sr_15c06369f827( ).
        DATA t563 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t563.
        t510 = zcl_lnt_issue=>at_identifier( i_identifier = t511 i_message_26cb = t513 i_key = t514 i_severity = t561 i_fix = t563 ).
        t509 = t510.
        DATA(t564) = t3.
        DATA(t565) = t509.
        t564->load( ).
        APPEND t565 TO t564->items.
        t564->save( ).
      ENDIF.
    ENDDO.
    DATA t566 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t567 TYPE REF TO zif_lnt_abap_file_information.
    DATA t568 TYPE REF TO zcl_lnt_abap_file.
    DATA(t569) = t1.
    t568 = t569.
    DATA t570 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t571) = t568.
    t570 = t571->info.
    t567 = t570.
    t566 = t567->list_interface_definitions( ).
    DATA t572 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t572.
    DATA t573 TYPE REF TO object.
    CLEAR t573.
    DATA(t574) = VALUE i( ).
    DO.
      t566->load( ).
      IF t574 >= lines( t566->items ).
        EXIT.
      ENDIF.
      CLEAR t573.
      READ TABLE t566->items INDEX t574 + 1 INTO t573.
      t574 = t574 + 1.
      DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t575.
      CLEAR t572.
      IF t573 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t575 ?= t573.
        DATA t576 TYPE REF TO object.
        t576 = t575->as_ref( ).
        t572 ?= t576.
      ELSE.
        t572 ?= t573.
      ENDIF.
      DATA(t577) = VALUE abap_bool( ).
      DATA t578 TYPE abap_bool.
      DATA t579 TYPE abap_bool.
      DATA t580 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t581 TYPE string.
      DATA t582 TYPE string.
      DATA t583 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t584) = t1.
      t583 = t584.
      DATA t585 TYPE string.
      DATA(t586) = t583.
      t585 = t586->filename.
      t582 = t585.
      t581 = t582.
      DATA t587 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t588) = t581.
      DATA t589 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t589.
      DATA(t590) = `\.intf\.abap$`.
      DATA(t591) = ||.
      CREATE OBJECT t589 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t590 flags = t591.
      t587 = t589->match( t588 ).
      t580 = t587.
      t579 = xsdbool( t580 IS BOUND ).
      t578 = t579.
      IF t579 = abap_true.
        DATA t592 TYPE abap_bool.
        DATA(t593) = t2.
        t592 = xsdbool( t593 IS BOUND AND t593 IS INSTANCE OF zcl_lnt_ob_interface ).
        t578 = t592.
      ENDIF.
      t577 = t578.
      IF t578 = abap_true.
        DATA(t594) = VALUE abap_bool( ).
        DATA(t595) = VALUE string( ).
        DATA(t596) = VALUE string( ).
        DATA t597 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t598 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t599) = t572.
        t598 = t599->identifier.
        t597 = t598.
        DATA(t600) = VALUE string( ).
        DATA t601 TYPE string.
        DATA t602 TYPE string.
        DATA t603 TYPE REF TO zcl_lnt_abstract_token.
        DATA t604 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t605) = t597.
        t604 = t605->token.
        t603 = t604.
        DATA t606 TYPE string.
        DATA(t607) = t603.
        t606 = t607->str.
        t602 = t606.
        t601 = t602.
        DATA(t608) = VALUE abap_bool( ).
        DATA(t609) = VALUE string( ).
        DATA(t610) = t601.
        DATA(t611) = 0.
        DATA(t612) = 1.
        DATA(t613) = strlen( t610 ).
        IF t611 < 0.
          t611 = t611 + t613.
          IF t611 < 0.
            t611 = 0.
          ENDIF.
        ENDIF.
        IF t611 > t613 OR t612 <= 0.
          CLEAR t609.
        ELSE.
          IF t612 > t613 - t611.
            t612 = t613 - t611.
          ENDIF.
          t609 = t610+t611(t612).
        ENDIF.
        DATA(t614) = |!|.
        t608 = xsdbool( t609 = t614 ).
        IF t608 = abap_true.
          DATA(t615) = VALUE string( ).
          DATA t616 TYPE string.
          DATA(t617) = t601.
          t616 = t617.
          DATA(t618) = VALUE string( ).
          DATA(t619) = t616.
          DATA(t620) = 1.
          DATA t621 TYPE i.
          DATA(t622) = t616.
          DATA(t623) = strlen( t622 ).
          t621 = t623.
          DATA(t624) = strlen( t619 ).
          IF t620 < 0.
            t620 = t620 + t624.
            IF t620 < 0.
              t620 = 0.
            ENDIF.
          ENDIF.
          IF t620 > t624 OR t621 <= 0.
            CLEAR t618.
          ELSE.
            IF t621 > t624 - t620.
              t621 = t624 - t620.
            ENDIF.
            t618 = t619+t620(t621).
          ENDIF.
          t615 = t618.
          t601 = t615.
        ENDIF.
        DATA(t625) = t601.
        t600 = t625.
        t596 = t600.
        DATA(t626) = strlen( t596 ).
        t595 = t596.
        IF t595 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t595 TO UPPER CASE.
        ELSE.
          t595 = zlnt_runtime_uppe_91169605024d=>full( t595 ).
        ENDIF.
        DATA t627 TYPE string.
        DATA t628 TYPE string.
        DATA t629 TYPE REF TO zcl_lnt_abstract_object.
        DATA t630 TYPE REF TO zcl_lnt_ob_interface.
        DATA(t631) = t2.
        DATA t632 TYPE REF TO object.
        t632 = t631.
        t630 ?= t632.
        t629 = t630.
        DATA t633 TYPE string.
        DATA(t634) = t629.
        t633 = t634->name.
        t628 = t633.
        DATA(t635) = strlen( t628 ).
        t627 = t628.
        IF t627 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t627 TO UPPER CASE.
        ELSE.
          t627 = zlnt_runtime_uppe_91169605024d=>full( t627 ).
        ENDIF.
        t594 = xsdbool( t595 <> t627 ).
        t577 = t594.
      ENDIF.
      IF t577 = abap_true.
        DATA t636 TYPE REF TO zcl_lnt_issue.
        CLEAR t636.
        DATA t637 TYPE REF TO zcl_lnt_issue.
        CLEAR t637.
        DATA t638 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t639) = t572.
        t638 = t639->identifier.
        DATA(t640) = |Interface implementation name must match filename|.
        DATA(t641) = VALUE string( ).
        DATA t642 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t642.
        DATA t643 TYPE string.
        DATA(t644) = |global_class|.
        t643 = t644.
        DATA t645 TYPE string.
        DATA(t646) = |Global class checks|.
        t645 = t646.
        DATA t647 TYPE string.
        DATA(t648) = |Checks related to global classes|.
        t647 = t648.
        DATA t649 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t649.
        DATA t650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t650.
        DATA(t651) = abap_true.
        IF t651 = abap_true.
          DATA(t652) = |* global classes must be in own files\n\n* file names must mat|.
          t652 = t652 && |ch class name\n\n* file names must match interface name\n\n* glo|.
          t652 = t652 && |bal classes must be global definitions\n\n* global interfaces |.
          t652 = t652 && |must be global definitions\n\n* global FOR TESTING, must have |.
          t652 = t652 && |CATEGORY = 05 in the XML|.
          DATA(t653) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t653->has = abap_true.
          t653->value = t652.
          t650 = t653.
        ELSE.
          DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t654.
          t650 = t654.
        ENDIF.
        t649 = t650.
        DATA t655 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t655.
        DATA t656 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t656.
        DATA(t657) = abap_true.
        IF t657 = abap_true.
          DATA t658 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t659 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t660 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t660.
          t659 = t660.
          DATA(t661) = t659.
          DATA(t662) = |Syntax|.
          t661->load( ).
          APPEND t662 TO t661->items.
          t661->save( ).
          DATA(t663) = t659.
          t658 = t663.
          t656 = t658.
        ELSE.
          DATA t664 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t664.
          t656 = t664.
        ENDIF.
        t655 = t656.
        DATA t665 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t666.
        t665 = t666.
        DATA t667 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t668 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t668.
        t667 = t668.
        DATA t669 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t670 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t670.
        t669 = t670.
        DATA t671 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t672 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t672.
        t671 = t672.
        t642 = NEW zcl_lnt_irule_metadata( i_key = t643 i_title = t645 i_short_description = t647 i_bad_example = t665 i_good_example = t667 i_extended_information = t649 i_tags = t655 i_pragma = t669 i_pseudo_comment = t671 ).
        CREATE OBJECT t642->zlnt_view_ownkeys_b0e8086400eb.
        t642->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t673.
        IF t642->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t673 ).
        ENDIF.
        DATA t674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t674.
        IF t642->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t674 ).
        ENDIF.
        DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t675.
        IF t642->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t675 ).
        ENDIF.
        DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t676.
        IF t642->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t676 ).
        ENDIF.
        DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t677.
        IF t642->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t677 ).
        ENDIF.
        CREATE OBJECT t642->zlnt_json_ownkeys_70e5fd461788.
        t642->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t678) = |key|.
        DATA t679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t679.
        IF t642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t642->zlnt_json_ownkeys_70e5fd461788->put( p0 = t678 p1 = t679 ).
        ENDIF.
        DATA(t680) = |title|.
        DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t681.
        IF t642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t642->zlnt_json_ownkeys_70e5fd461788->put( p0 = t680 p1 = t681 ).
        ENDIF.
        DATA(t682) = |shortDescription|.
        DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t683.
        IF t642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t642->zlnt_json_ownkeys_70e5fd461788->put( p0 = t682 p1 = t683 ).
        ENDIF.
        DATA(t684) = |extendedInformation|.
        DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t685.
        IF t642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t642->zlnt_json_ownkeys_70e5fd461788->put( p0 = t684 p1 = t685 ).
        ENDIF.
        DATA(t686) = |tags|.
        DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t687.
        IF t642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t642->zlnt_json_ownkeys_70e5fd461788->put( p0 = t686 p1 = t687 ).
        ENDIF.
        t641 = t642->key.
        DATA t688 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t689) = me->conf.
        t688 = t689->zlnt_view_read_sr_15c06369f827( ).
        DATA t690 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t690.
        t637 = zcl_lnt_issue=>at_identifier( i_identifier = t638 i_message_26cb = t640 i_key = t641 i_severity = t688 i_fix = t690 ).
        t636 = t637.
        DATA(t691) = t3.
        DATA(t692) = t636.
        t691->load( ).
        APPEND t692 TO t691->items.
        t691->save( ).
      ENDIF.
    ENDDO.
    DATA t693 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t694 TYPE REF TO zif_lnt_abap_file_information.
    DATA t695 TYPE REF TO zcl_lnt_abap_file.
    DATA(t696) = t1.
    t695 = t696.
    DATA t697 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t698) = t695.
    t697 = t698->info.
    t694 = t697.
    t693 = t694->list_interface_definitions( ).
    DATA t699 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t699.
    DATA t700 TYPE REF TO object.
    CLEAR t700.
    DATA(t701) = VALUE i( ).
    DO.
      t693->load( ).
      IF t701 >= lines( t693->items ).
        EXIT.
      ENDIF.
      CLEAR t700.
      READ TABLE t693->items INDEX t701 + 1 INTO t700.
      t701 = t701 + 1.
      DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t702.
      CLEAR t699.
      IF t700 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t702 ?= t700.
        DATA t703 TYPE REF TO object.
        t703 = t702->as_ref( ).
        t699 ?= t703.
      ELSE.
        t699 ?= t700.
      ENDIF.
      DATA(t704) = VALUE abap_bool( ).
      DATA(t705) = VALUE abap_bool( ).
      DATA(t706) = VALUE abap_bool( ).
      DATA t707 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t708) = t699.
      t707 = t708->is_local.
      IF t707 IS BOUND.
        IF t707->has = abap_true.
          t706 = xsdbool( t707->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t705 = t706.
      IF t706 = abap_true.
        DATA t709 TYPE abap_bool.
        DATA(t710) = t2.
        t709 = xsdbool( t710 IS BOUND AND t710 IS INSTANCE OF zcl_lnt_ob_interface ).
        t705 = t709.
      ENDIF.
      t704 = t705.
      IF t705 = abap_true.
        DATA t711 TYPE abap_bool.
        DATA t712 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t713 TYPE string.
        DATA t714 TYPE string.
        DATA t715 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t716) = t1.
        t715 = t716.
        DATA t717 TYPE string.
        DATA(t718) = t715.
        t717 = t718->filename.
        t714 = t717.
        t713 = t714.
        DATA t719 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t720) = t713.
        DATA t721 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t721.
        DATA(t722) = `\.intf\.abap$`.
        DATA(t723) = ||.
        CREATE OBJECT t721 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t722 flags = t723.
        t719 = t721->match( t720 ).
        t712 = t719.
        t711 = xsdbool( t712 IS BOUND ).
        t704 = t711.
      ENDIF.
      IF t704 = abap_true.
        DATA t724 TYPE REF TO zcl_lnt_issue.
        CLEAR t724.
        DATA t725 TYPE REF TO zcl_lnt_issue.
        CLEAR t725.
        DATA t726 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t727) = t699.
        t726 = t727->identifier.
        DATA(t728) = |Global interface must be global|.
        DATA(t729) = VALUE string( ).
        DATA t730 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t730.
        DATA t731 TYPE string.
        DATA(t732) = |global_class|.
        t731 = t732.
        DATA t733 TYPE string.
        DATA(t734) = |Global class checks|.
        t733 = t734.
        DATA t735 TYPE string.
        DATA(t736) = |Checks related to global classes|.
        t735 = t736.
        DATA t737 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t737.
        DATA t738 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t738.
        DATA(t739) = abap_true.
        IF t739 = abap_true.
          DATA(t740) = |* global classes must be in own files\n\n* file names must mat|.
          t740 = t740 && |ch class name\n\n* file names must match interface name\n\n* glo|.
          t740 = t740 && |bal classes must be global definitions\n\n* global interfaces |.
          t740 = t740 && |must be global definitions\n\n* global FOR TESTING, must have |.
          t740 = t740 && |CATEGORY = 05 in the XML|.
          DATA(t741) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t741->has = abap_true.
          t741->value = t740.
          t738 = t741.
        ELSE.
          DATA t742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t742.
          t738 = t742.
        ENDIF.
        t737 = t738.
        DATA t743 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t743.
        DATA t744 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t744.
        DATA(t745) = abap_true.
        IF t745 = abap_true.
          DATA t746 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t747 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t748 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t748.
          t747 = t748.
          DATA(t749) = t747.
          DATA(t750) = |Syntax|.
          t749->load( ).
          APPEND t750 TO t749->items.
          t749->save( ).
          DATA(t751) = t747.
          t746 = t751.
          t744 = t746.
        ELSE.
          DATA t752 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t752.
          t744 = t752.
        ENDIF.
        t743 = t744.
        DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t754.
        t753 = t754.
        DATA t755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t756 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t756.
        t755 = t756.
        DATA t757 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t758 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t758.
        t757 = t758.
        DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t760.
        t759 = t760.
        t730 = NEW zcl_lnt_irule_metadata( i_key = t731 i_title = t733 i_short_description = t735 i_bad_example = t753 i_good_example = t755 i_extended_information = t737 i_tags = t743 i_pragma = t757 i_pseudo_comment = t759 ).
        CREATE OBJECT t730->zlnt_view_ownkeys_b0e8086400eb.
        t730->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t761.
        IF t730->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t761 ).
        ENDIF.
        DATA t762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t762.
        IF t730->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t762 ).
        ENDIF.
        DATA t763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t763.
        IF t730->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t763 ).
        ENDIF.
        DATA t764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t764.
        IF t730->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t764 ).
        ENDIF.
        DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t765.
        IF t730->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t765 ).
        ENDIF.
        CREATE OBJECT t730->zlnt_json_ownkeys_70e5fd461788.
        t730->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t766) = |key|.
        DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t767.
        IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t766 p1 = t767 ).
        ENDIF.
        DATA(t768) = |title|.
        DATA t769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t769.
        IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t768 p1 = t769 ).
        ENDIF.
        DATA(t770) = |shortDescription|.
        DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t771.
        IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t770 p1 = t771 ).
        ENDIF.
        DATA(t772) = |extendedInformation|.
        DATA t773 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t773.
        IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t772 p1 = t773 ).
        ENDIF.
        DATA(t774) = |tags|.
        DATA t775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t775.
        IF t730->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t774 p1 = t775 ).
        ENDIF.
        t729 = t730->key.
        DATA t776 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t777) = me->conf.
        t776 = t777->zlnt_view_read_sr_15c06369f827( ).
        DATA t778 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t778.
        t725 = zcl_lnt_issue=>at_identifier( i_identifier = t726 i_message_26cb = t728 i_key = t729 i_severity = t776 i_fix = t778 ).
        t724 = t725.
        DATA(t779) = t3.
        DATA(t780) = t724.
        t779->load( ).
        APPEND t780 TO t779->items.
        t779->save( ).
      ENDIF.
    ENDDO.
    DATA(t781) = t3.
    result = t781.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_global_class_conf( me->gt_cn_in_sr_rl_gl_cl_ts_gl_cls( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_global_class_conf( me->gt_cn_in_sr_rl_gl_cl_ts_gl_cls( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_global_class_conf.
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
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
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
        t1 = NEW zcl_lnt_global_class_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_gl_cl_ts_gl_cls( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_gl_cl_ts_gl_cls( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1522_61308d1d7b11.
  ENDMETHOD.
ENDCLASS.
