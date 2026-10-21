* TS: src/rules/wrong_abapdoc_position.ts:13:1 WrongAbapdocPosition
CLASS zcl_lnt_wrong_abapdoc_position DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps RETURNING VALUE(result) TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
    METHODS s_c_i_s_r_wr_ab_ps_ts_wr_ab_ps IMPORTING i_conf TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
    METHODS r_p_i_s_r_wr_ab_ps_ts_wr_ab_ps IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_abapdoc IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS check_bf6e IMPORTING i_abapdoc TYPE REF TO zcl_lnt_statement_node i_next TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_wrong_abapdoc_position IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_wrng_abpdc_pstn_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |ABAP Doc must be placed directly in front of the declaration|.
    t7 = t7 && | it documents.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |ABAP Doc documents the single declaration following it, an A|.
    t11 = t11 && |BAP Doc block placed\nelsewhere is silently ignored, leaving |.
    t11 = t11 && |the declaration undocumented.\n\nThe following positions are r|.
    t11 = t11 && |eported,\n* in front of a chained keyword, ie. before "CONSTA|.
    t11 = t11 && |NTS:" instead of after the colon,\n* in the middle of a state|.
    t11 = t11 && |ment, ie. between the parameters of a METHODS definition,\n* |.
    t11 = t11 && |directly in front of ENDCLASS, ENDINTERFACE or a SECTION sta|.
    t11 = t11 && |tement.\n\nOnly checks ABAP Doc inside class definitions and i|.
    t11 = t11 && |nterfaces.|.
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
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    "! Na|.
    t27 = t27 && |vigation modes\n    CONSTANTS:\n      BEGIN OF cs_nav_mode,\n  |.
    t27 = t27 && |      back TYPE i VALUE 1,\n      END OF cs_nav_mode.\nENDCLAS|.
    t27 = t27 && |S.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA(t33) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    CONST|.
    t33 = t33 && |ANTS:\n      "! Navigation modes\n      BEGIN OF cs_nav_mode,\n|.
    t33 = t33 && |        back TYPE i VALUE 1,\n      END OF cs_nav_mode.\nENDCL|.
    t33 = t33 && |ASS.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |wrong_abapdoc_position| i_title = |Wrong ABAP Doc position| i_short_description = t6 i_bad_example = t24 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t48 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t50 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_wr_ab_ps_ts_wr_ab_ps.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_wr_ab_ps_ts_wr_ab_ps.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t10 TYPE abap_bool.
    t10 = abap_false.
    DATA t12 TYPE i.
    t12 = 0.
    DO.
      t4->load( ).
      IF xsdbool( t12 < lines( t4->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t19.
      DATA(t21) = t12.
      t21 = t21 + 1.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      t4->load( ).
      CLEAR t22.
      READ TABLE t4->items INDEX t21 INTO t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t19.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t22.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t19 ?= t24.
      ELSE.
        t19 ?= t22.
      ENDIF.
      t18 = t19.
      DATA t25 TYPE REF TO zif_lnt_statement.
      t25 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE abap_bool.
      t29 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_class_definition ).
      t28 = t29.
      IF t29 = abap_false.
        t28 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_interface ).
      ENDIF.
      IF t28 = abap_true.
        t10 = abap_true.
        DATA(t36) = 1.
        t12 = t12 + t36.
        CONTINUE.
      ENDIF.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      t38 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_end_class ).
      t37 = t38.
      IF t38 = abap_false.
        t37 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_end_interface ).
      ENDIF.
      IF t37 = abap_true.
        t10 = abap_false.
        DATA(t45) = 1.
        t12 = t12 + t45.
        CONTINUE.
      ENDIF.
      DATA t46 TYPE abap_bool.
      DATA t47 TYPE abap_bool.
      t47 = xsdbool( t10 = abap_false ).
      t46 = t47.
      IF t47 = abap_false.
        DATA t52 TYPE REF TO zcl_lnt_statement_node.
        t52 = t18.
        DATA(t57) = VALUE abap_bool( ).
        DATA(t58) = VALUE abap_bool( ).
        DATA t59 TYPE REF TO zif_lnt_statement.
        CLEAR t59.
        DATA t60 TYPE REF TO zcl_lnt_statement_node.
        t60 = t52.
        DATA t62 TYPE REF TO zif_lnt_statement.
        CLEAR t62.
        IF xsdbool( t60 IS INITIAL ) = abap_true.
          CLEAR t62.
        ELSE.
          t62 = t60->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        ENDIF.
        t59 = t62.
        t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_st_comment ).
        t57 = t58.
        IF t58 = abap_true.
          DATA(t69) = VALUE abap_bool( ).
          DATA t70 TYPE string.
          t70 = t52->get_first_token( )->str.
          DATA(t77) = |"!|.
          DATA(t78) = strlen( t70 ).
          DATA t79 TYPE i.
          DATA(t80) = VALUE i( ).
          DATA(t81) = VALUE string( ).
          t79 = strlen( t77 ).
          IF t79 = 0.
            t69 = abap_true.
          ELSEIF t79 <= t78.
            t80 = 0.
            t81 = t70+t80(t79).
            IF t81 = t77.
              t69 = abap_true.
            ENDIF.
          ENDIF.
          t57 = t69.
        ENDIF.
        t46 = xsdbool( t57 = abap_false ).
      ENDIF.
      IF t46 = abap_true.
        DATA(t85) = 1.
        t12 = t12 + t85.
        CONTINUE.
      ENDIF.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA t89 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t89.
      DATA t92 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t92.
      DATA t94 TYPE i.
      DATA(t96) = 1.
      t94 = t12 - t96.
      t94 = t94 + 1.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      t4->load( ).
      CLEAR t97.
      READ TABLE t4->items INDEX t94 INTO t97.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      CLEAR t92.
      IF t97 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t98 ?= t97.
        DATA t99 TYPE REF TO object.
        t99 = t98->as_ref( ).
        t92 ?= t99.
      ELSE.
        t92 ?= t97.
      ENDIF.
      t89 = t92.
      DATA(t101) = VALUE abap_bool( ).
      DATA(t102) = VALUE abap_bool( ).
      DATA t103 TYPE REF TO zif_lnt_statement.
      CLEAR t103.
      DATA t104 TYPE REF TO zcl_lnt_statement_node.
      t104 = t89.
      DATA t106 TYPE REF TO zif_lnt_statement.
      CLEAR t106.
      IF xsdbool( t104 IS INITIAL ) = abap_true.
        CLEAR t106.
      ELSE.
        t106 = t104->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      ENDIF.
      t103 = t106.
      t102 = xsdbool( t103 IS BOUND AND t103 IS INSTANCE OF zcl_lnt_st_comment ).
      t101 = t102.
      IF t102 = abap_true.
        DATA(t113) = VALUE abap_bool( ).
        DATA t114 TYPE string.
        t114 = t89->get_first_token( )->str.
        DATA(t121) = |"!|.
        DATA(t122) = strlen( t114 ).
        DATA t123 TYPE i.
        DATA(t124) = VALUE i( ).
        DATA(t125) = VALUE string( ).
        t123 = strlen( t121 ).
        IF t123 = 0.
          t113 = abap_true.
        ELSEIF t123 <= t122.
          t124 = 0.
          t125 = t114+t124(t123).
          IF t125 = t121.
            t113 = abap_true.
          ENDIF.
        ENDIF.
        t101 = t113.
      ENDIF.
      t87 = xsdbool( t101 = abap_true ).
      t86 = t87.
      IF t87 = abap_true.
        DATA(t128) = VALUE f( ).
        DATA(t129) = VALUE f( ).
        DATA t133 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t133.
        DATA t135 TYPE i.
        DATA(t137) = 1.
        t135 = t12 - t137.
        t135 = t135 + 1.
        DATA t138 TYPE REF TO object.
        CLEAR t138.
        t4->load( ).
        CLEAR t138.
        READ TABLE t4->items INDEX t135 INTO t138.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        CLEAR t133.
        IF t138 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t139 ?= t138.
          DATA t140 TYPE REF TO object.
          t140 = t139->as_ref( ).
          t133 ?= t140.
        ELSE.
          t133 ?= t138.
        ENDIF.
        DATA t145 TYPE REF TO zcl_lnt_position.
        t145 = t133->get_first_token( )->start.
        t129 = t145->row.
        DATA(t149) = CONV f( 1 ).
        t128 = t129 + t149.
        DATA t159 TYPE REF TO zcl_lnt_position.
        t159 = t18->get_first_token( )->start.
        t86 = xsdbool( t128 = t159->row ).
      ENDIF.
      IF t86 = abap_true.
        DATA(t165) = 1.
        t12 = t12 + t165.
        CONTINUE.
      ENDIF.



      DATA t166 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t166.
      DATA t168 TYPE i.
      DATA(t171) = 1.
      t168 = t12 + t171.
      DO.
        t4->load( ).
        IF xsdbool( t168 < lines( t4->items ) ) = abap_false.
          EXIT.
        ENDIF.
        DATA t177 TYPE REF TO zif_lnt_statement.
        CLEAR t177.
        DATA t178 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t178.
        DATA(t180) = t168.
        t180 = t180 + 1.
        DATA t181 TYPE REF TO object.
        CLEAR t181.
        t4->load( ).
        CLEAR t181.
        READ TABLE t4->items INDEX t180 INTO t181.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        CLEAR t178.
        IF t181 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t182 ?= t181.
          DATA t183 TYPE REF TO object.
          t183 = t182->as_ref( ).
          t178 ?= t183.
        ELSE.
          t178 ?= t181.
        ENDIF.
        t177 = t178->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t177 IS BOUND AND t177 IS INSTANCE OF zcl_lnt_st_comment ) = abap_true.
          DATA(t186) = 1.
          t168 = t168 + t186.
          CONTINUE.
        ENDIF.
        DATA t189 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t189.
        DATA(t191) = t168.
        t191 = t191 + 1.
        DATA t192 TYPE REF TO object.
        CLEAR t192.
        t4->load( ).
        CLEAR t192.
        READ TABLE t4->items INDEX t191 INTO t192.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        CLEAR t189.
        IF t192 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t193 ?= t192.
          DATA t194 TYPE REF TO object.
          t194 = t193->as_ref( ).
          t189 ?= t194.
        ELSE.
          t189 ?= t192.
        ENDIF.
        t166 = t189.
        EXIT.
        DATA(t198) = 1.
        t168 = t168 + t198.
      ENDDO.
      DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t202.
      IF xsdbool( t166 IS INITIAL ) = abap_true.
        DATA(t208) = 1.
        t12 = t12 + t208.
        CONTINUE.
      ENDIF.
      DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t209 = me->check_bf6e( i_abapdoc = t18 i_next = t166 ).
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t215 = t209.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t217.
      DATA(t220) = VALUE abap_bool( ).
      IF t215 IS INITIAL.
        t220 = abap_true.
      ELSEIF t215->has = abap_false.
        t220 = abap_true.
      ENDIF.
      IF xsdbool( t220 = abap_false ) = abap_true.
        DATA t223 TYPE REF TO zcl_lnt_issue.
        CLEAR t223.
        DATA t226 TYPE string.
        t226 = t209->value.
        DATA(t228) = VALUE string( ).
        DATA t229 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t234 TYPE string.
        DATA(t235) = |ABAP Doc must be placed directly in front of the declaration|.
        t235 = t235 && | it documents.|.
        t234 = t235.
        DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t236.
        DATA(t239) = |ABAP Doc documents the single declaration following it, an A|.
        t239 = t239 && |BAP Doc block placed\nelsewhere is silently ignored, leaving |.
        t239 = t239 && |the declaration undocumented.\n\nThe following positions are r|.
        t239 = t239 && |eported,\n* in front of a chained keyword, ie. before "CONSTA|.
        t239 = t239 && |NTS:" instead of after the colon,\n* in the middle of a state|.
        t239 = t239 && |ment, ie. between the parameters of a METHODS definition,\n* |.
        t239 = t239 && |directly in front of ENDCLASS, ENDINTERFACE or a SECTION sta|.
        t239 = t239 && |tement.\n\nOnly checks ABAP Doc inside class definitions and i|.
        t239 = t239 && |nterfaces.|.
        DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t240->has = abap_true.
        t240->value = t239.
        t236 = t240.
        DATA t242 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t242.
        DATA t246 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t246.
        t246->load( ).
        APPEND |SingleFile| TO t246->items.
        t246->save( ).
        t242 = t246.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        DATA(t255) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    "! Na|.
        t255 = t255 && |vigation modes\n    CONSTANTS:\n      BEGIN OF cs_nav_mode,\n  |.
        t255 = t255 && |      back TYPE i VALUE 1,\n      END OF cs_nav_mode.\nENDCLAS|.
        t255 = t255 && |S.|.
        DATA(t256) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t256->has = abap_true.
        t256->value = t255.
        t252 = t256.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t258.
        DATA(t261) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    CONST|.
        t261 = t261 && |ANTS:\n      "! Navigation modes\n      BEGIN OF cs_nav_mode,\n|.
        t261 = t261 && |        back TYPE i VALUE 1,\n      END OF cs_nav_mode.\nENDCL|.
        t261 = t261 && |ASS.|.
        DATA(t262) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t262->has = abap_true.
        t262->value = t261.
        t258 = t262.
        DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t264.
        DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t266.
        t229 = NEW zcl_lnt_irule_metadata( i_key = |wrong_abapdoc_position| i_title = |Wrong ABAP Doc position| i_short_description = t234 i_bad_example = t252 i_good_example = t258 i_extended_information = t236 i_tags = t242 i_pragma = t264 i_pseudo_comment = t266 ).
        CREATE OBJECT t229->zlnt_view_ownkeys_b0e8086400eb.
        t229->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t268.
        t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t268 ).
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t269.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t269 ).
        ENDIF.
        DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t270.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t270 ).
        ENDIF.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t271.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t271 ).
        ENDIF.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t272 ).
        ENDIF.
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t273 ).
        ENDIF.
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t274.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t274 ).
        ENDIF.
        CREATE OBJECT t229->zlnt_json_ownkeys_70e5fd461788.
        t229->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t276.
        t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t276 ).
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t278 ).
        ENDIF.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t280 ).
        ENDIF.
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t282 ).
        ENDIF.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t284 ).
        ENDIF.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t286 ).
        ENDIF.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t288 ).
        ENDIF.
        t228 = t229->key.
        DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t289 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t291 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t291.
        DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t292.
        t223 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t18 i_message_26cb = t226 i_key = t228 i_severity = t289 i_fix = t291 i_alternative_fixes = t292 ).
        t2->load( ).
        APPEND t223 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t295) = 1.
      t12 = t12 + t295.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD is_abapdoc.
    DATA(t1) = i_statement.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_statement.
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    t5 = t1.
    DATA t7 TYPE REF TO zif_lnt_statement.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
    ELSE.
      t7 = t5->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    ENDIF.
    t4 = t7.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_st_comment ).
    t2 = t3.
    IF t3 = abap_true.
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE string.
      t15 = t1->get_first_token( )->str.
      DATA(t22) = |"!|.
      DATA(t23) = strlen( t15 ).
      DATA t24 TYPE i.
      DATA(t25) = VALUE i( ).
      DATA(t26) = VALUE string( ).
      t24 = strlen( t22 ).
      IF t24 = 0.
        t14 = abap_true.
      ELSEIF t24 <= t23.
        t25 = 0.
        t26 = t15+t25(t24).
        IF t26 = t22.
          t14 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t14.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_abapdoc.
    DATA(t2) = i_next.
    DATA t3 TYPE REF TO zif_lnt_statement.
    t3 = t2->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    t10 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_end_class ).
    t9 = t10.
    IF t10 = abap_false.
      t9 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_end_interface ).
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      t8 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_public ).
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      t7 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_protected ).
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      t6 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_private ).
    ENDIF.
    IF t6 = abap_true.
      DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t23->has = abap_true.
      t23->value = |ABAP Doc does not document anything, move or delete it|.
      result = t23.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_position.
    t25 = t1->get_first_token( )->start.
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    t35 = t2->colon.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t35 IS INITIAL ) = abap_true.
      DATA t58 TYPE REF TO zcl_lnt_position.
      t58 = t2->get_first_token( )->start.
      IF xsdbool( t25->is_after( i_p = t58 ) = abap_true ) = abap_true.
        DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t64->has = abap_true.
        t64->value = |ABAP Doc inside statement, move it in front of the statement|.
        result = t64.
        RETURN.
      ENDIF.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t69 TYPE REF TO zcl_lnt_position.
    t69 = t25.
    DATA t71 TYPE REF TO zcl_lnt_position.
    t71 = t35->start.
    DATA t78 TYPE abap_bool.
    DATA t79 TYPE abap_bool.
    t79 = xsdbool( t69->row < t71->row ).
    t78 = t79.
    IF t79 = abap_false.
      DATA t84 TYPE abap_bool.
      DATA t85 TYPE abap_bool.
      t85 = xsdbool( t69->row = t71->row ).
      t84 = t85.
      IF t85 = abap_true.
        DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t91 = t69->col.
        DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t93 = t71->col.
        t84 = zlnt_runtime_numb_290eb04a9758=>compare( left = t91 right = t93 op = `<` ).
      ENDIF.
      t78 = t84.
    ENDIF.
    IF xsdbool( t78 = abap_true ) = abap_true.
      DATA(t98) = |ABAP Doc in front of chained statement, move it after the co|.
      t98 = t98 && |lon|.
      DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t99->has = abap_true.
      t99->value = t98.
      result = t99.
      RETURN.
    ENDIF.
    DATA t101 TYPE REF TO zcl_lnt_abstract_token.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t103 = t2->get_tokens( ).
    DATA t106 TYPE i.
    t103->load( ).
    t106 = lines( t103->items ).
    DATA t109 TYPE i.
    t109 = 0.
    DATA t111 TYPE REF TO zcl_lnt_abstract_token.
    DO.
      IF xsdbool( t109 < t106 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t116 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t116.
      DATA t118 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t118.
      DATA t121 TYPE REF TO object.
      t121 = t103->get( p0 = t109 ).
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      CLEAR t118.
      IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t122 ?= t121.
        DATA t123 TYPE REF TO object.
        t123 = t122->as_ref( ).
        t118 ?= t123.
      ELSE.
        t118 ?= t121.
      ENDIF.
      t116 = t118.
      DATA t125 TYPE REF TO zcl_lnt_position.
      t125 = t116->start.
      DATA t130 TYPE REF TO zcl_lnt_position.
      t130 = t35->start.
      IF t125->is_after( i_p = t130 ) = abap_true.
        t111 = t116.
        EXIT.
      ENDIF.
      DATA(t142) = 1.
      t109 = t109 + t142.
    ENDDO.
    t101 = t111.
    DATA(t144) = VALUE abap_bool( ).
    DATA(t145) = VALUE abap_bool( ).
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t145 = xsdbool( xsdbool( t101 IS INITIAL ) = abap_false ).
    t144 = t145.
    IF t145 = abap_true.
      DATA t160 TYPE REF TO zcl_lnt_position.
      t160 = t101->start.
      t144 = xsdbool( t25->is_after( i_p = t160 ) = abap_true ).
    ENDIF.
    IF t144 = abap_true.
      DATA(t165) = |ABAP Doc inside statement, move it in front of the chained d|.
      t165 = t165 && |eclaration|.
      DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t166->has = abap_true.
      t166->value = t165.
      result = t166.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_wrng_abpdc_pstn_cnf( me->g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_wrng_abpdc_pstn_cnf( me->g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
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
        t1 = NEW zcl_lnt_wrng_abpdc_pstn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_wr_ab_ps_ts_wr_ab_ps( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_wr_ab_ps_ts_wr_ab_ps( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1777_73e9da6ece7a.
  ENDMETHOD.
ENDCLASS.
