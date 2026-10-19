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
    DATA t6 TYPE string.
    DATA(t7) = |Checks constants for full typing - no implicit typing allowe|.
    t7 = t7 && |d.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |CONSTANTS foo VALUE 'a'.|.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = |CONSTANTS foo TYPE c LENGTH 1 VALUE 'a'.|.
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t24.
    t24->load( ).
    APPEND |SingleFile| TO t24->items.
    t24->save( ).
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |fully_type_constants| i_title = |Fully type constants| i_short_description = t6 i_bad_example = t8 i_good_example = t14 i_extended_information = t30 i_tags = t24 i_pragma = t32 i_pseudo_comment = t34 ).
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
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t43 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t45 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t3 TYPE string.
    DATA(t4) = |Fully type |.
    DATA(t6) = strlen( t4 ).
    t3 = |{ t4 }{ i_type_9913 }|.
    DATA(t8) = strlen( t3 ).
    result = |{ t3 }{ |, no implicit typing| }|.

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
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
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
          DATA t25 TYPE REF TO zif_lnt_statement.
          CLEAR t25.
          t25 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t19 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_data ).
        ENDIF.
        t15 = t19.
      ENDIF.
      t14 = t15.
      IF t15 = abap_true.
        DATA t29 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t29.
        DATA t30 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t30.
        t30 = t9.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t33.
        DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
        t33 = t30->find_first_expression( i_type_9913 = t36 ).
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t37.
        IF xsdbool( t33 IS BOUND ) = abap_true.
          t37 = t33.
        ELSE.
          DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
          t37 = t30->find_first_expression( i_type_9913 = t43 ).
        ENDIF.
        t29 = t37.
        t14 = xsdbool( xsdbool( t29 IS BOUND ) = abap_false ).
      ENDIF.
      IF t14 = abap_true.
        DATA(t45) = VALUE string( ).
        DATA t47 TYPE REF TO zif_lnt_statement.
        CLEAR t47.
        t47 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_statem_constant ) = abap_true.
          t45 = |constant definition|.
        ELSE.
          t45 = |data definition|.
        ENDIF.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t51.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t53.
        DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
        t53 = t9->find_first_expression( i_type_9913 = t56 ).
        DATA t57 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t57.
        IF xsdbool( t53 IS INITIAL ) = abap_true.
          CLEAR t57.
        ELSE.
          t57 = t53->get_first_token( ).
        ENDIF.
        t51 = t57.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        CLEAR t67.
        IF xsdbool( t51 IS INITIAL ) = abap_true.
          DATA t72 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t72.
          DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
          t72 = t9->find_first_expression( i_type_9913 = t75 ).
          DATA t76 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t76.
          IF xsdbool( t72 IS INITIAL ) = abap_true.
            CLEAR t76.
          ELSE.
            t76 = t72->get_first_token( ).
          ENDIF.
          t51 = t76.
        ENDIF.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        CLEAR t86.
        IF xsdbool( t51 IS INITIAL ) = abap_true.
          DATA t90 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t90.
          DATA t91 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t91.
          DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t95->has = abap_true.
          t95->value = |fully type constants, unexpected node|.
          t91 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t95 ).
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
        t105 = t45.
        DATA(t108) = VALUE string( ).
        DATA(t109) = |Fully type |.
        DATA(t111) = strlen( t109 ).
        t108 = |{ t109 }{ t105 }|.
        DATA(t113) = strlen( t108 ).
        t104 = |{ t108 }{ |, no implicit typing| }|.
        DATA(t114) = VALUE string( ).
        DATA t115 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t115.
        DATA(t120) = VALUE string( ).
        DATA(t121) = |Checks constants for full typing - no implicit typing allowe|.
        t121 = t121 && |d.|.
        t120 = t121.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t126->has = abap_true.
        t126->value = |CONSTANTS foo VALUE 'a'.|.
        t122 = t126.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t132->has = abap_true.
        t132->value = |CONSTANTS foo TYPE c LENGTH 1 VALUE 'a'.|.
        t128 = t132.
        DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t134.
        DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t138.
        DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t139.
        CREATE OBJECT t139.
        t138 = t139.
        t138->load( ).
        APPEND |SingleFile| TO t138->items.
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
        t115 = NEW zcl_lnt_irule_metadata( i_key = |fully_type_constants| i_title = |Fully type constants| i_short_description = t120 i_bad_example = t122 i_good_example = t128 i_extended_information = t144 i_tags = t134 i_pragma = t146 i_pseudo_comment = t148 ).
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
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t157 ).
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t159 ).
        ENDIF.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t161 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t163 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t165 ).
        ENDIF.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t167 ).
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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
    t3 = t1->find_first_expression( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t3 IS BOUND ) = abap_true.
      t7 = t3.
    ELSE.
      DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
      t7 = t1->find_first_expression( i_type_9913 = t13 ).
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
