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
    me->conf = NEW zcl_lnt_global_class_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |global_class|.
    DATA t4 TYPE string.
    t4 = |Global class checks|.
    DATA t6 TYPE string.
    t6 = |Checks related to global classes|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |* global classes must be in own files\n\n* file names must mat|.
    t11 = t11 && |ch class name\n\n* file names must match interface name\n\n* glo|.
    t11 = t11 && |bal classes must be global definitions\n\n* global interfaces |.
    t11 = t11 && |must be global definitions\n\n* global FOR TESTING, must have |.
    t11 = t11 && |CATEGORY = 05 in the XML|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Syntax|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |extendedInformation|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_gl_cl_ts_gl_cls.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_gl_cl_ts_gl_cls.
    me->conf = i_conf.
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
    DATA t9 TYPE REF TO zif_lnt_abap_file_information.
    t9 = t1->info.
    t6 = t9.
    t5 = t6->list_class_definitions( ).
    DATA t11 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t12 TYPE REF TO object.
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
      t19 = t11->is_local.
      IF t19 IS BOUND.
        IF t19->has = abap_true.
          t18 = xsdbool( t19->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t17 = t18.
      IF t18 = abap_true.
        DATA t21 TYPE abap_bool.
        t21 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
        t17 = t21.
      ENDIF.
      t16 = t17.
      IF t17 = abap_true.
        DATA t23 TYPE abap_bool.
        DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t27 TYPE REF TO zcl_lnt_abstract_file.
        t27 = t1.
        DATA t29 TYPE string.
        t29 = t27->filename.
        DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t33 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t33.
        DATA(t34) = `\.clas\.abap$`.
        DATA(t35) = ||.
        CREATE OBJECT t33 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t34 flags = t35.
        t31 = t33->match( t29 ).
        t24 = t31.
        t23 = xsdbool( t24 IS BOUND ).
        t16 = t23.
      ENDIF.
      IF t16 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_issue.
        CLEAR t37.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        t38 = t11->identifier.
        DATA(t40) = |Global classes must be global|.
        DATA(t41) = VALUE string( ).
        DATA t42 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t42.
        DATA t43 TYPE string.
        t43 = |global_class|.
        DATA t45 TYPE string.
        t45 = |Global class checks|.
        DATA t47 TYPE string.
        t47 = |Checks related to global classes|.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        DATA(t52) = |* global classes must be in own files\n\n* file names must mat|.
        t52 = t52 && |ch class name\n\n* file names must match interface name\n\n* glo|.
        t52 = t52 && |bal classes must be global definitions\n\n* global interfaces |.
        t52 = t52 && |must be global definitions\n\n* global FOR TESTING, must have |.
        t52 = t52 && |CATEGORY = 05 in the XML|.
        DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t53->has = abap_true.
        t53->value = t52.
        t49 = t53.
        DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t55.
        DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t60.
        t59 = t60.
        DATA(t62) = |Syntax|.
        t59->load( ).
        APPEND t62 TO t59->items.
        t59->save( ).
        t55 = t59.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        t42 = NEW zcl_lnt_irule_metadata( i_key = t43 i_title = t45 i_short_description = t47 i_bad_example = t65 i_good_example = t67 i_extended_information = t49 i_tags = t55 i_pragma = t69 i_pseudo_comment = t71 ).
        CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
        t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t73 ).
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
        t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
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
        t88 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t90.
        t37 = zcl_lnt_issue=>at_identifier( i_identifier = t38 i_message_26cb = t40 i_key = t41 i_severity = t88 i_fix = t90 ).
        t3->load( ).
        APPEND t37 TO t3->items.
        t3->save( ).
      ENDIF.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = VALUE abap_bool( ).
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t96 = t11->is_global.
      IF t96 IS BOUND.
        IF t96->has = abap_true.
          t95 = xsdbool( t96->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t94 = t95.
      IF t95 = abap_true.
        DATA t98 TYPE abap_bool.
        t98 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
        t94 = t98.
      ENDIF.
      t93 = t94.
      IF t94 = abap_true.
        DATA(t100) = VALUE abap_bool( ).
        DATA t101 TYPE string.
        DATA t102 TYPE string.
        t102 = t11->name.
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
        DATA t110 TYPE REF TO object.
        t110 = t2.
        t108 ?= t110.
        t107 = t108.
        DATA t111 TYPE string.
        t111 = t107->name.
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
        DATA t115 TYPE REF TO zcl_lnt_issue.
        CLEAR t115.
        DATA t116 TYPE REF TO zcl_lnt_fi_identifier.
        t116 = t11->identifier.
        DATA(t118) = |Class definition name must match filename|.
        DATA(t119) = VALUE string( ).
        DATA t120 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t120.
        DATA t121 TYPE string.
        t121 = |global_class|.
        DATA t123 TYPE string.
        t123 = |Global class checks|.
        DATA t125 TYPE string.
        t125 = |Checks related to global classes|.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        DATA(t130) = |* global classes must be in own files\n\n* file names must mat|.
        t130 = t130 && |ch class name\n\n* file names must match interface name\n\n* glo|.
        t130 = t130 && |bal classes must be global definitions\n\n* global interfaces |.
        t130 = t130 && |must be global definitions\n\n* global FOR TESTING, must have |.
        t130 = t130 && |CATEGORY = 05 in the XML|.
        DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t131->has = abap_true.
        t131->value = t130.
        t127 = t131.
        DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t133.
        DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t138.
        t137 = t138.
        DATA(t140) = |Syntax|.
        t137->load( ).
        APPEND t140 TO t137->items.
        t137->save( ).
        t133 = t137.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        t120 = NEW zcl_lnt_irule_metadata( i_key = t121 i_title = t123 i_short_description = t125 i_bad_example = t143 i_good_example = t145 i_extended_information = t127 i_tags = t133 i_pragma = t147 i_pseudo_comment = t149 ).
        CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
        t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t151 ).
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
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
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
        t166 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t168 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t168.
        t115 = zcl_lnt_issue=>at_identifier( i_identifier = t116 i_message_26cb = t118 i_key = t119 i_severity = t166 i_fix = t168 ).
        t3->load( ).
        APPEND t115 TO t3->items.
        t3->save( ).
      ENDIF.
      DATA(t171) = VALUE abap_bool( ).
      DATA(t172) = VALUE abap_bool( ).
      DATA t173 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t173 = t11->is_global.
      IF t173 IS BOUND.
        IF t173->has = abap_true.
          t172 = xsdbool( t173->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t171 = t172.
      IF t172 = abap_true.
        DATA t175 TYPE abap_bool.
        DATA t176 TYPE abap_bool.
        t176 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
        t175 = xsdbool( t176 = abap_false ).
        t171 = t175.
      ENDIF.
      IF t171 = abap_true.
        DATA t179 TYPE REF TO zcl_lnt_issue.
        CLEAR t179.
        DATA t180 TYPE REF TO zcl_lnt_fi_identifier.
        t180 = t11->identifier.
        DATA(t182) = |Class must be local|.
        DATA(t183) = VALUE string( ).
        DATA t184 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t184.
        DATA t185 TYPE string.
        t185 = |global_class|.
        DATA t187 TYPE string.
        t187 = |Global class checks|.
        DATA t189 TYPE string.
        t189 = |Checks related to global classes|.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        DATA(t194) = |* global classes must be in own files\n\n* file names must mat|.
        t194 = t194 && |ch class name\n\n* file names must match interface name\n\n* glo|.
        t194 = t194 && |bal classes must be global definitions\n\n* global interfaces |.
        t194 = t194 && |must be global definitions\n\n* global FOR TESTING, must have |.
        t194 = t194 && |CATEGORY = 05 in the XML|.
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t194.
        t191 = t195.
        DATA t197 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t197.
        DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t202 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t202.
        t201 = t202.
        DATA(t204) = |Syntax|.
        t201->load( ).
        APPEND t204 TO t201->items.
        t201->save( ).
        t197 = t201.
        DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t207.
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t209.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t211.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t213.
        t184 = NEW zcl_lnt_irule_metadata( i_key = t185 i_title = t187 i_short_description = t189 i_bad_example = t207 i_good_example = t209 i_extended_information = t191 i_tags = t197 i_pragma = t211 i_pseudo_comment = t213 ).
        CREATE OBJECT t184->zlnt_view_ownkeys_b0e8086400eb.
        t184->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t215.
        t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t215 ).
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
        t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
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
        t230 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t232 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t232.
        t179 = zcl_lnt_issue=>at_identifier( i_identifier = t180 i_message_26cb = t182 i_key = t183 i_severity = t230 i_fix = t232 ).
        t3->load( ).
        APPEND t179 TO t3->items.
        t3->save( ).
      ENDIF.
      DATA(t235) = VALUE abap_bool( ).
      DATA(t236) = VALUE abap_bool( ).
      DATA t237 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t237 = t11->is_global.
      IF t237 IS BOUND.
        IF t237->has = abap_true.
          t236 = xsdbool( t237->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t235 = t236.
      IF t236 = abap_true.
        DATA t239 TYPE abap_bool.
        t239 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
        t235 = t239.
      ENDIF.
      IF t235 = abap_true.
        DATA(t241) = VALUE abap_bool( ).
        DATA(t242) = VALUE abap_bool( ).
        DATA(t243) = VALUE abap_bool( ).
        DATA t244 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t244 = t11->is_for_testing.
        DATA t246 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t246.
        DATA(t249) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t249->has = abap_true.
        t249->value = abap_true.
        t246 = t249.
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
          t253 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
          t242 = t253.
        ENDIF.
        t241 = t242.
        IF t242 = abap_true.
          DATA(t255) = VALUE abap_bool( ).
          DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t256.
          DATA t257 TYPE REF TO zcl_lnt_class.
          DATA t258 TYPE REF TO zcl_lnt_class.
          DATA t260 TYPE REF TO object.
          t260 = t2.
          t258 ?= t260.
          t257 = t258.
          t257->parse_xml( ).
          DATA t264 TYPE REF TO zcl_lnt_shape_e272b380.
          DATA t265 TYPE REF TO zcl_lnt_shape_e272b380.
          t265 = t257->parsed_xml.
          t264 = t265.
          DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t267.
          DATA(t268) = xsdbool( t264 IS INITIAL ).
          IF t268 = abap_true.
            CLEAR t267.
          ELSE.
            DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t272 TYPE REF TO zcl_lnt_shape_e272b380.
            t272 = t264.
            t271 = t272->category.
            t267 = t271.
          ENDIF.
          t256 = t267.
          DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t274.
          DATA(t276) = |05|.
          DATA(t277) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t277->has = abap_true.
          t277->value = t276.
          t274 = t277.
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
          DATA(t282) = |Class is marked as FOR TESTING, but CATEGORY is not 05 in th|.
          t282 = t282 && |e XML|.
          DATA t284 TYPE REF TO zcl_lnt_issue.
          CLEAR t284.
          DATA t285 TYPE REF TO zcl_lnt_fi_identifier.
          t285 = t11->identifier.
          DATA(t288) = VALUE string( ).
          DATA t289 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t289.
          DATA t290 TYPE string.
          t290 = |global_class|.
          DATA t292 TYPE string.
          t292 = |Global class checks|.
          DATA t294 TYPE string.
          t294 = |Checks related to global classes|.
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t296.
          DATA(t299) = |* global classes must be in own files\n\n* file names must mat|.
          t299 = t299 && |ch class name\n\n* file names must match interface name\n\n* glo|.
          t299 = t299 && |bal classes must be global definitions\n\n* global interfaces |.
          t299 = t299 && |must be global definitions\n\n* global FOR TESTING, must have |.
          t299 = t299 && |CATEGORY = 05 in the XML|.
          DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t300->has = abap_true.
          t300->value = t299.
          t296 = t300.
          DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t302.
          DATA t306 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t307 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t307.
          t306 = t307.
          DATA(t309) = |Syntax|.
          t306->load( ).
          APPEND t309 TO t306->items.
          t306->save( ).
          t302 = t306.
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t312.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t314.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t316.
          DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t318.
          t289 = NEW zcl_lnt_irule_metadata( i_key = t290 i_title = t292 i_short_description = t294 i_bad_example = t312 i_good_example = t314 i_extended_information = t296 i_tags = t302 i_pragma = t316 i_pseudo_comment = t318 ).
          CREATE OBJECT t289->zlnt_view_ownkeys_b0e8086400eb.
          t289->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t320.
          t289->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t320 ).
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
          t289->zlnt_json_ownkeys_70e5fd461788->put( p0 = t325 p1 = t326 ).
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
          t335 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t337 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t337.
          t284 = zcl_lnt_issue=>at_identifier( i_identifier = t285 i_message_26cb = t282 i_key = t288 i_severity = t335 i_fix = t337 ).
          t3->load( ).
          APPEND t284 TO t3->items.
          t3->save( ).
        ELSE.
          DATA(t340) = VALUE abap_bool( ).
          DATA(t341) = VALUE abap_bool( ).
          DATA(t342) = VALUE abap_bool( ).
          DATA t343 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t343 = t11->is_for_testing.
          DATA t345 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t345.
          DATA(t348) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t348->has = abap_true.
          t348->value = abap_false.
          t345 = t348.
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
            t352 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
            t341 = t352.
          ENDIF.
          t340 = t341.
          IF t341 = abap_true.
            DATA(t354) = VALUE abap_bool( ).
            DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t355.
            DATA t356 TYPE REF TO zcl_lnt_class.
            DATA t357 TYPE REF TO zcl_lnt_class.
            DATA t359 TYPE REF TO object.
            t359 = t2.
            t357 ?= t359.
            t356 = t357.
            t356->parse_xml( ).
            DATA t363 TYPE REF TO zcl_lnt_shape_e272b380.
            DATA t364 TYPE REF TO zcl_lnt_shape_e272b380.
            t364 = t356->parsed_xml.
            t363 = t364.
            DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t366.
            DATA(t367) = xsdbool( t363 IS INITIAL ).
            IF t367 = abap_true.
              CLEAR t366.
            ELSE.
              DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t371 TYPE REF TO zcl_lnt_shape_e272b380.
              t371 = t363.
              t370 = t371->category.
              t366 = t370.
            ENDIF.
            t355 = t366.
            DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t373.
            DATA(t375) = |05|.
            DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t376->has = abap_true.
            t376->value = t375.
            t373 = t376.
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
            DATA(t381) = |Class has CATEGORY 05 in the XML, but is not marked as FOR T|.
            t381 = t381 && |ESTING|.
            DATA t383 TYPE REF TO zcl_lnt_issue.
            CLEAR t383.
            DATA t384 TYPE REF TO zcl_lnt_fi_identifier.
            t384 = t11->identifier.
            DATA(t387) = VALUE string( ).
            DATA t388 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t388.
            DATA t389 TYPE string.
            t389 = |global_class|.
            DATA t391 TYPE string.
            t391 = |Global class checks|.
            DATA t393 TYPE string.
            t393 = |Checks related to global classes|.
            DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t395.
            DATA(t398) = |* global classes must be in own files\n\n* file names must mat|.
            t398 = t398 && |ch class name\n\n* file names must match interface name\n\n* glo|.
            t398 = t398 && |bal classes must be global definitions\n\n* global interfaces |.
            t398 = t398 && |must be global definitions\n\n* global FOR TESTING, must have |.
            t398 = t398 && |CATEGORY = 05 in the XML|.
            DATA(t399) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t399->has = abap_true.
            t399->value = t398.
            t395 = t399.
            DATA t401 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t401.
            DATA t405 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t406 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t406.
            t405 = t406.
            DATA(t408) = |Syntax|.
            t405->load( ).
            APPEND t408 TO t405->items.
            t405->save( ).
            t401 = t405.
            DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t411.
            DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t413.
            DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t415.
            DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t417.
            t388 = NEW zcl_lnt_irule_metadata( i_key = t389 i_title = t391 i_short_description = t393 i_bad_example = t411 i_good_example = t413 i_extended_information = t395 i_tags = t401 i_pragma = t415 i_pseudo_comment = t417 ).
            CREATE OBJECT t388->zlnt_view_ownkeys_b0e8086400eb.
            t388->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t419.
            t388->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t419 ).
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
            t388->zlnt_json_ownkeys_70e5fd461788->put( p0 = t424 p1 = t425 ).
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
            t434 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t436 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t436.
            t383 = zcl_lnt_issue=>at_identifier( i_identifier = t384 i_message_26cb = t381 i_key = t387 i_severity = t434 i_fix = t436 ).
            t3->load( ).
            APPEND t383 TO t3->items.
            t3->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t439 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t440 TYPE REF TO zif_lnt_abap_file_information.
    DATA t443 TYPE REF TO zif_lnt_abap_file_information.
    t443 = t1->info.
    t440 = t443.
    t439 = t440->list_class_implementations( ).
    DATA t445 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    DATA t446 TYPE REF TO object.
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
      DATA t456 TYPE REF TO zcl_lnt_abstract_file.
      t456 = t1.
      DATA t458 TYPE string.
      t458 = t456->filename.
      DATA t460 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t462 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t462.
      DATA(t463) = `\.clas\.abap$`.
      DATA(t464) = ||.
      CREATE OBJECT t462 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t463 flags = t464.
      t460 = t462->match( t458 ).
      t453 = t460.
      t452 = xsdbool( t453 IS BOUND ).
      t451 = t452.
      IF t452 = abap_true.
        DATA t465 TYPE abap_bool.
        t465 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
        t451 = t465.
      ENDIF.
      t450 = t451.
      IF t451 = abap_true.
        DATA(t467) = VALUE abap_bool( ).
        DATA(t468) = VALUE string( ).
        DATA(t469) = VALUE string( ).
        DATA t471 TYPE REF TO zcl_lnt_fi_identifier.
        t471 = t445->identifier.
        DATA(t473) = VALUE string( ).
        DATA t474 TYPE string.
        DATA t477 TYPE REF TO zcl_lnt_abstract_token.
        t477 = t471->token.
        DATA t479 TYPE string.
        t479 = t477->str.
        t474 = t479.
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
          t489 = t474.
          DATA(t491) = VALUE string( ).
          DATA(t493) = 1.
          DATA t494 TYPE i.
          t494 = strlen( t489 ).
          DATA(t497) = strlen( t489 ).
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
            t491 = t489+t493(t494).
          ENDIF.
          t488 = t491.
          t474 = t488.
        ENDIF.
        t473 = t474.
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
        DATA t505 TYPE REF TO object.
        t505 = t2.
        t503 ?= t505.
        t502 = t503.
        DATA t506 TYPE string.
        t506 = t502->name.
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
        DATA t510 TYPE REF TO zcl_lnt_issue.
        CLEAR t510.
        DATA t511 TYPE REF TO zcl_lnt_fi_identifier.
        t511 = t445->identifier.
        DATA(t513) = |Class implementation name must match filename|.
        DATA(t514) = VALUE string( ).
        DATA t515 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t515.
        DATA t516 TYPE string.
        t516 = |global_class|.
        DATA t518 TYPE string.
        t518 = |Global class checks|.
        DATA t520 TYPE string.
        t520 = |Checks related to global classes|.
        DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t522.
        DATA(t525) = |* global classes must be in own files\n\n* file names must mat|.
        t525 = t525 && |ch class name\n\n* file names must match interface name\n\n* glo|.
        t525 = t525 && |bal classes must be global definitions\n\n* global interfaces |.
        t525 = t525 && |must be global definitions\n\n* global FOR TESTING, must have |.
        t525 = t525 && |CATEGORY = 05 in the XML|.
        DATA(t526) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t526->has = abap_true.
        t526->value = t525.
        t522 = t526.
        DATA t528 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t528.
        DATA t532 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t533 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t533.
        t532 = t533.
        DATA(t535) = |Syntax|.
        t532->load( ).
        APPEND t535 TO t532->items.
        t532->save( ).
        t528 = t532.
        DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t538.
        DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t540.
        DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t542.
        DATA t544 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t544.
        t515 = NEW zcl_lnt_irule_metadata( i_key = t516 i_title = t518 i_short_description = t520 i_bad_example = t538 i_good_example = t540 i_extended_information = t522 i_tags = t528 i_pragma = t542 i_pseudo_comment = t544 ).
        CREATE OBJECT t515->zlnt_view_ownkeys_b0e8086400eb.
        t515->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t546.
        t515->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t546 ).
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
        t515->zlnt_json_ownkeys_70e5fd461788->put( p0 = t551 p1 = t552 ).
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
        t561 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t563 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t563.
        t510 = zcl_lnt_issue=>at_identifier( i_identifier = t511 i_message_26cb = t513 i_key = t514 i_severity = t561 i_fix = t563 ).
        t3->load( ).
        APPEND t510 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    DATA t566 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t567 TYPE REF TO zif_lnt_abap_file_information.
    DATA t570 TYPE REF TO zif_lnt_abap_file_information.
    t570 = t1->info.
    t567 = t570.
    t566 = t567->list_interface_definitions( ).
    DATA t572 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t573 TYPE REF TO object.
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
      DATA t583 TYPE REF TO zcl_lnt_abstract_file.
      t583 = t1.
      DATA t585 TYPE string.
      t585 = t583->filename.
      DATA t587 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t589 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t589.
      DATA(t590) = `\.intf\.abap$`.
      DATA(t591) = ||.
      CREATE OBJECT t589 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t590 flags = t591.
      t587 = t589->match( t585 ).
      t580 = t587.
      t579 = xsdbool( t580 IS BOUND ).
      t578 = t579.
      IF t579 = abap_true.
        DATA t592 TYPE abap_bool.
        t592 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_interface ).
        t578 = t592.
      ENDIF.
      t577 = t578.
      IF t578 = abap_true.
        DATA(t594) = VALUE abap_bool( ).
        DATA(t595) = VALUE string( ).
        DATA(t596) = VALUE string( ).
        DATA t598 TYPE REF TO zcl_lnt_fi_identifier.
        t598 = t572->identifier.
        DATA(t600) = VALUE string( ).
        DATA t601 TYPE string.
        DATA t604 TYPE REF TO zcl_lnt_abstract_token.
        t604 = t598->token.
        DATA t606 TYPE string.
        t606 = t604->str.
        t601 = t606.
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
          t616 = t601.
          DATA(t618) = VALUE string( ).
          DATA(t620) = 1.
          DATA t621 TYPE i.
          t621 = strlen( t616 ).
          DATA(t624) = strlen( t616 ).
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
            t618 = t616+t620(t621).
          ENDIF.
          t615 = t618.
          t601 = t615.
        ENDIF.
        t600 = t601.
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
        DATA t632 TYPE REF TO object.
        t632 = t2.
        t630 ?= t632.
        t629 = t630.
        DATA t633 TYPE string.
        t633 = t629->name.
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
        DATA t637 TYPE REF TO zcl_lnt_issue.
        CLEAR t637.
        DATA t638 TYPE REF TO zcl_lnt_fi_identifier.
        t638 = t572->identifier.
        DATA(t640) = |Interface implementation name must match filename|.
        DATA(t641) = VALUE string( ).
        DATA t642 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t642.
        DATA t643 TYPE string.
        t643 = |global_class|.
        DATA t645 TYPE string.
        t645 = |Global class checks|.
        DATA t647 TYPE string.
        t647 = |Checks related to global classes|.
        DATA t649 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t649.
        DATA(t652) = |* global classes must be in own files\n\n* file names must mat|.
        t652 = t652 && |ch class name\n\n* file names must match interface name\n\n* glo|.
        t652 = t652 && |bal classes must be global definitions\n\n* global interfaces |.
        t652 = t652 && |must be global definitions\n\n* global FOR TESTING, must have |.
        t652 = t652 && |CATEGORY = 05 in the XML|.
        DATA(t653) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t653->has = abap_true.
        t653->value = t652.
        t649 = t653.
        DATA t655 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t655.
        DATA t659 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t660 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t660.
        t659 = t660.
        DATA(t662) = |Syntax|.
        t659->load( ).
        APPEND t662 TO t659->items.
        t659->save( ).
        t655 = t659.
        DATA t665 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t665.
        DATA t667 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t667.
        DATA t669 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t669.
        DATA t671 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t671.
        t642 = NEW zcl_lnt_irule_metadata( i_key = t643 i_title = t645 i_short_description = t647 i_bad_example = t665 i_good_example = t667 i_extended_information = t649 i_tags = t655 i_pragma = t669 i_pseudo_comment = t671 ).
        CREATE OBJECT t642->zlnt_view_ownkeys_b0e8086400eb.
        t642->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t673.
        t642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t673 ).
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
        t642->zlnt_json_ownkeys_70e5fd461788->put( p0 = t678 p1 = t679 ).
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
        t688 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t690 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t690.
        t637 = zcl_lnt_issue=>at_identifier( i_identifier = t638 i_message_26cb = t640 i_key = t641 i_severity = t688 i_fix = t690 ).
        t3->load( ).
        APPEND t637 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    DATA t693 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t694 TYPE REF TO zif_lnt_abap_file_information.
    DATA t697 TYPE REF TO zif_lnt_abap_file_information.
    t697 = t1->info.
    t694 = t697.
    t693 = t694->list_interface_definitions( ).
    DATA t699 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t700 TYPE REF TO object.
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
      t707 = t699->is_local.
      IF t707 IS BOUND.
        IF t707->has = abap_true.
          t706 = xsdbool( t707->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t705 = t706.
      IF t706 = abap_true.
        DATA t709 TYPE abap_bool.
        t709 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_interface ).
        t705 = t709.
      ENDIF.
      t704 = t705.
      IF t705 = abap_true.
        DATA t711 TYPE abap_bool.
        DATA t712 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t715 TYPE REF TO zcl_lnt_abstract_file.
        t715 = t1.
        DATA t717 TYPE string.
        t717 = t715->filename.
        DATA t719 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t721 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t721.
        DATA(t722) = `\.intf\.abap$`.
        DATA(t723) = ||.
        CREATE OBJECT t721 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t722 flags = t723.
        t719 = t721->match( t717 ).
        t712 = t719.
        t711 = xsdbool( t712 IS BOUND ).
        t704 = t711.
      ENDIF.
      IF t704 = abap_true.
        DATA t725 TYPE REF TO zcl_lnt_issue.
        CLEAR t725.
        DATA t726 TYPE REF TO zcl_lnt_fi_identifier.
        t726 = t699->identifier.
        DATA(t728) = |Global interface must be global|.
        DATA(t729) = VALUE string( ).
        DATA t730 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t730.
        DATA t731 TYPE string.
        t731 = |global_class|.
        DATA t733 TYPE string.
        t733 = |Global class checks|.
        DATA t735 TYPE string.
        t735 = |Checks related to global classes|.
        DATA t737 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t737.
        DATA(t740) = |* global classes must be in own files\n\n* file names must mat|.
        t740 = t740 && |ch class name\n\n* file names must match interface name\n\n* glo|.
        t740 = t740 && |bal classes must be global definitions\n\n* global interfaces |.
        t740 = t740 && |must be global definitions\n\n* global FOR TESTING, must have |.
        t740 = t740 && |CATEGORY = 05 in the XML|.
        DATA(t741) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t741->has = abap_true.
        t741->value = t740.
        t737 = t741.
        DATA t743 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t743.
        DATA t747 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t748 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t748.
        t747 = t748.
        DATA(t750) = |Syntax|.
        t747->load( ).
        APPEND t750 TO t747->items.
        t747->save( ).
        t743 = t747.
        DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t753.
        DATA t755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t755.
        DATA t757 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t757.
        DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t759.
        t730 = NEW zcl_lnt_irule_metadata( i_key = t731 i_title = t733 i_short_description = t735 i_bad_example = t753 i_good_example = t755 i_extended_information = t737 i_tags = t743 i_pragma = t757 i_pseudo_comment = t759 ).
        CREATE OBJECT t730->zlnt_view_ownkeys_b0e8086400eb.
        t730->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t761.
        t730->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t761 ).
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
        t730->zlnt_json_ownkeys_70e5fd461788->put( p0 = t766 p1 = t767 ).
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
        t776 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t778 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t778.
        t725 = zcl_lnt_issue=>at_identifier( i_identifier = t726 i_message_26cb = t728 i_key = t729 i_severity = t776 i_fix = t778 ).
        t3->load( ).
        APPEND t725 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_global_class_conf( me->gt_cn_in_sr_rl_gl_cl_ts_gl_cls( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_global_class_conf( me->gt_cn_in_sr_rl_gl_cl_ts_gl_cls( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_global_class_conf.
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
        t1 = NEW zcl_lnt_global_class_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_gl_cl_ts_gl_cls( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_gl_cl_ts_gl_cls( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).

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
