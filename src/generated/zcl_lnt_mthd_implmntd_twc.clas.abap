* TS: src/rules/method_implemented_twice.ts:10:1 MethodImplementedTwice
CLASS zcl_lnt_mthd_implmntd_twc DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_mt_im_tw_ts_mt_im_tw RETURNING VALUE(result) TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
    METHODS s_c_i_s_r_mt_im_tw_ts_mt_im_tw IMPORTING i_conf TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
    METHODS r_p_i_s_r_mt_im_tw_ts_mt_im_tw IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mthd_implmntd_twc IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_mthd_implmntd_twc_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |method_implemented_twice|.
    DATA t4 TYPE string.
    t4 = |Method implemented twice|.
    DATA t6 TYPE string.
    t6 = |Reports an error if a method is implemented or defined twice|.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |SingleFile|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA(t17) = |Syntax|.
    t12->load( ).
    APPEND t17 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t8 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t34) = |key|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    DATA(t36) = |title|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |shortDescription|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |tags|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_mt_im_tw_ts_mt_im_tw.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_mt_im_tw_ts_mt_im_tw.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_mt_im_tw_ts_mt_im_tw.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zif_lnt_abap_file_information.
    DATA t8 TYPE REF TO zif_lnt_abap_file_information.
    t8 = t1->info.
    t5 = t8.
    t4 = t5->list_class_implementations( ).
    DATA t10 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      t15 = NEW zlnt_runtime_map__45a2315f90b8( ).
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t20 = t10->methods.
      DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t22.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      DATA(t24) = VALUE i( ).
      DO.
        t20->load( ).
        IF t24 >= lines( t20->items ).
          EXIT.
        ENDIF.
        CLEAR t23.
        READ TABLE t20->items INDEX t24 + 1 INTO t23.
        t24 = t24 + 1.
        DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t25.
        CLEAR t22.
        IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t25 ?= t23.
          DATA t26 TYPE REF TO object.
          t26 = t25->as_ref( ).
          t22 ?= t26.
        ELSE.
          t22 ?= t23.
        ENDIF.
        DATA(t27) = VALUE string( ).
        DATA(t28) = VALUE string( ).
        DATA(t29) = VALUE string( ).
        DATA(t32) = VALUE string( ).
        DATA t33 TYPE string.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        t36 = t22->token.
        DATA t38 TYPE string.
        t38 = t36->str.
        t33 = t38.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE string( ).
        DATA(t42) = t33.
        DATA(t43) = 0.
        DATA(t44) = 1.
        DATA(t45) = strlen( t42 ).
        IF t43 < 0.
          t43 = t43 + t45.
          IF t43 < 0.
            t43 = 0.
          ENDIF.
        ENDIF.
        IF t43 > t45 OR t44 <= 0.
          CLEAR t41.
        ELSE.
          IF t44 > t45 - t43.
            t44 = t45 - t43.
          ENDIF.
          t41 = t42+t43(t44).
        ENDIF.
        DATA(t46) = |!|.
        t40 = xsdbool( t41 = t46 ).
        IF t40 = abap_true.
          DATA(t47) = VALUE string( ).
          DATA t48 TYPE string.
          t48 = t33.
          DATA(t50) = VALUE string( ).
          DATA(t52) = 1.
          DATA t53 TYPE i.
          t53 = strlen( t48 ).
          DATA(t56) = strlen( t48 ).
          IF t52 < 0.
            t52 = t52 + t56.
            IF t52 < 0.
              t52 = 0.
            ENDIF.
          ENDIF.
          IF t52 > t56 OR t53 <= 0.
            CLEAR t50.
          ELSE.
            IF t53 > t56 - t52.
              t53 = t56 - t52.
            ENDIF.
            t50 = t48+t52(t53).
          ENDIF.
          t47 = t50.
          t33 = t47.
        ENDIF.
        t32 = t33.
        t29 = t32.
        DATA(t58) = strlen( t29 ).
        t28 = t29.
        IF t28 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t28 TO UPPER CASE.
        ELSE.
          t28 = zlnt_runtime_uppe_91169605024d=>full( t28 ).
        ENDIF.
        t27 = t28.
        DATA(t59) = VALUE abap_bool( ).
        DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t61 = t15->get( p0 = t27 ).
        t60 = t61.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        DATA(t66) = VALUE abap_bool( ).
        IF t60 IS INITIAL.
          t66 = abap_true.
        ELSEIF t60->has = abap_false.
          t66 = abap_true.
        ENDIF.
        t59 = t66.
        IF t59 = abap_true.
          DATA t68 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          t68 = t15->set( p0 = t27 p1 = abap_true ).
        ELSE.
          DATA t73 TYPE string.
          DATA t74 TYPE string.
          DATA(t75) = |Method |.
          DATA(t77) = strlen( t75 ).
          t74 = |{ t75 }{ t27 }|.
          DATA(t78) = | implemented twice|.
          DATA(t79) = strlen( t74 ).
          t73 = |{ t74 }{ t78 }|.
          DATA t81 TYPE REF TO zcl_lnt_issue.
          CLEAR t81.
          DATA t83 TYPE REF TO zcl_lnt_abstract_token.
          DATA t86 TYPE REF TO zcl_lnt_abstract_token.
          t86 = t22->token.
          t83 = t86.
          DATA(t89) = VALUE string( ).
          DATA t90 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t90.
          DATA t91 TYPE string.
          t91 = |method_implemented_twice|.
          DATA t93 TYPE string.
          t93 = |Method implemented twice|.
          DATA t95 TYPE string.
          t95 = |Reports an error if a method is implemented or defined twice|.
          DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t97.
          DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t102.
          t101 = t102.
          DATA(t104) = |SingleFile|.
          t101->load( ).
          APPEND t104 TO t101->items.
          t101->save( ).
          DATA(t106) = |Syntax|.
          t101->load( ).
          APPEND t106 TO t101->items.
          t101->save( ).
          t97 = t101.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          t90 = NEW zcl_lnt_irule_metadata( i_key = t91 i_title = t93 i_short_description = t95 i_bad_example = t109 i_good_example = t111 i_extended_information = t113 i_tags = t97 i_pragma = t115 i_pseudo_comment = t117 ).
          CREATE OBJECT t90->zlnt_view_ownkeys_b0e8086400eb.
          t90->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t119 ).
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t120 ).
          ENDIF.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t121 ).
          ENDIF.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t122 ).
          ENDIF.
          CREATE OBJECT t90->zlnt_json_ownkeys_70e5fd461788.
          t90->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t123) = |key|.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
          DATA(t125) = |title|.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
          ENDIF.
          DATA(t127) = |shortDescription|.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
          ENDIF.
          DATA(t129) = |tags|.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
          ENDIF.
          t89 = t90->key.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t132) = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw( ) ).
          t131 = t132->zlnt_view_read_sr_15c06369f827( ).
          DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t133.
          t81 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t83 i_message_26cb = t73 i_key = t89 i_severity = t131 i_fix = t133 ).
          t2->load( ).
          APPEND t81 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t135 TYPE REF TO zif_lnt_abap_file_information.
    DATA t138 TYPE REF TO zif_lnt_abap_file_information.
    t138 = t1->info.
    t135 = t138.
    t134 = t135->list_class_definitions( ).
    DATA t140 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t141 TYPE REF TO object.
    DATA(t142) = VALUE i( ).
    DO.
      t134->load( ).
      IF t142 >= lines( t134->items ).
        EXIT.
      ENDIF.
      CLEAR t141.
      READ TABLE t134->items INDEX t142 + 1 INTO t141.
      t142 = t142 + 1.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      CLEAR t140.
      IF t141 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t143 ?= t141.
        DATA t144 TYPE REF TO object.
        t144 = t143->as_ref( ).
        t140 ?= t144.
      ELSE.
        t140 ?= t141.
      ENDIF.
      DATA t145 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      t145 = NEW zlnt_runtime_map__45a2315f90b8( ).
      DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t150 = t140->methods.
      DATA t152 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t152.
      DATA t153 TYPE REF TO object.
      CLEAR t153.
      DATA(t154) = VALUE i( ).
      DO.
        t150->load( ).
        IF t154 >= lines( t150->items ).
          EXIT.
        ENDIF.
        CLEAR t153.
        READ TABLE t150->items INDEX t154 + 1 INTO t153.
        t154 = t154 + 1.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        CLEAR t152.
        IF t153 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t155 ?= t153.
          DATA t156 TYPE REF TO object.
          t156 = t155->as_ref( ).
          t152 ?= t156.
        ELSE.
          t152 ?= t153.
        ENDIF.
        DATA(t157) = VALUE string( ).
        DATA t158 TYPE string.
        DATA t159 TYPE string.
        t159 = t152->name.
        DATA(t161) = strlen( t159 ).
        t158 = t159.
        IF t158 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t158 TO UPPER CASE.
        ELSE.
          t158 = zlnt_runtime_uppe_91169605024d=>full( t158 ).
        ENDIF.
        t157 = t158.
        DATA(t162) = VALUE abap_bool( ).
        DATA t163 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t164 = t145->get( p0 = t157 ).
        t163 = t164.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        DATA(t169) = VALUE abap_bool( ).
        IF t163 IS INITIAL.
          t169 = abap_true.
        ELSEIF t163->has = abap_false.
          t169 = abap_true.
        ENDIF.
        t162 = t169.
        IF t162 = abap_true.
          DATA t171 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          t171 = t145->set( p0 = t157 p1 = abap_true ).
        ELSE.
          DATA t176 TYPE string.
          DATA t177 TYPE string.
          DATA(t178) = |Method |.
          DATA(t180) = strlen( t178 ).
          t177 = |{ t178 }{ t157 }|.
          DATA(t181) = | defined twice|.
          DATA(t182) = strlen( t177 ).
          t176 = |{ t177 }{ t181 }|.
          DATA t184 TYPE REF TO zcl_lnt_issue.
          CLEAR t184.
          DATA t186 TYPE REF TO zcl_lnt_abstract_token.
          DATA t188 TYPE REF TO zcl_lnt_fi_identifier.
          t188 = t152->identifier.
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          t190 = t188->token.
          t186 = t190.
          DATA(t193) = VALUE string( ).
          DATA t194 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t194.
          DATA t195 TYPE string.
          t195 = |method_implemented_twice|.
          DATA t197 TYPE string.
          t197 = |Method implemented twice|.
          DATA t199 TYPE string.
          t199 = |Reports an error if a method is implemented or defined twice|.
          DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t201.
          DATA t205 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t206.
          t205 = t206.
          DATA(t208) = |SingleFile|.
          t205->load( ).
          APPEND t208 TO t205->items.
          t205->save( ).
          DATA(t210) = |Syntax|.
          t205->load( ).
          APPEND t210 TO t205->items.
          t205->save( ).
          t201 = t205.
          DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t213.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t215.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t217.
          DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t219.
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t221.
          t194 = NEW zcl_lnt_irule_metadata( i_key = t195 i_title = t197 i_short_description = t199 i_bad_example = t213 i_good_example = t215 i_extended_information = t217 i_tags = t201 i_pragma = t219 i_pseudo_comment = t221 ).
          CREATE OBJECT t194->zlnt_view_ownkeys_b0e8086400eb.
          t194->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t223 ).
          DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t224.
          IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t224 ).
          ENDIF.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t225 ).
          ENDIF.
          DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t226.
          IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t226 ).
          ENDIF.
          CREATE OBJECT t194->zlnt_json_ownkeys_70e5fd461788.
          t194->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t227) = |key|.
          DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t228.
          t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t227 p1 = t228 ).
          DATA(t229) = |title|.
          DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t230.
          IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t229 p1 = t230 ).
          ENDIF.
          DATA(t231) = |shortDescription|.
          DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t232.
          IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t231 p1 = t232 ).
          ENDIF.
          DATA(t233) = |tags|.
          DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t234.
          IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t233 p1 = t234 ).
          ENDIF.
          t193 = t194->key.
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t236) = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw( ) ).
          t235 = t236->zlnt_view_read_sr_15c06369f827( ).
          DATA t237 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t237.
          t184 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t186 i_message_26cb = t176 i_key = t193 i_severity = t235 i_fix = t237 ).
          t2->load( ).
          APPEND t184 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t239 TYPE REF TO zif_lnt_abap_file_information.
    DATA t242 TYPE REF TO zif_lnt_abap_file_information.
    t242 = t1->info.
    t239 = t242.
    t238 = t239->list_interface_definitions( ).
    DATA t244 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t245 TYPE REF TO object.
    DATA(t246) = VALUE i( ).
    DO.
      t238->load( ).
      IF t246 >= lines( t238->items ).
        EXIT.
      ENDIF.
      CLEAR t245.
      READ TABLE t238->items INDEX t246 + 1 INTO t245.
      t246 = t246 + 1.
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t247.
      CLEAR t244.
      IF t245 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t247 ?= t245.
        DATA t248 TYPE REF TO object.
        t248 = t247->as_ref( ).
        t244 ?= t248.
      ELSE.
        t244 ?= t245.
      ENDIF.
      DATA t249 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      t249 = NEW zlnt_runtime_map__45a2315f90b8( ).
      DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t254 = t244->methods.
      DATA t256 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t256.
      DATA t257 TYPE REF TO object.
      CLEAR t257.
      DATA(t258) = VALUE i( ).
      DO.
        t254->load( ).
        IF t258 >= lines( t254->items ).
          EXIT.
        ENDIF.
        CLEAR t257.
        READ TABLE t254->items INDEX t258 + 1 INTO t257.
        t258 = t258 + 1.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t259.
        CLEAR t256.
        IF t257 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t259 ?= t257.
          DATA t260 TYPE REF TO object.
          t260 = t259->as_ref( ).
          t256 ?= t260.
        ELSE.
          t256 ?= t257.
        ENDIF.
        DATA(t261) = VALUE string( ).
        DATA t262 TYPE string.
        DATA t263 TYPE string.
        t263 = t256->name.
        DATA(t265) = strlen( t263 ).
        t262 = t263.
        IF t262 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t262 TO UPPER CASE.
        ELSE.
          t262 = zlnt_runtime_uppe_91169605024d=>full( t262 ).
        ENDIF.
        t261 = t262.
        DATA(t266) = VALUE abap_bool( ).
        DATA t267 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t268 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t268 = t249->get( p0 = t261 ).
        t267 = t268.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t271.
        DATA(t273) = VALUE abap_bool( ).
        IF t267 IS INITIAL.
          t273 = abap_true.
        ELSEIF t267->has = abap_false.
          t273 = abap_true.
        ENDIF.
        t266 = t273.
        IF t266 = abap_true.
          DATA t275 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          t275 = t249->set( p0 = t261 p1 = abap_true ).
        ELSE.
          DATA t280 TYPE string.
          DATA t281 TYPE string.
          DATA(t282) = |Method |.
          DATA(t284) = strlen( t282 ).
          t281 = |{ t282 }{ t261 }|.
          DATA(t285) = | implemented twice|.
          DATA(t286) = strlen( t281 ).
          t280 = |{ t281 }{ t285 }|.
          DATA t288 TYPE REF TO zcl_lnt_issue.
          CLEAR t288.
          DATA t289 TYPE REF TO zcl_lnt_fi_identifier.
          t289 = t256->identifier.
          DATA(t292) = VALUE string( ).
          DATA t293 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t293.
          DATA t294 TYPE string.
          t294 = |method_implemented_twice|.
          DATA t296 TYPE string.
          t296 = |Method implemented twice|.
          DATA t298 TYPE string.
          t298 = |Reports an error if a method is implemented or defined twice|.
          DATA t300 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t300.
          DATA t304 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t305 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t305.
          t304 = t305.
          DATA(t307) = |SingleFile|.
          t304->load( ).
          APPEND t307 TO t304->items.
          t304->save( ).
          DATA(t309) = |Syntax|.
          t304->load( ).
          APPEND t309 TO t304->items.
          t304->save( ).
          t300 = t304.
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t312.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t314.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t316.
          DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t318.
          DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t320.
          t293 = NEW zcl_lnt_irule_metadata( i_key = t294 i_title = t296 i_short_description = t298 i_bad_example = t312 i_good_example = t314 i_extended_information = t316 i_tags = t300 i_pragma = t318 i_pseudo_comment = t320 ).
          CREATE OBJECT t293->zlnt_view_ownkeys_b0e8086400eb.
          t293->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t322.
          t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t322 ).
          DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t323.
          IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t323 ).
          ENDIF.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t324.
          IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t324 ).
          ENDIF.
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t325.
          IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t325 ).
          ENDIF.
          CREATE OBJECT t293->zlnt_json_ownkeys_70e5fd461788.
          t293->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t326) = |key|.
          DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t327.
          t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t326 p1 = t327 ).
          DATA(t328) = |title|.
          DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t329.
          IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
          ENDIF.
          DATA(t330) = |shortDescription|.
          DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t331.
          IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t330 p1 = t331 ).
          ENDIF.
          DATA(t332) = |tags|.
          DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t333.
          IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t332 p1 = t333 ).
          ENDIF.
          t292 = t293->key.
          DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t335) = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw( ) ).
          t334 = t335->zlnt_view_read_sr_15c06369f827( ).
          DATA t336 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t336.
          t288 = zcl_lnt_issue=>at_identifier( i_identifier = t289 i_message_26cb = t280 i_key = t292 i_severity = t334 i_fix = t336 ).
          t2->load( ).
          APPEND t288 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
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
        t1 = NEW zcl_lnt_mthd_implmntd_twc_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_mt_im_tw_ts_mt_im_tw( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_mt_im_tw_ts_mt_im_tw( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1585_810423b1ed35.
  ENDMETHOD.
ENDCLASS.
