* TS: src/rules/fully_type_constants.ts:15:1 FullyTypeConstants
CLASS zcl_lnt_fully_type_constants DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_flly_typ_cnsnts_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_type_9913 TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_fl_ty_cn_ts_fl_ty_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_flly_typ_cnsnts_cnf.
    METHODS s_c_i_s_r_fl_ty_cn_ts_fl_ty_cn IMPORTING i_conf TYPE REF TO zcl_lnt_flly_typ_cnsnts_cnf.
    METHODS r_p_i_s_r_fl_ty_cn_ts_fl_ty_cn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_typed IMPORTING i_stat TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fully_type_constants IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_flly_typ_cnsnts_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |fully_type_constants|.
    DATA t4 TYPE string.
    t4 = |Fully type constants|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks constants for full typing - no implicit typing allowe|.
    t7 = t7 && |d.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |CONSTANTS foo VALUE 'a'.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t17) = |CONSTANTS foo TYPE c LENGTH 1 VALUE 'a'.|.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = t17.
    t14 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t25.
    t24 = t25.
    DATA(t27) = |SingleFile|.
    t24->load( ).
    APPEND t27 TO t24->items.
    t24->save( ).
    t20 = t24.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t8 i_good_example = t14 i_extended_information = t30 i_tags = t20 i_pragma = t32 i_pseudo_comment = t34 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
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
    DATA(t48) = |badExample|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |goodExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA(t4) = |Fully type |.
    DATA(t6) = strlen( t4 ).
    t3 = |{ t4 }{ i_type_9913 }|.
    DATA(t7) = |, no implicit typing|.
    DATA(t8) = strlen( t3 ).
    t2 = |{ t3 }{ t7 }|.
    result = t2.

  ENDMETHOD.

  METHOD g_c_i_s_r_fl_ty_cn_ts_fl_ty_cn.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_fl_ty_cn_ts_fl_ty_cn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_fl_ty_cn_ts_fl_ty_cn.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t1->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        CLEAR t13.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zif_lnt_statement.
      CLEAR t17.
      t17 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_st_statem_constant ).
      t15 = t16.
      IF t16 = abap_false.
        DATA(t19) = VALUE abap_bool( ).
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = VALUE abap_bool( ).
        t21 = me->conf->zlnt_view_read_sr_2d1dce4fd73b( ).
        t20 = xsdbool( t21 = abap_true ).
        t19 = t20.
        IF t20 = abap_true.
          DATA(t24) = VALUE abap_bool( ).
          DATA t25 TYPE REF TO zif_lnt_statement.
          CLEAR t25.
          t25 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_data ).
          t19 = t24.
        ENDIF.
        t15 = t19.
      ENDIF.
      t14 = t15.
      IF t15 = abap_true.
        DATA(t27) = VALUE abap_bool( ).
        DATA(t28) = VALUE abap_bool( ).
        DATA t29 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t29.
        DATA t30 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t30.
        t30 = t9.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t34.
        DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
        t34 = t30->find_first_expression( i_type_9913 = t36 ).
        t33 = t34.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t37.
        DATA(t38) = VALUE abap_bool( ).
        t38 = xsdbool( t33 IS BOUND ).
        IF t38 = abap_true.
          t37 = t33.
        ELSE.
          DATA t41 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t41.
          DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
          t41 = t30->find_first_expression( i_type_9913 = t43 ).
          t37 = t41.
        ENDIF.
        t29 = t37.
        t28 = xsdbool( t29 IS BOUND ).
        t27 = xsdbool( t28 = abap_false ).
        t14 = t27.
      ENDIF.
      IF t14 = abap_true.
        DATA(t44) = VALUE string( ).
        DATA(t45) = VALUE string( ).
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE REF TO zif_lnt_statement.
        CLEAR t47.
        t47 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_statem_constant ).
        IF t46 = abap_true.
          t45 = |constant definition|.
        ELSE.
          t45 = |data definition|.
        ENDIF.
        t44 = t45.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t51.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t53.
        DATA t54 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t54.
        DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
        t54 = t9->find_first_expression( i_type_9913 = t56 ).
        t53 = t54.
        DATA t57 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t57.
        DATA(t58) = xsdbool( t53 IS INITIAL ).
        IF t58 = abap_true.
          CLEAR t57.
        ELSE.
          DATA t61 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t61.
          DATA t62 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t62.
          t62 = t53.
          t61 = t62->get_first_token( ).
          t57 = t61.
        ENDIF.
        t51 = t57.
        DATA(t64) = VALUE abap_bool( ).
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        CLEAR t67.
        t64 = xsdbool( t51 IS INITIAL ).
        IF t64 = abap_true.
          DATA t72 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t72.
          DATA t73 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t73.
          DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
          t73 = t9->find_first_expression( i_type_9913 = t75 ).
          t72 = t73.
          DATA t76 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t76.
          DATA(t77) = xsdbool( t72 IS INITIAL ).
          IF t77 = abap_true.
            CLEAR t76.
          ELSE.
            DATA t80 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t80.
            DATA t81 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t81.
            t81 = t72.
            t80 = t81->get_first_token( ).
            t76 = t80.
          ENDIF.
          t51 = t76.
        ENDIF.
        DATA(t83) = VALUE abap_bool( ).
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        CLEAR t86.
        t83 = xsdbool( t51 IS INITIAL ).
        IF t83 = abap_true.
          DATA t90 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t90.
          DATA t91 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t91.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          DATA(t94) = |fully type constants, unexpected node|.
          DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t95->has = abap_true.
          t95->value = t94.
          t92 = t95.
          t91 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t92 ).
          t90 = NEW #( ).
          t90->payload = t91.
          CLEAR t90->source_value.
          DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t97.
          DATA t98 TYPE REF TO object.
          CLEAR t98.
          CLEAR t97.
          t98 = t91.
          TRY.
              t90->source_value ?= t98.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t90->source_value IS NOT BOUND.
            TRY.
                t97 ?= t91.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t97 IS BOUND.
              t90->source_value = t97->source( ).
            ENDIF.
            IF t90->source_value IS NOT BOUND.
              CREATE OBJECT t90->source_value.
              t90->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t90->source_value->oval = t91.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t90.
        ENDIF.
        DATA t100 TYPE REF TO zcl_lnt_issue.
        CLEAR t100.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t102.
        t102 = t51.
        DATA(t104) = VALUE string( ).
        DATA(t105) = VALUE string( ).
        t105 = t44.
        DATA(t107) = VALUE string( ).
        DATA(t108) = VALUE string( ).
        DATA(t109) = |Fully type |.
        DATA(t111) = strlen( t109 ).
        t108 = |{ t109 }{ t105 }|.
        DATA(t112) = |, no implicit typing|.
        DATA(t113) = strlen( t108 ).
        t107 = |{ t108 }{ t112 }|.
        t104 = t107.
        DATA(t114) = VALUE string( ).
        DATA t115 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t115.
        DATA(t116) = VALUE string( ).
        t116 = |fully_type_constants|.
        DATA(t118) = VALUE string( ).
        t118 = |Fully type constants|.
        DATA(t120) = VALUE string( ).
        DATA(t121) = |Checks constants for full typing - no implicit typing allowe|.
        t121 = t121 && |d.|.
        t120 = t121.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        DATA(t125) = |CONSTANTS foo VALUE 'a'.|.
        DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t126->has = abap_true.
        t126->value = t125.
        t122 = t126.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        DATA(t131) = |CONSTANTS foo TYPE c LENGTH 1 VALUE 'a'.|.
        DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t132->has = abap_true.
        t132->value = t131.
        t128 = t132.
        DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t134.
        DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t138.
        DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t139.
        CREATE OBJECT t139.
        t138 = t139.
        DATA(t141) = |SingleFile|.
        t138->load( ).
        APPEND t141 TO t138->items.
        t138->save( ).
        t134 = t138.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        CLEAR t144.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t146.
        CLEAR t146.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        CLEAR t148.
        t115 = NEW zcl_lnt_irule_metadata( i_key = t116 i_title = t118 i_short_description = t120 i_bad_example = t122 i_good_example = t128 i_extended_information = t144 i_tags = t134 i_pragma = t146 i_pseudo_comment = t148 ).
        CREATE OBJECT t115->zlnt_view_ownkeys_b0e8086400eb.
        t115->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t150 ).
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t151 ).
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t152 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t153 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t154 ).
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t155 ).
        ENDIF.
        CREATE OBJECT t115->zlnt_json_ownkeys_70e5fd461788.
        t115->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t156) = |key|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        DATA(t158) = |title|.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
        ENDIF.
        DATA(t160) = |shortDescription|.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
        ENDIF.
        DATA(t162) = |badExample|.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
        ENDIF.
        DATA(t164) = |goodExample|.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
        ENDIF.
        DATA(t166) = |tags|.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
        ENDIF.
        t114 = t115->key.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t168.
        t168 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t170 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t170.
        t100 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t102 i_message_26cb = t104 i_key = t114 i_severity = t168 i_fix = t170 ).
        t2->load( ).
        APPEND t100 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD is_typed.
    DATA(t1) = i_stat.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
    t4 = t1->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE abap_bool.
    t8 = xsdbool( t3 IS BOUND ).
    IF t8 = abap_true.
      t7 = t3.
    ELSE.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
      t11 = t1->find_first_expression( i_type_9913 = t13 ).
      t7 = t11.
    ENDIF.
    result = t7.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_flly_typ_cnsnts_cnf( me->g_c_i_s_r_fl_ty_cn_ts_fl_ty_cn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_flly_typ_cnsnts_cnf( me->g_c_i_s_r_fl_ty_cn_ts_fl_ty_cn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_flly_typ_cnsnts_cnf.
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
        t1 = NEW zcl_lnt_flly_typ_cnsnts_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_fl_ty_cn_ts_fl_ty_cn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_fl_ty_cn_ts_fl_ty_cn( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1514_3527bfefa2fa.
  ENDMETHOD.
ENDCLASS.
